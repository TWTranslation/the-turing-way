(rr-make-examples-learnmake)=

# Aprenda "Fazer" por Exemplos

(rr-make-exemplos-makefiles)=

## Mapeamentos

Uma das coisas que pode desencorajar alguém de usar Make é que os Makefiles existentes podem parecer bem complexos, e pode parecer difícil adequar uma para suas próprias necessidades. Neste tutorial prático vamos criar um Makefile do zero para um projeto de análise de dados real. A ideia é explicar diferentes características do Make por meio de iteração em várias versões de um Makefile para este projeto. Esperamos que a experiência que você ganha com este tutorial permita que você crie Makefiles para seus próprios projetos.

We will create a `Makefile` for a data analysis pipeline. The task is as follows:

> **Task: Given some datasets, create a summary report (in pdf) that contains
> the histograms of these datasets.**

(Claro que esta tarefa de dados é muito simples de se concentrar em como usar o Make.)

_Throughout the tutorial code blocks that start with a dollar sign (`$`) are
intended to be typed in the terminal._

(rr-make-examples-settingup)=

### Configurando acima

We have created a basic repository for this task, that already contains
everything that we need (_except the Makefile of course!_). Para começar, clone o repositório base usando o git:

```bash
git clone https://github.com/alan-turing-institute/IntroToMake
```

Este repositório básico contém todo o código que vamos precisar neste tutorial, e deve ter esse conteúdo:

```text
.
├── data/
│   ├── input_file_1.csv
│   └── input_file_2.csv
├── LICENSE
├── output/
├── README.md
├── report/
│   └── report.tex
└── scripts/
    └── generate_histogram.py
```

- **data**: directory with two datasets that we're going to analyse
- **report**: the input directory for the report
- **scripts**: directory for the analysis script
- **output**: output directory for the figures and the report

You'll notice that there are two datasets in the **data** directory
(`input_file_1.csv` and `input_file_2.csv`) and that there is already a
basic Python script in **scripts** and a basic report LaTeX file in
**report**.

If you want to follow along, ensure that you have the `matplotlib` and
`numpy` packages installed:

```bash
pip install matplotlib numpy
```

You will also need a working version of `pdflatex` and, of course, `make`.

For installation instructions for Make, see {ref}`rr-make-appendix-installing`.

(rr-make-examples-makefile1)=

### Makefile no. 1 (O Básico)

Vamos criar nosso primeiro Makefile. In the terminal, move into the
`IntroToMake` repository that you just cloned:

```bash
cd IntroToMake
```

Using your favourite editor, create a file called `Makefile` with the
following contents:

```makefile
# Makefile for analysis report

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
	cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf
```

The indentation in each of the recipes are _**tabs**_, Makefiles do not accept
indentation with spaces.

Agora você deve ser capaz de digitar:

```bash
make output/report.pdf
```

Se tudo funcionou corretamente, as duas figuras serão criadas e o relatório pdf será construído.

Vamos passar pelo Makefile em um pouco mais detalhes. Temos três regras, duas para as figuras e uma para o relatório. Let's look at the rule for
`output/figure_1.png` first. This rule has the target
`output/figure_1.png` that has two prerequisites: `data/input_file_1.csv`
and `scripts/generate_histogram.py`. Ao dar ao arquivo de saída, estes pré-requisitos serão atualizados se algum desses arquivos mudar. Este é um das razões pelas quais fazer foi criado: atualizar os arquivos de saída quando os arquivos de origem forem alterados.

You'll notice that the recipe line calls Python with the script name and uses
command line flags (`-i` and `-o`) to mark the input and output of the
script. Este não é um requisito para o uso do Maware, mas faz com que seja fácil ver qual arquivo é uma entrada para o script e qual é uma saída.

A regra para o relatório PDF é muito semelhante, mas tem três pré-requisitos (a fonte LaTeX e ambas as figuras). Observe que a receita altera o diretório de trabalho antes de chamar LaTeX e também move o PDF gerado para o diretório de saída . Estamos fazendo isso para manter os arquivos intermediários LaTeX no diretório de relatórios . No entanto, é importante distinguir a regra acima de o seguinte:

```makefile
# don't do this
output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
	cd report/
	pdflatex report.tex
	mv report.pdf ../output/report.pdf
```

Essa regra coloca os três comandos em linhas separadas. However, **Make
executes each line independently** in a separate subshell, so changing the
working directory in the first line has no effect on the second, and a failure
in the second line won't stop the third line from being executed. Portanto, combinamos os três comandos em uma única receita acima.

Isso é como a árvore de dependências se parece para este Makefile:

![DAG for Makefile no. 1](../../../figures/makefile-no1.png) <small style="margin: 5pt auto; text-align: center; display: block;">The
dependency graph for our first Makefile, created using
[makefile2graph](https://github.com/lindenb/makefile2graph). Observe a semelhança da figura {ref}`na introdução<rr-make-summary>`!</small>

(rr-make-examples-makefile2)=

### Makefile no. 2 (tudo e limpo)

No nosso primeiro Makefile temos as regras básicas em vigor. Nós poderíamos nos manter com isto se quiséssemos, mas há algumas melhorias que podemos fazer:

1. We now have to explicitly call `make output/report.pdf` if we want to
   make the report.

2. Não temos como limpar e começar do zero.

Let's remedy this by adding two new targets: `all` and `clean`. In your
editor, change the Makefile contents to add the `all` and `clean` rules as
follows:

```makefile
# Makefile for analysis report

all: output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
	cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf

clean:
	rm -f output/report.pdf
	rm -f output/figure_*.png
```

Note that we've added the `all` target to the top of the file. We do this
because Make executes the _first_ target when no explicit target is given.  So
you can now type `make` on the command line and it would do the same as
`make all`.  Also, note that we've only added the report as the prerequisite
of `all` because that's our desired output and the other rules help to build
that output. If you have multiple outputs, you could add these as further
prerequisites to the `all` target. Calling the main target `all` is a
convention of Makefiles that many people follow.

The `clean` rule is typically at the bottom, but that's more style than
requirement. Note that we use the `-f` flag to `rm` to make sure it
doesn't complain when there is no file to remove.

Você pode experimentar o novo Makefile executando:

```bash
make clean
make
```

Faça com que os arquivos de saída e intermediários sejam removidos após o primeiro comando, e gerá-los novamente após o segundo.

(rr-make-examples-makefile3)=

### Makefile no. 3 (Alvos do Solo)

Typically, `all` and `clean` are defined as so-called Phony
Targets.
Estes são alvos que não criam um arquivo de saída. If not marked as `.PHONY` these targets would
always be run if they come up in a dependency, but will no longer be run if a
directory/file is ever created that is called `all` or `clean`. Nós adicionamos, portanto, uma linha no topo do Makefile para definir esses dois como destinos de phony :

```makefile
# Makefile for analysis report

.PHONY: all clean

all: output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
	cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf

clean:
	rm -f output/report.pdf
	rm -f output/figure_*.png
```

Alvos de telefone também são úteis quando você deseja usar Fazer recursivamente. Nesse caso você especificaria os subdiretórios como alvos phony. You can read more
about phony targets in the
documentation,
but for now it's enough to know that `all` and `clean` are typically
declared as phony.

> Sidenote: another target that's typically phony is **test**, in case you
> have a directory of tests called **test** and want to have a target to run
> them that's also called **test**.

(rr-make-examples-makefile4)=

### Makefile no. 4 (Automatic Translation) e Regras de Padrão)

Não há nada de errado com o Makefile que temos agora, mas isso é um pouco detalhado porque declaramos todos os alvos usando regras separadas. We can
simplify this by using Automatic
Variables
and Pattern
Rules.

(rr-make-examples-automaticvar)=

#### Variáveis automáticas.

Com variáveis automáticas, podemos usar os nomes dos pré-requisitos e objetivos na receita. Veja como nós faríamos isso para as regras da figura :

```makefile
# Makefile for analysis report

.PHONY: all clean

all: output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i $< -o $@

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i $< -o $@

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
	cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf

clean:
	rm -f output/report.pdf
	rm -f output/figure_*.png
```

We've replaced the input and output filenames in the recipes respectively by
`$<`, which denotes the _first_ prerequisite and `$@` which denotes the
_target_. You can remember `$<` because it's like an arrow that points to
the beginning (_first_ prerequisite), and you can remember `$@` (dollar
_at_) as the target you're aiming
.

There are more automatic variables that you could use, see the
documentation.

(rr-make-examples-patternrules)=

#### Regras de padrão

Observe que as receitas para as figuras se tornaram idênticas!  Because we don't like to repeat ourselves, we can combine the two
rules into a single rule by using _pattern rules_. Pattern rules allow you to
use the `%` symbol as a wildcard and combine the two rules into one:

```makefile
# Makefile for analysis report

.PHONY: all clean

all: output/report.pdf

output/figure_%.png: data/input_file_%.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i $< -o $@

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
	cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf

clean:
	rm -f output/report.pdf
	rm -f output/figure_*.png
```

The `%` symbol is now a wildcard that (in our case) takes the value `1` or
`2` based on the input files in the `data` directory. You can check that
everything still works by running `make clean` followed by `make`.

An advantage of this is that if you now want to add another dataset, say
`input_file_3`, then you would only need to add that to the rule for the
report!

(rr-make-examples-makefile5)=

### Makefile no. 5 (Curinga e substituição de trajetórias)

Quando Makefiles ficam mais complexos, você pode querer usar recursos mais avançados como construir saídas para todos os arquivos em um diretório de entrada. Enquanto as regras de padrão te derem um longo caminho, Também possui recursos para caracteres curingas e string ou manipulação de caminhos para quando as regras de padrão são insuficientes.

Anteriormente nossos arquivos de entrada estavam numerados, agora vamos mudar para um cenário onde eles têm nomes mais significativos. Let's switch over to the `big_data`
branch:

```bash
git checkout big_data         # checkout the big_data branch
```

A estrutura de diretórios agora se parece com isso:

```text
├── data/
│   ├── action.csv
│   ├── ...
│   ├── input_file_1.csv
│   ├── input_file_2.csv
│   ├── ...
│   └── western.csv
├── LICENSE
├── output/
├── README.md
├── report/
│   └── report.tex
└── scripts/
    └── generate_histogram.py
```

As you can see, the **data** directory now contains additional input files
that are named more meaningfully (the data are IMBD movie ratings by genre).
Also, the **report.tex** file has been updated to work with the expected
figures.

We'll adapt our Makefile to create a figure in the output directory called
`histogram_{genre}.png` for each `{genre}.csv` file, while excluding the
`input_file_{N}.csv` files.

> Sidenote: if we were to remove the `input_file_{N}.csv` files, pattern
> rules would be sufficient here. This highlights that sometimes your
> directory structure and Makefile should be developed hand in hand.

Antes de mudar o arquivo Makefile, execute

```bash
make clean
```

para remover os arquivos de saída.

Vamos mostrar primeiro o Makefile completo e depois descrever as diferentes linhas em mais detalhes. O arquivo completo é:

```makefile
# Makefile for analysis report
#

ALL_CSV = $(wildcard data/*.csv)
INPUT_CSV = $(wildcard data/input_file_*.csv)
DATA = $(filter-out $(INPUT_CSV),$(ALL_CSV))
FIGURES = $(patsubst data/%.csv,output/figure_%.png,$(DATA))

.PHONY: all clean

all: output/report.pdf

$(FIGURES): output/figure_%.png: data/%.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i $< -o $@

output/report.pdf: report/report.tex $(FIGURES)
	cd report/ && pdflatex report.tex && mv report.pdf ../$@

clean:
	rm -f output/report.pdf
	rm -f $(FIGURES)
```

First, we use the `wildcard` function to create a variable that lists all
the CSV files in the data directory and one that lists only the old
`input_file_{N}.csv` files:

```makefile
ALL_CSV = $(wildcard data/*.csv)
INPUT_CSV = $(wildcard data/input_file_*.csv)
```

Uma convenção de código para Makefiles é usar todas as maiúsculas para nomes de variáveis e defini-los no topo do arquivo.

Next, we create a variable to list only the data files that we're interested
in by filtering out the `INPUT_CSV` from `ALL_CSV`:

```makefile
DATA = $(filter-out $(INPUT_CSV),$(ALL_CSV))
```

This line uses the
[`filter-out`](https://www.gnu.org/software/make/manual/make.html#index-filter_002dout)
function to remove items in the `INPUT_CSV` variable from the `ALL_CSV`
variable.  Note that we use both the `$( ... )` syntax for functions and
variables. Finally, we'll use the `DATA` variable to create a `FIGURES`
variable with the desired output:

```makefile
FIGURES = $(patsubst data/%.csv,output/figure_%.png,$(DATA))
```

Here we've used the
[`patsubst`](https://www.gnu.org/software/make/manual/make.html#index-patsubst-1)
function to transform the input in the `DATA` variable (that follows the
`data/{genre}.csv` pattern) to the desired output filenames (using the
`output/figure_{genre}.png` pattern). Notice that the `%` character marks
the part of the filename that will be the same in both the input and output.

Agora usamos essas variáveis para a regra de geração de figuras da seguinte forma:

```makefile
$(FIGURES): output/figure_%.png: data/%.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i $< -o $@
```

This rule again applies a pattern: it takes a list of targets (`$(FIGURES)`)
that all follow a given pattern (`output/figure_%.png`) and based on that
creates a prerequisite (`data/%.csv`). Such a pattern rule is slightly
different from the one we saw before because it uses two `:` symbols. It is
called a static pattern
rule.

Of course we have to update the `report.pdf` rule as well:

```makefile
output/report.pdf: report/report.tex $(FIGURES)
	cd report/ && pdflatex report.tex && mv report.pdf ../$@
```

and the `clean` rule:

```makefile
clean:
	rm -f output/report.pdf
	rm -f $(FIGURES)
```

Se você executar este arquivo Makefile, ele precisará construir 28 números. You may want to
use the `-j` flag to `make` to build these targets **in parallel!**

```bash
make -j 4
```

A capacidade de construir alvos em paralelo é bastante útil quando o seu projeto tem muitas dependências!

O arquivo PDF resultante deve agora ficar assim:

![Report with all genres](../../../figures/make-report-all-genres.png)<small
style="margin: 5pt auto; text-align: center; display: block;">A compressed
view of the report with histograms for all genres.</small>
