(ch-style-crossref)=

# Secciones y capítulos de referencia cruzada

Recomendamos usar el estilo de referencia cruzada como se describe en el [Libro de Jupyter](https://jupyterbook.org/content/citations.html) para capítulos o archivos, y diferentes contenidos de capítulos como secciones y figuras.

En Jupyter Book, las etiquetas son una forma de añadir etiquetas a partes de su contenido o a un archivo que puede hacer referencia más adelante. Esto es muy útil porque puede insertar etiquetas en otras partes de su libro sin preocuparse por las rutas relativas o absolutas del archivo.

En este documento, hemos proporcionado ejemplos para describir cómo puede utilizar etiquetas para diferentes capítulos o parte de capítulos dentro del libro. También hemos definido una convención de nomenclatura para etiquetas para _The Turing Way_ para asegurar que las ubicaciones de estas etiquetas en el libro sean identificables por su nombre.

## Etiquetas en el Libro de Jupyter

Para añadir una etiqueta para una sección o un capítulo/subcapítulo, utilice una sintaxis del siguiente patrón antes del elemento que desea etiquetar:

```
(mi-nombre-etiqueta)=
# Lo que quiero etiquetar
```

Puede insertar referencias cruzadas a las etiquetas de las secciones en su archivo con la siguiente sintaxis:

```
{ref}`mi-nombre-etiqueta`

```

Del mismo modo, puede usar etiquetas para referencias cruzadas de capítulos o subcapítulos.

Por favor, vea los detalles en los ejemplos que se muestran a continuación.

### _La Vía de Turno_ convención de nombres para las etiquetas

Recomendamos utilizar el siguiente estándar de nombres para las etiquetas, que permitirá a diferentes autores y colaboradores de _The Turing Way_ identificar intuitivamente las ubicaciones de los archivos donde se han creado estas etiquetas.

La siguiente convención de nombres para las etiquetas de los diferentes capítulos:

```
(nombre de archivo-secciones)=
```

Aquí, el primer marcador de posición `sectioninitials` debe reemplazarse por las iniciales para diferentes secciones del libro y el segundo marcador de posición `nombre de archivo` debe reemplazarse por el nombre del archivo donde se está creando la etiqueta.

Para las diferentes Guías del libro, utilizaremos las siguientes `sectioninitials`:

- Investigación Reproducible: `rr`
- Diseño del proyecto: `pd`
- Colaboración: `cl`
- Comunicación: `cm`
- Investigación Ética: `er`
- Community Handbook: `ch`

Por ejemplo, en la guía `Investigación Reproducible`, tenemos un capítulo llamado `Resumen`. Hemos creado una etiqueta para ese capítulo llamado `rr-overview` añadiendo la etiqueta en la parte superior del encabezado usando la siguiente directiva

```
(rr-overview)=
# Resumen
```

Del mismo modo, para diferentes subcapítulos recomendamos extender el nombre de la etiqueta con otro marcador de posición para el nombre del subcapítulo. Por ejemplo, `rr-overview-resources` es una etiqueta en la guía "Reproducible Research" (rr) para el subcapítulo "Recursos" para el capítulo "Resumen" (overview-resources). Esta etiqueta se puede crear utilizando la siguiente directiva en el archivo correspondiente:

```
(sectioninitials-filename)=
# Recursos
```

De la misma manera, para diferentes secciones en un subcapítulo, recomendamos extender el nombre de la etiqueta con otro marcador de posición. Esto puede ser elegido por los autores, que deberían ser un nombre corto pero sensato para la sección en la que se está creando la etiqueta. Por ejemplo, `rr-overview-resources-addmaterial` es una etiqueta en la guía "Investigación Reproducible" (rr) para el subcapítulo "Recursos" para el capítulo "Resumen" (Resumen de recursos) para la sección "Materiales adicionales" (añadidos). Esta etiqueta se puede crear en el archivo correspondiente para el nombre de sección sugerido utilizando la siguiente directiva:

```
(sectioninitials-filename-section)=
## Material adicional
```

### Ejemplos de referencias cruzadas

**Ejemplos de secciones de referencias cruzadas de capítulos y subcapítulos**

Utilizaremos ejemplos para los capítulos en la guía "Investigación Reproducible" ubicada en el directorio `book/website`.

**_Caso 1_**: Cuando hace referencia cruzada a una sección del capítulo dentro del mismo archivo _antes de_ se ha creado una etiqueta.

Tomando el ejemplo anterior de `rr-overview-resources-addmaterial`, podemos usar esta etiqueta para hacer una referencia cruzada en una sección anterior dentro del mismo archivo usando lo siguiente:

```
{ref}`rr-overview-resources-addmaterial`
```

Esto aparecerá en el libro online de la siguiente manera: {ref}`rr-overview-resources-addmaterial`.

**_Caso 2_**: Cuando hace una referencia cruzada a una sección del capítulo dentro del mismo archivo _después de_ se ha creado una etiqueta.

En el mismo subcapítulo "Recursos", hemos creado una etiqueta `rr-overview-resources-reading` para la sección "Lectura adicional". Podemos hacer una referencia cruzada en una sección posterior dentro del mismo archivo usando lo siguiente:

```
{ref}`rr-overview-resources-reading`
```

Aparecerá en tu capítulo así: {ref}`rr-overview-resources-reading`.

**_Caso 3_**: Cuando hace una referencia cruzada a una sección de un capítulo en un archivo diferente (capítulo) antes o después de que se haya creado una etiqueta.

En el subcapítulo "Definiciones" del capítulo "Resumen", hemos creado una etiqueta `rr-overview-definitions` para la sección "Tabla de definiciones para reproducibilidad".

Podemos hacer una referencia cruzada en un subcapítulo o capítulo diferente. En este caso, hagamos una referencia cruzada en la página de destino (principal) del capítulo "Resumen" usando lo siguiente:

```
{ref}`rr-definiciones`
```

Aparecerá en tu capítulo así: {ref}`rr-overview-definitions`.

Aunque estamos demostrando este ejemplo para los subcapítulos dentro del mismo capítulo ("Resumen"), las sintaxis similares se pueden usar para hacer referencias cruzadas en otros capítulos dentro del libro.

**Ejemplos para capítulos y subcapítulos de referencias cruzadas**

**_Caso 4_**: Hacer referencia a un capítulo o subcapítulo en un archivo diferente (capítulo/subcapítulo) antes o después de que una etiqueta haya sido creada.

Por ejemplo, en la página de inicio del capítulo "Abrir investigación", hemos creado una etiqueta `rr-open`. Podemos hacer una referencia cruzada en la sección "¿Qué aprender a continuación?" en un subcapítulo diferente "Recursos" del capítulo "Resumen" usando lo siguiente:

```
{ref}`rr-open`
```

Aparecerá en tu capítulo así: {ref}`rr-open`.

Aunque estamos demostrando este ejemplo para hacer referencias cruzadas de capítulos y subcapítulos en todo el libro, la misma sintaxis puede ser usada para referenciar subcapítulos dentro del mismo capítulo.

### Proporcionando un título alternativo para las referencias

Para cualquiera de las referencias mencionadas, puede proporcionar un título alternativo mientras se hace referencia cruzada añadiendo el título antes de la etiqueta como se muestra en este ejemplo:

```
{ref}`Capítulo sobre Investigación Abierta<rr-open>`
```

aquí estamos dando un título alternativo al capítulo "Investigación abierta", que aparecerá en tu archivo así: {ref}`Capítulo sobre Abrir Investigación <rr-open>`
