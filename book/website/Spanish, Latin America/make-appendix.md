(rr-make-apéndice)=
# Apéndice

(rr-make-appendix-dag)=
## Gráfico Acyclic Directo

Un gráfico acíclico dirigido (DAG) es un *gráfico* de nodos y bordes que es:

1. *dirigido*: los bordes tienen una dirección y solo puedes caminar la gráfica en esa dirección
2. *acíclico*: no contiene ciclos: A no puede depender de B cuando B depende de A.

Esta última propiedad es por supuesto bastante útil para un sistema de construcción. Puede encontrar más información sobre DAG en [Wikipedia](https://en.wikipedia.org/wiki/Directed_acyclic_graph).

(rr-make-appendix-installing)=
## Instalando Make

Primero, compruebe si ya tiene instalado GNU Make . En un tipo de terminal:

```bash
$ de creación
```

Si obtienes `make: comando no encontrado` (o similar), no tienes Make. Si obtienes `: *** No se encontraron objetivos especificados ni makefile.  Parada.` tú tienes Make.

Utilizaremos **GNU Make** en este tutorial. Verifique que esto es lo que usted tiene escribiendo:

```bash
$ make --version
```

Si no tienes GNU Make pero tienes la versión BSD, es posible que algunas cosas no funcionen como se esperaba y recomendamos instalar GNU Make.

Para instalar GNU Make, siga estas instrucciones:

- **Linux**: Utilice su gestor de paquetes para instalar Make. Por ejemplo en Arch Linux:

  ```bash
  $ sudo pacman -S make
  ```

  Ubuntu:
  ```bash
  $ sudo apt-get install build-essential
  ```

- **MacOS**: Si tienes [Homebrew](https://brew.sh/) instalado, es simple:

  ```bash
  $ brew install make
  ```

  Si tienes una implementación de Make incorporada, por favor asegúrate de que es GNU Make marcando `make --version`.

(rr-make-appendix-advancedgr)=
## Avanzado: Generando Reglas usando Llamada

*Esta sección continúa el tutorial anterior y muestra una característica de Hacer para la generación automática de reglas.*

En un pipeline de ciencias de datos, puede ser bastante común aplicar múltiples scripts a los mismos datos (por ejemplo cuando se comparan métodos o se prueban parámetros diferentes). En ese caso, puede volverse tedioso escribir una regla separada para cada script cuando solo el nombre del script cambie. To simplify this process, we can let Make expand a so-called [*canned* recipe](https://www.gnu.org/software/make/manual/make.html#Canned-Recipes).

Para seguir la rama `, cambie a la rama` predefinida:

```bash
$ hacer limpieza
$ git stash --all # nota la bandera '--all' así que también almacenamos el Makefile
$ git checkout enlatado
```

En esta rama notarás que hay un nuevo script en el directorio **scripts** llamado `generate_qqplot.py`. Este script funciona de forma similar al generate_histogram`. y` script (tiene la misma sintaxis de línea de comandos), pero genera un [QQ-plot](https://en.wikipedia.org/wiki/Q%E2%80%93Q_plot). El archivo **report.tex** también ha sido actualizado para incorporar estas parcelas.

Después de cambiar a la rama `enlatada` , habrá un Makefile en el repositorio que contiene una regla separada para generar los gráficos QQ. Este Makefile se ve así:

```makefile
# Makefile for analysis report
#

ALL_CSV = $(wildcard data/*.csv)
DATA = $(filtro-out $(comodín data/input_file_*.csv),$(ALL_CSV))
HISTOGRAMS = $(patsubst data/%.csv,output/figure_%. ng,$(DATA))
QQPLOTS = $(patsubst data/%.csv,output/qqplot_%.png,$(DATA))

.PHONY: todos limpios

todos: output/report.pdf

$(HISTOGRAMS): output/histogram_%.png: data/%.csv scripts/generate_histogram. y
    python scripts/generate_histogram.py -i $< -o $@

$(QQPLOTS): output/qqplot_%.png: data/%. sv scripts/generate_qqplot.py
    python scripts/generate_qqplot.py -i $< -o $@

output/report. df: report/report.tex $(FIGURES)
    cd report/ && pdflatex report. ex && informe mv. df ../$@

limpieza:
    rm -f salida/report.pdf
    rm -f $(HISTOGRAMS) $(QQPLOTS)
```

Notará que las reglas para histogramas y parcelas QQ son muy similares.

A medida que crece el número de scripts que desea ejecutar en sus datos, esto puede llevar a un gran número de reglas en el Makefile que son casi exactamente las mismas. We can simplify this by creating a [*canned recipe*](https://www.gnu.org/software/make/manual/html_node/Canned-Recipes.html) that takes both the name of the script and the name of the genre as input:

```makefile
definir run-script-on-data
output/$(1)_$(2).png: data/$(2).csv scripts/generate_$(1). y
    scripts python_$(1).py -i $$< -o $$@
esfuerzo
```

Ten en cuenta que en esta receta usamos `$(1)` para `histograma` o `qqqplot` y `$(2)` para el género. Estos corresponden a los argumentos de función esperados a la receta enlatada de `run-script-on-data`. Además, nota que usamos `$$<` y `$$@` en la receta real, con dos símbolos `$` para escapar. Para crear realmente todos los objetivos, necesitamos una línea que llame esta receta enlatada.  En nuestro caso, utilizamos un doble para bucle sobre los géneros y los scripts:

```makefile
$(para cada género,$(GENRES),\
    $(para cada script,$(SCRIPTS),\
        $(llamar a ejecución-script-on-data,$(script),$(genre))) \
    ) \
)
```

En estas líneas se utiliza el carácter `\` para continuar con las líneas largas.

El Makefile completo se convierte entonces:

```makefile
# Makefile for analysis report
#

ALL_CSV = $(wildcard data/*.csv)
DATA = $(filtro-out $(comodín datos/input_file_*. sv),$(ALL_CSV))
HISTOGRAMS = $(patsubst %,output/histogram_%.png,$(GENRES))
QQQPLOTS = $(patsubst %,output/qqplot_%. ng,$(GENRES))

GENRES = $(patsubst data/%.csv,%,$(DATA))
SCRIPTS = histogram qqplot

.PHONY: all clean

all: output/report. df

define run-script-on-data
output/$(1)_$(2).png: data/$(2).csv scripts/generate_$(1). y
    python scripts/generate_$(1). y -i $$< -o $$@
esfuerzo

$(para cada género,$(GENRES),\
    $(para cada script,$(SCRIPTS),
        $(S. $(Llame a run-script-on-data,$(script),$(genre)))\
    )\
)

salida/informe. df: report/report.tex $(HISTOGRAMS) $(QQPLOTS)
    cd report/ && pdflatex report. ex && informe mv. df ../$@

limpieza:
    rm -f salida/report.pdf
    rm -f $(HISTOGRAMS) $(QQPLOTS)
```

Ten en cuenta que hemos añadido una variable `SCRIPTS` con el histograma `` y `nombres de qqplot`. Si tuviéramos que añadir otro script que siga el mismo patrón que estos dos, solo necesitaríamos añadirlo a la variable `SCRIPTS` .

Para construir todo esto, ejecute

```bash
$ make -j 4
```
