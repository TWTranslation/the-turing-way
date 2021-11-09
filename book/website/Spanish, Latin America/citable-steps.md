(cm-citable-pasos)=
# Pasos para hacer que los objetos de investigación sean accesibles

Hay muchas razones por las que los autores no citan los datos y el software que utilizan, pero uno de los más grandes es que no está claro cómo. Se puede hacer un gran esfuerzo para reducir esta barrera siguiendo algunos pasos para que sea lo más fácil posible.

(cm-citable-objeto-pasos)=
## 1. Identifica tus objetos de investigación

Queremos hacer hincapié en que la mayoría de nuestros objetos de investigación deberían compartirse para que otros investigadores puedan reproducirlos y reutilizarlos. Por lo tanto, el primer paso es identificar todos los componentes de investigación que usted compartiría en línea. Prácticamente la investigación abierta no es esencial para obtener crédito por sus datos o software, pero hace mucho más fácil que otros se basen en su trabajo de una manera que reconozca su contribución. Hay un creciente cuerpo de pruebas que muestra que la investigación abierta tiende a ser más citada que la investigación no abierta de calidad y importancia equivalentes.

Como parte de la cita para sus objetos de investigación, es importante publicar objetos de investigación más allá de los documentos, tales como imágenes, datos, software, protocolos, métodos ang flujo de trabajo asociado con su investigación.

La mejor manera de empezar con esto será buscar algunos ejemplos de qué tipo de objetos de investigación son o deberían ser citados. Encontrar objetos de investigación comúnmente referenciados en tu disciplina tiene dos propósitos:
1. Demuestra que el software & los datos son cosas que se pueden citar;
2. Da a los autores una referencia y un formato que pueden copiar y pegar directamente en su documento.
<!-- TODO: Cite relevant paper for this (Piwowar et al 2013?) -->

```{note}
Puedes aprender más sobre los diferentes tipos de objetos de investigación en los capítulos {ref}`haciendo tu investigación abierta<rr-open>` y {ref}`haciendo tu investigación FAIR<rr-rdm>`.
```

(cm-citable-steps-publish)=
## 2. Publica tu trabajo en línea

Las publicaciones en línea se adjuntan a los identificadores persistentes que se utilizan para citarlas. Es importante señalar que no todo lo publicado en línea obtiene un identificador único, pero es importante que los objetos de investigación se publiquen en línea con DOI como se describe a continuación.

(cm-citable-pasos-doi)=
### DOIs

```{figure} ../../figures/DOI.jpg
---
name: doi
alt: Esta imagen muestra tres cajas con materiales arriba. El cuadro principal en el medio tiene 'identificadores' escritos en él con tres discos encima que están etiquetados 'conjuntos de datos'. Ambas cajas por su lado tienen artículos de revistas encima de ellas. Una flecha en la parte superior de la imagen apunta a estas imágenes como 'Identificadores de Objetos Digitales'. Hay texto en la parte inferior de la imagen que dice 'Persistent', 'Unique', 'Trusted'.
---
Los Identificadores de Objetos Digitales o DOI son persistentes, únicos y de confianza. _The Turing Way_ proyecto de ilustración por Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

identificadores únicos o enlaces persistentes para objetos digitales se llaman más formalmente [identificadores de objetos digitales](https://en.wikipedia.org/wiki/Digital_object_identifier). Usar DOI hace mucho más fácil que otros citen sus datos reduce el riesgo de que el enlace se pudra y significa que puedes seguir cómo se utiliza y cita tu investigación.

### Servidores que proporcionan DOI

Independiente del papel, diferentes objetos de investigación pueden ser publicados en línea en servidores que ofrecen DOI. Algunos de estos servidores son [Zenodo](https://zenodo.org/) y [FigShare](https://figshare.com/) (para diferentes objetos como figuras, presentaciones e informes), [Data Dryad](https://datadryad.org/stash) (para datos), [Subvenciones Abiertas](https://www.ogrants.org/) (para propuestas de subvenciones) y [Open Science Framework (OSF)](https://osf.io/) (para diferentes componentes de un proyecto abierto de investigación).

Es perfectamente posible citar directamente un conjunto de datos o un paquete de software, y la mayoría de los editores principales ahora lo permiten en sus guías de estilo. Sin embargo, a veces puede ayudar a tener un documento más convencional que citar, y aquí es donde entran en juego el software y las revistas de datos. Estas revistas son similares a las revistas de métodos, porque no tienden a incluir resultados significativos, sino que se centran en describir los datos y el software con suficiente detalle para permitir la reutilización. Algunos ejemplos incluyen:
- [Revista de Software de Investigación Abierta](https://openresearchsoftware.metajnl.com/)
- [Revista de Software de Código Abierto](https://joss.theoj.org/)

(cm-citable-referencia-pasos)=
## 3. Añadir información de referencia legible para maquinas

Puede ir un paso más allá permitiendo a la gente importar información sobre sus objetos de investigación en su base de datos de referencia preferida. Si [BibTeX](https://en.wikipedia.org/wiki/BibTeX) es popular en su campo para administrar referencias, publique un `. ib` archivo de *todos* tus salidas (no solo tus papeles). Si [Endnote](https://endnote.com/) es más popular, haga una exportación de Endnote disponible. Si utiliza GitHub, GitLab o similares, considere crear un archivo de `CITACIÓN` en cada repositorio que contiene orientación para cómo alguien puede referirse a diferentes resultados de investigación de su proyecto.

Si es posible, proporcione varios formatos: no necesitará actualizarlos muy a menudo y saldrá ganando.

```{note}
Muchas herramientas en línea permiten la exportación de citas de investigación en diferentes formatos.
Por ejemplo, vea [https://www.citethisforme.com/](https://www.citethisforme.com/).
```
