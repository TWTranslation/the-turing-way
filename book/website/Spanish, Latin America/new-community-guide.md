(cl-new-community-guide)=
# Guía para planear una comunidad

¿Qué pasa si iniciaste un proyecto con un pensamiento como: “¡Tengo esta gran idea que quiero probar en estos datos públicos!”? No hay nada de lo que preocuparse si usted es el único que trabaja en ello. Sin embargo, si quieres desarrollar este proyecto - eres responsable de hacer que la gente se sienta incluida en tu proyecto.

Como 'líder del proyecto', Usted quiere crear un ambiente acogedor e inclusivo y crear el primer conjunto de visiones y metas para sus colaboradores. No puedes suponer que todos con los que colaboras conozcan lo que se espera de ellos cuando empiecen a trabajar con otros en tu proyecto. Por lo tanto, es importante establecer las expectativas correctas desde el principio para tu comunidad. aunque puede que no hayas planeado tener uno (ver más detalles: {cite:ps}`Sharan2020Apr`).

(cl-new-community-guide-checklist)=
## Una lista de verificación para la colaboración en tu proyecto

La siguiente lista le ayudará a realizar el proceso de colaboración en su proyecto de investigación de una manera estructurada.

Las prácticas listadas aquí se derivan de y limitan por las experiencias de los autores que participan en varias comunidades de Investigación Abierta exitosas y dirigen proyectos basados en la comunidad como [The Carpentries](https://carpentries.org), [Líderes abiertos de Mozilla](https://mozilla.github.io/open-leadership-training-series/), [Open Life Science](https://openlifesci.org/) y _The Turing Way_. Mientras lee este capítulo, por favor tenga en cuenta que puede que necesite hacer ajustes para proyectos que pueden ser muy diferentes en la naturaleza (por ejemplo, no completamente de código abierto).

(cl-new-community-guide-checklist-comms-platform)=
### 1. Elegir una plataforma de comunicación

- Al liderar un proyecto abierto, usa plataformas colaborativas y abiertas como [GitHub](http://github.com/) o [GitLab](https://about.gitlab.com/).
- Evaluar la necesidad de cualquier comunicación en tiempo real, tal como si un sistema de chat de texto como [Slack](https://slack.com) o [Elemento/Matriz](https://element.io/get-started) será útil o si una lista de correo será suficiente (lea los detalles {ref}`Canales de Comunicación <cm-os-comms-channels>`).
  - Considera una plataforma de comunicación interna separada para los miembros de tu comunidad y una plataforma externa para mostrar lo que has hecho al resto del mundo.
- Una cuenta de [Twitter](https://twitter.com) o un sitio web simple (como en [páginas de GitHub](https://pages.github.com/)) puede ser plataformas externas útiles.
- Asegúrese de que las opciones de estas plataformas se hacen para asegurar que existe una barrera baja para unirse a ellas.

(cl-new-community-guide-checklist-proj-summary
### 2. Proporcionar un archivo Resumen del proyecto:

- El primer documento en su proyecto debe ser un archivo de resumen del proyecto, que en un repositorio de GitHub será un archivo [README.md](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/about-readmes).
- Esto proporcionará información básica sobre tu proyecto para que la gente pueda evaluar por qué tu proyecto será interesante para ellos.
  - Aquí está [una plantilla](https://github.com/PurpleBooth/a-good-readme-template) del usuario de GitHub [PurpleBooth](https://github.com/PurpleBooth).
- En este archivo, incluya cuál es la visión y los objetivos de su proyecto, por qué el proyecto es útil, cuáles son los posibles hitos del proyecto, cómo un colaborador o usuario puede empezar, a quién puede llegar para obtener ayuda, y lo que falta actualmente en el proyecto en términos de interesados, habilidades, o ámbito de aplicación.
- Puede utilizar emojis, GIF, vídeos o su narrativo personal para hacer su proyecto relacionable.
  - Vea [El proyecto Atom](https://github.com/atom/atom) por ejemplo.

(cl-new-community-guide-checklist-code-conduct)=
### 3. Seleccione un código de conducta:

- Añade un proyecto de código abierto [códigos de conducta](https://opensourceconduct.com/) a tu proyecto.
- Este documento no debe utilizarse como una ficha sino que es muy importante realizar esfuerzos intencionados en él.
- Al usar GitHub, puede añadir un archivo “CODE_OF_CONDUCT.md” en su repositorio de GitHub.
- Listar los comportamientos esperados e inaceptables, describir el proceso de reporte y cumplimiento, define explícitamente el ámbito y usa un tono inclusivo (ver [instrucciones de GitHub aquí](https://help.github.com/en/github/building-a-strong-community/adding-a-code-of-conduct-to-your-project)).
- Siempre que actualice su código de conducta, invite a los comentarios de sus miembros para asegurarse de que sus preocupaciones sean atendidas.
  - Esto puede hacerse en [GitHub issues](https://help.github.com/en/github/managing-your-work-on-github/about-issues)o [Pull Requests](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests).

(cl-new-community-contrib-guidelines)=
### 4. Proporcionar directrices de contribución y rutas de interacción:

- Una pauta sin embargo ayuda a las personas a decidir qué camino pueden elegir para contribuir a su proyecto, o si quieren estar en tu comunidad.
- Asegúrate de que las interacciones de tu comunidad y las diferentes vías para contribuir son abiertas, inclusivas y claramente indicadas.
  - Si la gente no puede averiguar cómo contribuir desaparecerá sin ayudar.
- Valor de los diferentes tipos de contribuciones - los proyectos de codificación no son sólo sobre el código, por lo tanto listan la documentación y otras habilidades de gestión también.
- Puedes usar la {ref}`Herramienta de Creación Persona<pd-persona-creation>` o el [ejercicio de Personas y Rutas](https://mozillascience.github.io/working-open-workshop/personas_pathways/) para brainstorm que podría ser tus posibles miembros de la comunidad.
- Aquí está una [plantilla de guía comunitaria](https://gist.github.com/PurpleBooth/b24679402957c63ec426) proporcionada por el usuario de GitHub [PurpleBooth](https://gist.github.com/PurpleBooth).
  - Ver [_La Vía Turística_del archivo de contribución](https://github.com/alan-turing-institute/the-turing-way/blob/main/CONTRIBUTING.md) para referencia.

(cl-new-community-leadershipp)=
### 5. Crear una estructura de gestión/liderazgo básico:

- Una estructura de liderazgo en un proyecto abierto debería apuntar a empoderar a otros y desarrollar la agencia y la responsabilidad en su comunidad.
- Puede comenzar por listar diferentes tareas dentro de su proyecto e invitar a sus miembros a liderar dichas tareas.
- Proporcione incentivos y reconocimiento apropiados para las contribuciones hechas por los miembros de su comunidad.
- Crear oportunidades para que los miembros compartan algunas responsabilidades de liderazgo contigo en el proyecto.
- Al invitar sugerencias e ideas de la comunidad, proporciona el primer conjunto de planes de donde tu comunidad puede desarrollarse.
- Ver este documento de [Guías de Código Abierto](https://opensource.guide/leadership-and-governance/) para referencia.

(cl-new-community-contact)=
### 6. Proporcionar detalles de contacto donde se utilice:

- La aclaración de responsabilidades para los diferentes miembros permitirá a las personas llegar a la persona adecuada con cualquier consulta.
- Añade detalles de las personas de contacto designadas para problemas técnicos, preguntas de liderazgo o cualquier informe sobre el Código de Conducta.
- Esto será especialmente útil si algo necesita una resolución inmediata.

(cl-new-community-approaches)=
### 7. Identificar enfoques fallidos, y detener temas:

- El desarrollo se produce de forma iterativa, por lo tanto, revisite sus planes e ideas en intervalos regulares e involucre a sus miembros en el proceso.
- Compruebe si hay desarrollos paralelos o múltiples enfoques que deben fusionarse o cambiarse.
- Fallo rápido, falle informativamente: reconozca lo que no funciona para su proyecto y impida que continúe.
- Documentarlos y compartir por qué falló y cómo cambiar su proyecto o enfoques avanzando.
- Para las comunidades de Investigación Abierta se puede mantener la transparencia cuando se discuten los fracasos y los éxitos, pero no se responsabilizan de señalar o culpar a otros.
- Este enfoque iterativo proviene de prácticas ágiles, ver estos mensajes cortos para referencia:
  - [El concepto ágil fracasa rápidamente se vuelve mala prensa, pero se entiende mal](https://www.information-age.com/agile-concept-fail-fast-gets-bad-press-misunderstood-123460434/)
  - [La guía inicial para la gestión de proyectos ágiles y de Scrum](https://blog.trello.com/beginners-guide-scrum-and-agile-project-management)

(cl-new-community-documentation)=
### 8. Tener planes de documentación y difusión para su proyecto:

- Con la incorporación de nuevos miembros a tu proyecto, ellos deben ser capaces de encontrar la información que necesitan sin preguntarle.
- Invertir en planes de documentación le liberará de muchos desafíos relacionados con la comunicación al compartir información general sobre decisiones pasadas o el proceso de toma de decisiones que utiliza su proyecto.
- Un buen lugar para almacenar la documentación es [wiki](https://en.wikipedia.org/wiki/Wiki) o plataformas similares (como GitHub) donde la información puede ser compartida de forma transparente y actualizada por los miembros de la comunidad democráticamente.
- Para diseminar los resultados de tu proyecto, debes usar identificadores persistentes que pueden ser compartidos y citados, por ejemplo, [identificador digital de objetos (DOI)](https://www.doi.org/).
  - [Figshare](https://figshare.com/) y [Zenodo](http://zenodo.org) son buenos ejemplos de plataformas que pueden proporcionarte DOI para todos tus datos compartibles.

Dos puntos más son cruciales para garantizar la eficacia de un proyecto de colaboración: abordar cuestiones técnicas y valorar la importancia de la diversidad en la construcción de equipos.

Les hemos explicado en los siguientes subcapítulos de {ref}`Abordando cuestiones técnicas<cm-new-community-techissue>` y {ref}`Valorando Diversidad y Diferencias<cl-new-community-differences>`.
