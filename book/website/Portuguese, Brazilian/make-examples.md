(rr-make-examples-learnmake)=
# Aprenda "Fazer" por Exemplos

(rr-make-exemplos-makefiles)=
## Mapeamentos

Uma das coisas que pode desencorajar alguém de usar Make é que os Makefiles existentes podem parecer bem complexos, e pode parecer difícil adequar uma para suas próprias necessidades. Neste tutorial prático vamos criar um Makefile do zero para um projeto de análise de dados real. A ideia é explicar diferentes características do Make por meio de iteração em várias versões de um Makefile para este projeto. Esperamos que a experiência que você ganha com este tutorial permita que você crie Makefiles para seus próprios projetos.

Nós criaremos um `Makefile` para um pipeline de análise de dados. The task is as follows:

> **Tarefa: Alguns conjuntos de dados, crie um relatório resumido (em pdf) que contenha os histogramas destes conjuntos de dados.**

(Claro que esta tarefa de dados é muito simples de se concentrar em como usar o Make.)

*Através dos blocos de código do tutorial que começam com um sinal de dólar (`$`) são destinados a ser digitado no terminal.*

(rr-make-examples-settingup)=
### Configurando acima

Criamos um repositório básico para esta tarefa, que já contém tudo o que precisamos (*exceto o Makefile of course !*). Para começar, clone o repositório base usando o git:

```bash
$ git clone https://github.com/alan-turing-institute/IntroToMake
```

Este repositório básico contém todo o código que vamos precisar neste tutorial, e deve ter esse conteúdo:

```text
.
── dados /
─── input_file_1.csv
── input_file_2.csv
── LICENSE
── output /
── LEIA-README. d
── relatório/
── relatório.tex
─ scripts/
    ── generate_histogram.py
```

- **dados**: diretório com dois conjuntos de dados que vamos analisar
- **reportar**: o diretório de entrada para o relatório
- **scripts**: diretório para o script de análise
- **Saída**: diretório de saída para as figuras e o relatório

Você notará que existem dois datasets no diretório **** de dados (`input_file_1.csv` e `input_file_2. sv`) e que já existe um script básico de Python em scripts **** e um relatório básico de um arquivo LaTeX em **relatório**.

Se você quiser seguir junto, certifique-se de que você tem os `pacotes matplotlib` e `numpy` instalados:

```bash
$ pip install matplotlib numpy
```

Você também precisará de uma versão funcional do `pdflatex` e, é claro, `fazer`.

Para instruções de instalação do Make, consulte {ref}`rr-make-appendix-install`.

(rr-make-examples-makefile1)=
### Makefile no. 1 (O Básico)

Vamos criar nosso primeiro Makefile. No terminal, vá para o `IntroToMake` repositório que você acabou de clonar:

```bash
$ cd IntroToMake
```

Usando o seu editor favorito, crie um arquivo chamado `Makefile` com o seguinte conteúdo:

```makefile
# Makefile for analysis relatório

output/figure_1.png: data/input_file_file_1.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram. y
    python scripts/generate_histogram.py -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: relatório/relatório. ex saída/figurre_1.png de saída/figura_png
    cd relatório/ && pdflatex report.tex && mv report.pdf ../output/report.pdf
```
O recuo em cada uma das receitas são ***abas***, Makefiles não aceitam recuo com espaços.

Agora você deve ser capaz de digitar:

```bash
$ faz saída/report.pdf
```

Se tudo funcionou corretamente, as duas figuras serão criadas e o relatório pdf será construído.

Vamos passar pelo Makefile em um pouco mais detalhes. Temos três regras, duas para as figuras e uma para o relatório. Vamos analisar a regra para `saída/figurre_1.png` primeiro. Esta regra tem o destino `output/figure_1.png` que tem dois pré-requisitos: `data/input_file_1.csv` e `scripts/generate_histogram.py`. . Ao dar ao arquivo de saída, estes pré-requisitos serão atualizados se algum desses arquivos mudar. Este é um das razões pelas quais fazer foi criado: atualizar os arquivos de saída quando os arquivos de origem forem alterados.

Você notará que a linha de receita chama Python com o nome do script e usa flags de linha de comando (`-i` e `-o`) para marcar a entrada e a saída do script. Este não é um requisito para o uso do Maware, mas faz com que seja fácil ver qual arquivo é uma entrada para o script e qual é uma saída.

A regra para o relatório PDF é muito semelhante, mas tem três pré-requisitos (a fonte LaTeX e ambas as figuras). Observe que a receita altera o diretório de trabalho antes de chamar LaTeX e também move o PDF gerado para o diretório de saída . Estamos fazendo isso para manter os arquivos intermediários LaTeX no diretório de relatórios . No entanto, é importante distinguir a regra acima de o seguinte:

```makefile
# não faça este
output/report.pdf: report/report.tex output/figure_1.png de saída/figure_2.png
    cd relatório/
    pdflatex relatório.tex
    mv report.pdf ../output/report.pdf
```

Essa regra coloca os três comandos em linhas separadas. No entanto, **Faça executar cada linha independentemente** em um subshell separado, então mudar o diretório de trabalho na primeira linha não tem efeito sobre a segunda, e uma falha na segunda linha não impedirá a terceira linha de ser executada. Portanto, combinamos os três comandos em uma única receita acima.

Isso é como a árvore de dependências se parece para este Makefile:

![DAG para Makefile no. 1](../../figures/makefile-no1.png) <small style="margin: 5pt auto; text-align: center; display: block;">O gráfico de dependências para nosso primeiro Makefile, criado usando [makefile2graph](https://github.com/lindenb/makefile2graph). Observe a semelhança da figura {ref}`na introdução<rr-make-summary>`!</small>

(rr-make-examples-makefile2)=
### Makefile no. 2 (tudo e limpo)

No nosso primeiro Makefile temos as regras básicas em vigor. Nós poderíamos nos manter com isto se quiséssemos, mas há algumas melhorias que podemos fazer:

1. Agora temos que chamar explicitamente `fazer output/report.pdf` se quisermos fazer o relatório.

2. Não temos como limpar e começar do zero.

Vamos remediar isso adicionando dois novos alvos: `todos` e `limpos`. No seu editor de , altere o conteúdo do Makefile para adicionar as `todas as` e `regras` limpas das seguintes formas:

```makefile
# Makefile for analysis relatório

all: output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_file_2.csv scripts/generate_histogram.py
    scripts/generate_histograma python. y -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd relatório/ && pdflatex relatório. ex && mv report.pdf ../output/report. df

clean:
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

Note que nós adicionamos `todos` alvo ao topo do arquivo. Fazemos isso porque fazer executar o *primeiro* alvo quando não for dado nenhum alvo explícito.  Então você pode agora digitar `fazer` na linha de comando e faria o mesmo que `faça todo`.  Além disso, note que só adicionamos o relatório como o pré-requisito de `todos` porque essa é a nossa saída desejada e as outras regras ajudam a construir essa saída. Se você tem várias saídas, você pode adicionar como outros pré-requisitos para o alvo `todos`. Chamando o alvo principal `todos` é uma convenção de Makefiles que muitas pessoas seguem.

A regra `clean` está normalmente na parte inferior, mas isso é mais estilo que requisito. Note que usamos o sinalizador `-f` para `rm` para garantir que não reclame quando não há nenhum arquivo para remover.

Você pode experimentar o novo Makefile executando:

```bash
$ faz com que seja limpo
$
```

Faça com que os arquivos de saída e intermediários sejam removidos após o primeiro comando, e gerá-los novamente após o segundo.

(rr-make-examples-makefile3)=
### Makefile no. 3 (Alvos do Solo)

Normalmente, `todas as` e `limpos` são definidas como chamadas [Telefones Alvos](https://www.gnu.org/software/make/manual/make.html#Phony-Targets). Estes são alvos que não criam um arquivo de saída. Se não estiver marcado como `. APENAS` esses alvos seriam sempre executados se eles surgirem em uma dependência, mas não será mais executado se um diretório/arquivo for criado que se chama `todos` ou `limpo`. Nós adicionamos, portanto, uma linha no topo do Makefile para definir esses dois como destinos de phony :

```makefile
# Makefile for analysis relatório

.PHONY: tudo limpo

todos: output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_file_2.csv scripts/generate_histogram.py
    scripts/generate_histograma python. y -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex relatório. ex && mv relatório.pdf ../output/report. df

clean:
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

Alvos de telefone também são úteis quando você deseja usar Fazer recursivamente. Nesse caso você especificaria os subdiretórios como alvos phony. Você pode ler mais sobre [destinos de phony na documentação](https://www.gnu.org/software/make/manual/make.html#Phony-Targets), mas por enquanto é suficiente para saber que `todos os` e `limpos` são tipicamente declarados como phony.

> ministro: outro alvo que normalmente a telefonia é **test**, no caso de você ter um diretório de testes chamado **test** e quer ter um destino para executá-los que também é chamado **teste**.

(rr-make-examples-makefile4)=
### Makefile no. 4 (Automatic Translation) e Regras de Padrão)

Não há nada de errado com o Makefile que temos agora, mas isso é um pouco detalhado porque declaramos todos os alvos usando regras separadas. Podemos simplificar isso usando [Automatic Variáveis](https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html) e [padrão Regras](https://www.gnu.org/software/make/manual/html_node/Pattern-Rules.html#Pattern-Rules).

(rr-make-examples-automaticvar)=
#### Variáveis automáticas.

Com variáveis automáticas, podemos usar os nomes dos pré-requisitos e objetivos na receita. Veja como nós faríamos isso para as regras da figura :

```makefile
# Makefile para relatório de análise

.PHONY: tudo limpo

todos: output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram. y
    python scripts/generate_histogram.py -i $< -o $@

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i $< -o $@

output/report.pdf: report/report.tex output/figure_1. ng relatório de saída/figurre_2.png
    cd relatório/ && pdflatex. ex && mv relatório.pdf ../output/report. df

clean:
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

Substituímos os nomes de entrada e arquivo de saída nas receitas respectivamente por `$<`, que indica o *primeiro* pré-requisito e `$@` que indica o alvo **. Você pode se lembrar de `$<` porque é como uma seta que aponta para o início (*primeiro* pré-requisito), e você pode se lembrar de `$@` (dólar *a*) [como o alvo que você está mirando *a*](https://jameshfisher.com/2016/12/07/makefile-automatic-variables/).

Existem mais variáveis automáticas que você poderia usar, consulte [a documentação](https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html).

(rr-make-examples-patternrules)=
#### Regras de padrão

Observe que as receitas para as figuras se tornaram idênticas!  Como não gostamos de nos repetir, podemos combinar as duas regras em uma única regra usando as *regras de padrão*. As regras padrão permitem que você use o símbolo `%` como um caractere curinga e combine as duas regras em uma só:

```makefile
# Makefile para o relatório de análise

.PHONY: tudo limpo

todos: output/report.pdf

output/figure_%.png: data/input_file_%. scripts/generate_histogram.py
    scripts/generate_histogram.py -i $< -o $@

output/report. df: relatório / report/report.tex output/figure_1.png de saída/figura_2.png
    cd relatório/ && pdflatex relatório.tex && mv relatório df ../output/report.pdf

clean:
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

O símbolo `%` agora é um caractere curinga que (no nosso caso) recebe o valor `1` ou `2` baseado nos arquivos de entrada na `pasta`. Você pode verificar que tudo ainda funciona executando `faça clean` seguido por `fazer`.

Uma vantagem disso é que, se você agora quer adicionar outro conjunto de dados, diga `input_file_3`, então você só precisa adicionar isso à regra para o relatório !

(rr-make-examples-makefile5)=
### Makefile no. 5 (Curinga e substituição de trajetórias)

Quando Makefiles ficam mais complexos, você pode querer usar recursos mais avançados como construir saídas para todos os arquivos em um diretório de entrada. Enquanto as regras de padrão te derem um longo caminho, Também possui recursos para caracteres curingas e string ou manipulação de caminhos para quando as regras de padrão são insuficientes.

Anteriormente nossos arquivos de entrada estavam numerados, agora vamos mudar para um cenário onde eles têm nomes mais significativos. Vamos alternar para o branch `big_data` :

```bash
$ git checkout big_data # checkout da branch big_data
```

A estrutura de diretórios agora se parece com isso:

```text
── dados /
─── action.csv
── ...
│   ├── input_file_1.csv
│   ├── input_file_2.csv
│   ├── ...
├── western.csv
── LICENSE
── output /
── README.md
── report/
── report-report-report.tex
── scripts/
    ── scripts/ 
 ── generate_histogram.py
```

Como você pode ver, o diretório **dados** agora contém arquivos de entrada adicionais que são nomeados de forma mais significativa (os dados são avaliações IMBD de filmes por gênero). Além disso, o arquivo **report.tex** foi atualizado para funcionar com os valores esperados .

Vamos adaptar nosso Makefile para criar uma figura no diretório de saída chamada `histograma_{genre}. ng` para cada arquivo `{genre}.csv` excluindo o `input_file_{N}.csv`.

> Politica: se removêssemos os arquivos `input_file_{N}.csv` , as regras padrão seriam suficientes aqui. This highlights that sometimes your directory structure and Makefile should be developed hand in hand.

Antes de mudar o arquivo Makefile, execute

```bash
$ fazer limpeza
```
para remover os arquivos de saída.

Vamos mostrar primeiro o Makefile completo e depois descrever as diferentes linhas em mais detalhes. O arquivo completo é:

```makefile
# Makefile para o relatório de análise
#

ALL_CSV = $(wildcard data/*.csv)
INPUT_CSV = $(wildcard data/input_file_*. sv)
DADA = $(filter $(INPUT_CSV),$(ALL_CSV))
IGURES = $(patsubst data/input_file_%. sv,output/figure_%.png,$(DATA))

.PHONY: tudo limpo

toda: output/report.pdf

$(FIGURES): output/figure_%. ng: data/input_file_%.csv scripts/generate_histogram.py
    scripts/generate_histogram.py -i $< -o $@

output/report.pdf: relatório/relatório. ex $(FIGURES)
    relatório cd && pdflatex.tex && mv report. df ../$@

limpo:
    rm -f output/report.pdf
    rm -f $(FIGURES)
```

Primeiramente, usamos a função `curinga` para criar uma variável que lista todos os arquivos CSV no diretório de dados e um que lista apenas o antigo{N}`input_file_ . arquivos sv`:

```makefile
ALL_CSV = $(wildcard data/*.csv)
INPUT_CSV = $(wildcard data/input_file_*.csv)
```

Uma convenção de código para Makefiles é usar todas as maiúsculas para nomes de variáveis e defini-los no topo do arquivo.

Em seguida, criamos uma variável para listar apenas os arquivos de dados em que estamos interessados filtrando o `INPUT_CSV` de `ALL_CSV`:

```makefile
DADOS = $(filter $(INPUT_CSV),$(ALL_CSV), )
```

Esta linha utiliza a função [`filtro`](https://www.gnu.org/software/make/manual/make.html#index-filter) para remover itens que não correspondem à variável `INPUT_CSV` da variável `ALL_CSV` .  Observe que usamos ambos a sintaxe `$( ... )` para funções e variáveis. Finalmente, usaremos a variável `DADOS` para criar uma variável `IGURES` com a saída desejada:

```makefile
FIGURES = $(patsubst data/%.csv,output/figure_%.png,$(DATA))
```

Aqui nós usamos a função [`patst`](https://www.gnu.org/software/make/manual/make.html#index-patsubst-1) para transformar a variável de entrada na variável `DATA` (que segue o dado `/{genre}. sv` padrão) para os nomes de arquivo de saída desejados (usando o `padrão_{genre}.png` padrões). Observe que `%` de caracteres marca a parte do nome do arquivo que será o mesmo na entrada e na saída.

Agora usamos essas variáveis para a regra de geração de figuras da seguinte forma:

```makefile
$(FIGURES): output/figure_%.png: data/%.csv scripts/generate_histogram.py
    scripts/generate_histogram.py -i $< -o $@
```

Esta regra aplica novamente um padrão: ela recebe uma lista de metas (`$(FIGURES)`) que todas seguem um determinado padrão (`output/figure_%. ng`) e com base nisso cria um pré-requisito (`data/%.csv`). Tal regra de padrão é ligeiramente diferente daquela que vimos antes, porque ela usa dois símbolos ``. It is called a [static pattern rule](https://www.gnu.org/software/make/manual/make.html#Static-Pattern).

É claro que temos que atualizar a regra `report.pdf` também:

```makefile
output/report.pdf: relatório/report.tex $(FIGURES)
    relatório cd / && pdflatex report.tex && mv report.pdf ../$@
```

e a regra `clean`:

```makefile
clean:
    rm -f output/report.pdf
    rm -f $(FIGURES)
```

Se você executar este arquivo Makefile, ele precisará construir 28 números. Você pode querer usar a bandeira `-j` para `fazer` para construir essas metas **em paralelo!**

```bash
$ faça -j 4
```

A capacidade de construir alvos em paralelo é bastante útil quando o seu projeto tem muitas dependências!

O arquivo PDF resultante deve agora ficar assim:

![Denunciar com todos os gêneros](../../figures/make-report-all-genres.png)<small
style="margin: 5pt auto; text-align: center; display: block;">Uma visão compactada do relatório com histogramas para todos os gêneros.</small>
