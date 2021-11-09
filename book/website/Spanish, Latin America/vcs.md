(rr-vcs)=
# Control de versiones

(rr-vcs-prerequisites)=
## Prerrequisitos

| Prerrequisito                                                                                     | Importancia | Notas |
| ------------------------------------------------------------------------------------------------- | ----------- | ----- |
| [Experiencia con la línea de comandos](https://programminghistorian.org/en/lessons/intro-to-bash) | Útil        |       |

**Nivel de Habilidad Recomendado**: _Inicio-Intermedio_

(rr-vcs-Resumen)=
## Summary

No importa cómo esté organizado su grupo, el trabajo de muchos colaboradores necesita ser gestionado en un único conjunto de documentos de trabajo compartidos. Control de versiones es un enfoque para registrar los cambios realizados en un archivo o conjunto de archivos a lo largo del tiempo para que usted y sus colaboradores puedan rastrear su historial, revisar cualquier cambio, y revertir o volver a las versiones anteriores. La gestión de cambios o revisiones a cualquier tipo de información realizada en un archivo o proyecto se llama versionamiento.

En este capítulo, discutimos las mejores prácticas que son relevantes independientemente de las herramientas. Las prácticas de versiones provienen principalmente de la gestión de cambios en los repositorios de código. Sin embargo, en realidad, puede utilizar el control de versiones para casi cualquier tipo de archivo en un ordenador. Por ejemplo, al escribir un documento con varios colaboradores, el control de versiones puede ayudar a rastrear qué cambió, quién los cambió y qué actualizaciones se realizaron.

Diferentes sistemas de control de versiones se pueden utilizar a través de un programa con una interfaz gráfica de usuario, aplicaciones basadas en navegadores web o herramientas de línea de comandos. Todos hemos visto un sencillo enfoque de versiones de archivos donde se almacenan diferentes versiones de un archivo con un nombre diferente. Herramientas como Google Drive y Dropbox ofrecen plataformas para actualizar archivos y compartirlos con otros en tiempo real, colaborativamente. Existe un sistema de control de versiones más sofisticado dentro de herramientas como [Google docs](https://docs.google.com/) o [HackMD](http://hackmd.io/). Estos permiten a los colaboradores actualizar archivos mientras almacenan cada versión en su historial de versiones (lo discutiremos en detalle). Sistemas avanzados de control de versiones (VCS) como [Git](https://en.wikipedia.org/wiki/Git), [Mercurial](https://www.mercurial-scm.org/)y [SVN](https://subversion.apache.org/) proporcionan herramientas mucho más potentes.

Este capítulo pretende cubrir los principios generales que sustentan todos los sistemas avanzados de control de versiones y las mejores prácticas que se aplican a todos estos sistemas. Discutimos muchas herramientas y características; sin embargo, animamos a los lectores a utilizar características que son útiles para su trabajo y herramientas con las que se sientan cómodos. La mayoría de las instrucciones dadas en este capítulo también se orientarán hacia Git, que es utilizado más comúnmente por los investigadores, y un servicio de alojamiento de repositorio Git basado en web, [GitHub](https://github.com/), que facilita las colaboraciones en línea.

Más adelante en este capítulo, también discutimos el control de versiones de los datos, que se aplica para hacer un seguimiento de las revisiones de grandes cantidades de datos, especialmente cuando se trabaja en colaboración. Es útil saber que los datos pueden ser volátiles y versionarlos puede mejorar la reproducibilidad de sus análisis científicos.

```{figure}  ../figures/project-history.jpg
---
nombre: project-history
alt: Contrast en la gestión de historia del proyecto. A la izquierda - elegir entre ficheros con nombre ambiguo. A la derecha - escogiendo entre versiones sucesivas (de V1 a V6).
---
_The Turing Way_ ilustración del proyecto por Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-vcs-useful)=
## Motivación y fondo

El control de versiones nos ayuda a entender qué cambios hicimos en el pasado o por qué hicimos un análisis específico en la forma en que lo hicimos, incluso semanas o meses después. Con la ayuda de comentarios y mensajes de confirmación, cada versión puede explicar qué cambios contiene en comparación con las versiones anteriores. Esto es útil cuando compartimos nuestro análisis (no solo datos), y lo hacemos audaz o **reproducible** - lo cual es una buena práctica científica.

Un sistema de control de versiones guarda cuidadosamente un historial de cambios y quién los ha hecho, así que mientras que todavía es fácil acceder a ellos, su directorio de trabajo no está abarrotado por los restos de versiones anteriores que son necesarias para mantenerse en el caso. De la misma manera, con control de versiones, no hay necesidad de dejar trozos de código comentados en caso de que necesite volver a una versión antigua otra vez.


Finalmente, el control de versiones es invaluable para proyectos colaborativos donde diferentes personas trabajan en el mismo código simultáneamente y se basan en el trabajo del otro. Permite rastrear los cambios realizados por diferentes personas y puede combinar automáticamente el trabajo de las personas ahorrando mucho esfuerzo para hacerlo manualmente. Utilizar el control de versiones para su proyecto de investigación significa que su trabajo es totalmente transparente, y debido a que todas sus acciones están grabadas, permite a otros reproducir sus estudios. Además, servicios de alojamiento de control de versiones como {ref}`GitHub<cl-github-novice-motivation>` proporcionan una manera de comunicarse y colaborar de una manera más estructurada, tales como en solicitudes de extracción, reseñas de código y problemas.
