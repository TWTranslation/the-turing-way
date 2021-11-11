(rr-rdm-hojas de cálculo)=
# Organización de datos en hojas de cálculo

Hojas de cálculos, como archivos de Microsoft Excel, hojas de google y su alternativa de código abierto [(por ejemplo) LibreOffice](https://www.libreoffice.org), se utilizan comúnmente para recopilar, almacenar, manipular, analizar y compartir datos de investigación. Las hojas de cálculo son herramientas cómodas y fáciles de usar para organizar la información en un formato fácil de escribir y de leer para los humanos. Sin embargo, se deben utilizar con precaución, ya que el uso de una hoja de cálculo inapropiada es una causa importante de errores en el flujo de trabajo de análisis de datos. Hay una colección de [historias de horror](http://www.eusprig.org/horror-stories.htm) que dice cómo el uso de hojas de cálculo puede arruinar los estudios basados en análisis debido al comportamiento inesperado de la hoja de cálculo o los procesos de edición propensos a errores. Algunos de estos errores no son exclusivos de las hojas de cálculo, pero muchos, como [este](https://doi.org/10.1186/s13059-016-1044-7) y [este](https://doi.org/10.1186/1471-2105-5-80), son.

Afortunadamente, la mayoría de los problemas se pueden evitar con las siguientes recomendaciones:
- Usar hoja de cálculo en formato de sólo texto (.csv o .tsv),
- Crear hojas de cálculo de marea,
- Hacer que las hojas de cálculo sean consistentes (con otras) e implementar reglas para las entradas de datos, e
- Evite manipular y analizar datos en el software de la hoja de cálculo (esto incluye copiar y pegar).

Las hojas de cálculo son una potente herramienta sólo si el conjunto de datos se recopila y se organiza en formatos específicos que se pueden utilizar tanto para los ordenadores como para los investigadores.

(rr-rdm-hojas de cálculo-nodata)=
## 1. Evitar contenido no de datos

Las hojas de cálculo se utilizan para organizar los datos de forma tabular. El sujeto, el objeto y la relación entre ellos se transforman en filas, celdas y columnas, respectivamente. Por ejemplo, el tema: `experimento`, relación: `se realizó en la fecha`, y el objeto: `2020-06-06` da una fila para cada experimento, una columna para `fecha de experimento`, y el valor `2020-06-06` en la celda. Desafortunadamente, los programas de hojas de cálculo le permiten añadir otros tipos de contenidos, como el color a celdas específicas. Aunque puede ayudar a los investigadores en algún momento, uno debe recordar que este tipo de modificación de celda **no debe considerarse como datos**, principalmente porque no pueden ser exportados a otro software.

Como regla simple, lo que se puede exportar en un formato de texto solamente, valores separados por comas (V), o valores separados por tabuladores (TSV), se puede considerar como los datos. Se deben evitar otras funciones al usar estos programas para datos de investigación. Esto incluye:
- cambiando fuente, color o bordes,
- usando funciones,
- fusionando células (ésta es particularmente problemática),
- usando formatos específicos de celdas (especialmente fechas, ver abajo).

Como prueba para la compatibilidad de su hoja de cálculo con la investigación reproducible, exporte sus datos desde la hoja de cálculo al formato CSV y vuelva a abrirlo. Si todavía puede obtener toda la información que ha almacenado en su hoja, entonces sus datos están bien.

```
Consejo: Si desea utilizar el color para ayudar con un resaltado rápido en su documento, crear una nueva columna para indicar qué celdas son resaltadas (se convierte en parte de sus datos).
Además de la retroalimentación visual, ahora también puede utilizar esta información para filtrar o ordenar sus datos y obtener rápidamente las celdas resaltadas.

```
(formato rr-rdm-hojas de cálculo)=
## 2. Formato de marea para hojas de cálculo

Si la hoja de cálculo está mal organizada, entonces puede ser [difícil para los colaboradores](https://luisdva.github.io/pls-don't-do-this/) de {ref}`read-in y volver a usar <rr-rdm-fair>` sus datos para análisis posteriores.

De hecho, una gran parte del trabajo de los científicos de datos es transformar los datos en una forma que el ordenador pueda leer. Sin embargo, esto requiere mucho tiempo cuando la información se divide entre varias hojas de cálculo y cuando no hay planes de transformación de datos concretos antes de que se adquieran los datos.

Hay reglas muy simples para facilitar el uso de datos, que se incluyen en el concepto de [**datos de marea**](https://en.wikipedia.org/w/index.php?title=Tidy_data&oldid=962241815). El formato de datos de marea permite filtrar y ordenar datos fácilmente en el software de hoja de cálculo.

En resumen:

- Una columna = una variable (no más, no menos, esto implica que dos nombres de cabecera no pueden ser idénticos)
- Una fila = una muestra
- Una celda = una información
- **La primera fila es la cabecera**
- Los nombres de cabecera no deben incluir un carácter especial (incluyendo espacio) o comenzar con un número

```{figure} ../../figures/tidy-1.png
---
nombre: tidy-1
alt: La imagen representa datos de mareas. Una columna representa una variable, una fila representa una muestra, y una celda representa una pieza de información.
---
Una ilustración de datos de marea.
```

Tres reglas hacen un conjunto de datos:
1. Cada variable debe tener su propia columna.
2. Cada observación debe tener su propia fila.
3. Cada valor debe tener su propia celda.

Hay herramientas de validación de datos disponibles, como https://goodtables.io, que te permiten comprobar automáticamente si tus hojas de cálculo están ordenadas.

(rr-rdm-hojas de cálculo-consistentes)=
## 3. Valores Consistentes

Cuando trabajas con varias hojas de cálculo o con un equipo durante la recopilación de datos, es crucial asegurarse de que la misma información será introducida con el mismo término, y que el mismo término siempre transmite la misma información. En el ejemplo de los datos de iris si algunas personas utilizan términos diferentes para registrar información de una columna específica - tales como nombrar la columna `especies` en lugar de `especies` o utilizar `iris setosa`, `conjunto.` o `i. etosa` en lugar de `setosa` - la creación de un flujo de trabajo reproducible será más difícil, y los errores pueden incluso pasarse por alto.  
Discrepancias a menudo conducen a errores, especialmente cuando los mismos términos podrían significar cosas diferentes dependiendo de quién introduzca los datos. Por ejemplo, indicar la fecha como `02-03` significará el 3 de febrero<sup>rd</sup> en los Estados Unidos, pero Marzo el 2<sup></sup> en Europa.

Es una buena práctica implementar un diccionario de datos `` o una `taxonomía` de términos aceptados y documentar la convención utilizada en un archivo README. Dependiendo del software que utilice, puede restringir los valores aceptados en columnas específicas. Si tal taxonomía o ontología está disponible, utilizarla puede permitirle a usted (y a otros) usar los datos junto con otros conjuntos de datos. Por ejemplo, puedes usar el término genérico `hombre` y `mujer` para el sexo de un animal (sin mayúsculas, y sin abreviatura), ya que muchas ontologías usan estos términos. Además, es posible que desee utilizar algunas herramientas adicionales para validar las hojas de cálculo antes de su integración en el análisis.

También debería tener reglas claras sobre puntos de datos faltantes. Usando `NA`, `NULL`, o celdas vacías no son triviales y pueden tener diferentes significados (punto de datos imposible, no registrado, o punto de datos perdidos). Imagina que un investigador quiere registrar el tiempo que pasa antes de ver un polinizador en una flor de iris, y ningún polinizador fue visto durante el experimento de 10 minutos. Supongamos que el investigador reporta `600` (la duración del experimento en segundos). En ese caso, no habrá manera de distinguir un escenario en el que no se vio ningún polinizador, y uno cuando se vio a un polinizador al final del experimento (y se puede olvidar esa regla y tratar `600` como un valor normal).

Si se reporta `NA` , uno puede interpretar este valor como un punto de datos no existente (el experimento no había sido realizado). Una solución elegante es tener una segunda columna indicando si un polinizador fue visto durante el experimento, donde `TRUE`, `FALSE` y `NA` valores son aceptados.

Por último, también debe tener en cuenta el comportamiento predeterminado de su programa de hoja de cálculo ya que puede ser diferente para diferentes programas, y diferentes versiones del mismo programa. Por ejemplo, el punto decimal suele indicarse con una coma en las versiones francesa o alemana de Excel. En las versiones inglesas, se utiliza un punto ya que la coma no tiene sentido (`9, 00` se traducirá a `9000` o `9` dependiendo de la versión que estés usando).

(rr-rdm-hojas de cálculo-manipulación)=
## 4. Manipulación y análisis de datos

***No manipular ni analizar datos en un programa de hoja de cálculo.***

En particular, sólo copie y pegue de una hoja de cálculo a otra si el proceso se utiliza muy raramente. Ahora no es fácil leer y combinar diferentes hojas de cálculo en el software de análisis, con la ventaja adicional de que el software devolverá un mensaje de error si los encabezados no encajan.

(rr-rdm-hojas de cálculo-consejos)=
## Otros Consejos

(rr-rdm-hojas de cálculo-consejos-tiempo)=
### Tratar con la información del tiempo

Las fechas deben escribirse como `yyyy-mm-dd`, Excel y otros programas tienden a transformar estos datos en sus propios formatos de fecha (incluso durante la importación de datos desde un archivo CSV). La única forma 100% segura de hacer frente a esto es hacer diferentes columnas durante años, meses, y días y recrea los datos en el software utilizado para el análisis. Tiempo introducido con `hh:mm:ss` normalmente funciona.

(rr-rdm-hojas de cálculo-puntos-varios)=
### Trabajando con varias hojas

A menudo utilizamos varias hojas para datos diferentes pero relacionados. De hecho, es una herramienta útil, especialmente cuando uno quiere compartir el conjunto de datos completo con los demás.  
Por otro lado, los archivos CSV sólo guardan una hoja a la vez. Aunque la mayoría del software de análisis de datos tienen varias maneras de importar archivos `xlsx` , la solución práctica es trabajar con el formato `xlsx` asegurándose de que la información esté disponible en formato CSV para cada hoja. Una solución mejor, especialmente para el almacenamiento a largo plazo, es guardar todas las hojas por separado en un archivo CSV y comprimirlas juntos. Esta solución también permite incluir documentación extra que podría estar en un formato diferente (por ejemplo, un archivo de texto que explica el significado de las cabeceras y la unidad elegida).

(rr-rdm-hojas de cálculo-consejos-diseño)=
### Diseño de hoja de cálculo

Los datos a menudo se recogen manualmente, sobre papel. Para ser más eficiente y evitar errores, es mejor recoger los datos en el mismo formato que será digitalizado. Es decir, se debería diseñar la hoja de cálculo legible por ordenador que se imprimirá para la recopilación de datos. Esto plantea algunas preguntas de diseño, especialmente para información que es única en un experimento (un documento) pero puede cambiar entre experimentos (por ejemplo, experimentalista o temperatura de la habitación). De hecho, usted desea esa información en una columna, pero le gustaría introducirla sólo una vez durante la adquisición de datos (especialmente en la versión en papel). Una solución es mover estas columnas a una segunda página (no impresa) en la hoja de cálculo y ajustar los encabezados y pie de página para introducir la información en la versión en papel. Es necesario asegurarse de que la información se introduce en la columna durante la digitalización.

La forma en que ingresas la información (es decir, la forma en que diseñas tus cabeceras y contenido celular) puede ser diferente dependiendo del análisis que quieras realizar. Siempre hay que intentar ser lo más genérico y objetivo posible y pensar en cualquier análisis adicional que uno quiera realizar.


Como ejemplo, Supongamos que está interesado en representar si el porcentaje de flores cuya longitud sea superior a 6 mm es diferente en tres especies de iris. Puede ser inclinado a grabar una columna verdadera o falsa `es-sepal-longer-than-6cm`, pero esto restringirá el análisis que puede realizar. Una mejor solución es registrar la longitud del sepal (en mm) y crear automáticamente la categorización más tarde.

Si está usando R, entonces trazaría lo que deseaba:
```
iris %>% ## el conjunto de datos de iris está incluido en R base
  dplyr::mutate ("is-sepal-longer-than-6cm" = ifelse(Sepal. ength >6, TRUE, FALSE)) %>% ## esto crea la nueva columna
  ggplot2::ggplot (aes (x=`is-sepal-longer-than-6cm` , fill= Especies)) + ggplot2::geom_bar() ## esta traza los datos
```

Los nombres de los cabeceros deben elegirse con cuidado, y cuando no esté claro qué significa y qué unidad se utiliza, puede querer añadir alguna explicación en un documento externo. También puede compartir una hoja de cálculo con un colega para recibir comentarios sobre lo comprensible que es su hoja.

Otra alternativa es añadir algunas explicaciones en la parte superior de la hoja en las primeras filas antes de los encabezados. Al mantener la información legible por el ser humano en la parte superior del archivo, uno puede entender mejor los datos que se inician en las filas de la cabecera. Esta información también puede ayudar a analizar esos datos, asegurándose de que los guiones ignoran las líneas de explicación y sólo lo consideran durante el análisis. Sin embargo, un buen archivo con columnas de tidy y registros no debería necesitar una explicación adicional.

En cuanto a los nombres de los encabezados, el tamaño de los encabezados no es un problema para los ordenadores. Sin embargo, para la legibilidad humana, es mejor mantenerla corta (hasta 32 caracteres).

No tiene que pensar en el orden de las columnas para el análisis, ya que no tiene importancia para el software de análisis de datos. Por lo tanto, puede optimizar completamente ese parámetro para el paso de la recolección de datos.

(rr-rdm-hojas de cálculo-tips-versioning)=
### Estándar y Versionado

Un buen diseño de hoja de cálculo tiene nombres instructivos e intuitivos de cabeceras y facilita tanto la recolección de datos como el análisis. Construir tal diseño de una hoja de cálculo es difícil ya que lleva tiempo, múltiples iteraciones, y consenso. Por lo tanto, es beneficioso buscar una hoja de cálculo estándar antes de diseñar la suya propia y compartir abiertamente su diseño una vez que se ha creado. También se debe utilizar un historial de versiones de las hojas de cálculo (como evolucionarán), y el script de análisis debe mencionar el número de versión de la hoja de cálculo. La documentación de la hoja de cálculo, su historial de versiones y las ontologías a las que está vinculado, puede ser útil para futuros usuarios.

(rr-rdm-hojas de cálculo-tips-team)=
### Trabajando en un equipo: cierre

Si está trabajando con un equipo en la recopilación de datos, asegúrese de:
- Todos utilizan el mismo software (y la misma versión) para introducir los datos.
- Todos utilizan la misma versión de la plantilla de hoja de cálculo.
- Todo el mundo entiende lo que representa cada columna, y la unidad que debe ser utilizada.
- Cada columna tiene un estándar definido sobre cómo introducir datos en ella o taxonomía de términos que uno puede utilizar.
- Una persona es responsable de responder preguntas supuestas durante la recopilación de datos.
- Cada hoja de cálculo es validada antes de entrar en el flujo de trabajo de análisis y lo antes posible.


(rr-rdm-hojas de cálculo-resumido)=
## Summary

Si bien las hojas de cálculo pueden ser una forma muy fácil de recopilar y compartir datos, también pueden ser la fuente de errores si se utilizan indebidamente. Cuando se trata de desarrollar un flujo de trabajo reproducible para los análisis, se debe diseñar la hoja de cálculo tanto para computadoras como para legibilidad humana e incluso antes de iniciar la recopilación de datos, deberían considerar lo que facilitaría su análisis de datos. La mejor forma de evitar la manipulación y el análisis de los datos en las hojas de cálculo, en particular, ya que conduce a flujos de trabajo no reproducibles. Utilizar el control de versiones y hacer que los datos de sólo lectura son dos prácticas adicionales de gestión de datos que pueden prevenir accidentes.

Utilice un README [{term}`def<README>`] archivo y otras opciones de estructura para explicar convenciones de nombres. Esto dejará claro a otros lo que significan los nombres de archivo y cabecera, y qué criterios deben tener en cuenta al diseñar un flujo de trabajo de análisis. Si trabajas en un equipo, deberías prestar especial atención a las convenciones y asegurarte de que todo el mundo las sigue.

Para obtener más información sobre la organización de datos en hojas de cálculo, puedes echar un vistazo a las lecciones de Carpintería de Datos para [Ciencias Sociales](https://datacarpentry.org/spreadsheets-socialsci/) y [Ecologistas](https://datacarpentry.org/spreadsheet-ecology-lesson/).
