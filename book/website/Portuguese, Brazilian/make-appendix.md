(rr-make-appendix)=
# Apêndice

(rr-make-appendix-dag)=
## Gráfico Acíclico Direcionado

Um Gráfico Acíclico Direcionado (DAG) é um gráfico de ** de nós e arestas que é:

1. *direcionado*: as bordas têm uma direção e você só pode andar o gráfico na direção
2. *acyclic*: não contém ciclos: A não pode depender de B quando B depende de A.

Esta última propriedade é, evidentemente, bastante útil para um sistema de construção. Mais informações sobre DAGs podem ser encontradas na [Wikipedia](https://en.wikipedia.org/wiki/Directed_acyclic_graph).

(rr-make-appendix-installing)=
## Instalando Make

Primeiro, verifique se você já tem o GNU Make instalado. Em um tipo terminal:

```bash
$ faz
```

Se você receber `make: comando não encontrado` (ou similar), você não tem Make. Se você receber `feito: *** Nenhum alvo especificado e nenhum makefile foi encontrado.  Pare.` você realmente faz isso.

Nós estaremos usando o **GNU Make** neste tutorial. Verifique se é isso que você tem digitando:

```bash
$ fazer --version
```

Se você não tem o GNU Make mas tem a versão BSD, algumas coisas podem não funcionar como esperado e recomendamos instalar o GNU Make.

Para instalar o GNU Make, siga estas instruções:

- **Linux**: Use seu gerenciador de pacotes para instalar o Make. Por exemplo, no Arch Linux:

  ```bash
  $ sudo pacman -S make
  ```

  Ubuntu:
  ```bash
  $ sudo apt-get install build-essencial
  ```

- **MacOS**: se você tem o [Homebrew](https://brew.sh/) instalado, é simples:

  ```bash
  $ Instalações de brew fazem
  ```

  Se você tem uma implementação builtin Make , verifique se é GNU Make , verificando `fazer --version`.

(rr-make-appendix-advedgr)=
## Avançado: Gerar Regras usando a Chamada

*Esta seção continua o tutorial acima e demonstra uma característica de fazer para a geração automática de regras.*

Em um pipeline de ciência de dados, pode ser bastante comum aplicar vários scripts para os mesmos dados (por exemplo, quando você está comparando métodos ou testando parâmetros diferentes). Nesse caso, pode ficar tedioso escrever uma regra separada para cada script quando apenas o nome do script muda. Para simplificar esse processo, podemos deixar expandir a chamada [*latiu* receita](https://www.gnu.org/software/make/manual/make.html#Canned-Recipes).

Para seguir adiante, alterne para o `ramo enlatado`:

```bash
$ torna a limpeza
$ git stash --all # note a bandeira '--all' para que também escondamos o Makefile
$ bits que podem ser finalizados no checkout
```

Neste branch você vai notar que há um novo script no diretório **scripts** chamado `generate_qplot.py`. Este script funciona de forma semelhante ao `generate_histogram. y` script (ele tem a mesma sintaxe de linha de comando), mas ele gera um [QQ-plot](https://en.wikipedia.org/wiki/Q%E2%80%93Q_plot). O arquivo **report.tex** também foi atualizado para incorporar estes pontos.

Após mudar para o branch `em latas` , haverá um repositório que contém uma regra separada para gerar os PQ-Q. Este Makefile se parece com isto:

```makefile
# Makefile for analysis report
#

ALL_CSV = $(wildcard data/*.csv)
DATA = $(filter-out $(wildcard data/input_file_*.csv),$(ALL_CSV))
HISTOGRAMS = $(patsubst data/%.csv,output/figure_%.png,$(DATA))
QQPLOTS = $(patsubst data/%.csv,output/qqplot_%.png,$(DATA))

.PHONY: all clean

all: output/report.pdf

$(HISTOGRAMS): output/histogram_%.png: data/%.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i $< -o $@

$(QQPLOTS): output/qqplot_%.png: data/%.csv scripts/generate_qqplot.py
    python scripts/generate_qqplot.py -i $< -o $@

output/report.pdf: report/report.tex $(FIGURES)
    cd report/ && pdflatex report.tex && mv report.pdf ../$@

clean:
    rm -f output/report.pdf
    rm -f $(HISTOGRAMS) $(QQPLOTS)
```

Você notará que as regras para os histogramas e QQ são muito parecidas.

À medida que o número de scripts que você deseja rodar em seus dados cresce, isso pode levar a um grande número de regras no Makefile que são quase exatamente iguais. Nós podemos simplificar isso criando uma [*receita pronta*](https://www.gnu.org/software/make/manual/html_node/Canned-Recipes.html) que recebe o nome do script e o nome do gênero como entrada:

```makefile
define run-script-on-data
saída/$(1)_$(2).png: data/$(2).csv scripts/generate_$(1). y
    scripts/generate_$(1).py -i $$< -o $$$@
endef
```

Observe que nesta receita usamos `$(1)` para qualquer `histograma` ou `qqplot` e `$(2)` para o gênero. Isso corresponde a argumentos de função esperados de para a receita em modo `run-script-on-data` pronta. Além disso, observe que usamos `$$<` e `$$@` na receita atual, com dois símbolos `` por escapar Para realmente criar todos os alvos, precisamos de uma linha que chame essa receita em lata.  Em nosso caso, usamos um laço duplo para sobre os gêneros e os scripts:

```makefile
$(foreach genre,$(GENRES),\
    $(foreach script,$(SCRIPTS),\
        $(call run-script-on-data,$(script),$(genre))) \
    ) \

```

Nessas linhas, o caractere `` é usado para manter linhas longas.

O Makefile completo então se torna:

```makefile
# Makefile para o relatório de análise
#

ALL_CSV = $(wildcard data/*.csv)
DATA = $(filter-out $(wildcard data/input_file_*. sv),$(ALL_CSV))
HISTOGRAMS = $(patsubst %,output/histogram_%.png,$(GENRES))
QPLOTS = $(patsubst %,output/qqplot_%. ng,$(GENRES))

GENRAS = $(patsubst data/%.csv,%,$(DATA))
SCRIPTS = histograma qplot

.PHONY: tudo limpo

vezes: output/report. df

define run-script-on-data
output/$(1)_$(2).png: data/$(2).csv scripts/generate_$(1). y
    scripts python gerts/generate_$(1). y -i $$< -o $@
endef

$(foreach genre,$(GENRES),\
    $(foreach script,$(SCRIPTS),
        $(call run-script-on-data,$(script), ,$(genre)))\
    )\
)

saída/relatório. df: relatório/report.tex $(HISTOGRAMS) $(QQPLOTS)
    cd relatórios/ && pdflatex relatório. ex && relatório mv. df ../$@

clean:
    rm -f output/report.pdf
    rm -f $(HISTOGRAMS) $(QQPLOTS)
```

Observe que adicionamos uma variável `SCRIPTS` com os nomes de `histograma` e `qplot`. Se fôssemos adicionar outro script que seguisse o mesmo padrão que esses dois, só precisamos adicioná-lo à variável `SCRIPTS` .

Para construir tudo isso, execute

```bash
$ faça -j 4
```
