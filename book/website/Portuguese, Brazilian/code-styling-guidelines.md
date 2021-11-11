(pd-code-styling-guidelines)=
# Diretrizes para estilo de código

As directrizes de estilo diferem entre organizações, línguas e ao longo do tempo. Antes, o guia de estilo Python Enhancement Proposal 8 (PEP 8) tem tido numerosas revisões desde a sua publicação em 2001. Você deve escolher um framework que seja melhor para os seus propósitos: seja para o seu benefício ou o benefício dos outros. Também é importante mantermo-nos consistentes (e não consistentemente inconsistentes)!

Diretrizes de estilo incluem conselhos para nome de arquivos, nome de variáveis, uso de comentários e espaço em branco e colchete.

Os seguintes links são links para guias de estilo existentes que podem ser úteis ao decidir como formatar seu código:

* [PEP8](https://www.python.org/dev/peps/pep-0008/) para Python.
* [Guia de estilo](http://adv-r.had.co.nz/Style.html) para R </a> de Hadley Wickham.
* [Guia de estilo](https://google.github.io/styleguide/Rguide.xml) do Google para R.
* [Guia de estilo da Microsoft](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/inside-a-program/coding-conventions) para C#.
* [PEP7](https://www.python.org/dev/peps/pep-0007/) para C.

No entanto, para começar rapidamente, as seções seguintes fornecem alguns conselhos para o estilo de código.

## Nomeação de arquivos

O [Centro para Ciência Aberta](http://help.osf.io/m/bestpractices/l/609932-file-naming) tem algumas sugestões úteis para a nomeação de arquivos, em especial assegurar a sua legibilidade para os seres humanos e para as máquinas. Isto inclui evitar o uso de caracteres curinga (@£$%) e o uso de sublinhados ("\_") para fornecer informações, e traços ("\-") para conjuntar informações ou espaços. Também sugerem datar ou numerar arquivos e evitar palavras como FINAL (ou FINAL-FINAL). A sugestão de namoro é o formato longo `YYYY-MM-DD`, seguido pelo nome do arquivo e o número da versão. Isso resulta em ordem cronológica automática. Por exemplo:

```r
dados <- read.csv("2019-05-17_Turing-Way_Book-Dash.csv")

```
O guia de estilo R sugere manter os nomes de arquivos básicos. Isso pode ser adequado para pequenos projetos compactos, no entanto em projetos maiores com muitos arquivos similares. ou se você não estiver usando o controle de versão (ver capítulo /? talvez seja mais adequado utilizar as orientações COS. Para mais detalhes, por favor veja o capítulo no {ref}`Nome de Arquivo<pd-filenaming>`.

### Versioning

Uma consideração adicional à nomeação de arquivos é versionar o seu software. Usar diretrizes de versão ajudará a evitar o uso de palavras como `_FINAL.R`. Uma convenção típica é a abordagem MajorMinorPatch (ou MajorMinorRevision). Nisto, sua primeira tentativa em um pacote ou biblioteca pode ser assim:
```
meu-pacote_1_0_0.py
```
Isso indica que o software está na fase alfa sem revisão/alterada (0) da primeira versão principal.

## Nomeação de Variáveis

Em projetos de matemática na escola, as variáveis são muitas vezes inimaginativamente chamadas "x", "y" e "z". Esta brevidade é provavelmente porque os professores (compreensivelmente) não querem escrever repetidamente nomes de variáveis longos no quadro. No entanto, ao programar, você tem a liberdade de nomear suas variáveis o que quiser. Isso pode ser útil para representar o fluxo do seu script.

Seja criativo!

### Convenções de nomeação

Para clareza e legibilidade, escolher um conjunto de convenções para suas variáveis é útil. Existe uma grande variedade, e algumas pessoas podem ser muito eloquentes sobre qual é "correto" (selecione uma que esteja certa para você!). Estas incluem:

- CamelCase
- lowerCamelCase
- Sublinhado_Métodos
- Misturado_Case_With_Underscores
- minúsculas

Por exemplo:

```r
raw_data <- read.csv("data.csv") # Não muito criativo
rawData <- read.csv("data.csv") #lowerCamelCase
```

OK, `raw_data` não é muito criativo, mas poderia ter sido facilmente `spam` ou `ovos` se isso fizesse sentido no seu script. Você também pode ter uma função que recupera uma variável:

```r
rawDat <- recode(rawDat)
```

A reutilização do nome da variável não fornece informações sobre o processo que o rawDat atravessou. Armazená-lo como uma variável separada nos permite ver quais transformações foram realizadas na variável original:

```
rawDat_recoded <- recode(rawData)
```

Se você gostar, você pode limpar a variável antiga usando remover como acima.

```
remove(rawDat) #In R
del(rawDat) # In Python
```

É importante escolher um estilo e cingir-se:

```
ThisIs Because_SwitchingbetweenDifferentFormatos é.difícil de ler.
```

```
Considerando que _se_você agarra_a um estilo, seu_código será_mais fácil_seguir!
```
