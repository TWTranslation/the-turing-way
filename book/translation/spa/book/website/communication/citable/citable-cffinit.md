(cm-citable-cffinit)=
# Crea un `CITATION.cff` usando `cffinit`

`cffinit` es una aplicación web que ayuda a los usuarios a crear un archivo `CITATION.cff`. La aplicación proporciona orientación para cada campo del [esquema CFF](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md) y realiza la validación automáticamente. Cuando hay problemas, `cffinit` proporcionará un feedback visual sobre los campos relevantes.

En las siguientes secciones usted puede encontrar detalles sobre cada paso del proceso.

Para empezar, visita [`cffinit`](https://citation-file-format.github.io/cff-initializer-javascript/) y haz clic en el botón "Crear" para continuar a la pantalla **Iniciar**.

```{figure} ../../figures/gifs/cffinit-0.gif
---
name: cffinit-0
ancho: 80%
alt: Página de tierra de cffinit.
---
Página de tierra de cffinit. [^cffinitversion]
```

## Comenzar

En la primera página de la aplicación, introduzca el título de su obra, escriba un mensaje para indicar cómo desea que se mencione su software y seleccione si está creando una CITACIÓN `.` archivo para software o un conjunto de datos.

```{figure} ../../figures/gifs/cffinit-1.gif
---
nombre: cffinit-1
ancho: 80%
alt: Primera página de la aplicación, para título, mensaje y tipo. Los campos están vacíos.
---
Primera página de la aplicación, para título, mensaje y tipo. [^cffinitversion]
```

Puedes ver la vista previa del archivo `CITATION.cff` generado a la derecha.

Si hay problemas en cualquiera de los campos, serán resaltados y los mensajes de error serán mostrados en rojo. Cuando el archivo `CITATION.cff` generado no es válido, el widget de vista previa tendrá un borde rojo.

```{note}
Como título, mensaje y autor son campos obligatorios por el esquema, estos campos serán resaltados hasta que los proporciones.
```

Haga clic en siguiente para continuar a la pantalla de **Autores**.

```{figure} ../../figures/gifs/cffinit-1-filled.gif
---
name: cffinit-1-filled
ancho: 80%
alt: Primera página del formulario, para título, mensaje y tipo. Los campos están llenos.
---
Primera página del formulario, para título, mensaje y tipo. Los campos están llenos. [^cffinitversion]
```

## Autores

El esquema CFF requiere al menos un autor en el archivo `CITATION.cff`. Haga clic en el botón "Añadir autor" para abrir un formulario para hacerlo. Rellene los campos relevantes para los autores. La adición de ORCID para autores es altamente recomendable. Vea {ref}`cm-citable-orcid` para aprender más sobre ORCID.

```{figure} ../../figures/gifs/cffinit-2.gif
---
nombre: cffinit-2
ancho: 80%
alt: Segunda página del formulario, para los autores.
---
Segunda página del formulario, para los autores. [^cffinitversion]
```

```{figure} ../../figures/gifs/cffinit-2-add-author.gif
---
name: cffinit-2-add-author
ancho: 80%
alt: Segunda página del formulario, para los autores. Añadida de autor en progreso.
---
Segunda página del formulario, para los autores. Añadida de autor en progreso. [^cffinitversion]
```

Después de agregar un autor, tienes la información mínima requerida para un archivo `CITATION.cff` válido. Añadir más autores según sea necesario. Haga clic a continuación para continuar.

```{figure} ../../figures/gifs/cffinit-2-filled.gif
---
name: cffinit-2-filled
ancho: 80%
alt: Segunda página del formulario, para los autores. Un autor lleno.
---
Segunda página del formulario, para los autores. Un autor lleno. [^cffinitversion]
```

## Mínimo `archivo CITATION.cff`

¡Enhorabuena! Ahora tu archivo `CITATION.cff` cumple con los requisitos mínimos. En esta pantalla puede descargar el archivo generado o copiarlo desde el widget de vista previa. Le recomendamos encarecidamente que añada más información. Haga clic en el botón "Añadir más" para añadir más campos a su archivo de citas para hacerlo aún mejor.

```{figure} ../../figures/gifs/cffinit-3.gif
---
name: cffinit-3
ancho: 80%
alt: Última página de la forma mínima.
---
Última página de la forma mínima. [^cffinitversion]
```

## Campos adicionales

Todos los campos adicionales son opcionales, pero se recomienda que rellene los más relevantes para su trabajo.

```{note}
Si decide no continuar más, puede pulsar el botón "Finalizar" para omitir todos los pasos restantes e ir a la pantalla final.
```

En esta pantalla, verás nuevos pasos en el stepper. Esta es una breve descripción de las pantallas adicionales:
- Identificadores: Añadir DOIs, URLs e identificadores del patrimonio de software;
- Recursos relacionados: URLs de los repositorios relacionados con el trabajo y su sitio web;
- Resumen: Un breve resumen de la obra;
- Palabras clave: Palabras clave que describen el trabajo;
- Licencia: La licencia bajo la cual el trabajo está disponible;
- Versión específica: Información sobre una versión específica o confirmación, incluyendo la fecha de la versión.

```{figure} ../../figures/gifs/cffinit-3-advanced.gif
---
name: cffinit-3-advanced
ancho: 80%
alt: Tercera página del formulario. Más opciones aparecen a la izquierda.
---
Tercera página del formulario. Más opciones aparecen a la izquierda. [^cffinitversion]
```

Haga clic a continuación para comenzar a añadir campos adicionales.

## Pantalla final

¡Excelente que has llegado a la pantalla final! Después de agregar toda la información relevante, tendrás un archivo `CITATION.cff` validado. ¡Descargue o cópielo y añádelo a su repositorio público para obtener el crédito que desierve!

```{figure} ../../figures/gifs/cffinit-final.gif
---
name: cffinit-final
ancho: 80%
alt: Última página del formulario completo.
---
Última página del formulario completo. [^cffinitversion]
```
