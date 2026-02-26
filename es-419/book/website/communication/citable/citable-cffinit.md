(cm-citable-cffinit)=

# Create a `CITATION.cff` using `cffinit`

`cffinit` is a web application which helps users create a `CITATION.cff` file.
The application provides guidance for each field of the [CFF schema](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md) and does the validation automatically.
When there are issues, `cffinit` will provide a visual feedback on relevant fields.

En las siguientes secciones usted puede encontrar detalles sobre cada paso del proceso.

To get started, visit [`cffinit`](https://citation-file-format.github.io/cff-initializer-javascript/) and click on the "Create" button to continue to the **Start** screen.

```{figure} ../../../figures/gifs/cffinit-0.gif
---
name: cffinit-0
width: 80%
alt: Landing page of cffinit.
---
Landing page of cffinit. [^cffinitversion]
```

[^cffinitversion]: All screen captures in this section refer to `cffinit` v2.0.0.

## Start

On the first page of the application, enter the title of your work, write a message to indicate how you want your software to be mentioned, and select whether you are creating a `CITATION.cff` file for software or a dataset.

```{figure} ../../../figures/gifs/cffinit-1.gif
---
name: cffinit-1
width: 80%
alt: First page of the application, for Title, Message and Type. Fields are empty.
---
First page of the application, for Title, Message and Type. [^cffinitversion]
```

You can see the preview of the generated `CITATION.cff` file on the right.

Si hay problemas en cualquiera de los campos, serán resaltados y los mensajes de error serán mostrados en rojo.
When the generated `CITATION.cff` file is not valid, the preview widget will have a red border.

```{note}
As title, message and author are required fields by the schema, these fields will be highlighted until you provide them.
```

Click next to continue to the **Authors** screen.

```{figure} ../../../figures/gifs/cffinit-1-filled.gif
---
name: cffinit-1-filled
width: 80%
alt: First page of the form, for Title, Message and Type. Fields are filled.
---
First page of the form, for Title, Message and Type. Fields are filled. [^cffinitversion]
```

## Autores

The CFF schema requires at least one author in the `CITATION.cff` file.
Haga clic en el botón "Añadir autor" para abrir un formulario para hacerlo.
Rellene los campos relevantes para los autores.
La adición de ORCID para autores es altamente recomendable.
See {ref}`cm-citable-orcid` to learn more about ORCID.

```{figure} ../../../figures/gifs/cffinit-2.gif
---
name: cffinit-2
width: 80%
alt: Second page of the form, for Authors.
---
Second page of the form, for Authors. [^cffinitversion]
```

```{figure} ../../../figures/gifs/cffinit-2-add-author.gif
---
name: cffinit-2-add-author
width: 80%
alt: Second page of the form, for Authors. Author addition in progress.
---
Second page of the form, for Authors. Author addition in progress. [^cffinitversion]
```

After adding one author, you have the minimum required information for a valid `CITATION.cff` file.
Añadir más autores según sea necesario.
Haga clic a continuación para continuar.

```{figure} ../../../figures/gifs/cffinit-2-filled.gif
---
name: cffinit-2-filled
width: 80%
alt: Second page of the form, for Authors. One author filled.
---
Second page of the form, for Authors. One author filled. [^cffinitversion]
```

## Minimal `CITATION.cff` file

¡Enhorabuena!
Now your `CITATION.cff` file meets the minimum requirements.
En esta pantalla puede descargar el archivo generado o copiarlo desde el widget de vista previa.
Le recomendamos encarecidamente que añada más información.
Haga clic en el botón "Añadir más" para añadir más campos a su archivo de citas para hacerlo aún mejor.

```{figure} ../../../figures/gifs/cffinit-3.gif
---
name: cffinit-3
width: 80%
alt: Last page of the minimal form.
---
Last page of the minimal form. [^cffinitversion]
```

## Campos adicionales

Todos los campos adicionales son opcionales, pero se recomienda que rellene los más relevantes para su trabajo.

```{note}
If you decide not to continue further, you can press the "Finish" button to skip all remaining steps and go to the final screen.
```

En esta pantalla, verás nuevos pasos en el stepper.
Esta es una breve descripción de las pantallas adicionales:

- Identificadores: Añadir DOIs, URLs e identificadores del patrimonio de software;
- Recursos relacionados: URLs de los repositorios relacionados con el trabajo y su sitio web;
- Resumen: Un breve resumen de la obra;
- Palabras clave: Palabras clave que describen el trabajo;
- Licencia: La licencia bajo la cual el trabajo está disponible;
- Versión específica: Información sobre una versión específica o confirmación, incluyendo la fecha de la versión.

```{figure} ../../../figures/gifs/cffinit-3-advanced.gif
---
name: cffinit-3-advanced
width: 80%
alt: Third page of the form. More options appear on the left.
---
Third page of the form. More options appear on the left. [^cffinitversion]
```

Haga clic a continuación para comenzar a añadir campos adicionales.

## Pantalla final

¡Excelente que has llegado a la pantalla final!
After adding all the relevant information, you will have a validated `CITATION.cff` file.
¡Descargue o cópielo y añádelo a su repositorio público para obtener el crédito que desierve!

```{figure} ../../../figures/gifs/cffinit-final.gif
---
name: cffinit-final
width: 80%
alt: Last page of the complete form.
---
Last page of the complete form. [^cffinitversion]
```
