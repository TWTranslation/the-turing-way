(rr-code-style-naming)=

# File and Variable Naming

### Nomeação de arquivos

The [Centre for Open Science](https://help.osf.io/article/146-file-naming) has some useful suggestions for the naming of files, particularly ensuring that they are readable for both humans and machines.
This includes avoiding the use of wildcard characters (`@£$%`) and using underscores (`_`) to delimit information, and dashes (`-`) to conjunct information or spaces.
Também sugerem datar ou numerar arquivos e evitar palavras como FINAL (ou FINAL-FINAL).
The dating suggestion is the long format `YYYY-MM-DD`, followed by the name of the file, and the version number.
Isso resulta em ordem cronológica automática. Por exemplo:

```r
data <- read.csv("2019-05-17_Turing-Way_Book-Dash.csv")
```

O guia de estilo R sugere manter os nomes de arquivos básicos.
This might be appropriate for small compact projects, however over larger projects with lots of similar files, or if you are not using version control (see chapter on {ref}`Version Control<rr-vcs>`) it may be more appropriate to use the COS guidelines.
For more details please see the chapter on {ref}`File Naming<pd-filenaming>`.

#### Versioning

Uma consideração adicional à nomeação de arquivos é versionar o seu software.
Using versioning guidelines will help avoid using words like `_FINAL.R`.
Uma convenção típica é a abordagem MajorMinorPatch (ou MajorMinorRevision).
Nisto, sua primeira tentativa em um pacote ou biblioteca pode ser assim:

```
my-package_1_0_0.py
```

Isso indica que o software está na fase alfa sem revisão/alterada (0) da primeira versão principal.

### Nomeação de Variáveis

In maths projects at school, variables are often unimaginatively named "x", "y", and "z".
Esta brevidade é provavelmente porque os professores (compreensivelmente) não querem escrever repetidamente nomes de variáveis longos no quadro.
No entanto, ao programar, você tem a liberdade de nomear suas variáveis o que quiser.
Isso pode ser útil para representar o fluxo do seu script.

Seja criativo!

#### Convenções de nomeação

Para clareza e legibilidade, escolher um conjunto de convenções para suas variáveis é útil.
Existe uma grande variedade, e algumas pessoas podem ser muito eloquentes sobre qual é "correto" (selecione uma que esteja certa para você!).
Estas incluem:

- CamelCase
- lowerCamelCase
- Sublinhado_Métodos
- Misturado_Case_With_Underscores
- minúsculas

Por exemplo:

```r
raw_data <- read.csv("data.csv") # Not very creative
rawData <- read.csv("data.csv")  #lowerCamelCase
```

OK, `raw_data` is not very creative, but it could easily have been `spam` or `eggs` if that makes sense in your script.
Você também pode ter uma função que recupera uma variável:

```r
rawDat <- recode(rawDat)
```

A reutilização do nome da variável não fornece informações sobre o processo que o rawDat atravessou.
Armazená-lo como uma variável separada nos permite ver quais transformações foram realizadas na variável original:

```
rawDat_recoded <- recode(rawDat)
```

Se você gostar, você pode limpar a variável antiga usando remover como acima.

```
remove(rawDat) #In R
del(rawDat) # In Python
```

É importante escolher um estilo e cingir-se:

```
ThisIs Because_SwitchingbetweenDifferentformats is.difficult to read.
```

```
Where_as if_you stick_to one_style, your_code will_be easier_to_follow!
```