(rr-cs-statisal-methods-manuscript)=
# Un manuscrito de métodos estáticos

## Sobre este estudio de caso

El propósito de este estudio de caso es discutir los diferentes componentes de la investigación reproducibilidad implementada en el diseño y la realización de un estudio estadístico. Con la ayuda de su manuscrito, los autores proporcionan un catálogo de métodos utilizados en su investigación y la referencia cruzada a las respectivas secciones discutidas en este {ref}`rr`.

## Acerca del Manuscrito

- **Título:** Una revisión de las perspectivas bayesianas sobre la derivación de tamaño de muestra para pruebas confirmatorias{cite:ps}`Kunzmann2020CS`.
- **Autores:** Kevin Kunzmann, Michael J. Grayling, Kim May Lee, David S. Robertson, Kaspar Rufibach, James M. S. S. Desierto
- **Mes de publicación & año**: Junio 2020

### Resumen

El manuscrito {cite:ps}`Kunzmann2020CS` está preocupado por el problema de derivar un tamaño de muestra adecuado para un ensayo clínico. Este es un problema clásico en las estadísticas y especialmente importante en estadísticas médicas, donde la recolección de datos de los ensayos es extremadamente costosa y es necesario abordar las consideraciones éticas. El manuscrito revisa y extiende los métodos para incorporar sistemáticamente la incertidumbre de planificación en la derivación del tamaño de la muestra.

### Resumen de citas

El manuscrito puede ser citado en formato APA de texto plano:

> Kunzmann, K., Grayling, M. J., Lee, K. M., Robertson, D. S., Rufibach, K., & Wason, J. (2020). A review of Bayesian perspectives on sample size derivation for confirmatory trials. arXiv preprint arXiv:2006.15715.

Formato BibTeX:

```
@article{
    kunzmann2020,
      title = {A review of Bayesian perspectives on sample size derivation for confirmatory trials},
     autor = {Kunzmann, Kevin y Grayling, Michael J y Lee, Kim May y Robertson, David S y Rufibach, Kaspar y Wason, James},
    diario = {arXiv preprint arXiv:2006.15715},
       año = {2020}
}
```

## Catálogo de diferentes métodos de investigación reproducible

### Control de versiones

The git repository [https://github.com/kkmann/sample-size-calculation-under-uncertainty](https://github.com/kkmann/sample-size-calculation-under-uncertainty) contains all code required to produce the manuscript [arXiv:2006.15715](https://arxiv.org/abs/2006.15715) from scratch. Para una explicación en profundidad de la importancia del control de versiones para investigación reproducible, consulte {ref}`Sistemas de control de versiones<rr-vcs>`.


### Gestión de datos de investigación

En este caso en particular,
{ref}`gestión de datos <rr-rdm>` aspectos no son un problema, ya que el manuscrito se basa exclusivamente en ejemplos hipotéticos y no externos, se requieren datos protegidos.


#### Programación de literatura

El manuscrito {cite:ps}`Kunzmann2020CS` está escrito y construido con [LaTeX](https://www.latex-project.org/). Los archivos de origen están contenidos en la subcarpeta `latex/`. Los archivos TeX simples eran preferidos más que las soluciones de programación literaria como [knitr](https://github.com/rstudio/rmarkdown) para [R](https://www.r-project.org/) para facilitar el uso de editores LaTeX dedicados como [Overleaf](https://www.overleaf.com/project). Esto significa, sin embargo, que todas las figuras utilizadas en el manuscrito deben ser creadas por separado. Un [cuaderno Jupyter](https://jupyter.org/) `cuadernos / figuras-for-manuscript.ipynb` combinando código y descripciones rudimentarias se proporcionan para ese fin.


### Entorno de software reproducible

Aunque esto significa que todo el código necesario para compilar el manuscrito desde cero está disponible en un entorno autónomo. todavía no es suficiente para asegurar la reproducibilidad. Instalar LaTeX, Jupyter, y R con la misma especificación necesaria para ejecutar todo el código todavía puede ser desafiante para los usuarios menos experimentados. Para evitar esto evitar que los lectores interesados experimenten con el código, una combinación del paquete Python [repo2docker](https://github.com/jupyter/repo2docker) y un servicio de hosting [BinderHub](https://mybinder.org/) gratuito. Para obtener más información sobre estas técnicas, consulte el capítulo {ref}`BinderHub<rr-binderhub>`. Esto permite a las personas interesadas iniciar una versión interactiva del repositorio con todo el software preinstalado - ¡exactamente en las versiones correctas! Ten en cuenta que es posible proporcionar enlaces de enlace de enlace *versión estable*

[![insignia](https://img.shields.io/badge/Jupyter%20lab-0.2.1-579ACA.svg?logo=data:image/png;base64,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)](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=lab/tree/notebooks/figures-for-manuscript.ipynb) [![insignia](https://img.shields.io/badge/Shiny-0.2.1-579ACA.svg?logo=data:image/png;base64,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)](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=shiny/apps/sample-size-calculation-under-uncertainty/)

Esta insignia apunta al estado del repositorio en un punto específico en el tiempo (a través de la función de etiquetar git). ¡Esto significa que los enlaces permanecerán válidos y sin cambios, incluso si hay correcciones posteriores al contenido del repositorio! Binder soporta múltiples interfaces de usuario. Esto está apalancado para proporcionar y Jupyter lab Entorno de Desarrollo Integrado ver en el repositorio para explorar el archivo, el cuaderno de Jupyter, o para abrir un shell para comandos adicionales. La segunda insignia abre directamente una aplicación interactiva Shiny que ilustra algunos de los puntos discutidos en el manuscrito y no requiere familiaridad con programación en absoluto. Todas las configuraciones relevantes para Binder se encuentran en la subcarpeta `.binder`.


### Gestión de flujo de trabajo usando Snakemake

Puesto que JupyterLab también permite abrir una shell en la instancia del repositorio abierta usando un enlace Binder se puede utilizar otra característica del repositorio para reproducir el *manuscrito completo desde cero*. El gestor de flujo de trabajo de Python [Snakemake](https://snakemake.readthedocs.io/en/stable/) fue usado para definir todos los pasos requeridos en una `Snakefile`. Para ejecutar este flujo de trabajo, puede abrir un shell en la [versión en línea de JupyterHub](https://mybinder.org/v2/gh/kkmann/sample-size-calculation-under-uncertainty/0.2.1?urlpath=shiny/apps/sample-size-calculation-under-uncertainty/). Una vez que la interfaz de usuario haya terminado de cargar, abra un nuevo terminal y escriba
```
manuscrito snakemake -F --cores 1
```
Esto ejecutará todos los pasos requeridos en turno:

1. crear todas las parcelas ejecutando el archivo de notebook de Jupyter
2. compilando el archivo actual `latex/main.pdf` desde las fuentes LaTeX

Debería ver un archivo `main.pdf` en la subcarpeta `latex`.


### Soporte para la instancia local del entorno de software

El paquete Python repo2docker también puede utilizarse localmente para reproducir el mismo entorno de computación. Para ello, necesitarás tener Python y Docker instalados. Para obtener más información sobre las tecnologías Docker y de contenedores en general, consulte el capítulo {ref}`entornos reproducibles y contenedores<rr-renv-containers>`. Luego simplemente clone el repositorio en su máquina local usando los comandos
```
git clon git@github.com:kkmann/sample-size-calculation-under-uncertainty.git
cd sample-size-calculation-under-uncertainty
```
Después de clonar el repositorio, puede construir y ejecutar un contenedor Docker localmente usando los archivos de configuración proporcionados en el `. inder/` carpeta usando el siguiente comando
```
jupyter-repo2docker -E .
```
El contenedor se inicia automáticamente después de que se complete la compilación y puede utilizar la interfaz de Jupyter habitual en su navegador siguiendo el enlace impreso por repo2docker para explorar el repositorio localmente.


### Uso de integración continua

Aunque no es necesario para la reproducibilidad de este manuscrito, el repositorio también hace uso de la integración continua ({ref}`CI <rr-ci>`) usando [acciones de GitHub](https://github.com/features/actions). Los ejecutores de acciones de GitHub se proporcionan directamente desde GitHub (ver `rr-ci-github-actions`).

El repositorio define dos workflows en el directorio `.github/workflows`. The first one, [`.github/workflows/build_and_run.yml`](https://github.com/kkmann/sample-size-calculation-under-uncertainty/blob/master/.github/workflows/build_and_run.yml), is activated whenever the master branch of the repository is updated and the specifications in `.binder` are changed. Esto construye el contenedor, lo envía a un repositorio público de contenedores [docker hub](https://hub.docker.com/repository/docker/kkmann/sample-size-calculation-under-uncertainty), y luego comprueba que el flujo de trabajo de Snakemake se ejecuta sin problemas. El segundo, [`.github/workflows/run.yml`](https://github.com/kkmann/sample-size-calculation-under-uncertainty/blob/master/.github/workflows/run.yml), se ejecuta cuando la carpeta `. inder` no se cambió y utiliza el contenedor precompilado para ejecutar el flujo de trabajo de Snakemake. Este último ahorra mucho tiempo de computación ya que el entorno computacional cambiará mucho menos que el contenido del repositorio. El uso de CI facilita así la comprobación de contribuciones de pull requests para la integridad técnica de y hace que la última versión del contenedor requerido esté disponible para la descarga directa. Esto significa que en lugar de construir el contenedor localmente usando repo2docker podrías así solo descargarlo directamente y ejecutar el flujo de trabajo usando los siguientes comandos
```
docker run -d --name mycontainer kkmann/sample-size-calculation-under-uncertainty
docker exec --name mycontainer /
    snakemake -F --cores 1 manuscrito
```

### Archivo a largo plazo y citabilidad

El repositorio de GitHub también está enlazado con [zenodo.org](https://zenodo.org/) para asegurar a largo plazo archivar, ver {ref}`cm-citable-cite-software`

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3899943.svg)](https://doi.org/10.5281/zenodo.3899943)

Tenga en cuenta que un DOI proporcionado por Zenodo también puede ser utilizado con BinderHub para convertir un repositorio instantánea respaldado en Zenodo en un entorno interactivo ([ver esta publicación de blog](https://blog.jupyter.org/binder-with-zenodo-af68ed6648a6)).
