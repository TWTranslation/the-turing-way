(rr-make-resources)=
# Recursos para "Fazer"

(rr-make-resources-manual)=
## Manualmente

- [A Referência Oficial de Criação de Referência manual.](https://www.gnu.org/software/make/manual/make.html)

(rr-make-resources-discussions)=
## Discussões

- [Discussão sobre Criar um HackerNews](https://news.ycombinator.com/item?id=15041986).

- [Recursive make considerado Contraído](http://aegis.sourceforge.net/auug97.pdf). Este é um artigo bem conhecido por que você não deveria usar improvisos aninhados. Para resumir: se você fizer isso, não pode ver todo o DAG e isso leva a problemas.

- [Fusão Não-Recursiva Considerado Contraído](https://www.microsoft.com/en-us/research/wp-content/uploads/2016/03/hadrian.pdf): Este é um papel de pesquisa descrevendo as falhas de Faça construções grandes e complexas.

(rr-make-resources-blogs)=
## Blogs

Claro que não somos os primeiros a sugerir o uso de "Make for reprodutibilidade!" Os posts do blog citados abaixo foram encontrados depois que o tutorial acima foi escrito, mas podem adicionar mais informações e exemplos.

- [Reprodução é difícil](https://kbroman.wordpress.com/tag/reproducible-research/). Discuta tornar um projeto de pesquisa reproduzível usando Make.

- [GNU Make for Reproducible Data Analysis](http://zmjones.com/make/). Argues para usar "Make for reprodutible" análise em uma veia semelhante à que usamos acima.

- [Tubulações Bioinformáticas Reproduzidas usando Make](http://byronjsmith.com/make-bml/). Um tutorial bastante extenso sobre o uso de Faça a análise de dados.

- [Pipelines de análise de dados automática](http://stat545.com/automation04_make-activity.html). Um tutorial semelhante que usa R para a análise.

- [Escrevendo um papel reprodutível](http://handbook.datalad.org/en/latest/usecases/reproducible-paper.html#automation-with-existing-tools). Um tutorial similar com Python usando variáveis para preencher tabelas no manuscrito de .

(rr-make-resources-ferramentas)=
## Ferramentas

- Trate a DAG do Makefile com [makefile2graph](https://github.com/lindenb/makefile2graph).

(rr-make-resources-alternativas)=
## Alternativas a fazer

Há [muitas alternativas para Faça](https://en.wikipedia.org/wiki/List_of_build_automation_software). Abaixo de estão alguns que chamaram a nossa atenção, e isso pode valer a pena.

- [SnakeMake](https://snakemake.readthedocs.io/en/stable/). A Python3-based alternative to Make. Snakemake suporta múltiplos caracteres curinga em nomes de arquivos, suporta código Python nas regras e pode executar fluxos de trabalho em estações de trabalho, clusters, a grade e na nuvem sem modificação.

- [Tup](http://gittup.org/tup/index.html). Um sistema de compilação rápido que processa pré-requisitos baixo para cima ao invés de "top-down" de Make. A velocidade parece impressionante e o papel que o descreve é interessante, mas para pequenos projetos a velocidade do Make não será um gargalo. A sintaxe do Tupfile não é compatível com a do Makefiles.

- [Bazel](https://www.bazel.build). An open-source version of Google's Blaze build system.

- [Buck](https://buckbuild.com/). Sistema de compilação do Facebook.


