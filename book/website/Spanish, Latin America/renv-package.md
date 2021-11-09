(rr-renv-paquete)=
# Sistemas de Gestión de Paquetes

Los gestores de paquetes instalan y hacen un seguimiento de los diferentes paquetes de software (y de sus versiones) que usa dentro de un entorno. Hay bastantes para elegir, por ejemplo, Yum, Zypper, dpkg, y Nix (que será mencionado en la sección {ref}`rr-renv-binder`). Vamos a centrarnos en [Conda](https://conda.io/en/latest/), que tiene varias funcionalidades útiles.

(rr-renv-paquete-conda)=
## ¿Qué hace Conda?

Conda permite a los usuarios crear cualquier número de entornos completamente separados, y rápidamente y cambiar entre ellos. Por ejemplo, digamos que un investigador tiene un proyecto, _Proyecto Uno_, que tiene su propio entorno, definido por Conda, que se compone del siguiente conjunto de paquetes:

| **Nombre del paquete** | **Versión** |
| ---------------------- | ----------- |
| `Paquete A`            | `1.5.2`     |
| `Paquete B`            | `2.1.10`    |
| `Paquete C`            | `0.7.9`     |

Más tarde, el investigador inicia _Proyecto Dos_ en su propio entorno, con los siguientes paquetes:

| _Nombre del paquete_ | _Versión_ |
| -------------------- | --------- |
| `Paquete B`          | `2.1.10`  |
| `Paquete C`          | `1.2.4`   |
| `Paquete D`          | `1.5.2`   |
| `Paquete E`          | `3.7.1`   |

Ten en cuenta que la versión de `paquete C` utilizado en _Proyecto Dos_ ha sido actualizada desde la versión usada en _Proyecto Uno_. Si estos entornos de proyecto no fueran separados, el investigador tendría la opción de:

- A) Utilizando la versión anterior de `paquete C` para siempre y no beneficiándose de actualizaciones y correcciones de errores en versiones posteriores.
- B) Instalando la versión actualizada del paquete y esperando que no impacte _Proyecto Uno_.
- C) Instalando la versión actualizada del paquete para su uso en _Proyecto Dos_, luego desinstalarlo y reinstalar el antiguo cuando necesiten trabajar en _Proyecto Uno_. Esto sería extremadamente molesto y es un paso que corre el riesgo de ser olvidado.

Todas estas opciones son extremadamente pobres, de ahí la utilidad de Conda para crear entornos distintos fácilmente intercambiables.

Conda también se puede utilizar para capturar y exportar entornos computacionales fácilmente. También puede ir en la otra dirección; puede generar entornos computacionales a partir de archivos de configuración que pueden ser usados para recrear el entorno de otro.

Otro de los beneficios de Conda es que ofrece mucha más flexibilidad a los usuarios que no tienen privilegios de administrador en las máquinas en las que están trabajando (como es muy común cuando se trabaja con funciones informáticas de alto rendimiento). Sin Conda, es típicamente desafiante instalar software requerido en tales máquinas. Sin embargo, debido a que Conda crea y cambia _nuevos entornos_ en lugar de hacer cambios en el entorno general del sistema de una máquina, los privilegios de administrador no son requeridos.

Por último, si bien Conda es céntrica hasta cierto punto, también está bien integrada para su uso con otros idiomas. Por ejemplo, la versión base de Conda incluye la biblioteca estándar C++.

(rr-renv-package-installing)=
## Instalando Conda

Tenga en cuenta que estas instrucciones de instalación están dirigidas a sistemas Linux. Las instrucciones para instalar Conda en sistemas Windows o Mac pueden encontrarse [aquí](https://docs.conda.io/projects/conda/en/latest/user-guide/install/).

Vaya a [https://repo.continuum.io/miniconda/](https://repo.continuum.io/miniconda/) y descargue el último instalador de Miniconda 3 para su sistema (32 bits o 64 bits). Tendrá un nombre como `miniconda_version_number.sh`. Ejecutar el instalador utilizando:

```
bash Miniconda_version_number.sh
```

Puedes comprobar que Conda se ha instalado correctamente escribiendo:

```
conda --version
```

que debe mostrar un número de versión.

(rr-renv-package-using)=
## Creación y uso de entornos

Conda instala automáticamente un entorno base con algunos paquetes de software comúnmente utilizados. Es posible trabajar en este entorno base; sin embargo, es una buena práctica crear un nuevo entorno para cada proyecto que se inicie.

Para crear un entorno, use `conda create --name your_project_env_name` seguido de una lista de paquetes a incluir. Para incluir los paquetes `scipy` y `matplotlib` , añádelos al final del comando:

```
conda create --name Project_One scipy matplotlib
```

Puede especificar las versiones de ciertos (o todos) paquetes usando `=package_number` después del nombre. Por ejemplo, para especificar `scipy 1.2.1` en el entorno anterior:

```
conda create --name Project_One scipy=1.2.1 matplotlib
```

Al crear entornos, también puede especificar versiones de idiomas a instalar. Por ejemplo, para usar `Python 3.7.1` en el entorno _Project_One_:

```
conda create --name Project_One python=3.7.1 scipy=1.2.1 matplotlib
```

Ahora que se ha creado un entorno, es el momento de activarlo (empezar a usar) a través de `conda activate environment_name`. Así que en este ejemplo:

```
conda activar Project_1
```

Ten en cuenta que puedes necesitar usar `source` en lugar de `conda` si estás usando una versión antigua de Conda.

Una vez que un entorno está activado, deberías ver el nombre del entorno antes de cada mensaje en tu terminal:

```
(Project_One) $ python --version
Python 3.7.1
```

(rr-renv-package-deleting)=
## Desactivar y eliminar entornos

Puedes desactivar (salir de) un entorno usando:

```
conda desactivado
```

y eliminar (eliminar) un entorno como se muestra aquí:

```
conda esv remove --name Project_1
```

Para comprobar si un entorno ha sido eliminado con éxito, puede ver una lista de todos los entornos Conda en el sistema utilizando:

```
lista de conda
```

Sin embargo, la eliminación de un entorno puede no eliminar los archivos del paquete que estaban asociados con él. Esto puede llevar a que se pierda mucha memoria en paquetes que ya no son necesarios. Los paquetes que ya no están referenciados por ningún entorno pueden ser eliminados utilizando:

```
limpio conda -pts
```

Alternativamente, puede eliminar un entorno (como _Project_One_) junto con sus paquetes asociados a través de:

```
conda remove --name Project_One --all
```

(rr-renv-package-removing)=
## Instalar y eliminar paquetes dentro de un entorno

Dentro de un entorno, puede instalar más paquetes usando:

```
conda instalar package_name
```

similarmente, puede eliminarlos vía:

```
conda eliminar package_name
```

Esta es la mejor manera de instalar paquetes desde Conda ya que también instalará una versión adaptada a Conda del paquete. Sin embargo, es posible usar otros métodos si una versión específica de Conda de un paquete no está disponible. Por ejemplo, `pip` se usa comúnmente para instalar paquetes de Python. Por lo tanto, un comando como:

```
pip install scipy
```

instalará explícitamente el paquete `scipy` - siempre y cuando `pip` esté instalado dentro del entorno actual de Conda. Desafortunadamente, cuando Conda y `pip` se utilizan juntos para crear un entorno, puede conducir a un Estado que puede ser difícil de reproducir. Específicamente, ejecutar Conda después de `pip` potencialmente puede sobrescribir o romper paquetes instalados a través de `pip`. Una forma de evitar esto es instalando tantos requisitos como sea posible en Conda, y luego usar pip. La información detallada puede leerse en el post, [Usando Pip en un Entorno Conda](https://www.anaconda.com/using-pip-in-a-conda-environment/).

Aunque los paquetes Python han sido usados en muchos de los ejemplos que se dan aquí, los paquetes Conda no tienen que ser paquetes Python. Por ejemplo, aquí se instala el lenguaje base R junto con el paquete R `r-yaml`:

```
conda create --name Project_One r-base r-yaml
```

Para ver todos los paquetes instalados en el entorno actual, use:

```
lista de conda
```

Para comprobar si un paquete en particular está instalado, por ejemplo, `scipy` en este caso:

```
conda list scipy
```

Un canal Conda es de donde descargó un paquete. Los canales comunes incluyen `Anaconda` (una empresa que proporciona el canal de paquetes conda por defecto) y `conda-forge` (un esfuerzo de empaquetado dirigido por la comunidad). Puede instalar explícitamente un paquete desde un determinado canal especificándolo como:

```
conda instalar -c channel_name package_name
```

(rr-renv-package-exporting)=
## Exportación y reproducción de entornos computacionales

Los entornos Conda pueden ser exportados fácilmente a archivos legibles por humanos en el formato YAML. Los archivos YAML se discuten con más detalle {ref}`después <rr-renv-yaml>` en este capítulo.

Para exportar un entorno conda a un archivo llamado `environment.yml`, active el entorno y luego ejecute:

```
conda esv export > environment.yml
```

Del mismo modo, se pueden crear entornos Conda a partir de archivos YAML por ejemplo:

```
conda esv create -f environment.yml
```

Esto permite a los investigadores reproducir rápidamente los entornos computacionales de los demás. Tenga en cuenta que la lista de paquetes no es sólo los instalados explícitamente. Puede incluir paquetes de dependencias específicos del sistema operativo, por lo que los archivos de entorno pueden requerir que la edición sea portable para diferentes sistemas operativos.

Los entornos también pueden ser clonados. Esto puede estar justificado, por ejemplo, si un investigador inicia un nuevo proyecto y quiere crear un nuevo entorno en el que trabajar; el entorno del nuevo proyecto (al menos inicialmente) puede requerir los mismos paquetes que el entorno de un proyecto anterior.

Por ejemplo, para clonar el entorno _Project_One_ , y dar a este nuevo entorno el nombre _Project_Two_:

```
conda create --name Project_Two --clone Project_1
```
