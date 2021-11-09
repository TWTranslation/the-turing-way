(ch-newsletters-style)=
# Guía de Estilo de Boletín

En el subcapítulo anterior, describimos el proceso de borrar, revisar y publicar _los boletines mensuales de The Turing Way_.

En este documento hemos enumerado algunas pautas para mantener la consistencia en todos los boletines.

- **Formato de archivo**: Borra el boletín en [Markdown](https://en.wikipedia.org/wiki/Markdown)
- **Nombre de archivo**: Crea un nombre de archivo con el "newsletter_serial_MonthYYYY. formato d ", donde "serial" debe ser reemplazado por el número de serie (en cero) del boletín, el mes debe ser reemplazado por el nombre corto del mes y YYYY por el año en número.
- **Ubicación del archivo en _The Turing Way_ GitHub**: Los boletines están actualmente almacenados en la ruta "the-turing-way/communications/newsletters/".
    - Esta ubicación también consiste en un archivo "README.md" que tiene una tabla para todos los boletines publicados que se actualizan después de cada lanzamiento.
    - Esta ubicación tiene una carpeta llamada "imágenes" que guarda centralmente todas las imágenes y está enlazada a los boletines de noticias correspondientes.
- **Fechas**: formato "DD Mes AAAA"
    - usarlo consistentemente en todo el documento
    - Para reflejar un rango, utilice el formato "de DD a DD Mes AAAA".
    - Incluso si las frases tienen referencia a un día en "ayer", "hoy" o "mañana", proporcionar la fecha exacta dentro de paréntesis para que todavía tiene sentido si alguien lee un boletín de noticias en el futuro.
- **Tiempo**: Usa el tiempo en [Tiempo de Greenwich](https://greenwichmeantime.com/what-is-gmt/) (GMT) o [Tiempo de verano británico](https://greenwichmeantime.com/uk/time/british-summer-time/) (BST), seguido de un enlace de [arewemeetingyet. om](https://arewemeetingyet.com/#form) para comprobar la hora en zonas horarias relativas
- **Enlaces**: Utilice el formato Markdown para este enlace `[texto que necesita ser enlazado](full HTTP link)`
    - Proporcionar enlaces siempre que sea útil, por ejemplo, [HackMD para Café de Colaboración](https://hackmd.io/@KirstieJane/CollabCafe), [GitHub issue](https://github.com/alan-turing-institute/the-turing-way/issues), [páginas de registro](https://www.eventbrite.co.uk/) y [ver detalles](https://github.com/alan-turing-institute/the-turing-way).
    - Crear enlace para ids de correo electrónico usando esta sintaxis Markdown - `[real-email-id](mailto:real-email-id)`
- **Citando a otros**: Utilice un símbolo menor que (>) seguido de un espacio antes de la frase citada. Por ejemplo: `> Esta es mi cita legendaria.` aparecerá como: > Esta es mi cita legendaria.
- **Encabezado y estilo**: El título del boletín es el encabezado superior.
    - Las diferentes secciones que se sugieren en los boletines son las cabeceras de segundo nivel y las subsecciones son las cabeceras de tercer nivel.
    - Usar letras en negrita, cursiva, textos hiperenlazados y citas siempre que sea aplicable
    - El nombre del proyecto, _The Turing Way_, debería ser cursivo.
    - Utilice saltos de línea para cada línea consistentes con el formato de escritura de _The Turing Way_.
    - Dejar al menos un espacio de línea después de cada sección y subsección.
- **Idioma y tono**: Mantenga el lenguaje general simple y libre de jerga, vea [_La ruta de Turing_ guía de estilo](https://github.com/alan-turing-institute/the-turing-way/blob/main/CONTRIBUTING.md#style-guide) para referencia.
    - El tono debería ser acogedor, amable y preferiblemente informal. Esto puede ser personal al estilo de escritura del autor.
    - Pida a más de una persona que revise su borrador para asegurarse de que su contenido es fácil de entender y escrito claramente.
    - Si utiliza contenido de un idioma o una cultura diferente a la tuya, pida a las personas con ese idioma o cultura que revisen su borrador para asegurarse de que los contenidos no están mal representados.
- **Uso de emojis**: Se anima a usar emoji (*mostrar tu personalidad*) 😇, pero manténgalo simple, neutral y positivo.
    - Tenga en cuenta que ese emojis ambiguo puede ser malinterpretado por diferentes lectores.
    - Cuando esté en duda, pida a alguien que revise su borrador.
- **Uso de imágenes**: Utilice sólo imágenes relevantes vinculadas a la noticia en el boletín de noticias.
    - Asegúrese de que las imágenes están disponibles bajo licencia CC-BY o aprobadas para ser reutilizadas por los propietarios.
    - Evite usar memes, imágenes con innuendo político o sexual, o cualquier cosa que no esté directamente relacionada con la comunidad.
    - Al redactar el boletín en un HackMD, arrastrar una imagen en el editor o copiar y pegar una imagen para subir automáticamente la imagen a [Imgur](https://en.wikipedia.org/wiki/Imgur).
    - Al redactar el boletín en el GitHub, sube las imágenes en la carpeta "the-turing-way/communications/newsletters/".
    - La convención de nombres de archivos para las imágenes es "short-name-monthYYYY. ng", donde el nombre corto debe ser reemplazado por el nombre corto identificable de la imagen, el mes debe ser reemplazado por el nombre corto del mes y YYY debe ser reemplazado por el año.
    - La extensión del archivo puede ser '.jpg', '.png' u otros con el tipo de archivo de imagen compatible.
    - Usa la sintaxis de Markdown para enlazar las imágenes en el boletín: `![](image/path)`.
    - Como se sugiere en la guía de estilo [_The Turing Way_](https://the-turing-way.netlify.app/community-handbook/style/style-figures.html), crear un texto alternativo para la imagen: `! Alt: Descripción de la imagen - este no es el título sino la explicación real de la imagen](image/path)`
    - Debajo de la imagen, escriba un título descriptivo para la imagen seguido de una línea vacía. Enlace el título a la fuente como un tweet o evento relacionado.
    - Cuando se utilizan múltiples imágenes como paneles en una imagen colectiva, numerar cada imagen claramente (esto se puede hacer en cualquier editor de fotos o texto) y proporcionar un título numerado para cada imagen. Ver un ejemplo [aquí](https://github.com/alan-turing-institute/the-turing-way/blob/main/communications/newsletters/newsletter_14_May2020.md#tweets-from-the-community).
