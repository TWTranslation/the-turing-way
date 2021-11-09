(rr-abierto)=
# Abrir investigación

(rr-open-requisitos)=
## Prerrequisitos

| Prerrequisito | Importancia | Notas                                             |
| ------------- | ----------- | ------------------------------------------------- |
| {ref}`rr-vcs` | Útil        | La experiencia con GitHub es particularmente útil |


```{figure} ../figures/evolution-open-research.jpg
---
name: evolution-open-research
alt: Esta imagen muestra un investigador que evoluciona sus prácticas de investigación para avanzar hacia la era de la investigación abierta.
---
_The Turing Way_ ilustración del proyecto por Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-open-Resumen)=
## Summary

La investigación abierta tiene como objetivo transformar la investigación haciéndola más reproducible, transparente, reutilizable, colaboradora, responsable y accesible para la sociedad. Presta para que se produzca un cambio en la forma en que la investigación se lleva a cabo y divulga mediante herramientas digitales. Una definición de investigación abierta, [dada por la Organización para la Cooperación y el Desarrollo Económico (OCDE)](https://www.fct.pt/dsi/docs/Making_Open_Science_a_Reality.pdf "Making Open Science a Reality, OECD Science, Technology and Industry Policy Papers No. 25"), es la práctica de hacer que "los resultados primarios de los resultados de la investigación financiados públicamente -publicaciones y datos de investigación- sean públicamente accesibles en un formato digital sin restricciones o mínimas". Para lograr esta apertura en la investigación, cada elemento del proceso de investigación debería:

- _Estar públicamente disponible_: Es difícil de usar y beneficiarse de conocimientos ocultos detrás de barreras como contraseñas y muros de pago.
- _Ser reutilizable_: Las salidas de investigación deben ser autorizadas apropiadamente, para que los usuarios potenciales conozcan cualquier limitación en la reutilización.
- _Sea transparente_: Con los metadatos apropiados para proporcionar declaraciones claras de cómo se produjo el resultado de la investigación y qué contiene.

El proceso de investigación típicamente tiene el siguiente formulario: los datos se recopila y luego se analiza (generalmente usando software). Este proceso puede implicar el uso de hardware especializado. A continuación se publican los resultados de la investigación. A lo largo del proceso, es una buena práctica que los investigadores documenten su trabajo en cuadernos. La investigación abierta pretende hacer que cada uno de estos elementos sea abierto:

- _Open Data_: Documentando y compartiendo datos de investigación abiertamente para reutilizarlos.
- _Software de Código Abierto_: Documentar código de investigación y rutinas, y hacerlos libremente accesibles y disponibles.
- _Open Hardware_: Diseños, materiales y otra información relevante relacionada con el hardware, haciéndolos libremente accesibles y disponibles.
- _Acceso Abierto_: Hacer que todas las salidas publicadas sean libremente accesibles para el máximo uso e impacto.
- _Open Notebooks_: Una práctica emergente, documentando y compartiendo el proceso experimental de prueba y error.

Estos elementos se expanden en este capítulo.

Becas abiertas [{term}`def<Open Scholarship>`] es un concepto que amplía aún más la investigación abierta. Se trata de abrir al público otros aspectos de la investigación científica, por ejemplo:

- _Recursos educativos abiertos_: Hacer públicos los recursos educativos para ser reutilizados y modificados.
- _Equidad, diversidad, inclusión_: Asegurar que la beca esté abierta a cualquier persona sin barreras basadas en factores como raza, antecedente, género y orientación sexual.
- _Ciencia ciudadana_: La inclusión de miembros del público en la investigación científica.

Estos elementos también se discuten en detalle en este capítulo.

(rr-open-useful)=
## Motivación y fondo

Hay cinco escuelas principales de pensamiento que motivan las prácticas abiertas para beneficiar a la investigación:

| Escuela         | Creer                                                                                          | Aim                                                                             |
| --------------- | ---------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| Infraestructura | La investigación eficiente depende de las herramientas y aplicaciones disponibles.             | Creación abierta de plataformas, herramientas y servicios para investigadores.  |
| Pragmático      | La creación de conocimientos podría ser más eficiente si los investigadores trabajaran juntos. | Apertura del proceso de creación del conocimiento.                              |
| Medida          | Las contribuciones académicas actuales necesitan mediciones de impacto alternativas.           | Desarrollar un sistema métrico alternativo para el impacto en la investigación. |
| Democrático     | El acceso al conocimiento está distribuido de manera desigual.                                 | Poner el conocimiento a disposición de todos.                                   |
| Público         | La investigación debe hacerse accesible al público.                                            | Hacer que la investigación sea accesible para los ciudadanos.                   |

Las prácticas abiertas también benefician a los investigadores que las propagan. Por ejemplo, hay evidencia {cite:ps}`McKiernan et al. 2016<McKiernan2016Open>` que los artículos de acceso abierto se citan más a menudo, como muestra la metástuza presentada en la figura de abajo.

```{figure} ../figures/open-access-citations.jpg
---
height: 500px
name: open-access-citations
alt: A scatter plot of the relationship between cittation rates and discipline
---
The relative citation rate (OA: non-OA) in 19 fields of research. Esta tasa se define como la tasa de referencia media de artículos OA divididos por la tasa de referencia media de artículos no OA. Múltiples puntos para la misma disciplina indican diferentes estimaciones del mismo estudio o estimaciones de varios estudios. (Ver nota al pie de página 1 para referencias.)
```

Otro beneficio de la apertura es que si bien las colaboraciones de investigación son esenciales para promover el conocimiento, identificar y conectar con los colaboradores apropiados no es trivial. Las prácticas abiertas pueden facilitar la conexión de los investigadores aumentando la visibilidad y la visibilidad del trabajo de uno facilitando el acceso rápido a los nuevos datos y recursos de software, y creando nuevas oportunidades para interactuar con los proyectos comunitarios en curso y contribuir a ellos.

***Etiquetas de capítulo**: Este capítulo está supervisado para el `Grupo de estudio de datos de Turing` (`turing-dsg`).*
