(rr-vcs-git)=
# Comenzando con Git

Para empezar, asegúrese de que tiene instalado Git en su ordenador. Las instrucciones para instalar Git en máquinas Linux, Windows y Mac están disponibles [aquí](https://Git-scm.com/book/en/v2/Getting-Started-Installing-Git). Una vez completada la instalación, vaya al directorio del proyecto a través de la interfaz de línea de comandos o terminal (por ejemplo, `cd my-project-folder`). La carpeta de proyecto contiene todos sus archivos, incluyendo subdirectorios.

Cuando trabajes en un proyecto, realizarás numerosos cambios en tus archivos a medida que avanzas. A veces puede que necesite deshacer los cambios, echar otro vistazo a las versiones pasadas, o comparar las versiones. Guardar cada versión individualmente (como `version_1.py` y `version_2.py`) es desordenado y rápidamente se vuelve impráctico.

Los commits sirven como puntos de control donde archivos individuales o un proyecto entero pueden ser revertidos de forma segura cuando sea necesario. Al hacer confirmaciones, puedes guardar las versiones de tu código y cambiar entre ellas/compararlas fácilmente sin desordenar tu directorio.

Para empezar con su repositorio Git, ejecute el siguiente comando Git en la terminal para crear/inicializar su repositorio Git:

```
git init
```

Esto sólo tiene que hacerse una vez por proyecto.

Piensa en el repositorio como un lugar donde se almacena la historia. Cuando inicializas por primera vez un repositorio con `git init`, todos los archivos de su proyecto no se añadirían al repositorio Git, ya que no son rastreados por defecto por Git. Por lo tanto, el siguiente paso es añadir tus archivos al repositorio Git y permitir que Git los rastree.

Ejecutar el siguiente comando para añadir todos los archivos en la carpeta actual:
```
git add .
```
O ejecute el siguiente comando para añadir sólo los archivos ('su_nombre_archivo' en este ejemplo):
```
git añadir su_file_name
```

Este comando pone sus archivos recién añadidos o cualquier otro cambio en lo que se llama el estado "staging".

```{figure} ../../figures/change-stage-repo.png
---
name: change-stage-repo
alt: Una ilustración de los comandos `git add` y git commit.
---
Cómo funciona `git add` y `git commit`
```

Si alguna vez no está seguro qué archivos han sido añadidos, qué archivos han sido cambiados, o qué archivos están sin seguir, puede ejecutar lo siguiente para averiguar:

```
git status
```

El siguiente paso es "confirmar" cualquier cambio almacenado en su área de puesta en escena para que sean grabados en su repositorio.

```
git commit
```
¡Felicidades, ha terminado de configurar su repositorio!

Aprenderás más sobre `git commit` en el siguiente capítulo.
