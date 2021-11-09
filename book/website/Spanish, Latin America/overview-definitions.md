(rr-definiciones)=
# Definiciones

La definición más común de reproducibilidad (y replicación) fue notada por primera vez por Claerbout y Karrenbach en 1992 {cite:ps}`ClaerboutKarrenbach1992Reproducibility` y ha sido utilizada en la literatura de ciencias computacionales desde entonces. Otra definición popular ha sido introducida en 2013 por la Asociación para la Maquinaria de Computación (ACM) {cite:ps}`Imañ2018SciComp`, que cambió el significado de los términos "reproducible" y "replicable" en comparación con Claerbout y Karrenbach.

La siguiente tabla contrasta ambas definiciones {cite:ps}`Heroux2018Reproducibility`.

| Plazo        | Claerbout & Karrenbach                                                                                                                                                  | ACM                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| ------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Reproducible | Los autores proporcionan todos los datos necesarios y los códigos de computadora para ejecutar el análisis de nuevo, re-creando los resultados.                         | (Equipo diferente, configuración experimental diferente.) La medición puede obtenerse con precisión indicada por un equipo diferente, un sistema de medición diferente, en una ubicación diferente en múltiples ensayos. Para los experimentos computacionales, esto significa que un grupo independiente puede obtener el mismo resultado usando artefactos que se desarrollan de forma totalmente independiente.                                                |
| Replicable   | Un estudio que llega a los mismos hallazgos científicos que otro estudio, recopilando nuevos datos (posiblemente con diferentes métodos) y completando nuevos análisis. | (Equipo diferente, misma configuración experimental.) La medición puede obtenerse con precisión indicada por un equipo diferente utilizando el mismo procedimiento de medición, el mismo sistema de medición, en las mismas condiciones operativas, en la misma o en una ubicación diferente en múltiples ensayos. Para experimentos computacionales, esto significa que un grupo independiente puede obtener el mismo resultado usando los artefactos del autor. |

Barba (2018) {cite:ps}`Barba2018Reproducibility` realizó una revisión detallada de la literatura sobre el uso de reproducible/replicable cubriendo varias disciplinas. La mayoría de los papeles y disciplinas utilizan la terminología definida por Claerbout y Karrenbach, mientras que la microbiología, la inmunología y las ciencias de la computación tienden a seguir el uso de la reproducibilidad y la replicación de ACM. En la literatura de la ciencia política y de la economía, ambos términos se utilizan de forma intercambiable.

Además de estas definiciones de alto nivel de reproducibilidad, algunos autores proporcionan distinciones más detalladas. Victoria Stodden {cite:ps}`Victoria2014Reproducibilidad`, un destacado estudioso sobre este tema, ha identificado por ejemplo las siguientes distinciones:

- _Reproducibilidad computacional_: Cuando se proporciona información detallada sobre código, software, hardware e implementación.

- _Reproducibilidad empírica_: Cuando se proporciona información detallada sobre experimentos y observaciones científicas empíricas no computacionales. En la práctica, esto se habilita haciendo que los datos y detalles de cómo se recopiló libremente estén disponibles.

- _Reproducibilidad estadística_: Cuando se proporciona información detallada, por ejemplo, sobre la elección de pruebas estadísticas, parámetros del modelo y valores de umbral. Esto se relaciona principalmente con el pre-registro del diseño del estudio para prevenir el hacking de valor p-value y otras manipulaciones.

(rr-overview-definitions-reproducibility)=
## Tabla de definiciones para Reproducibilidad

En _The Turing Way_, definimos **investigación reproducible** como trabajo que puede ser recreado independientemente de los mismos datos y el mismo código que utilizó el equipo original. Reproducible es diferente de la réplica, robusta y generalizable como se describe en la figura de abajo.


```{figure} ../../figures/reproducible-matrix.jpg
---
nombre: matriz reproducible
alt: definición de Kirstie de investigación reproducible.
---
Cómo la Vía Turing define la investigación reproducible
```

Las diferentes dimensiones de la investigación reproducible descritas en la matriz anterior tienen las siguientes definiciones:

- **Reproducible:** Un resultado es reproducible cuando _los mismos_ pasos de análisis realizados en el _mismo_ conjunto de datos producen consistentemente la _misma_ respuesta.
- **Replicable:** Un resultado es replicable cuando el _mismo_ análisis realizado en _diferentes_ conjuntos de datos produce respuestas cualitativamente similares.
- **Robust:** Un resultado es robusto cuando el _mismo_ conjunto de datos está sujeto a _diferentes_ flujos de trabajo de análisis para responder a la misma pregunta de investigación (por ejemplo, un pipeline escrito en R y otro escrito en Python) y se produce una respuesta cualitativamente similar o idéntica. Los resultados sólidos muestran que el trabajo no depende de las especificidades del lenguaje de programación elegido para realizar el análisis.
- **Generalizable:** Combinar resultados replicables y robustos nos permite formar resultados generalizables. Tenga en cuenta que ejecutar un análisis sobre una implementación de software diferente y con un conjunto de datos diferente no proporciona _resultados_ generalizados. Habrá muchos más pasos para saber hasta qué punto se aplica el trabajo a todos los diferentes aspectos de la cuestión de la investigación. La generalización es un paso importante hacia la comprensión de que el resultado no depende de un conjunto de datos en particular ni de una versión particular del tubería de análisis.

Más información sobre estas definiciones se puede encontrar en "Reproducibilidad vs. Replicabilidad: Un breve historial de una terminología confidencial" de Hans E. Plesser {cite:ps}`Reproducibilidad Plesser2018`.

```{figure} ../../figures/reproducible-definition-grid.jpg
---
nombre: reproducible-definition-grid. pg
alt: cuadrícula con las características de investigación reproducible, replicable, robusto y generalizable
---
_The Turing Way_ proyecto ilustración por Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-reproducible)=
## Reproducible, pero no abierto

_La Vía Turing_ reconoce que algunas investigaciones utilizarán datos sensibles que no pueden ser compartidos y este manual proporcionará guías sobre cómo su investigación puede ser reproducible sin que todas las partes estén necesariamente abiertas.
