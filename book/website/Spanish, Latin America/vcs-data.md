(rr-vcs-data)=
# Control de versiones para datos

Debatimos que la versión que controla los componentes de los proyectos en evolución podría ayudar a que el trabajo sea más organizado, eficiente, colaborativo y reproducible. Sin embargo, muchos proyectos científicos no sólo contienen código, manuscritos u otros archivos de tamaño pequeño. Muchos proyectos contienen archivos más grandes, como datos de entrada o resultados de análisis, que puede cambiar o actualizarse en un proyecto al igual que otros componentes como el código y los manuscritos. El aspecto de reproducibilidad de un proyecto científico puede mejorar mucho si podemos rastrear el subconjunto o la versión de los datos en que se basa un determinado análisis o resultado.

(rr-vcs-data-importancia-datos)=
## Importancia de datos de control de versiones

No deberíamos sostener la idea de que los datos utilizados para el análisis son estáticos; una vez adquirida, no cambia y sirve de aporte para un análisis dado y la columna vertebral de nuestros resultados científicos. La realidad es que los datos rara vez son invariables. Por ejemplo, a lo largo de un proyecto científico, los conjuntos de datos pueden ampliarse con nuevos datos, adaptados a nuevos planes de nombramiento, reorganizó en diferentes jerarquías de archivos, actualizadas con nuevos puntos de datos o modificadas para corregir cualquier error.

Estos procesos dinámicos son excelentes y beneficiosos para la ciencia ya que garantizan que los datos sean utilizables y actualizados, pero pueden ser confusos si no están adecuadamente documentados. Si un conjunto de datos que es la base de datos para calcular un resultado científico cambia sin control de versión, la reproducibilidad puede ser amenazada: los resultados pueden volverse inválidos, o los scripts que se basan en nombres de archivo que cambian entre versiones pueden romperse. Específicamente si los datos originales son reemplazados por nuevos datos sin control de versión, los resultados originales del análisis no pueden ser reproducidos. Por lo tanto, el control de datos y otros archivos grandes de una manera similar a la versión que controla código o manuscritos puede ayudar a asegurar la reproducibilidad de un proyecto y capturar la procedencia de los resultados; sombrero es "el subconjunto preciso y la versión de los datos de un conjunto de resultados proviene de". Junto con todos los demás componentes de un proyecto de investigación, los datos identificados en versiones precisas forman parte del resultado de la investigación.

```{figure} ../../figures/provenance.jpg
---
height: 500px
name: provenance
alt: Provenance on which data in which version was underlying which computation is crucial for reproducibility.
---
Provenance sobre qué datos en qué versión estaba subyacente qué cálculo es crucial para la reproducibilidad.
_The Turing Way_ proyecto de ilustración por Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-vcs-data-challenges)=
## Desafíos en datos de control de versiones

Dependiendo del tamaño de los datos y de las modificaciones que se someten, es posible que las herramientas de control de versiones como Git no sean adecuadas para datos. Mientras los archivos al control de versiones sean pequeños en tamaño y puedan almacenarse en unos pocos archivos separados por caracteres `csv` o archivos separados por caracteres. herramientas como [Git](https://git-scm.com/) son apropiadas.

Cuando trabaja, comparta y colabore en archivos grandes, potencialmente [binarios](https://en.wikipedia.org/wiki/Binary_file) (como muchos formatos científicos de datos), necesita pensar en formas de controlar estos datos con herramientas especializadas. Esto se debe a que la mayoría de las herramientas de control de versiones -como Git- no son adecuadas para manejar datos binarios grandes. Como un repositorio Git almacena todas las versiones de cada archivo que se agrega a él, archivos grandes que sufren modificaciones regulares pueden inflar el tamaño de un proyecto significativamente. Si otros intentan clonar tu repositorio o buscar/pull para actualizarlo localmente, tomará más tiempo para hacer esto si contiene archivos más grandes que han sido versionados y modificados.

Lo que es especialmente inconveniente es que los servicios de alojamiento de repositorios como GitHub impongan tamaños máximos de archivos a los usuarios (al menos en sus versiones gratuitas). Por ejemplo, si un solo archivo en su repositorio excede los 100MB, no podrá enviar este archivo a un repositorio de GitHub. Además, si un archivo grande fue añadido accidentalmente a un repositorio, eliminar el archivo del repositorio puede ser tedioso, ya que este archivo necesita ser [purgado](https://help.github.com/en/github/authenticating-to-github/removing-sensitive-data-from-a-repository). Estas deficiencias pueden hacer tediosas y lentas las colaboraciones de versiones en los depósitos con datos grandes, y evitar que los datos o proyectos con datos sean compartidos en plataformas como GitHub.

(rr-vcs-data-tools)=
## Herramientas para datos de control de versiones

Hay varias herramientas disponibles para manejar el control de versiones y compartir archivos grandes . La mayoría de ellos se integran muy bien con Git y amplían las capacidades de un repositorio para controlar grandes ficheros de versiones. Con estas herramientas, se pueden agregar datos grandes a un repositorio, se controla la versión, se revierte a estados anteriores, o actualizado y modificado colaborativamente, e incluso compartido a través de GitHub como archivos de tamaño pequeño. Algunas de estas herramientas incluyen:

(rr-vcs-data--tools-lfs)=
### Git LFS

[Git LFS](https://git-lfs.github.com/) viene con una extensión de línea de comandos a Git y te permite tratar archivos de cualquier tamaño por igual, usando comandos Git estándar. Sin embargo, una importante deficiencia es que Git LFS es una solución _centralizada_. Los archivos grandes no se distribuyen pero se almacenan en un servidor remoto. Esto normalmente requiere configurar su servidor o pagar por un servicio - lo que puede hacer que sea muy inaccesible.

(rr-vcs-data-tools-gitannex)=
### `git-annex`

La herramienta [`git-annex`](https://git-annex.branchable.com/) es un sistema distribuido que puede administrar y compartir archivos grandes independientes de un servidor o servicio central. `git-annex` administra todo el archivo _contenido_ en un directorio separado en el repositorio (`. it/annex/objetos`, el así llamado _anexo_) y sólo coloca los _nombres de archivo_ con algunos metadatos en el control de versiones por Git. Cuando un repositorio Git con un anexo se inserta en un servicio de alojamiento web como GitHub, el contenido almacenado en el anexo no se carga. En su lugar, pueden ser empujados a un sistema de almacenamiento (como un servidor web, pero también servicios de terceros como Dropbox, Google Drive, Amazon S3, caja. y [muchos más](https://git-annex.branchable.com/special_remotes/)). Si un repositorio con un anexo es clonado, el clon no contendrá el _contenido_ de todos los archivos anexados por defecto, sino que mostrará sólo nombres de archivos. Esto hace que el repositorio sea pequeño, incluso si rastrea cientos de gigabytes de datos, y la clonación rápida, mientras los contenidos de los archivos se almacenan en una o más soluciones de almacenamiento libre o comercial externa. En demanda, cualquier contenido de archivo puede obtenerse con un comando `git-annex get` del almacenamiento de archivos externo.

(rr-vcs-data-tools-datalad)=
### DataLad

[DataLad](https://www.datalad.org/), se construye sobre Git y git-annex. Al igual que `git-annex`, le permite controlar los datos de versiones y compartirlos a través de proveedores externos, pero simplifica y extiende esta funcionalidad. Además de compartir y controlar versiones de archivos grandes; permite grabar, compartir y utilizar entornos de software, grabar y volver a ejecutar comandos o análisis de datos, y operar sin problemas a través de una jerarquía de repositorios.
