(rr-vcs-github)=
# Comandos de Git para trabajar en GitHub

A medida que la investigación se vuelve cada vez más colaborativa y múltiples personas trabajan en el mismo proyecto, se hace difícil mantener un seguimiento de los cambios realizados por otros si no se hacen de forma sistemática. Además, requiere mucho tiempo incorporar manualmente el trabajo de diferentes participantes en un proyecto, incluso cuando todos sus cambios son compatibles. Alojarse el proyecto en un servicio de alojamiento de repositorio en línea como GitHub es beneficioso para hacer que las colaboraciones sean abiertas y efectivas. Si eres nuevo en colaborar a través de [GitHub](https://github.com), por favor sigue la guía completa en las secciones anteriores.

En esta sección, discutiremos cómo usar comandos Git para trabajar con un repositorio Git en línea.

Tenga en cuenta que los comandos listados en este capítulo (tanto en este subcapítulo como en subcapítulos anteriores) NO son específicos de GitHub. Se utilizan para el trabajo colaborativo en cualquier repositorio de Git e interactuar con cualquier sitio/servidor de alojamiento de repositorios que puede ser [GitHub](https://github.com/), pero también [GitLab](https://about.gitlab.com/), [Bitbucket](https://bitbucket.org/) o un repositorio Git desnudo de [configuración propia en un servidor web](https://opensource.com/life/16/8/how-construct-your-own-git-server-part-6).

Para la simplicidad, usaremos GitHub como ejemplo para explicar los comandos que se utilizan para interactuar con los repositorios Git.

(rr-vcs-github-local)=
## Crear una copia local de un repositorio en línea

Hasta ahora, todos los comandos Git introducidos en este capítulo se refieren a los repositorios Git locales y no conectados. Para colaborar con otros, servicios de hosting, como GitHub, puede almacenar un *clon* (una copia) de su repositorio local y exponerlo a otros. Generalmente, tendrá un repositorio local y un repositorio web *remoto*. Su repositorio local está conectado al clon basado en la web. En términos técnicos, el clon basado en web es un `remoto` del repositorio local. Normalmente, este remoto se llama "origen". Tener un remoto basado en web le permite *enviar* cambios a su proyecto en línea. Permite a otros obtener su propio clon de su repositorio (una copia de su repositorio a su computadora local), realiza cambios y envía una *pull request* que te permite integrar sus cambios. Por ejemplo, se puede crear una copia local independiente de un proyecto usando el siguiente comando Git:

```
git clone <insert GitHub link of the repository here>
```

Los colaboradores pueden actualizar su versión local de un repositorio en línea o *pull* el trabajo de otros en su copia usando el comando:
```
git pull
```
Del mismo modo, pueden editar archivos localmente y poner en marcha sus actualizaciones (`git add .`), cambios de confirmación a una nueva versión (`git commit`) y *push* cambios al repositorio remoto en línea usando el comando Git:
```
git push
```
(rr-vcs-github-online)=
## Vincula un proyecto local en tu ordenador a un repositorio en línea

Para vincular un proyecto en su computadora a un nuevo repositorio de GitHub (preferiblemente con el mismo nombre), necesita seguir el flujo de trabajo estándar para crear un repositorio Git (descrito en el subcapítulo {ref}`rr-vcs-workflow` ) emitiendo el siguiente conjunto de comandos en el terminal, uno por uno:

```
cd <your project folder>
git init
git add .
git commit
```
Asumiendo que tienes un repositorio de GitHub que quieres conectar con este proyecto, ejecuta el siguiente comando:

```
git remote add origin <GitHub repository link for your project>
```

Luego, *envía* todos los archivos de tu ordenador a la versión en línea para que coincidan:

```
git push -u origen principal
```

Luego puede continuar y hacer más commits en su computadora. Cuando quieras enviarlos a tu versión en línea, de la misma manera:

```
git push origin branch_you_want_to_push_to
```

También puede hacer cambios directamente en GitHub editando el repositorio en línea, y *pull* estos cambios localmente usando el comando `git pull`.

Otros también pueden clonar el repositorio en su ordenador usando:

```
git clone git@github.com:your-github-username/repository_name
```

They can make and commit changes to the code without impacting the original, and push their changes to *their* online GitHub account using:

```
git push -u origen principal
```

El mismo procedimiento se aplica a usted si desea clonar el repositorio de otra persona.

(rr-vcs-github-online-pull)=
### Pull Requests

Si está trabajando en una rama personal y algunos otros cambios fueron realizados en la rama principal, puedes *tirar* esos cambios a tu rama usando el comando Git:
```
origen principal de git
```

Cuando todos tengan una copia del proyecto en su propia rama (verifique su rama con `git checkout branch-name`), pueden *enviar* sus cambios a su rama usando el siguiente comando:

```
git push nombre rama-origen
```

Sin embargo, si no puede editar directamente el repositorio (cuando no es un propietario o administrador del proyecto), podrás compartir tu trabajo con la ayuda de *pull requests*. Una pull request permite a un colaborador obtener los cambios propuestos desde su rama o repositorio integrados en la rama principal del proyecto. También es posible hacer pull requests a través de la línea de comandos (ver la documentación de GitLab [aquí](https://git-scm.com/docs/git-request-pull)).

(rr-vcs-github-contributing)=
## Contribuir a otros proyectos

Cuando crea una copia local de un repositorio, sólo mantiene las versiones de los ficheros que están en el repositorio al crear esa copia. Si se hacen cambios en el repositorio original posteriormente, su copia se desincronizará sin sincronización. Esto puede provocar problemas como conflictos en el contenido del archivo al hacer una pull request o fusionar cambios de su rama al repositorio principal. Por lo tanto, al trabajar en diferentes ramas o bifurcaciones de un repositorio, es una buena práctica para mantenerlos actualizados con el repositorio principal y en sincronización con el repositorio original.

(rr-vcs-github-contributing-workflow)=
### Un flujo de trabajo para contribuir a otros proyectos de Github a través de `git`:

Usando el botón fork del repositorio de GitHub al que desea contribuir, cree una copia del repositorio en su cuenta. El repositorio principal al que bifurcó se referirá como el repositorio "upstream".

Ahora puede trabajar en su copia usando la línea de comandos, a través de los siguientes pasos (asegúrese de reemplazar los nombres de usuario y repositorio del marcador de posición):

1. Clonar en su máquina local:

    ```
    git clone git@github.com:your-github-username/repository_name
    ```

2. Agregue el repositorio 'upstream' a la lista de repositorios remotos usando el comando `git remote`:

    ```
    git remote add upstream git@github.com:upstream-github-username/repository_name
    ```

3. Verificar el nuevo repositorio 'upstream' remoto:

    ```
    git remoto -v
    ```

4. Actualice su fork con los últimos cambios de la línea de desarrollo principal, obteniendo primero las ramas del repositorio principal y los últimos commits para llevarlos a su repositorio:

    ```
    git obtener arriba
    ```

5. Ver todas las ramas, incluyendo las de la parte superior:

    ```
    git branch -va
    ```

Asegúrate de que estás en tu rama principal localmente, si no es así, luego revisa tu rama principal usando el comando `git checkout main`

6. Mantenga su bifurcación actualizada fusionando los commits (extraídos desde el desarrollador) en su propia sucursal principal local.

    ```
    fusión de git río arriba/principal
    ```

Ahora, su sucursal principal local está actualizada con todo lo modificado en la parte superior. Si no hay commits únicos en la sucursal principal local, git simplemente realizará un avance rápido.

*Nota: El desarrollador/principal es el principal del repositorio original al que desea contribuir. mientras que origin/main se refiere al repositorio que clona en su máquina local después de que fuera bifurcado en GitHub.*

Una vez que tu bifurcación está sincronizada con el repositorio principal del desarrollador, siempre puede mantener su repositorio clonado local en sincronización con el origen (bifurcación en este caso) utilizando:

```
git checkout main
git pull
```

El comando `git pull` combina otros dos comandos, `git fetch` y `git merge`. Al usar `git fetch`, los commits resultantes se almacenan como la rama remota le permite revisar los cambios antes de fusionar.

De la misma manera, si has creado más ramas distintas de la principal, también puedes mantenerlos sincronizados con tu servidor principal, una vez que esté sincronizado con el repositorio del desarrollador principal.

```
git checkout my-other-branch
git pull origin main
```

Cuando todo esté actualizado, puede trabajar en su rama y confirmar los cambios.

Cuando esté listo para empujar sus commits locales en su repositorio bifurcado (origen), utilice el siguiente comando.

```
git push origin forked_repository
```

¡Ahora puede hacer una solicitud de extracción!

(rr-vcs-github-contributing-practice)=
### Buena práctica

Antes de crear una rama, asegúrese de que tiene todos los cambios desde la rama original/principal.


**Una palabra de precaución en el comando `rebase`**: Mientras intentas mantener tus ramas sincronizadas, puedes encontrar el comando `rebase`. Tiende a reescribir la historia y podría ser problemático si no comunicarse con otros que trabajan en la misma rama. Intenta evitar usar el comando `rebase` , y en su lugar use `pull` o `fetch`+`merge`, como se discute en esta sección. Puedes encontrar más detalles sobre [Combinar contra Rebasamiento](https://www.atlassian.com/git/tutorials/merging-vs-rebasing).


## Lectura posterior
- Un artículo [sobre la sincronización de un fork de un repositorio](https://help.github.com/en/articles/syncing-a-fork) para mantenerlo actualizado con el repositorio del desarrollador principal.
- Instrucciones si desea hacerlo todo [en el propio navegador](https://github.com/KirstieJane/STEMMRoleModels/wiki/Syncing-your-fork-to-the-original-repository-via-the-browser).
