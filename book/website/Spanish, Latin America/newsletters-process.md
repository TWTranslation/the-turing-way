# Proceso de Creación de un boletín de noticias

Este documento proporciona una visión general del proceso que utilizamos en _The Turing Way_ para borrar, revisar y publicar boletines. Aunque está escrito para _The Turing way_, estos pasos se pueden adaptar para documentar el boletín de noticias de cualquier proyecto.

Sólo sugerimos utilizar estas recomendaciones como guías. Estos no deben ser considerados como un conjunto de reglas fijas o la forma "única" en la que uno debe crear boletines. Como autores individuales, debe permitir que su personalidad aparezca en sus borradores de newsletters. Después de todo, estos boletines aparecen en el buzón personal de alguien y lo más probable es que te conozcan (o tu comunidad).

## Pasos para la redacción de los boletines _The Turing Way_

### Crear un problema de GitHub para recolectar artículos

Crear un nuevo número de GitHub donde durante el mes usted y otros miembros de la comunidad pueden sugerir noticias como comentario. Por ejemplo, en [esta incidencia](https://github.com/alan-turing-institute/the-turing-way/issues/1037), varios miembros podrían sugerir noticias para incluir en el próximo boletín, en este caso para junio de 2020. Tales números de GitHub pueden ser publicados en el boletín de noticias actual invitando a las contribuciones de los lectores y miembros de la comunidad para el mes siguiente.

### Iniciar un borrador

Hay varias maneras de iniciar un borrador:

1. Crear una nueva rama de _The Turing Way_ [GitHub repository](https://github.com/alan-turing-institute/the-turing-way/) dentro del directorio apropiado (explicado en el siguiente subcapítulo en {ref}`guía de estilo del boletín <ch-newsletters-style>`).

Puede trabajar en esta rama de GitHub localmente o en línea a través de una pull request (PR). Si trabaja en línea, por favor mantenga el modo borrador para su PR o añada "[WIP]" (trabajo en curso) en el título.

2. Cree el primer borrador en un HackMD compartido cuando trabaje con otros para escribir colaborativamente su borrador antes de transferirlos en una rama de GitHub.

He aquí un ejemplo de HackMD donde Malvika actualmente crea el primer borrador: https://hackmd.io/@malvikasharan/tw-newsletter.

### Recoger artículos para el boletín de noticias como puntos de ballet

Basado en lo que publicamos actualmente, recolecta información de los recursos listados para los temas descritos a continuación:

1. **Reuniones de la comunidad**: revisa el [calendario de la comunidad](https://calendar.google.com/calendar/embed?src=theturingway%40gmail.com&ctz=Europe%2FLondon) para los próximos eventos, como la Cafetería de Colaboración, guión de libros y talleres.

2. **Noticias de la comunidad**: revisa Twitter para actualizaciones en la [cuenta oficial](https://twitter.com/turingway) y el [#TuringWay Hashtag](https://twitter.com/hashtag/TuringWay?src=hashtag_click), vea el repositorio de Github para [incidencias](https://github.com/alan-turing-institute/the-turing-way/issues) para discusiones continuas, recientemente [combinadas PRs](https://github.com/alan-turing-institute/the-turing-way/pulls?q=is%3Apr+is%3Aclosed+sort%3Aupdated-desc) y nuevos capítulos. También puede preguntar en el [canal Slack](https://theturingway.slack.com) si alguien desea agregar algo al boletín de noticias. En esta parte también destacan los hitos importantes del proyecto que se establecieron o lograron en el último mes.

4. **Recursos relevantes para la comunidad**: comprueba Twitter y publicaciones en línea para cualquier publicación reciente de los miembros de la comunidad, recursos para la formación o la creación de habilidades o cualquier otro material como blogs o artículos publicados en la red que podrían ser útiles para otros.

5. **Consejos & Trucos para nuevos colaboradores**: esto incluye cualquier recurso en el proyecto que pueda hacer que nuevos miembros aprendan maneras de participar, identificar caminos para comenzar como colaboradores y encontrar contenidos relacionados, como historias de impacto de los miembros existentes, perfiles de los contribuyentes u otros aspectos relacionados con la comunidad.

6. **Sección de reconocimiento y celebraciones**: este es el lugar para dar gritos a nuestros miembros que han ayudado al proyecto u otros de alguna manera celebrar hitos personales y destacar cualquier anuncio relevante de los miembros de la comunidad. También es un lugar para compartir tweets de la comunidad o mencionar otras interacciones en línea, como publicaciones de reuniones recientes, donde alguien habló de _The Turing Way_.

El boletín de noticias debería centrarse más en los miembros nuevos y contribuyentes, y destacar sólo el contenido digno de mención de _The Turing Way_ miembros del núcleo.

### Recopilar imágenes asociadas con la noticia

Siguiendo las recomendaciones sobre {ref}`guía de estilo para la comunidad<ch-style>` y {ref}`guía de estilo para boletines<ch-newsletters-style>` para el uso de imágenes, recopilar algunas imágenes (máximo 2 por sección). Asegúrese de que estas imágenes están disponibles bajo una licencia gratuita (como CC-BY), recogido con el enlace de sus fuentes, y nombrado claramente como se sugiere en la guía de estilo.

Para las menciones de twitter, no hay un número fijo de capturas de pantalla, pero 4-6 tweets parecen menos coronados en el boletín. Pueden ser editados juntos en una imagen (explicada en la guía estilo del boletín).

### Escribir sobre cada noticia

Basado en los puntos de bala recogidos por cada noticia, crear párrafos de 1-2 pequeños utilizando las recomendaciones para el lenguaje y el formato descritos en el subcapítulo siguiente.

Proporcionar enlaces cuando sea útil, dar créditos justos a los miembros de la comunidad que podrían estar asociados con la noticia y terminar el párrafo con una frase y enlazar a más información.

### Revisando tu borrador

Antes de compartir su borrador debe hacer una revisión para gramática y typo. Una aplicación en línea como [Ginger Grammar Checker](https://www.gingersoftware.com/grammarcheck), [Grammarly](https://app.grammarly.com) versión gratuita, [GrammarCheck](https://www.grammarcheck.net/editor/) o [Reverso Speller](https://www.reverso.net/spell-checker/english-spelling-grammar/) puede ayudar a corregir cualquier error gramatical y ortográfico.

También debe chequear dos veces para asegurarse de que los enlaces mencionados en el borrador no están rotos. Puede utilizar herramientas en línea como el [checker de enlaces W3C](https://validator.w3.org/checklink) o la versión gratuita de [Dr. Link Check](https://www.drlinkcheck.com/).

Si es posible, obtén tu borrador revisado por 1-2 miembros.

### Actualizando tu borrador en el repositorio online

Si ha redactado su boletín en una sucursal local, antes de crear un PR, agregue todas las imágenes mencionadas en el boletín a la ubicación correcta del archivo: `the-turing-way/communications/newsletters/images`. Se han discutido más detalles sobre el uso de imágenes en el próximo subcapítulo, {ref}`guía de estilo<ch-newsletters-style>`.

Si está trabajando en un PR en GitHub, suba todas las imágenes y compruebe si están enlazadas correctamente.

Si ha creado su borrador de boletín de noticias en un HackMD, copie y pegue el contenido para crear/actualizar su PR de GitHub y suba todas las imágenes vinculadas.

Cuando esté listo, marque su PR como "Listo para revisión" y etiquete a algunos miembros contribuyentes, preferiblemente aquellos que han sido mencionados en el proyecto para que puedan revisar y aprobar su texto.

### Proceso de revisión

Los revisores del boletín pueden revisar el texto del idioma, la relevancia, los errores tipográficos, la precisión (comprobación de hecho), la idoneidad del uso de imágenes y el tono general.

Los revisores pueden proporcionar comentarios constructivos sobre el borrador del boletín de noticias, añadir cualquier elemento que les gustaría destacar, sugerir cambios apropiados y aprobar las relaciones públicas cuando estén listas para que el borrador sea publicado.

Después del proceso de revisión, el nombre de cada revisor puede ser añadido bajo la sección de menciones especiales por el autor para reconocer su obra.

### Proceso de publicación

Actualmente estamos usando [TinyLetter](https://tinyletter.com/) para publicar nuestros boletines. TinyLetter es una subsidiaria de [MailChimp](https://mailchimp.com/), que ofrece un servicio gratuito basado en una interfaz simplificada para crear un boletín de noticias por correo electrónico y compartirlo con los suscriptores.

Aquí están los pasos para publicar el borrador del boletín en línea y enviar por correo electrónico a los miembros suscritos:

- Convierte el contenido Markdown del borrador del boletín a HTML usando [navegador.](https://www.browserling.com/tools/markdown-to-html) copiando el contenido de Markdown en el cuadro de texto de la aplicación web y pulsando el botón "Convertir a HTML".
- Si está autorizado, inicie sesión en la cuenta de TinyLetter y haga clic en el botón “Escriba un boletín”.
- Pegue el contenido HTML de su borrador generado por el navegador.
- Asegúrese de que el asunto está escrito en el cuadro de texto correcto.
- Haga clic en “Vista previa” para ver cómo se verá la versión renderizada de su mensaje.
- Envía una versión previa a tu correo electrónico o _The Turing Way_ email (theturingway@gmail.com) para comprobar si todo se ve bien.
- Una vez confirmado su formato y contenido, el boletín se envía a los miembros registrados haciendo clic en "Enviar a todos".
- Los [boletines en línea](https://tinyletter.com/TuringWay/) son compartidos por enlaces y también pueden ser leídos por miembros no suscritos.

*(Aprende a hacer tu boletín de noticias [aquí](https://www.sitepoint.com/how-start-a-newsletter-in-minutes-with-tinyletter/).)*

 **Está publicado, ¿ahora qué?**

- Actualice la tabla índice en el archivo [README.md](https://github.com/alan-turing-institute/the-turing-way/blob/main/communications/newsletters/README.md) con los detalles del boletín publicado recientemente.
- Tweet sobre él de [@turingway](https://twitter.com/turingway).
- Envía una notificación en los canales [Gitter](https://gitter.im/alan-turing-institute/the-turing-way) y [Slack](https://theturingway.slack.com).
- ¡Haz una danza celebratoria! (¡Esto es obligatorio! 💃)
