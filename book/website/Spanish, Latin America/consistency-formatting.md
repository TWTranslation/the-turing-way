(formato de la consistencia-ch)=
# Formateando

El formato se refiere a cómo se escribe el libro _The Turing Way_ y afecta directamente a la apariencia y presentación del libro.

_La Vía Turística_ está alojada en línea como un Libro de Jupyter y utiliza las recomendaciones de formato como se describe en su [documentación](https://jupyterbook.org/intro.html). El formato adecuado asegura que _La Vía Turística_ es legible, accesible y se asemeja a una pieza de trabajo modular.


(ch-consistencia-formato-hr)=
## Requisitos duros

Los duros requisitos en la lista de verificación de consistencia garantizan que _La Vía Turística_ priorice la accesibilidad, colaboración, legibilidad y facilidad de uso. Las verificaciones que se ocupan del formato de _The Turing Way_ incluyen:

(ch-consistencia-formato-hr-markdown)=
### Comprueba 1: Usa Markdown para crear tu contenido

_La Vía Turística_ debería escribirse en [Markdown](https://en.wikipedia.org/wiki/Markdown) donde sea posible, para que el Libro de Jupyter se muestre como se pretende.


#### Markdown x HTML

Partes de capítulos anteriores en _The Turing Way_ fueron escritos en `HTML`, haciendo difícil leer algunos de sus contenidos.

Por ejemplo, {ref}`html-to-markdown` muestra una tabla que fue escrita en `HTML`.

```{figure} ../../figures/html-to-markdown.png
---
name: html-to-markdown
alt: Una captura de pantalla de una tabla mal formateada escrita en HTML. La tabla se quita juntos y no tiene bordes de columnas o registros. Esto hace difícil para un lector descifrar su significado.
---
Es posible que el contenido escrito en HTML no se muestre correctamente.
```

Cuando se reformatea Markdown, la tabla se volvió más limpia y más fácil de leer:

```{figure} ../../figures/html-to-markdown2.png
---
name: html-to-markdown2
alt: Una captura de pantalla de una tabla convertida a Markdown desde HTML. La tabla se vuelve más fácil de leer y entender cuando se convierte en Markdown.
---
Convertir HTML a Markdown hace que el libro Turing Way sea más fácil de leer.
```
```{note} Un PR que se dirige a esta comprobación se puede encontrar [aquí](https://github.com/alan-turing-institute/the-turing-way/pull/1460).
```

El contenido del capítulo escrito en `HTML` normalmente está encerrado en etiquetas que comienzan y terminan con corchetes de ángulo `<>`.
[W3Schools](https://www.w3schools.com/html/html_elements.asp) es un recurso excelente para entender lo que significan estas etiquetas, y guías de referencia de Markdown, como [esta hoja de trampa](https://www. arkdownguide.org/cheat-sheet/), puede ayudar a traducir el formato `HTML` a Markdown.
También hay herramientas útiles en la web, como [Turndown](https://domchristie.github.io/turndown/) y [CloudConvert](https://cloudconvert.com/html-to-md), que convierten `HTML` a Markdown con un solo clic.

Ten en cuenta que si `HTML` es la única opción para formatear tu texto de la manera que deseas, sólo puede utilizarlo si el contenido del libro en línea todavía puede ser leído y entendido (utilice la vista previa de Netlify en sus relaciones públicas para probar).
Por ejemplo, [superíndices y suscriptos](https://support.squarespace.com/hc/en-us/articles/206543587-Markdown-cheat-sheet#toc-superscript-and-subscript) puede ser escrito en `HTML` porque siempre aparecen como se pretende.
Además, el contenido como los vídeos de YouTube y las tablas con los encabezados que abarcan múltiples columnas o filas se pueden escribir en `HTML`.


```{attention} A Note About Styling
:class: propina

_The Turing Way_ tiene una [hoja de estilo de libro](https://github. om/alan-turing-institute/the-turing-way/blob/main/book/website/_static/book-stylesheet.css) que controla el aspecto del contenido escrito en `HTML`.
Si incluyes `HTML` en tu contribución, asegúrate de que tu formato incluya las clases e IDs relevantes de la hoja de estilos.

Por ejemplo, si quieres añadir un vídeo de YouTube a tu contenido usando la etiqueta `<iframe>`, envuelve el `<iframe>` en una etiqueta `<div>`, y da al `div` una clase `video-contenedor` como se muestra a continuación.

<div class="video-container">
    <iframe>....</iframe>
</div>

```

Esto también se describe en la {ref}`Guía de Estilo<ch-style-custom-styling-videos>`.

#### Demo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/tv0HlVgxDdI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

#### Listas de verificación de escritura

Al escribir un nuevo capítulo para _The Turing Way_, puede incluir un subcapítulo de lista de verificación que itemes los puntos de acción clave que desea que los lectores tomen basándose en el contenido del capítulo. Para capítulos anteriores en _The Turing Way_, este subcapítulo está escrito en Markdown como una lista de tareas con casillas de verificación:

```
# Lista de control
- [ ] Artículo Uno
- [ ] Artículo Dos
- [ ] Artículo Tres

```

Sin embargo, las casillas de verificación no se muestran como se pretende en la versión en línea del libro, por ejemplo:

```{figure} ../../figures/checklist-formatting.png
---
name: checklist-formatting
alt: Cuando el subcapítulo de lista de control de cualquier capítulo está escrito en Markdown como una lista de tareas con casillas de verificación, los corchetes cuadrados se muestran en lugar de las casillas de verificación en la versión web del libro.
---
Las casillas de verificación se muestran como corchetes en la versión web del libro.
```

Por lo tanto, recomendamos que formatee sus subcapítulos de listas de verificación como listas desordenadas en sus futuras contribuciones, y edite los capítulos anteriores que siguen la otra convención:

```
# Lista de control
- Artículo Uno
- Artículo Dos
- Artículo Tres

```
#### Demo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/oe2Up1pU5DY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistencia-formato-hr-headers)=
### Comprobar 2: Usar cabeceras en orden secuencial.

Las cabeceras no consecutivas se refieren a un aumento de los niveles de cabecera de más de uno. Por ejemplo:

```
# Encabezado
### Otro rumbo
```
Tal aumento de dos niveles de encabezados provoca advertencias cuando se construye _la Vía Turística_ localmente. Idealmente, todos los archivos de Markdown deben comenzar con un encabezamiento de nivel 1 y aumentar secuencialmente según sea apropiado:

```
# Encabezado
## Otro rumbo
```

Varios archivos en el libro _The Turing Way_ no siguen esta convención. Se puede encontrar una lista de estos archivos en [este problema](https://github.com/alan-turing-institute/the-turing-way/issues/1321), y [este PR](https://github.com/alan-turing-institute/the-turing-way/pull/1451) es un gran ejemplo de cómo reparar un archivo con cabeceras no consecutivas.

#### Demo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/qq9QCrykdbw" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistencia-formato-hr-etiquetas)=
### Revisar 3: Añadir etiquetas a capítulos, subcapítulos, secciones e imágenes para habilitar referencias cruzadas.

A menudo, un capítulo puede referirse al contenido de otro capítulo para explicar los conceptos o expandir los puntos. La referencia cruzada facilita esto asegurando que el contenido referido sea fácil de encontrar con un simple clic. Esto ayuda a hacer _La Vía Turística_ más navegable y accesible.

{ref}`Cross-referencing <ch-style-crossref>` es discutido en detalle en el {ref}`ch-style`. El subcapítulo explica qué etiquetas son, proporciona una convención de nombres para etiquetas en _The Turing Way_, y da varios ejemplos útiles de cómo hacer referencias cruzadas.

#### Demo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/ikcjxjklLVg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistencia-formato-hr-imágenes)=
### Compruebe 4: Use `MyST` para el formato de imagen

Algunas figuras e imágenes en _The Turing Way_ están incrustadas usando la sintaxis Markdown. Mientras esto funciona, no permite que las imágenes se adapten al tamaño de pantalla del dispositivo desde el que se lee el libro.

Texto estructurado marcadamente (`MyST`) es un sabor de Markdown que resuelve esto y permite imágenes receptivas en _The Turing Way_.

También permite el uso de subtítulos y texto alternativo (ALT text), que son las descripciones de imágenes invisibles que se leen en voz alta a los lectores de _The Turing Way_ que utilizan un lector de pantalla. Si no se proporciona ningún texto ALT con una imagen, estos usuarios no podrán entender el propósito de la imagen.

Cuando escriba texto ALT, recuerde a:
- **Ser descriptivo** - describir adecuadamente la imagen usando su contenido y contexto para la guía. Al hacerlo, no hay necesidad de "anunciar" una imagen en su descripción (por ejemplo, usando "ilustración de" o "imagen de") ya que los lectores de pantalla ya harán esto.
- **Manténgalo lo más corto posible** - Aunque una descripción larga puede ser necesaria para algunas imágenes, es mejor mantenerlos lo más cortos posible. Esto asegura que las descripciones sean fáciles de entender.

Ten en cuenta que las imágenes incluidas en _El libro de la Vía Turística_ deben ser inferiores a 1 MB. Esto permite la carga del libro más rápida, especialmente para lectores que pueden tener conexiones lentas a Internet.

Por favor, consulte la {ref}`guía de estilo <ch-style-figures>` para ver ejemplos sobre el formato de imágenes usando `MyST` y agregándoles texto ALT. Al incluir imágenes en tus contribuciones, puede ser mejor evitar el parámetro de altura ya que el valor incorrecto podría hacer que su imagen parezca distorsionada en dispositivos móviles. Siempre debería comprobar cómo se ve su imagen en la vista previa de Netlify del libro cuando haga un PR.

#### Demo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/upBiKLR_A5E" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistencia-formato-sr)=
## Requisitos suaves

Los requisitos blandos ayudan a mejorar la apariencia general de _The Turing Way_. Cuando se realiza, estas comprobaciones pueden pasar desapercibidas, pero también contribuyen a hacer de _The Turing Way_ un trabajo pulido. Los requisitos blandos que se ocupan de _el formato de la Vía Turística_ incluyen:

(ch-consistencia-formato-sr-one)=
### Verifica 1: Asegúrate de que los nombres de los capítulos/subcapítulos son cortos y mapea exactamente cómo están titulados en el `_toc.yml`

Algunos capítulos y subcapítulos en _The Turing Way_ no coinciden con sus referencias correspondientes en la tabla de contenidos que aparece a la izquierda de la página web. Esto puede ser confuso para los usuarios, especialmente cuando la referencia del capítulo o subcapítulo en la tabla de contenidos varía significativamente del nombre del capítulo/subcapítulo.

```{figure} ../../figures/mismatched-title-toc.png
---
name: misched-title-toc
alt: Un subcapítulo cuyo título difiere de su referencia en la tabla de contenidos. El título del subcapítulo es "Utilizar hojas de cálculo para los datos de investigación", sin embargo en la tabla de contenidos, se denomina "Organización de datos en hojas de cálculo".
---
El título de este subcapítulo es 'Usar hojas de cálculo para los datos de investigación', Sin embargo, la tabla de contenido se refiere al mismo archivo que "Organización de datos en hojas de cálculo".
```

Para asegurarse de que el contenido de _The Turing Way_ pase esta verificación, una recomendación a seguir es mantener los títulos cortos. Cuando escriba un nuevo capítulo, asegúrese de que su título es corto y tiene el mismo nombre en la tabla de contenidos. Del mismo modo, al revisar los capítulos existentes, si su título y referencia en la tabla de contenidos difieren, hace más corto el título de los dos capítulos y actualiza el `_toc. ml` si es necesario.

```{note}
El archivo `_toc.yml` es el archivo donde vive la tabla de contenidos de todo el libro para _The Turing Way_ .
```

No obstante, recuerde que el título final debe decirle adecuadamente a los lectores qué esperar de un capítulo o subcapítulo.

#### Demo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/HxcdqKJbCE4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistencia-formato-sr-dos)=
### Verificar 2: Asegurar que los encabezados tengan el título adecuado

Los títulos de algunos capítulos en _The Turing Way_ no usan la carátula de título. [Título-casing](https://en.wikipedia.org/wiki/Title_case) es un estilo de mayúsculas utilizado para formatear los títulos y los encabezados de las obras publicadas. Ser una referencia citable para individuos que buscan llevar a cabo ciencias de datos, títulos y títulos reproducibles en _La Vía Turística_ debería ser titulada.

Aunque _La Vía Turística_ no sigue un estilo específico de capitalización de títulos, algunas reglas generales y no exhaustivas a considerar incluir:
- Capitalizar palabras principales o importantes
- Artículos, conjunciones y preposiciones en minúsculas (a menos que cuando estos estén estresados)
- Capitalizar las primeras y las últimas palabras

Hay herramientas útiles, como [CapitalizeMyTitle](https://capitalizemytitle.com/) y [Title Cascase Converter](https://titlecaseconverter.com/), que pueden ser usados para títulos de cabeceras de caso al escribir su contenido. Además, los encabezados en _The Turing Way_ pueden ser ejecutados a través de estas herramientas para asegurarse de que siguen convenciones de la caja de títulos. Entonces pueden ser reemplazados dentro de los capítulos y en el `_toc.yml` según corresponda.

Por ejemplo, en {ref}`no coincide con el title-toc` anterior, **El uso de hojas de cálculo para datos de investigación** debe tener un título para **Usar hojas de cálculo para datos de investigación**.

Algunas cabeceras pueden no necesitar una carcasa de título dependiendo del contexto en el que se usen. Por ejemplo, debido a que algunos de los encabezados de este capítulo componen una lista de comprobación - no necesitan ser casados con títulos.

#### Demo

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/ET_LI5dwP9M" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
