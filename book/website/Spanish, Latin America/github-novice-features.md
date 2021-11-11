(cl-github-novice-features)=
# Usando más características de GitHub

Ahora que tu repositorio está configurado, estás listo para añadir más cosas y usar algunas de sus características útiles.

## Añadir más carpetas (directorios), archivos y commits

* Puede añadir más archivos a su repositorio haciendo clic en el botón "añadir archivo" y subiendo archivos o creando uno nuevo.
* Cada vez que crees un nuevo archivo o subas archivos necesitarás añadir un {ref}`mensaje de commit<rr-vcs-commit-messages>` para ayudarte a recordar los cambios que has hecho.
* Tenga en cuenta que git (y por lo tanto GitHub) no rastrea carpetas/directorios, por lo que no puede crear una carpeta vacía.


**Crear una nueva carpeta añadiendo un nuevo archivo:**

* Haga clic en el botón "Añadir archivo" y, a continuación, cree un nuevo archivo.
* Esto le dará un archivo en blanco para editar.
* Al nombrar el archivo, primero escriba el nombre de la carpeta (existente o nuevo) y luego una barra de selección, seguido por el nombre del archivo: "carpeta-nombre/nombre de archivo. xt".
* Editar el contenido del archivo.
* Guarde los cambios usando el botón "commit". Recuerda escribir un {ref}`mensaje de commit<rr-vcs-commit-messages>` para ayudarte a recordar los cambios que has hecho.

Este archivo aparecerá en la carpeta que ha nombrado. Podrás ver la carpeta en tu página de destino. Si hace clic en la carpeta azul de la lista, le llevará a los archivos dentro de esa carpeta.

## Explora las características 'Insight' de GitHub

* En GitHub, vaya a la página principal de destino del repositorio.
* Bajo el nombre de su repositorio, haga clic en "Insights".
* En la barra lateral izquierda, haga clic en “Comunidad”.
  * Aquí encontrará los archivos recomendados para incluir en su repo. Estos archivos son especialmente útiles cuando se trabaja con colaboradores o miembros de tu comunidad.
  * El archivo "Licencia" es uno de los más importantes, porque le dice a otros cómo pueden (o pueden) usar los materiales en su repo.
  * Para las colaboraciones, asegúrese de mirar "Contribución" y "Descripción".
  * Siempre que sea posible, añada un "Código de conducta" para hacer su proyecto acogedor e inclusivo para los demás.
* Otras cosas interesantes a ver son los "colaboradores" (los que contribuyen a tu proyecto), “Trafógico” (quien visita la página de su proyecto y cuándo lo hacen) y “Comites” (un cronograma y número de commits realizados en su proyecto).

## Explora las características de 'Projects' de GitHub
Los tablones de proyectos en GitHub le ayudan a organizar y priorizar su trabajo. Es una característica de kanban para rastrear tus tareas con columnas pendientes, en progreso y hecho. Cada elemento puede ser vinculado a incidencias específicas o pull requests para ayudarle a rastrear su progreso. Esta característica es una gran manera de ayudar a otros a contribuir a tu repositorio o hacerles saber lo que has planeado.


## Utilizando características de GitHub para fomentar la colaboración
Esto es como se ve un repositorio cuando está configurado para incluir muchas de estas características, haciéndolo un espacio de trabajo acogedor y colaborativo.

```{figure} ../../figures/github-project.jpg
---
name: github-project
alt: Diagrama anotado de un repositorio de proyecto colaborativo. Explicado en el título.
align: izquierda
---
Diagrama anotado de un repositorio de proyecto colaborativo.
- Etiquetas a la izquierda de la imagen:
  - **1. Project:** Esto te muestra los tableros del proyecto para este repo.
  - **2. Problemas:** Todas las tareas que se han planteado en este repo.
  - **3. Archivos:** Estos son todos los archivos en el repo.
  - **4. Página de tierra o archivo README.md:** Su archivo README.md se representa automáticamente como una página de destino para su sitio.
- Etiquetas en el lado derecho de la imagen:
  - **5. Insights:** Esto te muestra toda la actividad que ha ocurrido en tu repo. 
  - **6. Editar detalles del repo:** Puede escribir una breve descripción de su proyecto y añadir etiquetas.
  - **7. Descripción del repositorio.**
  - **8. Enlace para las páginas de GitHub:** Sitio web generado por este repo.
  - **9. Etiquetas temáticas:** Las etiquetas temáticas relacionadas con tu repositorio pueden ayudar a otras personas a encontrar tu proyecto.
  - **10. Licencia:** La licencia que has puesto en tu repo.
```
