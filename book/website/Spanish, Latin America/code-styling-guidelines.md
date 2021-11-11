(pd-code-estilo-directrices)=
# Orientaciones para el estilo de código

Las pautas de estilos difieren entre organizaciones, idiomas y con el tiempo. Even, la guía de estilo Python Enhancement Proposal 8 (PEP 8) ha tenido numerosas revisiones desde que se publicó en 2001. Debe elegir un marco que sea mejor para sus propósitos: ya sea para su beneficio o para el de los demás. También es importante mantener la coherencia (¡y no siempre incoherente)!

Las pautas de estilo incluyen consejos para nombres de archivos, nombres de variables, uso de comentarios, y espacios en blanco y corcheting.

Los siguientes son enlaces a guías de estilo existentes que pueden ser útiles al decidir cómo formatear tu código:

* [PEP8](https://www.python.org/dev/peps/pep-0008/) para Python.
* [Guía de estilo](http://adv-r.had.co.nz/Style.html) de Hadley Wickham para R.
* [La guía de estilo](https://google.github.io/styleguide/Rguide.xml) de Google para R.
* [Guía de estilo](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/inside-a-program/coding-conventions) de Microsoft para C#.
* [PEP7](https://www.python.org/dev/peps/pep-0007/) para C.

Sin embargo, para empezar rápidamente, las siguientes secciones presentan algunos consejos para el estilo de código.

## Nombre de archivo

El [Centro de Ciencias Abiertas](http://help.osf.io/m/bestpractices/l/609932-file-naming) tiene algunas sugerencias útiles para nombrar archivos, en particular garantizar que sean legibles tanto para los seres humanos como para las máquinas. Esto incluye evitar el uso de caracteres comodín (@£$%) y usar guiones bajos ("\_") para delimitar información, y guiones ("\-") para conjuntar información o espacios. También sugieren fidelizar o numerar archivos y evitar palabras como FINAL (o FINAL-FINAL). La sugerencia de citas es el formato largo `AAA-MM-DD`, seguido por el nombre del archivo y el número de versión. Esto resulta en un orden cronológico automático. Por ejemplo:

```r
datos <- read.csv("2019-05-17_Turing-Way_Book-Dash.csv")

```
La guía de estilo R sugiere mantener los nombres de los archivos básicos. Esto podría ser apropiado para pequeños proyectos compactos, sin embargo en proyectos más grandes con muchos archivos similares, o si no está utilizando el control de versiones (ver capítulo /? puede ser más apropiado utilizar las directrices del COS. Para obtener más información, consulte el capítulo {ref}`Nombre de archivo<pd-filenaming>`.

### Versioning

Una consideración adicional para nombrar archivos es la versión de su software. El uso de directrices de versionado ayudará a evitar el uso de palabras como `_FINAL.R`. Una convención típica es el enfoque de Mallorca. En esto, su primer intento en un paquete o biblioteca podría verse así:
```
mi-paquete_1_0_0.py
```
Esto indica que el software está en la etapa alfa no revisada/parcheada (0) de la primera versión mayor.

## Nombramiento variable

En los proyectos de matemáticas en la escuela, las variables a menudo se llaman poco imaginativamente "x", "y", y "z". Esta brevedad se debe probablemente a que los profesores (comprensiblemente) no quieren escribir repetidamente nombres de variables largas en el foro. En la codificación, sin embargo, usted tiene la libertad de nombrar sus variables lo que quiera. Esto puede ser útil para representar el flujo de su script.

¡Sé creativo!

### Convenciones de nombres

Para mayor claridad y legibilidad, elegir un conjunto de convenciones para nombrar sus variables es útil. Hay una gran variedad, y algunas personas pueden ser bastante vocales sobre las que uno es "correcto" (¡elige uno que sea adecuado para ti!). Estos incluyen:

- Caso de Camello
- minúsculas
- Métodos de puntuación inferior
- Mixed_Case_With_Enderscores
- minúsculas

Por ejemplo:

```r
raw_data <- read.csv("data.csv") # No muy creativo
rawData <- read.csv("data.csv") #lowerCamelCase
```

OK, `raw_data` no es muy creativo, pero podría haber sido fácilmente `spam` o `huevos` si eso tiene sentido en su script. También puede tener una función que recupere una variable:

```r
rawDat <- recode(rawDat)
```

La reutilización del nombre de variable no proporciona información sobre el proceso que rawDat ha sido atravesado. Almacenarla como una variable separada nos permite ver qué transformaciones se han llevado a cabo en la variable original:

```
rawDat_recoded <- recode(rawDat)
```

Si te gusta puedes limpiar la variable antigua usando remover como arriba.

```
remove(rawDat) #In R
del(rawDat) # In Python
```

Es importante elegir un estilo y ceñirse a él:

```
Esto es Because_SwitchingbetweenDifferentformat is.difícil de leer.
```

```
¡Donde_como if_usted se pega a uno_estilo_tu_código será_más fácil_a_seguir!
```
