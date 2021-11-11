(ch-consistencia)=
# Mantener Consistencia

_The Turing Way_ es un proyecto de código abierto que permite a los colaboradores de todo el mundo aprovechar sus habilidades, conocimiento y experiencia para construir y expandir su contenido. _La Vía Turística_ está evolucionando continuamente, con múltiples capítulos co-desarrollados por individuos de diferentes orígenes - que son todos pasionados por compartir el conocimiento en torno a la ciencia de datos y la investigación. Para sustentar y apoyar a esta vibrante comunidad, _The Turing Way_ libro debe seguir siendo consistente y accesible a medida que evoluciona. The {ref}`ch-style` chapter already provides guidelines for maintaining a consistent style across the book. Sin embargo, no todos los capítulos siguen estas sugerencias, ya que a menudo están escritos de manera asíncrona por diferentes autores. Revisar la consistencia a través de _The Turing Way_ por sí solo es razonablemente desafiante. Esto apunta hacia la necesidad de alentar y apoyar a nuestros colaboradores para mantener la consistencia a lo largo de los capítulos en las guías de _The Turing Way_. Por lo tanto, este capítulo describirá una lista de verificación paso a paso de consistencia que guiará a nuestros colaboradores. Cada paso enfatizará una verificación de consistencia para buscar mientras diseñan y desarrollan capítulos en _La Vía de Turno_ o proporcionan consistencia a los capítulos existentes.

(ch-requisitos-consistencia)=
## Requisitos difíciles vs blandos

Los elementos de la lista de verificación de consistencia se clasifican en requisitos estrictos y suaves. Los requisitos duros son consistencia esencial verifica que un capítulo debe pasar para que _la Vía Turística_ se construya sin errores. Además, hacen que el capítulo sea legible y accesible para todos.

Por otra parte, los requisitos blandos son controles de consistencia agradables que debe pasar un capítulo. Estas comprobaciones mejoran en gran medida la apariencia general del libro, pero pueden ignorarse de forma segura si no pueden integrarse en su contribución. Siempre puedes volver a revisar tus contribuciones pasadas y mejorar su contenido.

Una visión general de estos requisitos está detallada {ref}`debajo <ch-consistency-requirements-checklist>`. Para una descripción sencilla, estas comprobaciones de consistencia se clasifican por formato, estructura y idioma. Los subcapítulos los explican con más detalle y describen cómo se pueden lograr.

```{important} Please note that these requirements are not exhaustive or definitive, and neither are their classifications rigid.
Además, ningún elemento es inherentemente más importante que el otro.

Si identificas más consistencia problemas que necesitan ser abordados, únete a la conversación [here](https://github.com/alan-turing-institute/the-turing-way/issues/1174).

```

```{figure} ../figures/theturingway-consistency.jpg
---
height: 400px
name: theturingway-consistency
alt: Esta ilustración muestra una escalera indicando camino para mantener consistencia que tiene tres pilares - formateo, estructura e idioma. Una persona está guiando a dos nuevos colaboradores para arriba de los estadios.
---
Ruta al mantenimiento de la consistencia. _The Turing Way_ proyecto de ilustración por Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(ch-consistencia-requisitos-lista)=
### Lista de Consistencia

#### Formateando

| REQUISITO | CHECK                                                                                                                                                                                                            |
| --------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Duro      | Usa Markdown para crear tu contenido (consulta esta [hoja de trucos de WordPress](https://wordpress.com/support/markdown-quick-reference/)).                                                                     |
| Duro      | Utilice las cabeceras en orden secuencial. Por ejemplo, comenzar el nivel superior con etiqueta h1 `#`, encabezado de segundo nivel con etiqueta h2 `##` y así sucesivamente.                                    |
| Duro      | Añadir etiquetas a capítulos, subcapítulos e imágenes para habilitar referencias cruzadas como se describe en la guía de estilo {ref}`<ch-style-crossref>`                                                 |
| Duro      | Utilice `MyST` para el formato de imagen como se describe en la guía de estilo {ref}`<ch-style-figures>` | Utilice imágenes de dominio público que sean inferiores a 1 MB de tamaño y cite apropiadamente. |
| Suave     | Asegúrese de que los nombres de los capítulos/subcapítulos son cortos y mapean exactamente cómo están titulados en el `_toc.yml`                                                                                 |
| Suave     | Asegurar que los títulos sean adecuados para las cabeceras | Capitalizar las primeras, últimas y 'importantes' palabras de cada título; por ejemplo, 'Snow White y los Siete Enanos.                             |


#### Estructura

| REQUISITO | CHECK                                                                                                                                                                                                       |
| --------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Duro      | Asegúrate de que los capítulos sigan una estructura como se describe en la nueva [plantilla de capítulo](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/templates/chapter-template) |
| Duro      | No añadas una 'tabla de contenidos' en los capítulos o subcapítulos ya que es autogenerado por el Libro de Jupyter                                                                                          |
| Duro      | Ensure external sources are properly referenced and included in the centralised BibTeX file as recommended in the {ref}`style guide<ch-style-citing>`                                                 |
| Duro      | No añada ningún archivo vacío en el `_toc.yml`, en su lugar cree un problema para los nuevos capítulos                                                                                                      |
| Suave     | Asegúrate de que cada capítulo tenga un buen resumen en su página de destino junto con enlaces a sus subcapítulos.                                                                                          |
| Suave     | Divida los capítulos largos en subcapítulos más pequeños, por lo que son modulares.                                                                                                                         |


#### Idioma

| REQUISITO | CHECK                                                                                                                                             |
| --------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| Duro      | Asegúrese de que los capítulos no utilicen ninguna abreviación latina como se describe en la guía de estilo {ref}`<ch-style>`               |
| Duro      | Asegurar la gramática correcta y un tono consistente en todo el libro con la ayuda de 1-2 revisores                                               |
| Duro      | Asegúrate de que los capítulos utilicen un idioma consistente, por ejemplo, si eliges escribir en inglés británico, mantenerlo a lo largo de todo |

Estas verificaciones se explican más en el formato {ref}`<ch-consistency-formatting>`, {ref}`Estructura<ch-consistency-structure>`y {ref}`Idioma<ch-consistency-language>` subcapítulos.
