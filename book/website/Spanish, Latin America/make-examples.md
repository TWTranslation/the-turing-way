(rr-make-examples-learnmake)=
# Aprende "Make" por Ejemplos

(rr-make-examples-makefiles)=
## Makefiles

Una de las cosas que podría disuadir a alguien de usar Make es que los Makefiles existentes pueden parecer bastante complejos, y puede parecer difícil adaptar una a sus propias necesidades. En este tutorial práctico crearemos un Makefile desde cero para un verdadero proyecto de análisis de datos. La idea es explicar diferentes características de Make iterando a través de varias versiones de un Makefile para este proyecto. Esperemos que la experiencia que ganas con este tutorial te permita crear Makefiles para tus propios proyectos.

Crearemos un `Makefile` para un pipeline de análisis de datos. The task is as follows:

> **Tarea: Dados algunos conjuntos de datos, cree un informe de resumen (en pdf) que contenga los histogramas de estos conjuntos de datos.**

(Por supuesto, esta tarea de datos es muy sencilla de enfocar en cómo usar Make.)

*A lo largo de los bloques de código tutorial que comienzan con un signo de dólar (`$`) están destinados a ser escritos en la terminal.*

(rr-make-examples-settingup)=
### Configurando

Hemos creado un repositorio básico para esta tarea, que ya contiene todo lo que necesitamos (*¡excepto el Makefile por supuesto!*). Para empezar, clona el repositorio base usando git:

```bash
$ git clon https://github.com/alan-turing-institute/IntroToMake
```

Este repositorio básico contiene todo el código que necesitaremos en este tutorial, y debería tener este contenido:

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

- **data**: directorio con dos conjuntos de datos que vamos a analizar
- **report**: el directorio de entrada para el informe
- **scripts**: directorio para el script de análisis
- **output**: directorio de salida para las figuras y el informe

Vas a notar que hay dos conjuntos de datos en el directorio **data** (`input_file_1.csv` y `input_file_2. sv`) y que ya hay un script de Python básico en **scripts** y un archivo de informe básico LaTeX en **informe**.

Si quieres seguir al respecto, asegúrate de que tienes los paquetes `matplotlib` y `numpy` instalados:

```bash
$ pip install matplotlib numpy
```

También necesitará una versión funcional de `pdflatex` y, por supuesto, `make`.

Para instrucciones de instalación para Make, vea {ref}`rr-make-appendix-installing`.

(rr-make-ejemplos-makefile1)=
### Makefile nº 1 (Los básicos)

Creemos nuestro primer Makefile. En el terminal, muévete al repositorio `introToMake` que acabas de clonar:

```bash
$ Cd Introducir
```

Usando tu editor favorito, crea un archivo llamado `Makefile` con el siguiente contenido:

```makefile
# Makefile for analysis report

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram. y
    python scripts/generate_histogram.py -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report. ex salida/figure_1.png salida/figure_2.png
    cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf
```
La sangría en cada una de las recetas son ***pestañas***, los Makefiles no aceptan sangría con espacios.

Ahora debería ser capaz de escribir:

```bash
$ hacer salida/report.pdf
```

Si todo funcionó correctamente, se crearán las dos figuras y se construirá el informe pdf .

Vamos a pasar por el Makefile con un poco más de detalle. Tenemos tres reglas, dos para las cifras y una para el informe. Veamos la regla para `output/figure_1.png` primero. Esta regla tiene el objetivo `output/figure_1.png` que tiene dos requisitos: `data/input_file_1.csv` y `scripts/generate_histogram.py`. Al dar al archivo de salida estos requisitos previos se actualizarán si cualquiera de estos archivos cambia. Esta es una de las razones por las que Make fue creado: para actualizar los archivos de salida cuando los archivos de origen cambian.

Vas a notar que la línea de recetas llama a Python con el nombre del script y usa banderas de línea de comandos (`-i` y `-o`) para marcar la entrada y salida del script . Esto no es un requisito para usar Make, pero hace fácil ver qué archivo es una entrada al script y cuál es una salida.

La regla para el informe PDF es muy similar, pero tiene tres requisitos previos (la fuente LaTeX y ambas cifras). Tenga en cuenta que la receta cambia el directorio de trabajo antes de llamar a LaTeX y también mueve el PDF generado al directorio de salida . Estamos haciendo esto para mantener los archivos intermedios de LaTeX en el directorio del informe. Sin embargo, es importante distinguir la regla anterior de lo siguiente:

```makefile
# no hacer esto
output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd report/
    pdflatex report.tex
    mv report.pdf ../output/report.pdf
```

Esta regla coloca los tres comandos en líneas separadas. Sin embargo, **Hacer ejecuta cada línea independientemente** en un subshell separado, así que cambiar el directorio de trabajo en la primera línea no tiene efecto en la segunda, y un fallo en la segunda línea no detendrá la ejecución de la tercera línea. Por lo tanto, combinamos los tres comandos en una sola receta anterior.

Así es como se ve el árbol de dependencias para este Makefile:

![DAG para Makefile nº 1](../../figures/makefile-no1.png) <small style="margin: 5pt auto; text-align: center; display: block;">El gráfico de dependencias para nuestro primer Makefile, creado usando [makefile2graph](https://github.com/lindenb/makefile2graph). ¡Observa la similitud de con la figura {ref}`en la introducción<rr-make-summary>`!</small>

(rr-make-ejemplos-makefile2)=
### Makefile nº 2 (todo y limpio)

En nuestro primer Makefile tenemos las normas básicas. Podríamos a esto si quisiéramos, pero hay algunas mejoras que podemos hacer:

1. Ahora tenemos que llamar explícitamente `make output/report.pdf` si queremos hacer el informe.

2. No tenemos forma de limpiar y empezar fresco.

Vamos a remediar esto agregando dos nuevos objetivos: `todos` y `limpiar`. En tu editor , cambia el contenido de Makefile para añadir `todas las reglas` y `limpiar` como a continuación:

```makefile
# Makefile for analysis report

all: output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex. ex && mv report.pdf ../output/report. df

limpieza:
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

Ten en cuenta que hemos añadido el objetivo `todo` a la parte superior del archivo. Hacemos esto porque hace que se ejecute el *primer objetivo* cuando no se da un objetivo explícito.  Así que ahora puedes escribir `make` en la línea de comandos y haría lo mismo que `hacer todo`.  También, ten en cuenta que solo hemos añadido el informe como el prerrequisito de `todo` porque esa es nuestra salida deseada y las otras reglas ayudan a construir esa salida. Si tienes múltiples salidas, puedes añadirlos como requisitos previos adicionales al `todo el objetivo`. Llamar al objetivo principal `todo` es una convención de Makefiles que mucha gente sigue.

La regla `limpia` está normalmente en la parte inferior, pero es más de estilo que el requerimiento . Ten en cuenta que usamos la bandera `-f` para `rm` para asegurarte de que no se queja cuando no hay ningún archivo para eliminar.

Puedes probar el nuevo Makefile ejecutando:

```bash
$ hacer limpio
$ hacer
```

Make debería eliminar la salida y los archivos intermedios después del primer comando, y generarlos de nuevo después del segundo.

(rr-make-ejemplos-makefile3)=
### Makefile n° 3 (Objetivos de Telefonia)

Normalmente, `todas las` y `limpias` se definen como [fonfonía Objetivos](https://www.gnu.org/software/make/manual/make.html#Phony-Targets). Estos son objetivos que no crean un archivo de salida. Si no está marcado como `. HONY` estos objetivos siempre serían ejecutados si surgen en una dependencia, pero ya no se ejecutará si se crea un directorio/archivo que se llama `all` o `clean`. Por lo tanto, agregamos una línea en la parte superior del Makefile para definir estos dos como objetivos fónicos:

```makefile
# Makefile for analysis report

.PHONY: todos limpios

todos: output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex. ex && mv report.pdf ../output/report. df

clean:
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

Los objetivos de fonfonfonía también son útiles cuando quieres usar Hacer recursivamente. En ese caso especificaría los subdirectorios como objetivos phony. Puedes leer más sobre [objetivos fony en la documentación](https://www.gnu.org/software/make/manual/make.html#Phony-Targets), pero por ahora es suficiente saber que `todos los` y `limpios` son típicamente declarados como telefonía.

> Sidenote: otro objetivo que normalmente es fonía es **prueba**, en caso de que tengas un directorio de pruebas llamado **test** y quieras tener un objetivo para ejecutar ellos también se llaman **test**.

(rr-make-ejemplos-makefile4)=
### Makefile nº 4 (Variables y Reglas de Patrón Automáticas)

No hay nada malo en el Makefile que tenemos ahora, pero es algo detallado porque hemos declarado todos los objetivos explícitamente utilizando reglas separadas. Podemos simplificar esto usando [Variables automáticas](https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html) y [Patrón Reglas](https://www.gnu.org/software/make/manual/html_node/Pattern-Rules.html#Pattern-Rules).

(rr-make-ejemplos-automaticvar)=
#### Variables automáticas.

Con variables automáticas podemos usar los nombres de los prerrequisitos y objetivos en la receta. Así es como lo haríamos por las reglas de la figura :

```makefile
# Makefile for analysis report

.PHONY: todos limpios

todos: output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram. y
    python scripts/generate_histogram.py -i $< -o $@

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
    python scripts/generate_histogram. y -i $< -o $@

output/report.pdf: report/report.tex output/figure_1. ng output/figure_2.png
    cd report/ && pdflatex report. ex && mv report.pdf ../output/report. df

clean:
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

Hemos reemplazado los nombres de archivo de entrada y salida en las recetas respectivamente por `$<`, que indica el *primer* prerrequisito y `$@` que indica el *objetivo*. Puedes recordar `$<` porque es como una flecha que apunta a el principio (*primer* requisito previo), y puedes recordar `$@` (dólar *a*) [como objetivo que buscas *a*](https://jameshfisher.com/2016/12/07/makefile-automatic-variables/).

Hay más variables automáticas que puede usar, consulte [la documentación ](https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html).

(rr-make-ejemplos-patrones)=
#### Reglas de Patrón

¡Observa que las recetas de las figuras se han vuelto idénticas!  Como no nos gusta repetirnos, podemos combinar las dos reglas en una sola regla usando *reglas de patrón*. Las reglas de patrón le permiten usar el símbolo `%` como comodín y combinar las dos reglas en una:

```makefile
# Makefile for analysis report

.PHONY: all clean

all: output/report.pdf

output/figure_%.png: data/input_file_%. sv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i $< -o $@

output/report. df: report/report.tex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex report.tex && mv report. df ../output/report.pdf

limpieza:
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

El símbolo `%` es ahora un comodín que (en nuestro caso) toma el valor `1` o `2` basado en los archivos de entrada en el directorio `datos`. Puedes comprobar que todo funciona ejecutando `limpiar` seguido de `make`.

Una ventaja de esto es que si desea añadir otro conjunto de datos, dígale `input_file_3`, ¡entonces solo necesitarás añadirlo a la regla para el informe !

(rr-make-ejemplos-makefile5)=
### Makefile nº 5 (comodín y sustitución de trayectoria)

Cuando los Makefiles se vuelven más complejos, puede querer utilizar características más avanzadas como construir salidas para todos los archivos en un directorio de entrada. Mientras que las reglas de patrón te llevarán un largo camino, Make también tiene características para comodines y manipulación de cadena o ruta para cuando las reglas de patrones son insuficientes.

Mientras que anteriormente nuestros archivos de entrada estaban numerados, ahora cambiaremos a un escenario donde tienen nombres más significativos. Cambiemos a la rama `big_data` :

```bash
$ git checkout big_data # checkout la rama big_data
```

La estructura del directorio ahora se ve así:

```text
☆ Data/
mañana: action.csv
mañana: ...
│   ├── input_file_1.csv
│   ├── input_file_2.csv
│   ├── ...
☆ ✫ western.csv
→ LICENSE
→ Salida/
Ninguno(es) README.md
→ reporte/
Ninguno) reporte(i) reporte() reporte()
Ningunos(es) scripts/
    mañano) generar_histogram.py
```

Como pueden ver, el directorio **data** ahora contiene archivos de entrada adicionales que tienen un nombre más significativo (los datos son calificaciones de películas IMBD por género). Además, el archivo **report.tex** ha sido actualizado para funcionar con las figuras esperadas.

Adaptaremos nuestro Makefile para crear una figura en el directorio de salida llamado `histograma_{genre}. ng` para cada archivo `{genre}.csv` , al excluir los archivos `input_file_{N}.csv`.

> Sidenote: si elimináramos los archivos `input_file_{N}.csv` , las reglas de patrón serían suficientes aquí. Esto resalta que a veces tu estructura de directorios y Makefile deben desarrollarse de la mano.

Antes de cambiar el Makefile, ejecute

```bash
$ limpiar
```
para eliminar los archivos de salida.

Primero mostraremos el Makefile completo y luego describiremos las diferentes líneas en más detalle. El archivo completo es:

```makefile
# Makefile for analysis report
#

ALL_CSV = $(wildcard data/*.csv)
INPUT_CSV = $(wildcard data/input_file_*. sv)
DATA = $(filtro $(INPUT_CSV),$(ALL_CSV))
ARCHIVOS = $(patsubst data/input_file_%. sv,output/figure_%.png,$(DATA))

.PHONY: todo limpio

todo: salida/report.pdf

$(FIGURES): salida/figure_%. ng: data/input_file_%.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i $< -o $@

output/report.pdf: report/report. ex $(FIGURES)
    cd report/ && pdflatex report.tex && mv report. df ../$@

limpieza:
    rm -f salida/report.pdf
    rm -f $(FIGURES)
```

Primero, usamos la función `comodín` para crear una variable que muestre todos los archivos CSV en el directorio de datos y uno que lista solo el antiguo `input_file_{N}. archivos sv`:

```makefile
ALL_CSV = $(comodín de datos/*.csv)
INPUT_CSV = $(comodín de datos/input_file_*.csv)
```

Una convención de código para Makefiles es utilizar todas las mayúsculas para nombres de variables y definirlas en la parte superior del archivo.

A continuación, creamos una variable para listar sólo los archivos de datos que nos interesan filtrando el `INPUT_CSV` de `ALL_CSV`:

```makefile
DATA = $(filtro $(INPUT_CSV),$(ALL_CSV))
```

Esta línea utiliza la función [`filtro`](https://www.gnu.org/software/make/manual/make.html#index-filter) para eliminar elementos que no coinciden con la variable `INPUT_CSV` de la variable `ALL_CSV` .  Tenga en cuenta que utilizamos tanto la sintaxis `$( ... )` para funciones y variables. Finalmente, usaremos la variable `DATA` para crear una variable `ARCHIVOS` con la salida deseada:

```makefile
FIGURES = $(patsubst data/%.csv,output/figure_%.png,$(DATA))
```

Aquí hemos usado la función [`patsubst`](https://www.gnu.org/software/make/manual/make.html#index-patsubst-1) para transformar la entrada en la variable `DATA` (que sigue a los `datos/{genre}. sv` patrón) a los nombres de archivo de salida deseados (usando el `salida/figura_{genre}.png` patrón). Tenga en cuenta que el carácter `%` marca la parte del nombre de archivo que será la misma tanto en la entrada como en la salida.

Ahora utilizamos estas variables para la regla de generación de figura de la siguiente manera:

```makefile
$(FIGURES): output/figure_%.png: data/%.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i $< -o $@
```

Esta regla aplica de nuevo un patrón: toma una lista de objetivos (`$(FIGURES)`) que todos siguen un patrón dado (`salida/figure_%. ng`) y basado en ese crea un prerrequisito (`data/%.csv`). Tal regla de patrón es ligeramente diferente de la que vimos anteriormente porque utiliza dos símbolos `:`. se llama regla [patrón estático ](https://www.gnu.org/software/make/manual/make.html#Static-Pattern).

Por supuesto, también tenemos que actualizar la regla `report.pdf`:

```makefile
output/report.pdf: report/report.tex $(FIGURES)
    reporte de cd / && report.report.ex de pdflatex && report.pdf ../$@
```

y la regla `limpiar`:

```makefile
clean:
    rm -f output/report.pdf
    rm -f $(FIGURES)
```

Si usted ejecuta este Makefile, necesitará construir 28 cifras. Puede que quieras usar la bandera `-j` para `hacer` para construir estos objetivos **en paralelo!**

```bash
$ make -j 4
```

¡La capacidad de construir objetivos en paralelo es bastante útil cuando tu proyecto tiene muchas dependencias!

El archivo PDF resultante ahora debería verse así:

![Reportar con todos los géneros](../../figures/make-report-all-genres.png)<small
style="margin: 5pt auto; text-align: center; display: block;">Una vista comprimida del informe con histogramos para todos los géneros.</small>
