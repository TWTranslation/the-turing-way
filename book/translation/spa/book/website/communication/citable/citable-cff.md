(cm-citable-cff)=
# Cita de software con CITATION.cff

El formato de archivo de citas [](https://citation-file-format.github.io) le permite proporcionar metadatos de citación, para software o conjuntos de datos, en archivos de texto plano que son fáciles de leer tanto por humanos como por máquinas.

```{figure} ../../figures/recognition.jpg
---
name: reconocimiento
ancho: 500px
alt: Los desarrolladores de software de investigación obtienen reconocimiento al hacer citable de software.
---
Los desarrolladores de software de investigación obtienen reconocimiento al hacer citable de software. _The Turing Way_ proyecto de ilustración por Scriberia. Zenodo. [http://doi.org/10.5281/zenodo.3332807](http://doi.org/10.5281/zenodo.3332807)
```

Para proporcionar estos metadatos, comience escribiendo un archivo `CITATION.cff` e introdúzcalo con su software o conjunto de datos. Una CITACIÓN `. El archivo` agrega la información en un formato clave-valor que puede ser fácilmente interpretado y actualizado por humanos, y fácilmente analizada y convertida con herramientas existentes.

(cm-citable-cff-por qué)=
## ¿Por qué usar `CITATION.cff`?

¡Hay grandes ventajas al usar un archivo `CITATION.cff` para la información de cita de su software!

Es más fácil para ti: Cuando alojas tu código fuente de software en GitHub y tienes una `CITACIÓN. De` en su repositorio, puede utilizar la integración Zenodo-GitHub para publicar automáticamente nuevas versiones del software. Zenodo usará la información de `CITATION.cff` y la mostrará junto con la publicación. Ya no tiene que editar esta información manualmente en Zenodo.

```{figure} ../../figures/software-credit.jpg
---
name: software-credit
width: 500px
alt: Más créditos para los creadores de software.
---
Más créditos para los creadores de software. _The Turing Way_ proyecto de ilustración por Scriberia. Zenodo. [http://doi.org/10.5281/zenodo.3332807](http://doi.org/10.5281/zenodo.3332807)
```

Es más fácil para los usuarios de su software:
1. Pueden utilizar directamente la información de la cita de `CITATION.cff` para citar su software.
2. Si su código fuente está en GitHub, mostrarán la información de la cita en la barra lateral como una cita formateada, y también en el formato BibTeX. Los usuarios pueden copiar, pegarlo en sus manuscritos y/o citar correctamente su software.
3. Si utilizan el administrador de referencia de Zotero, pueden importar los metadatos de la cita directamente de la CITACION `.` archivo en el repositorio de GitHub a su gestor de referencias.

(cm-citable-cff-cómo-crear)=
## Cómo crear un archivo `CITATION.cff`

El `CITATION.cff` es un archivo `YAML` con su propia definición de esquema. El esquema define las reglas para cada campo, y qué campos son requeridos y cuáles son opcionales. El usuario debe seguir estas reglas para crear un archivo `CITATION.cff` válido.

Un ejemplo mínimo de un archivo `CITATION.cff` , que solo contiene las claves requeridas, se vería así:

```yaml
authors:
  - family-names: Doe
    given-names: John
cff-version: 1.2.
mensaje: "Si utiliza este software, por favor cite los metadatos de este archivo."
title: "Mi software de investigación"
```

Sin embargo, añadir más campos puede ayudarle a crear metadatos más descriptivos de su software. El ejemplo a continuación también proporciona información importante de software como versión, fecha de lanzamiento, DOI, licencia, palabras clave.

```yaml
abstract: "Este es mi impresionante software de investigación. Hace muchas cosas.
authors:
  - family-names: Doe
    given-names: John
    orcid: "https://orcid. rg/0000-0001-8888-9999"
cff-version: 1.2.
date-released: "2021-10-13"
identificadores:
  - description: "Esta es la colección de instantáneas archivadas de todas las versiones de My Research Software"
    tipe: doi
    value: 10. 281/zenodo.123456
  - descripción: "Esta es la instantánea archivada de la versión 0. 1.2 of My Research Software"
    type: doi
    value: 10.5281/zenodo. 23457
palabras clave:
  - "increíble software"
  - investigación
licencia: Apache-2.
mensaje: "Si usas este software, por favor cite los metadatos de este archivo."
código del repositorio: "https://github. om/cita-archivo-formato/mi-investigación-software"
título: "Mi software de investigación"
versión: 0.11.2
```

La lista completa de campos se describe en la [guía de esquema CFF](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md). En la siguiente sección, puede averiguar qué herramientas le pueden ayudar a crear y utilizar el archivo `CITATION.cff`.

### Pasos para hacer que su software sea accesible

Para hacer su citable de software, debe seguir los dos pasos que se indican a continuación.

#### Paso 1. Crear un archivo `CITATION.cff`

Hay dos maneras de crear un archivo `CITATION.cff`.

1. Utilice [cffinit](https://citation-file-format.github.io/cff-initializer-javascript/), una aplicación web que le guiará a través del proceso de creación de su archivo de cita. El `cffinit` tiene algunas ventajas en comparación con la edición manual como

    - sin necesidad de instalar herramientas adicionales;
    - sin necesidad de validación manual;
    - orientación para cada campo;
    - retroalimentación visual para indicar problemas.

    Te sugerimos usar `cffinit` ya que simplifica la creación y la validación. Para más detalles sobre el uso de `cffinit` vea {ref}`cm-citable-cffinit`.

2. Edite el archivo manualmente en su editor de código favorito. Las desventajas de este método son la instalación de las herramientas necesarias en su sistema y la validación usted mismo. Además, los mensajes de error de la validación pueden ser relativamente largos y difíciles de entender. Una vez que tengas un archivo `CITATION.cff` , debe ser validado para asegurarse de que no hay problemas. Puedes validar tu archivo `CITATION.cff` en la línea de comandos con el [`cffconvert` Python paquete](https://pypi.org/project/cffconvert/).

    ```shell
    cd ruta/a/CITATION.cff
    cffconvert --validate
    ```

    Si prefieres usar Docker, puedes usar [`cffconvert` Docker image](https://hub.docker.com/r/citationcff/cffconvert):

    ```shell
    cd ruta/a/CITATION.cff
    docker run --rm -v ${PWD}:/app citationcff/cffconvert --validate
    ```

    Si recibes mensajes de error, busca el error de validación y corregirlo.

```{note}
Para asegurarse de que su repositorio de GitHub siempre tiene un archivo `CITATION.cff` válido, puede utilizar [cff-validator](https://github.com/marketplace/actions/cff-validator) Acción de GitHub.
```

#### Paso 2. Añade tu `CITATION.cff` a un repositorio de código público

Después de crear una CITACIÓN válida `. Id` archivo, necesitará añadirlo a la raíz de su código o repositorio de datos para que pueda ser encontrado y citado fácilmente.

(cm-citable-cff-updating)=
## Actualizando tu archivo `CITATION.cff`

Cuando necesite actualizar su CITACIÓN `. Fuera del archivo` , por ejemplo para agregar un autor o para cambiar la información sobre lanzamientos, necesitará editar el archivo manualmente. Se recomienda actualizar su archivo `CITATION.cff` antes de hacer una versión de software.

(cm-citable-cff-how-to-cite)=
## Cómo Citar usando `CITATION.cff`

Si ha encontrado software o conjuntos de datos que contienen una CITACIÓN `. De`, hay algunas maneras de obtener la información de referencia para citarlos en su publicación.

- Puede utilizar una de las herramientas, como el programa de línea de comandos `cffconvert` , para convertir su `CITACIÓN.` archivo a uno de los [formatos soportados](https://github.com/citation-file-format/cff-converter-python#supported-output-formats), tales como APA, BibTeX o EndNote.

- Alternativamente, si el software o los conjuntos de datos que desea citar están disponibles en GitHub, puede utilizar la interfaz de GitHub para copiar la referencia en formatos APA o BibTeX haciendo clic en el botón "Citar este repositorio" (ver la zona verde de la imagen de abajo). Para obtener más detalles sobre la cita de software en GitHub, consulte [la guía de GitHub sobre la cita de software](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-citation-files).

  ```{figure} ../../figures/github-cff-integration.jpg
  ---
  name: github-cff-integration
  alt: Botón en GitHub que proporciona automáticamente la conversión del archivo `CITATION.cff` al formato de APA y BibTex.
  ---
  "Citar este repositorio" convierte automáticamente el archivo `CITATION.cff` al formato de API y BibTex.
  ```

  ```{note}
  El botón "Citar este repositorio" sólo aparece cuando hay un archivo `CITATION.cff` en el repositorio.
  ```

(cm-citable-cff-available-tools)=
## Herramientas disponibles

Existen varias herramientas para facilitar la creación y validación de archivos `CITATION.cff` , así como la conversión a y desde otros formatos. El repositorio del formato de referencia proporciona [una lista de todas las herramientas conocidas](https://github.com/citation-file-format/citation-file-format#tools-to-work-with-citationcff-files-wrench) para esto.
