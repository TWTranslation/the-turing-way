(rr-renv-options)=
# Entornos computacionales de captura

Hay varias maneras de capturar entornos computacionales. Los principales que se tratarán en este capítulo serán Sistemas de Gestión de Paquetes, Binder, Máquinas Virtuales y Contenedores. Cada uno tiene sus pros y sus contras, y la opción más adecuada para usted dependerá de la naturaleza de su proyecto.

Pueden dividirse en dos categorías: aquellas que capturan sólo el software y sus versiones utilizadas en un entorno (sistemas de gestión de paquetes), y aquellos que replican un entorno computacional completo - incluyendo el sistema operativo y configuraciones personalizadas (Maquinas y Contenedores Virtuales).

Otra forma de dividirlos es la forma en que la investigación reproducida se presenta al reproductor. Usar Binder o una máquina virtual crea un resultado mucho más gráfico, tipo GUI. Por el contrario, los resultados de los Contenedores y Sistemas de Gestión de Paquetes se interactúan más fácilmente a través de la línea de comandos.

```{figure} ../../figures/computational-environments.jpg
---
name: computational-environments
alt: Una descripción de las diversas herramientas utilizadas para capturar entornos computacionales
---
Formas de capturar entornos computacionales
```

A continuación se muestra una breve descripción de cada una de estas herramientas


(rr-renv-options-pms)=
## Sistemas de Gestión de Paquetes

Los Sistemas de Administración de Paquetes [{term}`def<Package Management System>`] son herramientas utilizadas para instalar y llevar un seguimiento del software (y versiones críticas del software) utilizado en un sistema y pueden exportar archivos especificando estos paquetes/versiones de software requeridos. Los archivos pueden ser compartidos con otros que pueden usarlos para replicar el entorno, ya sea manualmente o a través de sus Sistemas de Administración de Paquetes.


(rr-renv-options-binder)=
## Binda

Binder [{term}`def<Binder>`] es un servicio que genera versiones de proyectos que funcionan completamente desde un repositorio git y los sirve en la nube. Estos proyectos "binderizados" pueden ser accedidos e interactuados por otros a través de un navegador web. Para ello, Binder requiere que se especifique el software (y, opcionalmente, las versiones) necesario para ejecutar el proyecto. Los usuarios pueden hacer uso de sistemas de gestión de paquetes o archivos Docker (discutido en las secciones {ref}`rr-renv-options-containers` ) para hacer esto si así lo desean.


(rr-renv-options-vm)=
## Máquinas virtuales

Máquinas virtuales [{term}`def<Virtual machine>`] son computadoras simuladas. Un usuario puede hacer un ordenador "virtual" muy fácilmente, especificando el sistema operativo que desea que tenga, entre otras características, y ejecutarlo como cualquier otra aplicación. Dentro de la aplicación estará el escritorio, el sistema de archivos, las librerías de software por defecto y otras características de la máquina especificada. Se pueden interactuar con ellos como si se tratara de un ordenador real. Las máquinas virtuales pueden ser fácilmente replicadas y compartidas. Esto permite a los investigadores crear Máquinas Virtuales, realizar sus investigaciones sobre ellas, y luego guardar su estado junto con sus archivos, configuraciones y salidas. Entonces pueden distribuirlos como un proyecto que funciona plenamente.


(rr-renv-options-containers)=
## Contenedores

Los contenedores [{term}`def<Container>`] ofrecen muchos de los mismos beneficios que Virtual Machines. Básicamente actúan como máquinas completamente separadas que pueden contener sus propios archivos, software y configuraciones.

La diferencia es que Virtual Machines incluye un sistema operativo completo junto con todo el software asociado que típicamente está empaquetado con él - sin importar si el proyecto hace uso de ese software asociado. Los contenedores sólo contienen el software y los archivos explícitamente definidos en ellos para ejecutar el proyecto que contienen. Esto los hace mucho más livianos que las máquinas virtuales.

Los contenedores son particularmente útiles si los proyectos necesitan ejecutarse en entornos informáticos de alto rendimiento. Dado que ya _contienen_ todo el software necesario, guardan tener que instalar cualquier cosa en un sistema desconocido donde el investigador puede no tener los permisos necesarios para hacerlo.
