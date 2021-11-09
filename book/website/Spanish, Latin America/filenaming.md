(pd-filenaming)=
# Nombrar archivos, carpetas y otras cosas

## Prerrequisitos / nivel de habilidad recomendado

Ninguno.

## Summary

Al nombrar tus archivos, carpetas y otros componentes de investigación de forma consistente y descriptiva, puedes hacer que tu trabajo sea encontrable, entendible y reutilizable por usted mismo, sus colaboradores y otras personas interesadas en su investigación. Permite a otros entender de qué trata el objeto digital: Qué contienen los archivos y dónde encontrarlos. Además, siguiendo consejos sencillos para la identificación de archivos, puede facilitar la identificación y el proceso de sus archivos.

## Cómo esto te ayudará / por qué esto es útil

Usar buenos nombres es probablemente la manera más fácil de mejorar la reproducibilidad y reusabilidad de su proyecto de investigación.

## Contenido del capítulo

Hay tres principios para nombrar cosas; los dos primeros se aplican a todo tipo de cosas y el tercero es opcional pero valioso para llevar el seguimiento de tus archivos {cite:ps}`Bryan2015Filenaming`.

Los nombres de archivo deben ser:
1. Maquina legible
2. Legible por humanos
3. Opcional: Reproducir bien con el orden predeterminado


Antes de entrar en los detalles de lo que significan, veamos algunos ejemplos de nombres de archivos malos y buenos.

| ❌ Malo                                                                | ✔️ Bueno                                        |
| --------------------------------------------------------------------- | ----------------------------------------------- |
| `Myabstract.docx`                                                     | `2020-06-08_abstract-for-sla.docx`              |
| `Los nombres de archivos de Joe utilizan espacios y Punctuation.xlsx` | `Joes-filenames-son-obteniendo-mejor.xlsx`      |
| `figura 1.png`                                                        | `Fig01_scatterplot-talk-length-vs-interest.png` |
| `higo 2.png`                                                          | `Fig02_histograma talk-attendance.png`          |
| `JW7d^(2sl@deletethisandyourcareerisoverWx2*.txt`                     | `1986-01-28_raw-data-de-challenger-o-rings.txt` |


### Maquina legible

Los nombres de los componentes digitales deben ser fáciles de entender para los ordenadores. A las computadoras les gusta que los nombres no tengan espacios, el uso deliberado de delimitadores y ningún carácter especial o acentuado. También las computadoras son sensibles a mayúsculas, así que para ellas `cat.txt` y `Cat.txt` son archivos diferentes.

Los nombres de archivo `Joe ́s Use Espacios y Punctuation.xlsx` y `JW7d^(2sl@deletethisandyourcareerisoverWx2*. xt` que se muestra arriba utiliza espacios vacíos y caracteres especiales (`н`, `^`, `(`, `@`,`*`), lo que puede causar dificultades, por ejemplo cuando quieres enviarle el ordenador de otra persona.

Los nombres de archivos y carpetas son fáciles de buscar (también usando expresiones regulares) y fáciles de calcular (por ejemplo, dividiendo en `_` o `-` caracteres).

### Legible por humanos

Para lograr la legibilidad humana, es útil tener nombres cortos (< 25 caracteres) pero descriptivos que contengan información sobre el contenido del archivo/carpeta. Los límites de palabras en el nombre del archivo se pueden indicar usando mayúsculas mediales llamadas camel case, por ejemplo "FileName", o guión bajo, por ejemplo "file_name". Los nombres de archivo no deben tener ningún espacio u otros caracteres especiales.

Para enlaces web o Localizador de Recursos Uniforme (URL), este concepto se llama [URL limpia](https://en.wikipedia.org/wiki/Clean_URL).

### Reproducir bien con el orden predeterminado

Para crear un buen orden por defecto añadir un número o fecha al principio del nombre es a menudo una buena idea. Esto mantiene nuestros archivos ordenados en orden ascendente basado en versiones de archivos o en orden cronológico. Por ejemplo, a menudo organizamos todos nuestros mazos de diapositivas creados en diferentes fechas en la misma carpeta. Para ordenarlos por su fecha de creación, podemos comenzar los nombres de los archivos con `el mes del día` (por ejemplo `2020-02-21`). Recomendamos usar algo como el [estándar ISO 8601: AAA-MM-DD](https://en.wikipedia.org/wiki/ISO_8601) para fechas. Si utilizas otros números, te recomendamos que los rellenes a la izquierda con ceros, porque su computadora pedirá `003 < 004 < 020 < 100` en vez de `100 < 20 < 3 < 4`.

Nombrar carpetas de acuerdo a un número lógico puede llevar a un desastre si el orden cambia en el futuro. Por ejemplo, hay una carpeta con los capítulos de libros `01_introduction`, `02_naming_files`y `03_naming_folders`. El autor escribe un prefacio del libro y decide apretarlo antes del capítulo de introducción. Esto significaría que tendrán que renombrar todos los archivos para mantener el orden previsto. Esto ocurre mucho y está claro que tiene más desventajas que beneficios.

## Checklist

Estos son algunos consejos para nombrar archivos dentro de un proyecto de investigación, que son legibles tanto por el ser humano como por la maquinaria {cite:ps}`Cowles2019Filenaming,Hodge2015Filenaming`:

- Nombra sus archivos de forma consistente
- Manténgalo corto pero descriptivo
- Evita caracteres o espacios especiales para mantenerlo compatible con la maquinaria
- Usar las mayúsculas o guiones bajos para mantenerlo legible por el ser humano
- Utilice un formato de fecha consistente, por ejemplo ISO 8601: `AAA-MM-DD` para mantener el orden predeterminado
- Incluye un número de versión cuando sea aplicable
- Compartir/establecer una convención de nombres al trabajar con colaboradores
- Grabar una convención de nomenclatura en su plan de gestión de datos


## Qué aprender a continuación

¿Quieres crear una carpeta con todos los archivos de tu proyecto de investigación? Mira nuestro capítulo sobre {ref}`compendia de investigación<rr-compendia>`.
