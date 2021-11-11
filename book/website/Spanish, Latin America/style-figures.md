(cifras-ch)=
# Usando figuras en _The Turing Way_

Te animamos a añadir imágenes a los capítulos de libros de _The Turing Way_. Esta sección de la guía de estilo explicará cómo utilizar el formato [Texto estructurado marcado](https://myst-parser.readthedocs.io/en/latest/) (MyST) para añadirlos al libro con el correspondiente {ref}`texto alternativo<ch-style-figures-alttext>` y {ref}`subtítulos<ch-style-figures-caption>`.

Estamos muy pasionados por asegurar que los creadores de los archivos de imagen originales (¡incluye!) sean {ref}`reconocidos apropiadamente<ch-style-figures-licence>`. Por favor, no utilice imágenes que no estén autorizadas para su reutilización.

En este subcapítulo hemos usado el término **figura** para referirnos a una ilustración que transmite información en el contexto de _los capítulos_ de la Vía Turística. El término **imagen** se utiliza para referirse al propio objeto de archivo.

(ch-style-figuras-licencia)=
## Licencia abierta

Por favor, asegúrese de atribuir los archivos de imagen de forma justa y evitar que los archivos sean restringidos a la reutilización o carezcan de permisos de reproducción.

Las siguientes recomendaciones te ayudarán a comprobar que estas usando las imágenes de acuerdo a sus permisos de licencia:

* Si estás usando tus propias imágenes, por favor añádelas a la carpeta `figuras`. Entonces estarán disponibles bajo una [Atribución de Creative Commons 4. Internacional (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/deed.ast) licencia como con el resto del libro.
* Alternativamente, puedes buscar imágenes en el dominio público ([licencia CC0](https://creativecommons.org/share-your-work/public-domain/cc0)) o imágenes licenciadas a través de los términos Creative Commons apropiados. Imágenes que también están disponibles bajo CC-BY 4. los permisos son muy fácilmente interoperables con _The Turing Way_ ya que esta es la misma licencia que el resto del contenido del libro.
* Si una imagen (por ejemplo que ha encontrado en internet), no está disponible bajo una licencia abierta, póngase en contacto con el autor original de la imagen y solicite permiso para reproducir su imagen. Asegúrate de preguntarles **cómo les gustaría ser acreditados** en el título de la figura.

En general, asegúrese siempre de citar la imagen correctamente como se indica por los propietarios de la imagen. "Imagen de Internet" no es suficiente.

(ch-style-figuras-imagen)=
## Tipo de imagen, nombre de archivo, tamaño y ubicación

Por favor, sube `.jpg` o `.png` archivos menores de 1 MB para que puedan cargarse más rápido en el libro online. Si su archivo es mayor de 1MB, por favor utilice una herramienta local de edición de imágenes, o una herramienta online como [IMG2GO](https://www.img2go.com/compress-image) para comprimir su archivo.

Para nombrar su archivo de imagen, utilice todas las minúsculas y separe las palabras con guiones. Cada archivo de imagen utilizado en este libro debe ubicarse en el archivo `_figure-list. d` en el directorio `libro/website/figures` de nuestro [repositorio de GitHub](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/website/figures). If you use a new image file, please add the file in the `figures` directory, and add details in the `_figure-list.md`.

(ch-style-figures-syntax)=
## Sintaxis MyST para agregar una figura a un capítulo de _Vía Turística_

Todos nuestros capítulos están escritos en archivos Markdown. Por lo tanto, usar la sintaxis de Markdown para incluir una figura en un archivo Markdown funcionará bien, por ejemplo, `![](../.. figuras/file-collection.jpg)`, donde se proporciona la ruta relativa del archivo de imagen dentro de los corchetes redondos '()'.

**Sin embargo**, este formato no permite que las imágenes respondan a los tamaños de pantalla, las hace inaccesibles para leer en pantallas pequeñas y teléfonos inteligentes. Además, esto no permite a los autores cambiar el tamaño de las figuras en sus capítulos o hacer referencia cruzada a ellas en otro lugar del libro.

Por lo tanto, nuestra recomendación es usar [Texto estructurado marcamente](https://myst-parser.readthedocs.io/en/latest/) (MyST) formato disponible en Jupyter Book.

Puedes cambiar el tamaño de las figuras para ajustar cómo aparecen en nuestros capítulos usando los parámetros: `ancho` y `altura` (toma valor en px, por ejemplo, 400px) o `escala` (toma valor en porcentaje, por ejemplo, 50%), especialmente si su cifra original es grande. Usando el parámetro: `nombre`, puedes referenciar figuras en otros capítulos de una manera similar como se define en {ref}`ch-style-crossref`.

Todos los componentes de su figura (ubicación, tamaño y nombre de figuras) pueden encapsularse en una sección dentro de un archivo markdown utilizando la siguiente directiva:

````
```{figure} ../../figures/file-collection.jpg
---
altura: 500px
nombre: file-collection
---
```
````
Esta figura puede ser referida en otros archivos utilizando el rol {ref} como:

```
{ref}`archivo-colección`
```
Ten en cuenta que una altura de 500px funciona muy bien con el libro _The Turing Way_ , pero esto es solo una sugerencia.
(ch-style-figures-alttext)=
## Texto alternativo
Se utiliza texto alternativo o texto alternativo para describir la apariencia y función de una imagen en una página HTML. Nuestra figura de ejemplo puede explicarse con esta frase: *Dos personas navegando felizmente archivos en un cajón de documentos.*
Añadir texto alternativo a figura es uno de los primeros principios de accesibilidad web. El software lector de pantalla puede leer un texto alternativo para explicar mejor el contenido de la figura a sus usuarios.
Todos los componentes de tu figura (ubicación del archivo de imagen, tamaño, nombre, nombre texto alt y título) se pueden encapsular en una sección dentro de un archivo markdown utilizando la siguiente directiva:

````
```{figure} ../../figures/file-collection.jpg
---
height: 500px
name: file-collection
alt: Dos personas navegando felizmente archivos en un cajón de documentos.
---
_The Turing Way_ ilustración del proyecto por Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```
````
Otra ventaja de usar texto alternativo es cuando una imagen no puede ser cargada en un navegador, o el enlace a los saltos de la imagen, se muestra en lugar de una figura como se muestra a continuación:

```{figure} ../../figures/alt-text-demo.png
---
name: alt-text-demo
alt: Dos personas navegando felizmente archivos en un cajón de documentos.
---
_The Turing Way_ ilustración del proyecto por Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

Cuando todos estos componentes se utilizan correctamente, una figura incluida en un archivo será renderizada en el libro en línea como en esta página:

```{figure} ../../figures/file-collection.jpg
---
height: 500px
name: file-collection
alt: Dos personas navegando felizmente archivos en un cajón de documentos.
---
_The Turing Way_ ilustración del proyecto por Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(ch-style-figuras-subtítulo)=
## Leyenda

Los subtítulos aparecen debajo de la figura. Deberían ser breves y concisos e incluir una referencia a la fuente de donde proceden. En particular, es importante describir la licencia bajo la cual se reutiliza la imagen.

Por ejemplo, un título podría decir:

> Haciendo tu primer pull request en GitHub. _The Turing Way_ project ilustration by Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).

La sintaxis para esta imagen es la siguiente, y la forma en que aparece en el libro está debajo del fragmento de código.

````
```{figure} ../../figures/first-pull-request. ng
---
height: 400px
name: first-pull-request
alt: A person helping out another person making their first pull request on GitHub
---
Realizando tu primer pull request en GitHub.
_The Turing Way_ proyecto de ilustración por Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```
````

```{figure} ../../figures/first-pull-request.png
---
height: 400px
name: first-pull-request
alt: Una persona ayudando a otra persona haciendo su primer pull request en GitHub
---
Realizando tu primera pull request en GitHub.
_The Turing Way_ proyecto de ilustración por Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

Por favor, asegúrese de que el enlace a la fuente es el {term}`identificador de objeto digital <Digital Object Identifier>` no el registro de Zenodo. También asegúrate de haber creado un enlace a la fuente usando el formato del enlace markdown: `[text](url)`.

(ch-style-figuras-avanzadas)=
## Funciones avanzadas y "gotchas"

Para parámetros más avanzados, consulte la [Documentación del Libro de Jupyter](https://jupyterbook.org/content/figures.html). Esa página incluye información sobre cómo [escalar y alinear](https://jupyterbook.org/content/figures.html#figure-scaling-and-aligning) las figuras, y cómo agregar las cifras o sus subtítulos a los [márgenes](https://jupyterbook.org/content/figures.html#margin-captions-and-figures) del libro.

Hemos notado un par de "gotchas" de los colaboradores a _The Turing Way_ e intentaremos mantener esta sección de la guía actualizada para cualquier otra persona que aprenda la sintaxis MyST para figuras

* Tanto `:` como `"` tienen un significado sintáctico para Esfinge. Esto significa que es importante que no utilices estos caracteres en tu texto alternativo.
