(ch-style-más-características)=
# Glosario, Bloques Especiales y Más Estilos

Jupyter Book ofrece más opciones para diseñar sus capítulos y crear un libro más completo. En este subcapítulo, discutimos algunas características más que recomendamos usar en _The Turing Way_.

(ch-estilo-más-características-glosario)=
## Glossary

_La Vía Turística_ tiene un archivo {ref}`glosario` ubicado en la Después del libro, que comprende definiciones de diferentes términos en orden alfabético. Este archivo puede ser actualizado con las definiciones de nuevos términos, la cual puede ser vinculada a cualquier capítulo del libro donde se produce este término.

Para agregar una entrada para un nuevo término, por favor salta a la sección alfabética derecha del archivo {ref}`glosario` y usa la siguiente sintaxis:

```
Nuevo término-1
  Una frase corta que define el término. Esta frase está sangrada por debajo del término.
```

Por ejemplo, [términos que empiezan con 'A'](https://the-turing-way.netlify.app/afterword/afterword.html#a) están escritos en el mismo bloque de texto como se muestra a continuación:
```

## A

```{glossary}

Pruebas de Aceptancia
 Un nivel del proceso de prueba de software donde un sistema es probado para ser aceptado. El propósito de esta prueba es evaluar el cumplimiento del sistema con los requisitos del proyecto y evaluar si es aceptable para ese propósito.

Añadir
 Comando usado para agregar archivos al área de escenaje. Permite al usuario especificar qué archivos o directorios incluir en la próxima confirmación.

Autores
  Autores en este contexto son los colaboradores del proyecto _The Turing Way_ que han realizado una contribución sustancial al proyecto como escribir un subcapítulo, facilitando las interacciones comunitarias, manteniendo la infraestructura del proyecto y apoyando la participación de otros a través de contribuciones tuteladas. Todos los autores son coautores del libro en su conjunto.

```

Para referenciar términos en su glosario, utilice la sintaxis ``[{term}`def<Term>`]``.

Por ejemplo, para vincular el término "Autores" a su definición en el archivo glosario, por favor utilice la sintaxis ``[{term}`def<Authors>`]`` al lado de donde aparece este término, que debería mostrar en línea así: "*Autores [{term}`def<Authors>`] ha sido referenciado aquí.*"

(ch-style-más-características-bloques)=
## Bloques de contenido especiales

Al escribir un nuevo capítulo o revisar uno existente, puede querer añadir notas que no encajen en el resto del capítulo narrativo pero que pueden ser útiles para los lectores y ayudarles a entender mejor el capítulo.

El Libro de Jupyter permite el uso de bloques de contenido especiales para resaltar un fragmento de texto que necesita destacar del resto del contenido de una página. Esto separa visualmente el bloque de texto del resto de la página, y asegura que capte fácilmente la atención del lector.

Para añadir un bloque de contenido especial (nota, advertencia o advertencia) a su página, utilice la siguiente directiva:

````
```{note}
¡Esta es una nota de ejemplo!
```
````
que se muestra de la siguiente manera:

```{note}
¡Esta es una nota de ejemplo!
```

Puedes dar a los bloques de contenido títulos personalizados y estilo para reforzar el mensaje previsto. Por ejemplo, si quieres avisar al lector sobre algo, puedes hacer un bloque de advertencia usando la siguiente directiva:

````
```{warning}
¡Esta es una advertencia severa!
```
````
Tenga en cuenta el nuevo título, icono y esquema de colores.

```{warning}
¡Esta es una severa advertencia!
```

Hay muchas más maneras de personalizar los bloques de contenido para adaptarse a sus necesidades de escritura. Consulte la [documentación del libro de Jupyter](https://jupyterbook.org/content/content-blocks.html#notes-warnings-and-other-admonitions) y la [página de demostración de admonición](https://sphinx-book-theme.readthedocs.io/en/latest/reference/demo.html#admonitions) para obtener más recomendaciones.
