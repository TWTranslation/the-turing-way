(cm-cita-cita)=
# Citando objetos de investigación

Debe citar objetos de investigación directamente en el papel en lugares donde sea relevante. Esta es una forma comúnmente practicada de citar publicaciones y es válida para citar otros componentes de investigación como datos y software. Una cita incluye la siguiente información:
- Autor
- Título
- Año de publicación
- Editor (para datos, éste es a menudo el repositorio de datos donde está alojado),
- Versión (si se indica)
- Acceso a la información (una URL o DOI)

Un estilo de cita es un arreglo específico, orden y formato de la información necesaria para una cita. Por ejemplo, El estilo MLA fue desarrollado por la Asociación de Lenguas Modernas (originalmente utilizada en las humanidades) y el estilo APA fue desarrollado por la Asociación Psicológica Americana (originalmente utilizada en psicología y ciencias sociales).
- El estilo de cita de MLA utiliza el siguiente formato: `Author. "Título de la fuente" Título del contenedor, Otros colaboradores, versión, número, editor, fecha de publicación, ubicación.`
- El estilo de cita APA utiliza el siguiente formato: `Author. (Año). Título del conjunto de datos (Versión). [Recuperado desde] ***O*** [DOI]`

Vea [Guía de estilos de citas de Scribbr](https://www.scribbr.com/citing-sources/citation-styles/). Vea también [recurso FORCE11](https://www.force11.org/node/4771).

(cm-citable-cite-data)=
## Citando datos

Al compartir un conjunto de datos, utilice DOI dedicados y añada una **declaración de disponibilidad de datos** al final del documento o en los detalles del repositorio en línea (similar a la sección de confirmación).

Puede encontrar ejemplos de estas afirmaciones en las políticas de autor de los editores (datos de investigación).

### Ejemplos de instrucción de disponibilidad de datos:

**Utilizando el Identificador Digital de Objetos (DOI):** "Los datos que apoyan los resultados de este estudio están abiertamente disponibles en [nombre del repositorio] en http://doi. rg/[doi].”

**Si no se emite ningún DOI:**
- “Los datos que apoyan los resultados de este estudio están abiertamente disponibles en [nombre del repositorio] en [URL], número de referencia [número de referencia].”

**Cuando haya un período de embargo puede reservar su DOI e incluir una referencia al conjunto de datos en su papel:**
- “Los datos que apoyan los resultados estarán disponibles en [nombre del repositorio] en [URL / DOI] después de un embargo [6 mes] a partir de la fecha de publicación para permitir la comercialización de los hallazgos de investigación”.

**Cuando los datos no pueden estar disponibles:**
- “Se aplican restricciones a los datos que apoyan los resultados de este estudio. [Explicar la naturaleza de las restricciones, por ejemplo, si los datos contienen información que podría comprometer la privacidad de los participantes en la investigación] Los datos están disponibles a petición razonable contactando con [nombre y datos de contacto] y con el permiso de [nombre de terceros].”
-  “Los datos que apoyan los resultados de este estudio están disponibles bajo petición. Las condiciones de acceso y los procedimientos se pueden encontrar en [URL para el repositorio de acceso restringido como [EASY](https://easy.dans.knaw.nl/ui/home).]”

**Más ejemplos de Disponibilidad de Datos:**

Puedes encontrar más ejemplos en la página [Informes de acceso a datos del gestor](https://www.library.manchester.ac.uk/using-the-library/staff/research/research-data-management/sharing/data-access-statements/), los ejemplos [de Disponibilidad de Datos de Cambridge](https://www.cambridge.org/core/services/authors/open-data/data-availability-statements), los ejemplos [de Disponibilidad de Datos AMS](https://www.ametsoc.org/index.cfm/ams/publications/author-information/formatting-and-manuscript-components/data-availability-statement-examples/), o [Consejos de Nature para escribir una extraña Declaración de Disponibilidad de Datos](https://researchdata.springernature.com/posts/tips-for-writing-a-dazzling-das-data-availability-statement).

(cm-citable-cite-software)=
## Software de citas

Una cita de software tiene muchos de los mismos elementos que una cita de datos, descrita arriba, y se describen con más detalle en los [Principios de Citación de Software](https://www.force11.org/software-citation-principles). Cuando se utiliza otro software, es vital citarlo y atribuirlo correctamente.

Para hacer tu código citable, puedes usar la integración entre [Zenodo](https://zenodo.org/) y GitHub.

- Cree un archivo para decirle a la gente cómo citar su software. Utiliza esta [útil guía](https://citation-file-format.github.io/cff-initializer-javascript/) para formatear el archivo.
- Vincula tu cuenta de GitHub con una cuenta de Zenodo. Esta guía explica [cómo](https://guides.github.com/activities/citable-code/).
- Puede decirle a Zenodo qué información o metadatos desea incluir con su software agregando un zenodo `. son` archivo, descrito [aquí](https://guide.esciencecenter.nl/citable_software/making_software_citable.html).
- En Zenodo, invierte el cambio a la posición 'encendida' para el repositorio de GitHub que desea liberar.
- En GitHub, haga clic en el botón *Crear un nuevo lanzamiento*. Zenodo debe ser notificado automáticamente y debe hacer una copia instantánea del estado actual de su repositorio (sólo una rama, sin ningún historial), y también debe asignar un identificador persistente (DOI) a esa instantánea.
- Utilice el DOI en cualquier cita de su software y le diga a los colaboradores y usuarios que hagan lo mismo!
