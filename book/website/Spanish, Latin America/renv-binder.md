(rr-renv-binder)=
# Binda

(rr-renv-binder-overview)=
## Resumen

Ahora que hemos visto cómo usar y capturar el entorno computacional utilizado en un proyecto Python, es hora de pensar en cómo compartir ese entorno.

Con un archivo `environment.yml` (o similar, de sistemas alternativos de gestión de paquetes),otros pueden volver a crear el entorno especificado por ese archivo. Sin embargo, esto depende de que el nuevo usuario tenga el mismo sistema de gestión de paquetes configurado, y que sepa cómo usarlo. Sería mucho más fácil si hubiera una solución automatizada para recrear el entorno computacional -y aquí es donde entra Binder .

Binder utiliza una herramienta llamada `repo2docker` para crear una imagen Docker de un proyecto basada en los archivos de configuración que están incluidos. La imagen resultante contiene el proyecto y el entorno computacional especificado por el usuario original. Otros usuarios pueden acceder a la imagen a través de un BinderHub, basado en la nube, que les permite ver, editar y ejecutar el código desde su navegador web.

La excelente caricatura de Juliette Taka a continuación ilustra los pasos para crear y compartir un proyecto "binderizado".

**Paso 1:** Empezamos con una investigadora que ha completado un proyecto y quiere compartir su trabajo con cualquier persona, independientemente de su entorno computacional. Tenga en cuenta que Binder no sólo tiene que ser aplicado a proyectos terminados; se puede utilizar de la misma manera para compartir proyectos en curso.

**Paso 2:** El proyecto del investigador contiene muchos archivos de diferentes tipos. En este caso, el investigador ha estado trabajando en los cuadernos de Jupyter. Sin embargo, Binder se puede utilizar con la misma eficacia con muchos otros formatos de archivo e idiomas que pronto cubriremos con más detalle.

**Paso 3:** El investigador carga su código a un servicio de alojamiento de repositorio disponible públicamente, como GitHub, donde otros pueden acceder a él. Ella incluye un archivo que describe el entorno computacional necesario para ejecutar el proyecto.

**Paso 4:** Genera un enlace en [mybinder.org](https://mybinder.org) BinderHub. Al hacer clic en este enlace, cualquiera puede acceder a una versión "binderizada" de su proyecto. El clic desencadena `repo2docker` para construir una imagen Docker basada en el contenido del repositorio y sus archivos de configuración. Esta imagen se aloja en la nube. La persona que haga clic en el enlace será llevada a una copia de su proyecto en su navegador web donde podrá interactuar con él. Esta copia del proyecto está alojada en el entorno del investigador especificado en el paso 3, independientemente del entorno computacional desde el que se acceda.

```{figure} ../../figures/binder-comic.png
---
name: binder-comic
alt: Una ilustración de los pasos que una persona puede tomar para crear un proyecto binderizado.
---
Crédito de la figura - [Juliette Taka, Logilab y el proyecto OpenDreamKit](https://opendreamkit.org/2017/11/02/use-case-publishing-reproducible-notebooks/)
```

Para tener una idea de cómo se ve esto, a continuación hay un enlace de un simple proyecto de ejemplo. Los archivos están listados y pueden ser pulsados y modificados por la persona que accede al Binder.

```{figure} ../../figures/binder-home.png
---
name: binder-home
alt: Una captura de pantalla de un enlace de un proyecto de ejemplo
---
Un enlace de un proyecto de ejemplo.
```

Los usuarios también pueden abrir terminales para ejecutar o interactuar con los archivos haciendo clic en "Nuevo" y luego en "Terminal" en la parte superior derecha de la pantalla de enlace de inicio mostrada arriba. Aquí se utiliza para ejecutar el script de análisis en el ejemplo de Binder que realiza una regresión lineal en algunos datos:

```{figure} ../../figures/binder-terminal.png
---
name: binder-terminal
alt: Una captura de pantalla de un terminal donde los usuarios pueden ejecutar o interactuar con los archivos del proyecto
---
Una captura de pantalla de un terminal donde los usuarios pueden ejecutar o interactuar con los archivos del proyecto
```

Como se ha mencionado, Binder está bien integrado con los cuadernos Jupyter. Los bloc de notas se pueden abrir haciendo clic en "Nuevo" y luego "Notebook" de la misma manera que se pueden abrir las terminales. Estos pueden ser más convenientes para aquellos que trabajan con salidas gráficas, como se muestra aquí donde se utiliza uno para ejecutar `make_plot. y` en el ejemplo Binder:

```{figure} ../../figures/binder-notebook.png
---
name: binder-notebook
alt: Una captura de pantalla de un Cuaderno de Jupyter integrado con Binder
---
Una captura de pantalla de un Cuaderno de Jupyter integrado con Binder
```

Si R está instalado en un Binder, el menú desplegable mostrará las opciones para abrir las notebooks R Jupyter y sesiones RStudio en el Binder.

(rr-renv-binder-disambiguation)=
## Disambiguación

En esta sección hay algunos términos relacionados, que se esbozarán aquí para mayor claridad:

- **Binder**: Una versión compartible de un proyecto que se puede ver e interactuar dentro de un entorno computacional reproducible a través de un navegador web.
- **BinderHub**: Un servicio que genera Binders. El más utilizado es [mybinder.org](https://mybinder.org), que es mantenido por el equipo de Binder. Es posible crear otros BinderHubs que puedan soportar configuraciones más especializadas. Una de esas configuraciones podría incluir autenticación para permitir que los repositorios privados sean compartidos entre colaboradores cercanos.
- **[mybinder.org](https://mybinder.org)**: Un BinderHub público y gratuito. Debido a que es público, no debes usarlo si tu proyecto requiere información personal o confidencial (como contraseñas).
- **Binderize**: Para hacer un Binder de un proyecto.

(rr-renv-binder-creating)=
## Crear un Binder para un proyecto

Crear una versión binderizada de un proyecto implica tres pasos clave que se explicarán en esta sección:

1. Especificar el entorno computacional
2. Ponga los archivos del proyecto en algún lugar disponible públicamente (describiremos cómo hacer esto con GitHub)
3. Generar un enlace a un enlace del proyecto

Para obtener una lista de repositorios de ejemplo para usar con Binder, consulte la página [Repositorios de Binder de Ejemplo](https://mybinder.readthedocs.io/en/latest/sample_repos.html).

(rr-renv-binder-creating-stepone)=
### Paso 1: Especifique su entorno computacional

Supongamos que el proyecto no contiene ningún archivo que especifique el entorno computacional. Cuando se genera un Binder el entorno será el entorno por defecto de Binder (que contiene Python 3. ) que puede o no ser adecuado para el proyecto. Sin embargo, si contiene un archivo de configuración para el entorno, entonces el Binder se generará con el entorno especificado. Una lista completa de estos archivos Binder acepta, con ejemplos, puede encontrarse [aquí](https://mybinder.readthedocs.io/en/latest/config_files.html). Las claves se describen a continuación, algunas de las cuales son específicas del idioma:

- `entorno.yml`
  - Recuerda que los archivos `environment.yml` fueron discutidos en la sección {ref}`rr-renv-package`.
- Archivo Docker
  - Dockerfiles será discutido en la sección {ref}`rr-renv-containers` , así que no será discutido más a continuación.
- `apt.txt`
  - Las dependencias que normalmente se instalarían a través de comandos como `sudo apt-get install package_name` deben ser listadas en un `apt. xt` archivo y se instalará automáticamente en el Binder.
  - Por ejemplo, si un proyecto utiliza Latex el archivo `apt.txt` debe leer
    ```
    texlive-latex-base
    ```
    para instalar el paquete base Latex.
- `default.nix`
  - Para aquellos que usan el {ref}`rr-renv-package` Nix un archivo `default.nix` puede ser una manera conveniente de capturar su entorno.
- `requirements.txt` (Python)
  - Para los usuarios de Python se puede usar un archivo `requirements.txt` para listar paquetes dependientes.
  - Por ejemplo, para que Binder instale `numpy` este archivo simplemente necesita leer:
    ```
    numpy
    ```
  - Una versión específica del paquete también puede especificarse usando un `==`. Por ejemplo, para que Binder instale la versión `1.14.5` de `numpy` entonces el archivo sería
    ```
    numpy==1.14.5
    ```
  - El archivo `requirement.txt` no necesita ser escrito a mano. Ejecutar el comando `pip freeze > requirements.txt` mostrará un archivo `requirements.txt` que define completamente el entorno Python.
- `runtime.txt`
  - Se utiliza para especificar una versión particular de Python o R para el uso de Binder .
  - Para especificar qué versión de R usar, encontrar la fecha en la que fue capturada en [MRAN](https://mran.microsoft.com/documents/rro/reproducibility) e incluirla en el tiempo de ejecución `. xt` archivo como
    ```
    r-<YYYY>-<MM>-<DD>
    ```
  - Para especificar una versión de Python, state la versión en el archivo `runtime.txt`. Por ejemplo, para usar Python 2.7, el archivo tendría que leer
    ```
    python-2.7
    ```
- `install.R` o `DESCRIPTION` (R/RStudio)
  - Un archivo `install.R` lista los paquetes a instalar. Por ejemplo, para instalar el paquete `tibble` en el Binder:
    ```
    install.packages("tibble")
    ```
  - [Los archivos DESCRIPTION](https://cran.r-project.org/doc/manuals/r-release/R-exts.html#The-DESCRIPTION-file) se utilizan más normalmente en la comunidad R para la gestión de dependencias.

(rr-renv-binder-creating-steptwo)=
### Paso 2: Pon tu código en GitHub

GitHub se discute extensamente en el capítulo {ref}`rr-vcs`, a la cual deberías referirte si deseas entender más acerca de este paso. En este capítulo, daremos una breve explicación. GitHub es una plataforma muy ampliamente utilizada donde puedes hacer "repositorios", y subir código, documentación o cualquier otro archivo en ellos. Para completar este paso:

1. Crea una cuenta en [GitHub](https://github.com/).
2. Cree un repositorio para el proyecto del que desea crear un Binder de.
3. Sube los archivos de tu proyecto (incluyendo el archivo que has creado para especificar tu entorno computacional) al repositorio y guarda ("commit" en el vocabulario de GitHub) allí.

Si no puede completar estos pasos, consulte el capítulo sobre el control de versiones {ref}` <rr-vcs>` para una explicación más completa.

(rr-renv-binder-creating-stepthree)=
### Paso 3: Genera un enlace a un enlace de tu proyecto

Dirígete a [https://mybinder.org](https://mybinder.org). Verás un formulario que te pide que especifiques un repositorio para que [mybinder.org](https://mybinder.org) compile. En el primer campo, pega la URL del repositorio GitHub del proyecto. Se verá algo así: `https://github.com/<your-username>/<your-repository>`

```{figure} ../../figures/mybinder-gen-link.png
---
name: mybinder-gen-link
alt: Una captura de pantalla de la página web utilizada para generar un enlace de Binder para tu proyecto
---
Interfaz para generar enlaces de Binder para proyectos
```

Como pueden ver, hay campos adicionales en este formulario, pero estos son opcionales y no se debatirán aquí.

Una vez que la URL del proyecto a ser binderized es suministrada, dos campos serán automáticamente rellenados en la pantalla mostrada arriba:

- `Copie la siguiente URL y comparta su Binder con otros` campo, proporciona un enlace al Binder que puede ser copiado y compartido.
- `Copia el texto de abajo, luego pega en tu README para mostrar un campo de insignia de binder` . puede incluirse en GitHub para crear un botón que permite a cualquiera que acceda a su proyecto lanzar el Binder.

Por último, haga clic en el botón de inicio. Esto le pedirá a [mybinder.org](https://mybinder.org) que construya el entorno necesario para ejecutar el proyecto. Esto puede tardar varios minutos. Puede hacer clic en el botón `Build logs` para ver los registros generados por el proceso de construcción. Estos registros ayudan a resolver cualquier problema que cause que falle la compilación, tales como errores en el archivo que definen el entorno computacional a ser generado.

Una vez que se haya construido, el Binder se lanzará automáticamente; de nuevo, esto puede tomar algún tiempo.

(rr-renv-binder-data)=
## Incluye datos en un Binder

Hay algunas maneras de hacer que los datos estén disponibles en su Binder. El mejor depende del tamaño de sus datos y de sus preferencias para compartir datos. Tenga en cuenta que cuanto más datos se incluyan, más tardará en lanzarse un Binder . Los datos también ocupan espacio de almacenamiento por el que hay que pagar, por lo que es bueno tener en cuenta y minimizar los datos que incluye, especialmente en el mybinder [proporcionado públicamente. rg](https://mybinder.org).

(rr-renv-binder-data-small)=
### Archivos públicos pequeños

El método más simple para archivos de datos pequeños que son públicos es agregarlos directamente a su repositorio de GitHub o incluirlos junto con el resto de los archivos de su proyecto en el Binder. Esto funciona bien y es razonable para archivos con tamaños de hasta 10MB.

(rr-renv-binder-data-mediano)=
### Archivos públicos medios

Para archivos de tamaño mediano -unos cuantos 10 megabytes a unos cientos de megabytes- encuentre otro lugar en línea para almacenarlos y asegurarse de que están disponibles públicamente. ¡Añade un archivo llamado `postBuild` (que es un script de shell por lo que la primera línea debe ser `#! bin/bash`) a los archivos de tu proyecto. En el archivo `postBuild` , añade una única lectura de línea:
```
wget -q -O nombre_de_su_archivo enlace_a_su_archivo
```

El archivo `postBuild` se utiliza para ejecutar comandos cuando los archivos para producir el Binder se están generando. En este caso, se puede utilizar para descargar sus datos en los archivos utilizados para lanzar el binder.

(rr-renv-binder-data-grande)=
### Archivos públicos grandes

La mejor opción para archivos grandes es utilizar una biblioteca específica al formato de datos para transmitir los datos mientras se está utilizando. Hay algunas restricciones sobre el tráfico saliente de tu Binder que son impuestas por el equipo que opera [mybinder.org](https://mybinder.org). Actualmente sólo se permiten conexiones a HTTP y Git. Esto surge cuando la gente quiere usar sitios FTP para obtener datos. Por razones de seguridad, el FTP no está permitido en [mybinder.org](https://mybinder.org).
