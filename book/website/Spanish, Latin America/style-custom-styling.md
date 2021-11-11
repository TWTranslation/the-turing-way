(ch-style-custom-styling)=
# Estilo personalizado

Aunque el contenido ha contribuido a _The Turing Way_ debe escribirse en {ref}`Markdown <ch-consistency-formatting-hr-markdown>` donde sea posible, a veces, la sintaxis de `HTML` puede ser necesaria para formatear su contribución de la manera que desee. Jupyter Book ya convierte la sintaxis Markdown en `HTML`, haciendo posible tener una versión web de _The Turing Way_ libros. Como resultado, escribir su propio `HTML` personalizado puede introducir alguna variación en la forma en que su nuevo contenido aparece en línea en comparación con el resto del libro.

Para minimizar esta disparidad, _The Turing Way_ mantiene [hojas de estilo de libros](https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_static/book-stylesheet.css) que controlan la apariencia del contenido del libro. Al incluir `HTML` en tus contribuciones, por favor refiérase a estas hojas de estilo y añada las clases e IDs relevantes definidas allí a sus elementos `HTML`. Esto asegura que tu nuevo contenido se adapte al estilo general del libro _The Turing Way_.

En este subcapítulo, le ofrecemos una explicación de cómo aprovechar las hojas de estilo del libro para diseñar sus contribuciones en casos de uso de muestras. Si desea mejorar el estilo del libro, este subcapítulo también proporciona una breve visión general de cómo hacerlo.

(ch-estilo-personalizado-hojas de estilo)=
## Utilizando las hojas de estilo

(ch-style-custom-styling-videos)=
### Vídeo

Aunque es posible incrustar imágenes y GIF en tu contenido usando la sintaxis Markdown, actualmente sólo es posible incrustar vídeos con `HTML`. Más aún, no recomendamos añadir videos directamente a _El repositorio de GitHub_ de la Vía Turística ya que los archivos de vídeo son generalmente grandes y hará que la carga del libro sea mucho más lenta, The staff were very friendly and helpful.

Para añadir un vídeo a tu contribución, primero sube a _el canal de Youtube_ de The Turing Way, luego copia/pega el código `HTML` que se genera cuando se genera:
1. Haga clic en la opción `Compartir` debajo del vídeo,
1. Y luego haga clic en la opción `Insertar` de la gama de opciones que aparecen.


El código `HTML` que copie será un elemento [`iframe`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe). Por ejemplo:

```
<iframe width="560" height="315" src="https://www.youtube.com/embed/MdOS6tPq8fc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
```

Por defecto, `iframes` no responden, lo que significa que el vídeo que acaba de incrustar será inaccesible para los lectores en dispositivos móviles. Para arreglar esto, _Las hojas de estilo_ de la Vía Turística definen clases y estilos que permiten `iframes` cambiar el tamaño y ajustar la pantalla desde la que se lee el libro.

Para aprovechar este estilo personalizado, envuelve el `iframe` en las etiquetas `div` y da al elemento `div` una clase `contenedor de vídeo`. Por ejemplo:

```
<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/MdOS6tPq8fc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
```

El código anterior se muestra de la siguiente manera:

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/MdOS6tPq8fc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-estilo-personalizado-mejora-estilo)=
## Mejorando _Estilo_ del Vía Turnante

Jupyter Book funciona convirtiendo la sintaxis Markdown a `HTML`. Por lo tanto, para mejorar el estilo general del libro, las reglas `CSS` deben dirigirse a los elementos `HTML` que Jupyter Book genera.

Antes de escribir cualquier CSS, inspeccione primero el código fuente HTML del libro. Esto le da una idea de qué elementos a seleccionar, y puede ayudarle a averiguar cómo estructurar sus reglas CSS.

Todos los navegadores le permiten ver el código fuente de los sitios web fácilmente. En ordenadores que ejecutan el sistema operativo Windows, esto se hace usando `CTRL + U`. Para ordenadores que ejecutan Mac OS, esto se hace usando `Opción + Comando + U`.

Una vez que hayas determinado elemento(s) que quieres modificar, escribe tu CSS en _el archivo_ [hoja de estilo](https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_static/book-stylesheet.css) de la Vía de Turno </a>. Si, por ejemplo, quieras cambiar la `familia de fuentes` del texto del párrafo en todo el libro _The Turing Way_ , entonces podría añadir la siguiente regla CSS a las hojas de estilo que apuntan todos los elementos con una etiqueta `<p>`:

```
p {
    font-family: georgia, garamond, serif;
}
```

Si crees que el estilo introducido en _The Turing way_ puede ser útil para otros usuarios de Jupyter Book por favor considere hacer una contribución al proyecto creando un nuevo problema de GitHub e iniciando una discusión con sus mantenedores: [https://github. om/executablebooks/jupyter-book/issues](https://github.com/executablebooks/jupyter-book/issues).
