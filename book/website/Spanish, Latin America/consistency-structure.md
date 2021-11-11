(ch-consistencia-estructura)=
# Estructura

La estructura se refiere a cómo está organizada _La Vía Turística_. Un buen marco estructural asegura que el contenido de _el Vía Turística_ se presente de una manera ordenada.

(ch-consistencia-estructura-hr)=
## Requisitos duros

Las duras verificaciones que se ocupan de la estructura de _The Turing Way_ incluyen:

(ch-consistencia-estructura-hr-vacíos)=
### Compruebe 1: No añada archivos vacíos en el `_toc.yml`

The `_toc.yml` file is where _The Turing Way's_ table of contents (ToC) lives. Algunos archivos referenciados en la ToC están vacíos, y su inclusión significa que los lectores pueden navegar a un capítulo (sub)vacío mientras leen _La Vía Turística_. Esto repercute negativamente en la experiencia del lector a medida que pasan por el libro.

```{figure} ../../figures/empty-toc-file.png
---
name: empty-toc-file
alt: Un archivo vacío que fue incluido en la tabla de contenidos de la Vía Turística. Los lectores todavía pueden navegar a archivos vacíos cuando están incluidos en la tabla de contenidos.
---
Archivos vacíos incluidos en la tabla de contenidos de Turing Way todavía pueden ser accedidos por los lectores.
```

Una sugerencia general es eliminar las referencias a dichos archivos de la ToC y plantear un problema en _El repositorio de la Vía de Turno_ de Github [](https://github.com/alan-turing-institute/the-turing-way) para que se escriba contenido para esos archivos. Cuando se escribe el contenido, los archivos pueden ser añadidos al ToC.

Por ejemplo, [esta incidencia](https://github.com/alan-turing-institute/the-turing-way/issues/1391) cura una lista de archivos vacíos e incompletos actualmente en _The Turing Way_, y [este PR](https://github.com/alan-turing-institute/the-turing-way/pull/1448) escribe contenido para el subcapítulo de `Licencias de datos` que se muestra en el {ref}`imagen <empty-toc-file>`.

(ch-consistencia-estructura-hr-estructura)=
### Marcar 2: Asegúrate de que los capítulos sigan una estructura consistente

_La Vía Turística_ está compuesta por cinco guías que contienen varios capítulos y subcapítulos. Sin embargo, estos capítulos no siguen una estructura uniforme, quitando la experiencia del lector.

```{figure} ../../figures/recommended-chapter-structure.png
---
name: recommended-chapter-structure
alt: La estructura recomendada para los capítulos en The Turing Way. Los capítulos deben tener una página de destino con secciones para requisitos previos, resumen y por qué el capítulo es útil. Los capítulos también deben tener una lista de verificación y un subcapítulo de recursos además del resto del contenido del capítulo.
---
Estructura recomendada para los capítulos de The Turing Way.
```

- **Página de aterrizaje:**
    - La página de inicio del capítulo debe incluir información sobre los requisitos previos necesarios para entender el capítulo, un resumen del contenido del capítulo, y una explicación de por qué el capítulo es útil.
- **Subcapítulos:**
    - Un capítulo puede contener cualquier número de subcapítulos o ninguno en absoluto. Sin embargo, tenga en cuenta el siguiente requisito sobre la lista de verificación y subcapítulos de recursos.
- **Checklist subchapter:**
    - El subcapítulo de la lista de verificación muestra los puntos de acción para que el lector tome basándose en los conceptos introducidos en el capítulo.
- **Subcapítulo de recursos:**
    - El subcapítulo de recursos apunta al lector a otras fuentes donde pueden aprender más sobre los conceptos discutidos en el capítulo, así como temas relacionados para explorar.


```{attention} Please note that making chapters follow this structure may require splitting some of the existing content into new files.
Las referencias a estos archivos deben actualizarse en la tabla de contenidos en el archivo `_toc.yml`.
```

Consulte la plantilla de capítulo [](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/templates/chapter-template) para estructurar nuevas contribuciones de capítulos y úsalo para evaluar los capítulos actuales en _The Turing Way_. Para los capítulos que no encajen en esta estructura, por favor levanta una solicitud de extracción.


(ch-consistencia-estructura-hr-toc)=
### Comprobar 3: No añadas una "tabla de contenido" en los capítulos o subcapítulos.

Algunos capítulos en _The Turing Way_ fueron escritos con una tabla de contenido elaborada a mano. Sin embargo, Jupyter Book genera automáticamente una tabla permanente de contenidos que se pueden encontrar en el lado izquierdo del libro _The Turing Way_ y una tabla dinámica específica de páginas de contenido situada en la parte superior derecha de cada página. Esto hace que una tabla de contenido escrita manualmente sea innecesaria, y puede afectar negativamente a la experiencia de un lector con _The Turing Way_.

```{figure} ../../figures/many-table-of-contents.png
---
name: many-table-of-contents
alt: Un subcapítulo en The Turing Way con tres tablas de contenido. Dos que son generados por Jupyter Book y uno hecho por el autor del capítulo.
---
La tabla de contenidos escrita manualmente es innecesaria ya que Jupyter Book auto-genera dos tablas separadas de contenido.
```
#### Demo

<div class="video-content">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/zKWrvgCxSB0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistencia-estructura-hr-cita)=
### Asegurar que las fuentes externas sean citadas y referenciadas correctamente

Como se describe en la guía de estilo {ref}`<ch-style-citing>`, _Las referencias de la Vía Turística_se almacenan en un archivo BibTeX llamado `referencias. ib`. Al escribir un nuevo contenido, asegúrese de que la información eliminada de fuentes externas se cite usando el formato BibTeX y se agregue a las referencias `. ib archivo` según corresponda.

La guía de estilo {ref}`<ch-style-citing>` demuestra cómo agregar una nueva referencia al archivo BibTeX centralizado, y muestra cómo puede incluirse esta referencia en su escritura.


(ch-consistencia-estructura-soft-req)=
## Requisitos suaves

Requisitos blandos que tratan con la estructura de _The Turing Way_ incluyen:

(ch-consistencia-estructura-sr-resumy)=
### Comprobar 1: Asegúrate de que cada capítulo tenga un buen resumen en su página de inicio

Un capítulo con un buen resumen da al lector una visión general del contenido que sigue. Idealmente, los resúmenes deben comunicar la idea principal del capítulo e identificar cualquier detalle de apoyo, pero ser breves y precisos. Los resúmenes también deberían cruzar adecuadamente los subcapítulos del capítulo, en beneficio de los lectores que tal vez quieran explorar rápidamente los temas que introduce el resumen. Los capítulos en _The Turing Way_ que contienen resúmenes que no cumplen estos criterios pueden necesitar ser reescritos o reescritos.


(ch-consistencia-estructura-sr-modular)=
### Revisar 2: dividir capítulos largos en subcapítulos más pequeños para que sean modulares

Los capítulos largos pueden ser difíciles para algunos lectores. Además, un contenido muy largo puede ser intimidante para otros lectores que sólo pueden estar interesados en las ideas principales de las que habla el capítulo. Por lo tanto, para hacer que  _La Vía Turística_ sea más fácil de leer, los capítulos largos deben ser modularizados apropiadamente.

Al mantener los capítulos modulares, asegúrese de que sus subcapítulos sólo hablan de un aspecto del tema general. Por ejemplo, si se iba a escribir un capítulo sobre aprendizaje automático para _The Turing Way_, Este capítulo debería contener al menos tres subcapítulos que cada enfoque de Aprendizaje Supervisado, Aprendizaje No Supervisado, y Aprendizaje de Refuerzos.
