(ch-contributing-workflow)=
# Flujo de trabajo de contribución

Ya sea que estés escribiendo nuevos contenidos o revisando los ya existentes, contribuyendo a _The Turing Way_ generalmente engloba los pasos discutidos en esta sección. Usted puede hacer referencia a las recomendaciones para garantizar que ha preparado adecuadamente su contribución para su revisión. Tenga en cuenta que el orden de estas recomendaciones no es estricto y le animamos a seguir el enfoque que más le convenga.

(ch-contributing-workflow-template)=
## Seleccione una plantilla

Una vez que hayas decidido el tipo de contenido al que quieres contribuir _The Turing Way_, usa la plantilla [correspondiente](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/templates) para preparar tu contribución.

```{note}
Tenga en cuenta que agradecemos las nuevas contribuciones de la plantilla.
Si el capítulo o las plantillas de estudio no se adaptan a sus necesidades, por favor abra una Pull Request con sugerencias para mejorarlas.
Si desea contribuir con contenido para el que no hay una plantilla correspondiente, también se le recomienda crear la plantilla faltante y añadirla a la colección de plantillas.
```

(ch-contributing-workflow-location)=
## Colocar nuevos archivos y carpetas en ubicaciones apropiadas

_El repositorio GitHub de la Vía Turística_sigue una estructura general de archivos donde las Guías son carpetas y capítulos son subcarpetas dentro de ellas. Del mismo modo, los estudios de casos se encuentran dentro de una subcarpeta de `estudios de casos` dentro de la carpeta Guía. Todas las carpetas se encuentran dentro del directorio [`libro/sitio web`](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/website).

Al escribir un nuevo contenido, asegúrese de que los nuevos archivos y carpetas que cree estén ubicados apropiadamente para preservar _la estructura de archivos_ de la Vía Turística.

Por ejemplo, el capítulo [Control de versiones](https://the-turing-way.netlify.app/reproducible-research/vcs.html) en la Guía de Investigación Reproducible se coloca de la siguiente manera:

````{admonition} Adding new files and folders
:class: desplegable
```
libro\website
mañana
Documento-investigación reproducible <---- (carpeta para la Guía para la Investigación Reproducible)
Reproducible-research. d <---- (Página Landing de la Guía)
mañana: vcs. d <---- (Página de acceso para el capítulo de Control de Versiones)
| | nuevo capítulo <---- (Página de acceso para un nuevo capítulo)
mañanas
(carpeta de capítulos)
mañanas/as (carpeta de capítulos) 
 mañanas|vcs-workflow. d
| | vcs-git. d
| | | vcs-git-commit.md
| | | ...
| | | vcs-personal-stories.md
mañana.md | mañvcs-checklist. d
► | Cv-recursos. d
mañana|
| |
| mañanotinew-chapter (nueva carpeta de capítulos)
| | | ...
|    
► project-design <---- (carpeta para la Guía para el Diseño del Proyecto)
    deletre-project-design.md
    mañana...
```
````

Se deben añadir nuevos capítulos en la Guía para la Investigación Reproducible como `nuevo capítulo` en el ejemplo anterior.

(ch-contributing-workflow-naming)=
## Archivos/carpetas de nombre apropiados

Por favor, sigue _las convenciones de la Vía de Turno_ para nombrar archivos. Con nombres de archivo adecuados, otros colaboradores pueden identificar fácilmente el propósito y la ubicación de sus archivos y añadirlos o mejorarlos si es necesario.

(ch-contributing-workflow-guidelines)=
## Seguir las pautas de estilo y consistencia

Mientras escribes tu capítulo, ten en mente _el estilo_ [del Vía Turnadora](https://the-turing-way.netlify.app/community-handbook/style.html) y [las recomendaciones](https://the-turing-way.netlify.app/community-handbook/consistency.html) de consistencia Esto asegura que su nuevo contenido sea accesible y se adapte al estilo, estructura y formato general del libro.

(ch-contributing-workflow-toc)=
## Añade tus nuevos archivos a la tabla de contenidos del libro

La tabla de contenidos para todo el libro vive en el archivo `_toc.yml` [](https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_toc.yml). Este archivo estructura _La Vía Turística_ y define el orden en que aparecen los capítulos. Los archivos de tu capítulo deben ser añadidos al `_toc.yml` según corresponda.

Por ejemplo, porque el [Manuscrito de Métodos Estatisticos](https://the-turing-way.netlify.app/reproducible-research/case-studies/statistical-methods-manuscript.html) pertenece a la Guía de Investigación Reproducible, se añadió a la tabla de contenidos de la siguiente manera:

````{admonition} Updating the book-wide table of contents
:class: dropdown
```

- file: reproducible-research/reproducible-research
  secciones:
...

  - title: Estudios de casos
    archivo: reproducible-research/case-studies
    secciones:
    - título: Un manuscrito de métodos estáticos
      archivo: reproducible-research/case-studies/statisal-methods-manuscript
```

````

(ch-contributing-workflow-referencing)=
## Fuentes externas de referencia apropiadamente

Asegúrate de que las fuentes externas están correctamente referenciadas e incluidas en el archivo bibtex centralizado de _The Turing Way_ según se recomienda en la guía de estilo [](https://the-turing-way.netlify.app/community-handbook/style/style-citing.html)

(ch-contributing-workflow-glosary)=
## Actualizar el glosario de todo el libro

_The Turing Way_ mantiene un glosario de todo tipo de libros ubicado en su [Afterword](https://the-turing-way.netlify.app/afterword/glossary.html). Al escribir su capítulo, [actualice el glosario del libro](https://the-turing-way.netlify.app/community-handbook/style/style-more-styling.html) con los términos clave de su capítulo que los lectores deben recordar.

(ch-contributing-workflow-crosschecking)=
## Comprueba tu Pull Request

El contenido de las plantillas sólo está destinado a guiar y estructurar su escritura. Por favor, elimine todos los marcadores de la plantilla, consejos y sugerencias de su capítulo antes de enviar su PR para su revisión.
