(rr-make-recursos)=
# Recursos para "Make"

(rr-make-resources-manual)=
## Manual

- [The Official Make Reference manual](https://www.gnu.org/software/make/manual/make.html).

(rr-make-resources-discussions)=
## Discusiones

- [Discusión sobre hacer en HackerNews](https://news.ycombinator.com/item?id=15041986).

- [Recuperar perjudicial](http://aegis.sourceforge.net/auug97.pdf). Este es un papel conocido sobre por qué no debes usar makefiles anidados. Resumiendo: si haces este Make no puede ver el DAG completo y eso provoca problemas.

- [Hacer que no recursivo sea considerado perjudicial](https://www.microsoft.com/en-us/research/wp-content/uploads/2016/03/hadrian.pdf): Este es un documento de investigación que describe los fallos de Make for large y construcciones complejas.

(rr-make-recursos-blogs)=
## Bloques

Por supuesto que no somos los primeros en sugerir el uso de Make para la reproducibilidad! Las publicaciones del blog citadas a continuación se encontraron después de que se escribió el tutorial anterior, pero pueden añadir más información y ejemplos.

- [Reproducibilidad es difícil](https://kbroman.wordpress.com/tag/reproducible-research/). Discuta hacer un proyecto de investigación reproducible usando Make.

- [GNU Make for Reproducible Data Analysis](http://zmjones.com/make/). Argues por usar Make for reproducible analysis in an similar to we do above.

- [Pipelines Bioinformáticos Reproducibles usando Hacer](http://byronjsmith.com/make-bml/). Un tutorial bastante extenso sobre el uso de Hacer para análisis de datos.

- [Análisis automático de datos Pipelines](http://stat545.com/automation04_make-activity.html). Un tutorial similar que usa R para el análisis.

- [Escribiendo un papel reproducible](http://handbook.datalad.org/en/latest/usecases/reproducible-paper.html#automation-with-existing-tools). Un tutorial similar con Python usando variables para llenar tablas en el manuscrito .

(rr-make-resources-tools)=
## Herramientas

- Grafica el DAG del Makefile con [makefile2graph](https://github.com/lindenb/makefile2graph).

(rr-make-resources-alternatives)=
## Alternativos a hacer

Hay [muchas alternativas a Make](https://en.wikipedia.org/wiki/List_of_build_automation_software). Debajo de hay algunos que nos llamaron la atención y que podrían valer la pena mirar.

- [SnakeMake](https://snakemake.readthedocs.io/en/stable/). Una alternativa basada en Python3 a Make. Snakemake soporta múltiples comodines en nombres de archivo, soporta código Python en reglas, y puede ejecutar flujos de trabajo en estaciones de trabajo, clústers, la cuadrícula y en la nube sin modificaciones.

- [Tup](http://gittup.org/tup/index.html). Un sistema de construcción rápida que procesa los requisitos previos para arriba en lugar de la caída de Make. La velocidad se ve impresionante y el papel que lo describe es interesante, pero para pequeños proyectos la velocidad de Make no será un cuello de botella. La sintaxis de Tupfile no es compatible con la de Makefiles.

- [Bazel](https://www.bazel.build). Una versión de código abierto del sistema de construcción Blaze de Google.

- [Suerte](https://buckbuild.com/). Sistema de construcción de Facebook.


