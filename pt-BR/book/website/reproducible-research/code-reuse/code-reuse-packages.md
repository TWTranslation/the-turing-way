(rr-code-reuse-packages)=

# Visão geral da escrita de pacotes

Esta seção fornece uma visão geral de por que os pacotes de software e bibliotecas são úteis para a reprodutibilidade do código e por que você pode querer escrever seus próprios pacotes.
Os pacotes são escritos com um alto padrão de código reproduzível (consulte as diretrizes para [publicar um pacote R no CRAN](https://cran.r-project.org/web/packages/policies.html)).
As seções {ref}`rr-code-reuse-details` e {ref}`rr-code-reuse-recommendations` do Turing Way também fornecem diretrizes úteis que se aplicam à criação de pacotes de software.

# O que são pacotes?

Um pacote, às vezes chamado de biblioteca ou módulo, é uma unidade básica de código reproduzível e, muitas vezes, eficiente, que visa criar ou ampliar a funcionalidade de uma linguagem de programação.
Alguns pacotes, como o pacote `numpy` do Python, são tão famosos que até [são publicados em revistas científicas como a Nature](https://www.nature.com/articles/s41586-020-2649-2)!
Além de funções definidas pelo usuário, cada função que você chama em qualquer linguagem de programação é definida dentro de um pacote, e qualquer pessoa pode escrever um pacote que pode ser compartilhado e usado dentro de uma instalação padrão de uma determinada linguagem de programação.
Na verdade, todas as linguagens de programação são simplesmente compostas de muitos pacotes que fornecem determinadas funcionalidades, até mesmo a simples função `print` que pode ser encontrada em quase todas as linguagens de programação:

```python
# This Python program prints “Hello, world!”
print('Hello, world!')
```

Quando você instala o Python, a função `print` já está incluída como parte de um pacote chamado `bltinmodule.c`: 2,843 linhas de código escritas para definir algumas funcionalidades essenciais da linguagem Python... escritas na linguagem de programação C!
Você pode ver o código-fonte por si mesmo no [Repositório do Github do Python](https://github.com/python/cpython/blob/3.8/Python/bltinmodule.c#L1821).
Talvez você esteja se perguntando "por que uma biblioteca Python é escrita em C?"
A resposta é que o código C compilado é extremamente rápido comparado com códigos mais alto nível, como o código Python; isto lhe dá outra visão das boas práticas utilizadas ao escrever código para ser compartilhado (por meio de um pacote) com outros usuários - tente otimizar seu código para que ele seja executado eficientemente.
Muitas outras linguagens também escreverão pacotes que não são escritos usando a própria linguagem, mas sim em linguagens como C ou Fortran.

# Onde/como posso obter pacotes?

As linguagens de programação podem oferecer um recurso central para fazer download e instalar pacotes, como [CRAN](https://cran.r-project.org/), [PyPi](https://pypi.org/) e [npm](https://www.npmjs.com/).
A tabela a seguir mostra uma lista de linguagens populares e quantos pacotes elas contêm (retirada de https://github.com/breck7/pldb).

```{table} Central package resources
:name: central-resources
| Language          | Website                                             | Packages | Appeared |
| ------------ | ----------------------------------------------------- | -------- | -------- |
| javascript   | http://npmjs.org                                      | 901,025  | 1995     |
| java         | https://search.maven.org/                             | 266,776  | 1995     |
| php          | https://packagist.org/                                | 211,636  | 1995     |
| perl         | https://www.cpan.org/                                 | 176,876  | 1987     |
| python       | https://pypi.python.org/pypi                          | 167,097  | 1991     |
| csharp       | https://www.nuget.org/                                | 141,524  | 2000     |
| swift        | https://cocoapods.org/                                | 57,000   | 2014     |
| clojure      | https://clojars.org/                                  | 23,459   | 2007     |
| rust         | https://crates.io/                                    | 22,486   | 2010     |
| r            | https://cran.r-project.org/                           | 13,674   | 1993     |
| haskell      | https://hackage.haskell.org/                          | 13,487   | 1990     |
| ruby         | https://rubygems.org/                                 | 9,889    | 1995     |
| matlab       | https://www.mathworks.com/matlabcentral/fileexchange/ | 9,718    | 1984     |
| erlang       | https://hex.pm/                                       | 8,069    | 1986     |
| tex          | https://ctan.org/                                     | 5,649    | 1978     |
| stata        | https://www.stata.com/manuals/rssc.pdf                | 4,608    | 1985     |
| smalltalk    | http://smalltalkhub.com/                              | 4,534    | 1972     |
| powershell   | https://www.powershellgallery.com/                    | 4,382    | 2006     |
| emacs-editor | https://melpa.org/                                    | 4,079    | 1976     |
| dart         | https://pub.dartlang.org/                             | 2,751    | 2011     |
```

Além dos recursos centrais de pacotes, muitos pacotes são desenvolvidos e podem ser acessados em repositórios como o GitHub; no entanto, você pode obter um pacote de qualquer lugar onde possa baixar um arquivo zip ou tar com uma conexão à internet.
Dada a natureza do código reproduzível, do qual um pacote é uma unidade fundamental, você provavelmente descobrirá que a maioria dos pacotes que existem em um repositório central também tem seu código publicado em um repositório git.

# Por que escrever pacotes de software?

Se você escreveu um conjunto de funções que funcionam em conjunto e são usadas para realizar algo específico, escrever um pacote é uma ótima maneira de disponibilizá-lo para outros usarem.
Alguns exemplos podem incluir:

- Uma metodologia descrita em um trabalho de pesquisa que vem com código para implementá-la
- Um novo pacote que estende a funcionalidade ao trabalhar com outros pacotes, como aqueles que fazem parte do tidyverse do R
- Uma extensão de um pacote de software existente
- Um pacote criado só para diversão!

Como unidades fundamentais de código reprodutível, os pacotes podem ser úteis para serem compartilhados publicamente, mesmo que sejam pacotes que você usa apenas para si mesmo.
Um desses pacotes que começou como uma biblioteca pessoal é [HMisc](https://cran.r-project.org/web/packages/Hmisc/index.html) (Harrell Miscellaneous): um pacote de estatística com uma coleção de funções úteis mantidas pelo Professor Frank Harrell e que agora é amplamente utilizado entre usuários de R.

## Quais padrões devem ser seguidos ao escrever um pacote?

Se você planeja escrever um pacote para ser usado por outras pessoas, há várias considerações a serem feitas.
Você deve garantir que seu código funcione de forma confiável e em sistemas diferentes do seu.
Algumas recomendações seriam:

- {ref}`Teste unitários <rr-testing-unittest>` e {ref}`Testes de integração <rr-testing-types-integrationtest>` para garantir que o código dentro do pacote seja robusto e forneça feedback útil ao usuário final durante o uso (avisos, erros).
- {ref}`Controle de versão <rr-vcs>` da base de código para acompanhar o desenvolvimento e corrigir bugs.
- {ref}`Documentação <rr-rdm-metadata>`. Isso pode estar na forma de um site ou de um wiki. Existem até pacotes específicos de cada linguagem que visam fornecer templates de projeto que renderizarão o template em um site ou outra forma de documentação (veja [packagedown](https://pkgdown.r-lib.org/) para R, [Sphinx](https://www.sphinx-doc.org/) para Python ou [Doxygen](https://www.doxygen.nl/) para C++).
- Hospede sua base de código versionada em algum lugar acessível. Há uma grande variedade de lugares para hospedar código, dependendo do seu caso de uso. Repositórios públicos do GitHub/GitLab são extremamente comuns, especialmente em código aberto, enquanto repositórios privados podem ser usados para pacotes proprietários (como no Matlab). Até mesmo um repositório git local pode ser suficiente para seu caso de uso.
- Use princípios e pipelines de Integração Contínua/Desenvolvimento Contínuo, como GitHub Actions, Jenkins, Travis ou GitLab Runners para ajudar com uma variedade de procedimentos de teste.
- Considere submeter seu pacote para um repositório central, como os listados acima ([](#central-resources)). Geralmente, são necessários requisitos rigorosos, pois é mais provável que seu código seja distribuído e usado (falaremos mais sobre isso posteriormente). Frequentemente, repositórios do GitHub são usados para armazenar compilações estáveis e "diárias"/"noturnas" de um pacote, além de um recurso central para que os usuários possam enviar bugs e contribuir para a versão atual, enquanto testam versões experimentais como uma prévia.
- Escreva uma publicação. Isso pode ser na forma de uma submissão em um periódico como o Numpy (na Nature!) ou um resumo/artigo em um anais de conferência. Isso permite que seu pacote seja revisado por especialistas na área de uso pretendido e pode dar mais confiança aos usuários em potencial de que o pacote é robusto.
- Divulgue seu pacote. Se você chegou ao ponto de hospedar e publicar seu pacote para uso de outras pessoas, você pode divulgá-lo de diversas maneiras para que as pessoas saibam sobre ele. Antigamente, colocar o seu pacote em um repositório central proporcionava uma ampla oportunidade para que ele fosse compartilhado, mas, à medida que esses recursos crescem, esse não é mais necessariamente o caso. Além de publicações em periódicos, use mídias sociais como Twitter, Discord e Slack, bem como artigos no Medium e postagens em blogs.
- Construa uma comunidade. Espera-se que alguns colaboradores tenham trabalhado juntos para criar um pacote e, ao pensar em como os desenvolvedores iniciais dos pacotes interagem com os futuros usuários, você poderá criar uma comunidade forte que ajudará a melhorar e manter o pacote no futuro.

## Comece - use um modelo

Com tantos pacotes existentes em várias linguagens, deve ser bem fácil encontrar bons exemplos de pacotes e seus códigos publicados em repositórios de software como o GitHub.
Analisar a base de código pode lhe dar uma ideia de como estruturar seus próprios pacotes, mas isso pode ser um pouco assustador, especialmente se forem pacotes bem estabelecidos e amplamente utilizados.

Como mencionado anteriormente, há pacotes que são feitos especificamente para ajudar você a criar seus próprios pacotes.
Eles funcionam criando a estrutura subjacente de um pacote ou até mesmo repositórios simples que você pode personalizar como achar melhor.
Esses modelos geralmente levam em consideração locais para documentação, convenções de comentários de código e linting de código integrado, além de subdiretórios para arquivos de cabeçalho, como você pode encontrar na linguagem de programação C.

## Passo a passo para criar um pacote em R

Vamos criar um pacote básico no R com a ajuda de alguns pacotes especializados, particularmente o `usethis` e o `roxygen2`.
Comece carregando algumas bibliotecas úteis que ajudam no desenvolvimento de pacotes em R

```r
library(devtools)   # various developer tools
library(usethis)    # create templates for repetitve tasks
library(roxygen2)   # automatically render documentation files from commented code
library(assertthat) # unit testing within functions
```

Crie um modelo de diretório esqueleto comumente usado para pacotes R - ele incluirá um arquivo de descrição, um subdiretório para arquivos de função de R, um arquivo NAMESPACE para informações globais de pacotes e um arquivo .Rproj para compartilhar e carregar facilmente diretórios de projetos locais.

```r
usethis::create_package("/RDemoPackage")
```

```
├── DESCRIPTION
├── NAMESPACE
├── R
└── RDemoPackage.Rproj
```

Crie um arquivo `.R` no subdiretório R/ e escreva uma função para converter de graus Celsius para Kelvin.
Notice that we have some code comments in the preamble that will get used to render a {term}`Markdown` file for the documentation (we use `roxygen2` for this).

```bash

# create a function to convert degrees C to Kelvin

#' Converts degrees C to Kelvin
#'
#' Allows the user to input temperature in degrees C and return the corresponding value in degrees Kelvin
#'
#' @param print_statement a logical value indicating
#' whether to print the statement (default is \code{TRUE})
#'
#' @import dplyr
#'
#' @export
#'
#' @return \code{my_function} prints a declaration
#' announcing itself if the parameter is \code{TRUE}
#'
#' @examples
#' celsius_to_kelvin(12)
#'

celsius_to_kelvin <- function(temp_C) {
  # assert value in degrees C greater than a certain amount
  assert_that(temp_C > -89.2,
              msg = "The temperature in degrees C entered is lower
              than the lowest recorded ground temperature on earth at
              −89.2 °C (−128.6 °F; 184.0 K) at the then-Soviet Vostok Station
              in Antarctica on 21 July 1983. It is likely you have entered an incorrect temperature.")
  # make the calculation
  temp_K <- temp_C + 273.15
  return(temp_K)
}
```

We also used the `assert_that()` function from the `assertthat` package that allows us to unit test within functions in R. In this case we don't allow the user to input a temperature of below -89.2 degrees C. We then use the document() function from the `roxygen2` package to automatically render documentation in the form of a {term}`Markdown` file based on the comments at the top of the function file.

```r
document()
```

Podemos então instalar e carregar nosso novo pacote em nosso ambiente local

```r
install()
library(TempConvert)
```

Por fim, se enviarmos nosso código para o GitHub, qualquer pessoa poderá instalá-lo usando o comando seguinte:

```r
install_github("pinkpanther/TempConvert")
library(TempConvert)
```


