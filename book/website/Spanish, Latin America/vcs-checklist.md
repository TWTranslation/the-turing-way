(rr-vcs-checklist)=
# Checklist

(rr-vcs-checklist-makeuseof)=
## Hacer uso de Git

- Haga que la versión de su proyecto sea controlada inicializando un repositorio Git en su directorio usando `git init`.
- Añade y confirma todos tus archivos al repositorio usando `git add .` y luego `git commit`.
- Continúe añadiendo y confirmando cambios a medida que su proyecto progresa. Etapa los cambios en archivos específicos a ser confirmados con `git add filename`y agregue mensajes a sus confirmaciones.
  - Cada commit debe hacer un simple cambio.
  - No se han enviado archivos generados.
  - Los mensajes de confirmación son significativos, con un resumen de ~50 caracteres en la parte superior.
  - Los mensajes de compromiso están en el actual tenso e imperativo.
- Desarrollar nuevas características en sus propias ramas, que usted puede crear a través de `git checkout -b branch_name` y cambiar entre a través de `git checkout branch_name`.
  - Asegúrate de que las ramas tengan nombres informativos.
  - Asegúrese de que la rama principal se mantiene limpia.
  - Asegúrese de que cada rama tiene un único propósito y sólo se hacen cambios relacionados con ese propósito.
- Una vez que las características están completas, fusiona sus ramas en la rama principal cambiando a la rama de características y ejecutando `git merge main`.
  - Combine los cambios de otros en su trabajo con frecuencia.
  - Cuando se trate de conflictos de fusión, asegúrese de entender totalmente ambas versiones antes de intentar resolverlos.

(rr-vcs-checklist-contribute)=
## Contribuir al proyecto de otra persona

- Clona el repositorio de su proyecto desde GitHub `git clone repository_url`.
- Hacer y confirmar cambios.
- Enviar sus cambios a la versión de GitHub del proyecto.
- Utilizar temas para discutir posibles cambios en un proyecto.
- Haz pull requests en GitHub para compartir tu trabajo.
  - Explique claramente los cambios que ha realizado (y por qué) en su solicitud de extracción.

(rr-vcs-checklist-data)=
## Asegúrate de que tus datos estén controlados por versión

- Si sus proyectos involucran datos, compruebe si [Git LFS](https://git-lfs.github.com/), [git-annex](https://git-annex.branchable.com/), o [DataLad](https://www.datalad.org/) se ajusta a sus necesidades de control de versión.
- Comparte los datos junto con tu proyecto para ayudar a otros a reproducir tus resultados.
