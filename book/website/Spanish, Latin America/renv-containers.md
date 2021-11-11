(rr-renv-contenedores)=
# Contenedores

(rr-renv-containers-why)=
## ¿Por qué los contenedores?

Incluso para proyectos moderadamente complejos, el tamaño de la pila de dependencias de software puede ser alto. Toma un simple pipeline para construir un informe pdf para un análisis script en R usando `Rmarkdown`, por ejemplo. Para hacer esto reproducible, no sólo hace (i) los paquetes R respectivos necesitan ser instalados y (ii) la versión R debe ser la misma, pero también (iii) las versiones de `pandoc` y `LaTeX` necesitan ser las mismas que durante el tiempo de ejecución.

En lugar de intentar resolver estas dependencias a través de un gestor de paquetes (como conda) - que también depende de que todo el software requerido esté disponible en un único gestor de paquetes - podría ser más fácil crear una instantánea de todo el entorno informático incluyendo todas las dependencias. Estos entornos de cómputo son entonces autosuficientes, de ahí el nombre de 'contenedores'.

(rr-renv-contenedores-qué)=
## ¿Qué son los Contenedores?

Los contenedores permiten a un investigador empaquetar un proyecto con todas las partes que necesita - como bibliotecas, dependencias, y ajustes del sistema - y enviarlo todo como un paquete. Cualquiera puede abrir un contenedor y trabajar dentro de él viendo e interactuando con el proyecto como si la máquina desde la que están accediendo es idéntica a la máquina especificada en el contenedor - independientemente de cuál sea su entorno computacional _realmente_. Están diseñados para facilitar la transferencia de proyectos entre entornos muy diferentes.

En cierto modo, los contenedores se comportan como una máquina virtual. Para el mundo exterior, se parecen a su propio sistema completo. Sin embargo, a diferencia de una máquina virtual, en lugar de crear un sistema operativo virtual completo más todo el software y herramientas típicamente empaquetadas con uno, los contenedores sólo contienen los componentes individuales que necesitan para operar el proyecto que contienen. Esto da un aumento significativo del rendimiento y reduce el tamaño de la aplicación.

Los contenedores son una forma particularmente útil para reproducir investigaciones que dependen del software para ser configurado de una manera determinada. o que hace uso de bibliotecas que varían entre sistemas diferentes (o no existen). En resumen, los contenedores son una forma más robusta de compartir la investigación reproducible que los sistemas de gestión de paquetes o Binder porque reproducen todo el sistema utilizado para la investigación, no sólo los paquetes explícitamente utilizados por él. Su mayor inconveniente es el debido a su mayor profundidad, son conceptualmente más difíciles de graspar y producir que muchos otros métodos de replicación de entornos computacionales.

Ben Corrie ofrece una visión general razonablemente accesible de los conceptos básicos en ['¿Qué es un contenedor?'](https://www.youtube.com/watch?v=EnJ7qX9fkcU).

(rr-renv-contenedores-imágenes)=
## ¿Qué son las imágenes?

Las imágenes son los archivos utilizados para generar contenedores. Los seres humanos no hacen imágenes; escriben recetas para generar imágenes. Los contenedores son entonces copias idénticas instanciadas de imágenes.

Piensen así:

- Un archivo de recetas que un humano escribe contiene todos los pasos para generar una versión de trabajo del proyecto y su entorno computacional, pero no materiales reales. Piense en esto como un plano.
- Construir una imagen toma esa receta y la utiliza, ensamblará todos los paquetes, las librerías de software, y configuraciones necesarias para hacer el proyecto y el entorno completos, y las recoge en un salto condensado. Piense en imágenes como un trozo de muebles de bolsillo plano.
- Los contenedores toman esa imagen y ensamblan una versión completamente funcional del proyecto y el entorno necesario para ejecutarlo. Piense en esto como ensamblar los muebles de paquete plano.

Así que si un investigador quiere permitir que otros reproduzcan su trabajo, necesitarían escribir un archivo de recetas, y usarlo para construir una imagen de su proyecto. Luego pueden compartir este archivo de imagen con cualquiera que desee replicar su trabajo. Esa persona puede utilizar la imagen para generar un contenedor que contenga una versión funcional del proyecto.

(rr-renv-containers-docker)=
## ¿Qué es Docker?

Hay muchas herramientas disponibles para crear y trabajar con contenedores. Nos centraremos en Docker, que es ampliamente utilizado, pero somos conscientes de que otros como la Singularidad también existen. A veces se prefiere la singularidad para usar en sistemas de computación de alto rendimiento ya que no necesita `sudo` permisos para ejecutarse, mientras que Docker lo hace.

En Docker, los archivos de receta utilizados para generar imágenes son conocidos como Dockerfiles, y deben llamarse `Dockerfile`.

[Docker Hub](https://hub.docker.com/) alberga una gran cantidad de imágenes prediseñadas tales como [imágenes](https://hub.docker.com/_/ubuntu) de máquinas Ubuntu, que pueden ser descargadas y construidas. Esto hace que el proceso de escritura de archivos Dockerfiles sea relativamente fácil, ya que los usuarios rara vez necesitan comenzar desde cero, sólo pueden personalizar las imágenes existentes. Sin embargo, esto deja a un usuario vulnerable a problemas de seguridad similares como se describe en el subcapítulo {ref}`rr-renv-yaml-security` del subcapítulo {ref}`rr-renv-yaml`:

- Es posible incluir código malicioso en las imágenes de Docker
- Es posible que las personas que producen imágenes incluyan software sin saberlo en ellas con vulnerabilidades de seguridad

[Este](https://opensource.com/business/14/7/docker-security-selinux) artículo profundiza en las posibles vulnerabilidades de seguridad de los contenedores y aquí hay un [desglose detallado](https://opensource.com/business/14/9/security-for-docker) de las características de seguridad actualmente dentro de Docker, y cómo funcionan. El mejor consejo para usar imágenes construidas por otros es, como de costumbre, sólo descarga y ejecuta algo en tu equipo si viene de una fuente de confianza. Docker Hub tiene insignias de "imagen oficial" para imágenes verificadas de uso común como se muestra aquí:

```{figure} ../../figures/docker-official-image.png
---
nombre: docker-official-image
alt: Una captura de pantalla de insignias oficiales de la imagen
---
```

(rr-renv-containers-installdocker)=
## Instalando Docker

Los instaladores para Docker en una variedad de sistemas diferentes están disponibles [aquí](https://docs.docker.com/install/). Las instrucciones detalladas de instalación también están disponibles para una variedad de sistemas operativos como [Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/), [Debian](https://docs.docker.com/install/linux/docker-ce/debian/), [Macs](https://docs.docker.com/docker-for-mac/install/)y [Windows](https://docs.docker.com/docker-for-windows/install/).

(rr-renv-containers-commands)=
## Comandos de Clave

Aquí hay algunos comandos clave para crear y trabajar con contenedores:

- Para construir una imagen desde un Dockerfile, vaya al directorio donde está y ejecute el Dockerfile:
  ```
  sudo docker build --tag image_name .
  ```
- Para listar las imágenes en su sistema, use:
  ```
  imágenes de sudo docker ls
  ```
- Para eliminar una imagen, ejecutar:
  ```
  sudo docker rmi image_name
  ```
- Para abrir un contenedor desde una imagen, ejecute:
  ```
  sudo docker ejecutar -i -t image_name
  ```
  Las banderas `-i -t` abren automáticamente un terminal interactivo dentro del contenedor para que puedas ver e interactuar con los archivos del proyecto.
- Para salir de un terminal interactivo, use:
  ```
  salir
  ```
- Para obtener una lista de contenedores activos con IDs, ejecute:
  ```
  contenedor docker sudo ls
  ```
- También hay tres comandos principales utilizados para cambiar el estado de los contenedores:
  - La pausa suspende el proceso ejecutando el contenedor.
    ```
    docker sudo pausa el ID del contenedor
    ```
    Los contenedores pueden ser despausados reemplazando `pause` por `inpausa`.
  - Detener un contenedor termina el proceso ejecutándolo. Un contenedor debe ser detenido antes de que pueda ser eliminado.
    ```
    sudo docker parar container_ID
    ```
    Un contenedor detenido puede reiniciarse reemplazando `stop` con `restart`.
  - Si `stop` no funciona los contenedores pueden ser eliminados usando
    ```
    sudo docker matar contenedor_ID
    ```
- Para eliminar un contenedor, ejecutar:
  ```
  sudo docker rm container_ID
  ```
(rr-renv-containers-dockerfiles)=
## Escribiendo Dockerfiles

Pasemos por la anatomía de un archivo Docker muy simple:

```
# Paso 1: Configure el entorno computacional

# Establezca la imagen base
FROM ubuntu:18. 4

# Instalar paquetes necesarios para ejecutar el proyecto
RUN apt-get update && \
    apt-get install -y --no-install-recomienda python3. python3-pip && \
    rm -rf /var/lib/apt/lists/*
RUN python3 -m pip install numpy

#---------------

# Paso 2: Incluya los archivos del proyecto en la imagen

# Copia los archivos del directorio `project_files` en la máquina construyendo la imagen
# en la carpeta `project` en el contenedor. Esta carpeta y cualquier directorio
# que falte en su ruta se crean automáticamente.
Copiar archivos de proyecto/ proyecto/
```

Esto parece complicado, pero la mayoría de las líneas de este ejemplo son comentarios (que están precedidos por `#`'s). Sólo hay seis líneas de código real. El primero de estos es una instrucción `FROM` que especifica una imagen base. Todos los archivos Dockerfile requieren un FROM, incluso si es sólo `DE SCRATCH`. Todos los siguientes comandos en un archivo Dockerfile construyen sobre la imagen base para hacer una versión funcional del proyecto del investigador. Especificar una versión para la imagen (`18.04` en este caso) es opcional. Sin embargo, es una buena práctica ya que asegura que nuestro Dockerfile siga siendo válido después de nuevas versiones de Ubuntu, el cual puede no incluir paquetes (o versiones específicas de ellos) que necesitemos más adelante (por ejemplo `python3.`).

Vale la pena pasar tiempo para elegir una imagen base apropiada, como hacerlo puede reducir drásticamente la cantidad de trabajo involucrado en la escritura de un archivo Docker. Por ejemplo, se puede encontrar una colección de imágenes con el lenguaje de programación R incluido en ellas [aquí](https://github.com/rocker-org/rocker-versioned). Si un proyecto hace uso de R, es conveniente usar uno de estos como una imagen base en lugar de pasar tiempo escribiendo comandos en su Dockerfile para instalar R.

El bloque más grande de líneas viene a continuación. Es una serie de sentencias `RUN` , las cuales ejecutan comandos de shell al construir la imagen. En este bloque se utilizan para instalar el software necesario para ejecutar el proyecto. El primer bloque `RUN` es una cadena de comandos de este formulario:

```
RUN command_to_do_thing_1 \
   && command_to_do_thing_2 \
   && command_to_do_thing_3 \
   && command_to_do_thing_4
```

Es una buena práctica agrupar comandos relacionados en un solo bloque `RUN` para reducir el tamaño final de tu imagen en [evitando la creación de capas innecesarias](https://docs.docker.com/develop/develop-images/#minimize-the-number-of-layers). También seguimos la mejor práctica usando `--no-install-recommends` para [evitar la instalación de paquetes innecesarios](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#dont-install-unnecessary-packages) y [limpiando el `apt-cache`](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#run), ambas reducen aún más el tamaño de las imágenes de Debian o Ubuntu.

Después de haber instalado Python, usamos otra instrucción RUN para instalar una biblioteca requerida por nuestro código.

Finalmente, el comando `COPY` se utiliza para copiar los archivos del proyecto de la máquina construyendo la imagen en la imagen misma. La sintaxis de este comando es `COPIAR file_to_copy location_in_container_to_copy_to`. En este ejemplo, todos los archivos en el directorio `project_files` están incluidos en el archivo `proyecto` en el contenedor. Tenga en cuenta que sólo puede copiar archivos desde el directorio donde se encuentra Dockerfile, o subdirectorios dentro de él (en el ejemplo, que es el subdirectorio `project_files`).

El comando `ADD` tiene las mismas capacidades que `COPY`, pero también se puede utilizar para añadir archivos que no estén en la máquina que construye la imagen. Por ejemplo, se puede utilizar para incluir archivos alojados en línea siguiendo `AÑADIR` con una URL al archivo. Es una buena práctica usar `COPY`, excepto donde `ADD` es específicamente requerido, como término `COPY` es más explícito acerca de lo que se está haciendo.

Esto es lo que sucede si un contenedor se abre desde una imagen llamada `book_example`, construida a partir del ejemplo anterior:

```{figure} ../../figures/container-example.png
---
name: container-example
alt: Una captura de pantalla de lo que sucede cuando un contenedor se abre desde una imagen
---
```

Como puede ver, el directorio `proyecto` ha sido creado, y dentro de los archivos del proyecto, `análisis. y` y `data.csv` han sido copiados en él. Debido a que el archivo Dockerfile ya incluye el software requerido para el proyecto, en la imagen, el script `analysis.py` se ejecuta sin instalar más software.

(rr-renv-containers-dockerfiles-workdir)=
### `TRABAJO`

Este comando se puede utilizar en Dockerfiles para cambiar el directorio de trabajo actual. Los comandos que sigan esto en el Dockerfile se aplicarán dentro del nuevo directorio de trabajo a menos que/hasta que otro `WORKDIR` cambie el directorio de trabajo. Cuando se abre un contenedor con un terminal interactivo, el terminal se abrirá en el directorio de trabajo final. Aquí hay un ejemplo simple de un archivo Dockerfile que utiliza `WORKDIR`y el contenedor que genera.

```
# Configuración básica
FROM ubuntu
RUN apt-get update

# Hacer un directorio llamado A
RUN mkdir A

# Hacer el directorio de trabajo A
WORKDIR A

# Hacer dos directorios, uno llamado B_1 y uno llamado B_2
RUN mkdir B_1
RUN mkdir B_2
```

```{figure} ../../figures/workdir-example.png
---
nombre: workdir-example
alt: Captura de pantalla de contenedor generado usando el comando WORKDIR
---
```

Los directorios `B_1` y `B_2` han sido creados dentro del directorio `A`.

`WORKDIR` debe utilizarse al cambiar de directorios es necesario mientras se construye una imagen. Puede ser tentador usar `RUN cd directory_name` en su lugar? ya que esta sintaxis será más familiar para aquellos que normalmente funcionan a través de la línea de comandos, pero esto puede llevar a errores. Después de cada declaración `RUN` en un archivo Docker, la imagen se guarda, y cualquier comando siguiente se aplica a la imagen anew. Como ejemplo, esto es lo que sucede en el ejemplo anterior si la línea `WORKDIR A` se intercambia por `RUN cd A`.

```{figure} ../../figures/cd-example.png
---
name: cd-example
alt: Una captura de pantalla de lo que sucede cuando el comando WORKDIR es intercambiado con RUN cd
---
```

Todos los directorios tienen el nivel superior en este caso, en lugar de `B_1` y `B_2` estando dentro de `A`. Esto se debe a que la imagen se reinició después del comando `RUN cd A` y se abrió en el nivel superior (root) por defecto, así que es donde los comandos `mkdir B_1` y `mkdir B_2` entraron en vigor.

(rr-renv-containers-dockerfiles-comandos)=
### Otros comandos

Otros comandos que a veces se utilizan en Dockerfiles incluyen:

- `CMD`: Esto se utiliza para ejecutar comandos tan pronto como el contenedor se abra. Esto es diferente de los comandos RUN que son comandos ejecutados como parte de _configurar_ un contenedor. Por ejemplo, para tener un mensaje de bienvenida cuando se abre un contenedor desde la imagen, `CMD` podría utilizarse de la siguiente manera:
  ```
  CMD ["echo","¡Bienvenido! ¡Acabas de abrir este contenedor!"]
  ```
  Es una buena práctica usar CMD para cualquier comando que necesite ejecutarse antes de que alguien empiece a trabajar en el contenedor en lugar de forzar a los usuarios a ejecutarlos a sí mismos (y confiar en que incluso sabrán que necesitan).
- `VOLUMAS`: Estas serán discutidas {ref}`después <rr-renv-containers-volumes>`.
- `MAINTAINER`: Este contiene información relativa a la persona que escribió el Dockerfile. Normalmente se incluye en la parte superior de un archivo Docker.
- `EXPOSE`: Esto incluye puertos que deben estar expuestos. Es más relevante para las personas que usan Docker para compartir aplicaciones web.
- `USUARIO`: Cambia el usuario que se ejecuta un comando como (útil para eliminar privilegios).

(rr-renv-containers-dockerignore)=
## Creando imágenes y `.dockerignore` Archivos

Como se menciona en la sección {ref}`comandos clave <rr-renv-containers-commands>` , para construir una imagen abra un terminal en el mismo directorio que el Dockerfile a ser usado y ejecutado:

```
sudo docker build --tag name_to_give_image .
```

Cuando una imagen se construye todo en el directorio Dockerfile y abajo (esto se llama el "contexto") se envía al daemon Docker para construir la imagen. El daemon usa el Dockerfile y su contexto para construir la imagen. Si el contexto contiene muchos archivos grandes, que no son necesarios para construir la imagen, (archivos de datos antiguos, por ejemplo) entonces es una pérdida de tiempo enviándolos al demonio. Hacerlo puede hacer que el proceso de construcción de una imagen sea lento. Los archivos pueden ser excluidos del contexto listándolos en un archivo de texto llamado `.dockerignore`. Es una buena práctica hacerlo.

Los archivos no necesitan ser listados individualmente en el archivo `.dockerignore`. Aquí hay un ejemplo de los contenidos de un archivo `.dockerignore`:

```
*.jpg
**/*.png
data_files/*
file_to_exclude.txt
```

Esto excluye del contexto:

- Todos los archivos `.jpg` en el mismo directorio que el archivo Dockerfile
- Todos los archivos `.png` en el mismo directorio que el archivo Dockerfile _o cualquier subdirectorio dentro de él_
- Todos los archivos dentro del directorio `data_files`
- El archivo llamado `file_to_exclude.txt`

(rr-renv-containers-sharing)=
## Imágenes compartidas

Las imágenes de Docker se pueden compartir más fácilmente a través de [Docker Hub](https://hub.docker.com/), que requiere una cuenta. Dicen dos investigadores, Alice y Bob, están colaborando en un proyecto y Alice desea compartir una imagen de parte de su trabajo con Bob.

Para hacer esto, Alicia debe:

- Escriba un Dockerfile para producir una imagen de su trabajo.
- Construir la imagen. Ella (siendo inventaria) lo llama image_name
- Ve a DockerHub y regístrate para obtener una cuenta. Di Alice (otra vez, siendo inventivo) elige el nombre de usuario `username_Alice`
- Inicie sesión en DockerHub a través del terminal de su máquina utilizando:
  ```
  usuario de sudo docker
  ```
- Etiqueta la imagen de su proyecto en su máquina a través de la línea de comandos suministrando el nombre de la imagen y utilizando el patrón `username/image_name:version`. Así que Alice ejecuta el comando:
  ```
  sudo docker tag image_name nombre_usuario_Alice/image_name:version_1
  ```
- Enviar la imagen a su cuenta Docker Hub utilizando:
  ```
  sudo docker tag push username_Alice/image_name:version_1
  ```
- La imagen de Alice está ahora en línea y puede ser descargada. Pasando a Bob...

Bob (asumiendo que ya tiene Docker instalado) puede abrir un contenedor de la imagen de Alice simplemente ejecutándose

```
sudo docker ejecutar -i -t username_Alice/image_name:version_1
```

Inicialmente, Docker buscará esta imagen en la máquina de Bob. Cuando no lo encuentra, _buscará automáticamente_ DockerHub, descargar la imagen de Alice y abrir el contenedor con el trabajo y el entorno de Alice en la máquina de Bob.

(rr-renv-contenedores-copiando)=
## Copiar archivos a y desde contenedores

Los contenedores actúan como máquinas virtuales; como resultado, copiar archivos dentro y fuera de ellos no es tan trivial como copiar archivos a diferentes ubicaciones dentro del mismo equipo.

Un archivo puede ser copiado de la máquina que ejecuta un contenedor en el contenedor utilizando:

```
sudo docker cp file_name container_ID:path_to_where_to_put_file/file_name
```

Recuerda que los ID de contenedores pueden obtenerse usando `contenedor docker sudo ls`.

Un archivo puede ser copiado desde dentro de un contenedor a la máquina que ejecuta el contenedor ejecutando el siguiente comando en la máquina que ejecuta el contenedor:

```
sudo docker cp container_ID:path_to_file/file_name path_to_where_to_put_file/file_name
```

Si la segunda parte (el `path_to_where_to_put_file/file_name`) es sustituida por un `.`, entonces el archivo se copiará en cualquier directorio en el que se encuentre la terminal corriendo el comando.

(rr-renv-contenedores-volúmenes)=
## Volúmenes

Cada vez que se abre un contenedor desde una imagen, ese contenedor es completamente nuevo. Decir que un contenedor está abierto, y el trabajo se hace dentro de él. Decir que un contenedor está abierto, y el trabajo se hace dentro de él. Si ese contenedor está cerrado, y la imagen de la que proviene se utiliza de nuevo para iniciar otro contenedor, ninguno de esos trabajos estará en el nuevo. Simplemente tendrá el estado inicial descrito en la imagen.

Esto puede ser un problema si un investigador quiere trabajar en un contenedor con el tiempo. Afortunadamente, hay una manera de evitarlo usando volúmenes. Los volúmenes almacenan el trabajo realizado dentro de un contenedor incluso después de haber sido cerrado, y pueden ser usados para cargar ese trabajo en contenedores futuros.

Para crear/usar un volumen, ejecutar:

```
sudo docker ejecuta -i -t --mount source=volume_name,target=/target_directory image_name
```

Debe dar a su volumen un nombre más descriptivo que `volume_name`. Se requiere un directorio `target` ; sólo el trabajo dentro de este directorio se guardará en el volumen. Una vez que el investigador esté hecho, pueden cerrar el contenedor de forma normal. Cuando regresan al proyecto y quieren continuar su trabajo, solo necesitan usar el mismo comando que arriba, y cargará el trabajo contenido en `volume_name` en el nuevo contenedor. También guardará cualquier nuevo trabajo allí.

Debajo hay una lista de comandos relacionados con volumen:

- Para listar volúmenes: `volumen de acoplador sudo`
- Para eliminar un volumen: `sudo volumen del docker rm volume_name`
- Para eliminar todos los volúmenes no adjuntados: `limar volumen de acoplador sudo`

Si, al eliminar un contenedor, una `-v` se incluye después de `rm` en `sudo docker rm container_ID`, cualquier volumen asociado al contenedor también será eliminado.

(rr-renv-contenedores-singularidad)=
## Singularidad


> **Prerrequisitos**: Actualmente, la Singularidad sólo se ejecuta en sistemas Linux (por ejemplo Ubuntu). Si usas macOS, [Escritorio de singularidad para macOS](https://www.sylabs.io/singularity-desktop-macos/) está en fase de lanzamiento "Beta".

Un inconveniente significativo de usar Docker para investigaciones reproducibles es que no está pensado como una aplicación de espacio de usuario sino como una herramienta para administradores de servidores. Como tal, requiere acceso root para funcionar. Sin embargo, no hay ninguna razón por la que la ejecución de un análisis deba requerir acceso root para el usuario. Esto es especialmente importante cuando los cálculos se llevan a cabo en un recurso compartido como los sistemas HPC donde los usuarios nunca tendrán acceso root.

Se introdujo el software contenedor de [singularidad](https://www.sylabs.io/) para abordar este problema. La singularidad se creó con sistemas HPC y la investigación reproducible en mente (ver \[this\](https://www.youtube.com/watch?v=DA87Ba2dpNM video). No requiere acceso root para ejecutarse (¡sólo para construir _imágenes del contenedor_! , y por lo tanto permite a los usuarios de HPC construir imágenes de contenedores localmente antes de ejecutar análisis en un clúster de alto rendimiento, por ejemplo. Como beneficio añadido, esto hace posible el uso de casi cualquier software en un sistema HPC sin tener que molestar al personal de administración con la instalación.

Además, dado que Docker es _el_ enfoque de contenedor más conocido, la singularidad apunta a mantener la compatibilidad con contenedores docker. Esto significa que la singularidad puede ser usada para ejecutar contenedores docker normales (sin requerir acceso root).

La singularidad puede utilizarse para ejecutar imágenes Docker o ampliarlas construyendo nuevas imágenes basadas en contenedores docker como una capa base. Por ejemplo, podríamos usar singularidad para crear un contenedor de vainilla ubuntu con una shell usando la imagen de docker de ubuntu:

```
concha de singularidad docker://ubuntu
```

> (escribe `exit` para volver a dejar el shell interactivo).

Así como las imágenes docker se construyen utilizando archivos `Dockerfile` , los contenedores de singularidad se construyen a partir de archivos de definición de singularidad. El proceso y la sintaxis son similares a los archivos docker, pero hay diferencias sutiles. Como un ejemplo de trabajo mínimo, podemos construir un contenedor de `lolcow` basado en la imagen oficial del contenedor docker ubuntu. Pon lo siguiente en un archivo `lolcow.def` (basado en la [documentación de Singularidad](https://www.sylabs.io/guides/3.2/user-guide/build_a_container.html)):
```
Bootstrap: docker
De: ubuntu

%post
    apt-get -y update
    apt-get -y install fortune cowsay lolcat

%environment
    export LC_ALL=C
    export PATH=/usr/games:$PATH

%runscript
    fortune | cowsay | lolcat
```

Esta 'receta' utiliza una imagen docker como base (`ubuntu`), instala algunos paquetes `apt` , modifica algunas variables de entorno, y especifica el script de ejecución `` (que se ejecuta usando el comando `de ejecución` de singularidad). Los detalles sobre el formato de archivo de definición de singularidad se pueden encontrar en la documentación oficial [](https://www.sylabs.io/docs/).

Una imagen de contenedor puede construirse (¡requiere root!) por ejemplo:

```
sudo singularity build lolcow.simg lolcow.def
```

Esto extraerá la imagen ubuntu de DockerHub, ejecuta los pasos de la receta en el archivo de definición y produce un único archivo de imagen de salida (`lolcow. img`). Finalmente se ejecuta el `runscript` como

```
singularidad correr lolcow.simg
```

Idealmente, debería ver una buena vaca ASCII y unas pocas palabras de sabiduría:

```
___________________________________
/ Serás llamado para ayudar a un \
\ amigo en problemas.                /
-----------------------------------
       \   ^__^
        \  (oo)\_______
           (__)\       )\/\
               ||----w |
               ||     ||
```

Siendo compatible con HPC, los contenedores de singularidad también están soportados por una amplia gama de herramientas de gestión de flujo de trabajo. Por ejemplo, tanto [snakemake](https://snakemake.readthedocs.io/en/stable/) como [nextflow](https://www.nextflow.io/docs/latest/singularity.html) soportan contenedores de singularidad específicos para el trabajo. Esto hace que los contenedores de singularidad sean únicos para paralelizar los flujos de trabajo en sistemas HPC utilizando el extensamente utilizado gestor de carga de trabajo de [slurm](https://slurm.schedmd.com/documentation.html). Utilizando singularidad, contenedores y snakemake/nextflow es una manera de escalar la reproducibilidad a una escala masiva. Además, como beneficio añadido, traer flujos de trabajo desde una máquina de escritorio a un sistema HPC ya no requiere escribir scripts de trabajo personalizados.

(rr-renv-containers-singularidad-almacenamiento)=
### Almacenamiento largo de imágenes de contenedor

Es importante tener en cuenta que un simple archivo de receta de contenedor no es reproducible en sí mismo, ya que el proceso de compilación depende de varias fuentes (en línea). Por lo tanto, el mismo archivo de receta podría llevar a diferentes imágenes si se actualizaran las fuentes subyacentes.

Para lograr una verdadera reproducibilidad, es importante almacenar las _imágenes_ del contenedor real. Para las imágenes de singularidad, esto es particularmente fácil, ya que una imagen es simplemente un archivo grande. Pueden variar en tamaño, desde unas pocas decenas de megabytes (microcontenedores) hasta varios gigabytes, y por lo tanto no son adecuados para ser almacenados en un repositorio git ellos mismos Un libre, citable, y solución a largo plazo para almacenar imágenes de contenedores es [zenodo. rg](https://zenodo.org/) que permite hasta 50 Gb por repositorio. Dado que zenodo mints DOI para todo el contenido cargado, las imágenes son inmediatamente citables. En contraste con [Docker Hub](https://hub.docker.com/) (que también acepta solo imágenes docker), zenodo también está claramente engrandecido hacia el almacenamiento y la detección a largo plazo mediante un sofisticado sistema de metadatas. Por lo tanto, es ideal para almacenar contenedores científicos asociados con análisis particulares, ya que estos tienden a no cambiar con el tiempo.

(rr-renv-containers-warning)=
## Palabras de Advertencia

Aunque la singularidad y el estibador pueden parecer similares, son conceptualmente muy diferentes. Además del hecho obvio de que la singularidad no requiere acceso root para ejecutar contenedores, también maneja la distinción entre el sistema de ficheros anfitrión y contenedor de forma diferente. Por ejemplo, por defecto, la singularidad incluye algunos puntos de enlace en el contenedor, a saber:

- `$HOME`
- `/sys:/sys`
- `/proc:/proc`
- `/tmp:/tmp`
- `/var/tmp:/var/tmp`
- `/resolv.conf:/etc/resolv.conf`
- `/etc/passwd:/etc/passwd`
- `$PWD`

Nota, `$PWD` es práctico ya que implica que todos los archivos en el directorio de trabajo son visibles dentro del contenedor. Enlazando `$HOME` por defecto, sin embargo, también implica que el software que utiliza archivos de configuración de `$HOME` podría comportarse de forma inesperada ya que los archivos de configuración específicos de la imagen se sobrescriben con la configuración actual de los usuarios en `$HOME`. Aunque este comportamiento es práctico en escenarios HPC, es potencialmente peligroso para la investigación reproducible. Para evitar posibles problemas, cualquier software instalado en un contenedor de singularidad debería estar apuntado a un archivo de configuración global independiente del usuario.
