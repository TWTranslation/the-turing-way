(cl-github-novice-firststeps)=
# Primeros pasos en GitHub

Aquí proporcionamos instrucciones paso a paso para comenzar con GitHub.

## 1. Create a GitHub account

Ve a [https://github.com/](https://github.com/) y crea una nueva cuenta usando el registro en GitHub box.

## 2. Crear un repositorio

Cuando haya creado una nueva cuenta y haya iniciado sesión, necesita crear un nuevo repositorio.

Un repositorio o repositorio es el espacio en línea donde almacena todos los documentos, datos y otros archivos para su proyecto.

* Para crear el nuevo catlogo, necesita hacer clic en el signo + en la esquina superior derecha (en la banda negra en la parte superior de su ventana) y luego haga clic en Nuevo repositorio. Esto te llevará a una página que parece un formulario.
* Verás el nombre de tu cuenta y necesitas rellenar un nombre de repositorio junto a ella.
* Además, deje la casilla marcada para “público” (de modo que su repositorio está abierto a todos) y luego marque la casilla para crear un “archivo README”.
* Luego haga clic en el botón Crear repositorio verde en la parte inferior.

Esto es lo que deberían ver ahora. Es la página de destino de su repositorio. El siguiente diagrama explica lo que hacen todos los botones, pestañas y otras cosas!

```{figure} ../../figures/github-basic-diagram.jpg
---
name: github-basic-diagram
alt: Diagrama anotado del repositorio después de su creación, explicando las características principales. Las características principales se explican en la leyenda de la figura.
align: left
---
Diagrama anotado del repositorio después de su creación básica, explicando las características principales. En el lado izquierdo de la página web tenemos las siguientes características:
- **1. Nombre de usuario:** Nombre de usuario de GitHub (cuenta). En este ejemplo, el nombre de usuario es “EKaroune”.
- **2. Repositorio:** directorio del proyecto (también conocido como repo). En este ejemplo, el nombre del repositorio es "trial-repo".
- **3. Código:** esta pestaña te trae de vuelta a tu página de destino. Te muestra las carpetas que has hecho en el repo.
- **4. Principal:** esta es tu rama de desarrollo por defecto o rama activa de tu repositorio.
- **5. Rama:** version(es) paralelas de tu repositorio.
- **6. Archivo README.md:** este archivo contiene información básica sobre su proyecto (en este caso sólo tiene el nombre del proyecto: “trial-repo”. Cuando planifiquemos crear un sitio web, este será renderizado como una página de destino (frente) para su sitio.

En el lado derecho de la página web tenemos las siguientes características:
- **7. Botón Código verde:** haz clic en él para descargar tu repositorio localmente.
- **8. Símbolo '+':** donde puedes crear un nuevo repositorio, importar repos y crear nuevos problemas.
- **9. Fork:** crear una copia personal del repositorio de otro usuario. El número muestra cuántos forks hay en su repositorio actual.
- **10: Añade archivo:** crea o sube un archivo a tu repositorio.
- **11: Símbolo de cambios/reloj:** haga clic para ver el historial de este archivo como una lista de todas las ediciones (commits) guardadas en diferentes puntos de tiempo.
- **12: Símbolo de la edición/lápiz:** haga clic en este símbolo del lápiz para editar tu archivo README.md.
```

## 3. Edita tu archivo README.md

A menos que haya añadido otros archivos o incluido un archivo de licencia durante la creación del repositorio, debería tener un fichero en su repositorio ahora - README.md. Necesitaremos editar este archivo para agregar información sobre el repo. Este archivo es un archivo Markdown; puede ver esto porque tiene “.md” después del nombre del archivo. Aquí es donde comienza a utilizar el formato Markdown. Lo que escribas en este archivo se mostrará en la página de destino (frente) de tu proyecto en GitHub, así que úsalo para contarle a la gente todo acerca de tu proyecto.

### Navegando por la interfaz de edición de GitHub
Para editar tu archivo README.md:

* Puede hacer clic en el símbolo del lápiz en la parte superior derecha de la caja central de su página de destino.

**O**

* Haga clic en el archivo README.md y, a continuación, haga clic en el símbolo del lápiz.

Ahora puede editar el archivo. Hablaremos sobre cómo guardar tus cambios después de que algunos punteros sobre cómo escribir un buen README.

```{figure} ../../figures/github-readme-before-edit.jpg
---
name: github-readme-before-edit
alt: Diagrama anotado del archivo README.md, si haces clic en el nombre del archivo en tu página de destino. Las características principales se explican en la leyenda de la figura.
align: izquierda
---
Diagrama anotado del archivo README.md, si haces clic en el nombre del archivo en tu página de destino.
- **1. Repositorio y archivo actual:** el nombre del repositorio y el nombre del archivo que está viendo.
- **2. Rama principal:** actualmente activa ("main" es el valor predeterminado). Úsalo para cambiar a diferentes ramas de tu repositorio (si hay más ramas previamente creadas).
- **3. Colaboradores:** número de colaboradores (usuarios) a tu archivo.
- **4. Contenido del archivo README.md:** el contenido de su archivo README.md aparece aquí. Este contenido se expandirá una vez que añadamos más información.
- **5. Archivo raudal:** ver el archivo de texto de markdown crudo.
- **6. Cultiva:** ver la última modificación hecha a cada línea del archivo. Puede utilizarse para rastrear cuándo y quién hizo cambios y volver a las versiones anteriores del archivo para corregir errores.
- **7. Editar archivo:** haga clic en este lápiz para editar su archivo README.md.
- **8. Eliminar archivo:** haga clic en la papelera para eliminar este archivo.
```

```{figure} ../../figures/github-readme-after-edit.jpg
---
name: github-readme-after-edit
alt: Diagrama anotado del archivo README.md en modo edición - antes de editar. Explicado en el título.
align: izquierda
---
Diagrama anotado del archivo README.md en modo edición - antes de editar.
- **1. Cambios de vista previa:** presione para ver su texto renderizado (cómo aparecería en GitHub o en una página web).
- **2. Editar archivo:** presione esta pestaña para editar el contenido de su archivo README.md.
- **3. Añade contenido a README.md:** escribe el texto de Markdown para tu archivo README.md. Actualmente sólo tiene el título del repositorio en este archivo.
```

### Consejos para escribir tu archivo README

* ¡Manténgalo sencillo! Cuando está trabajando en cualquier campo, ya sea ingeniería de software o astrofísica, aprenderás y usarás jerga – términos que tienen un significado especial para tu campo pero que probablemente no tendrán sentido para nadie que no forme parte de ese campo. Demasiada jerga puede confundir a los recién llegados, así que utilice un lenguaje sencillo y defina todos los términos potencialmente desconocidos aquí.
* Comparte tu proyecto con otros - describe lo que estás haciendo ahora y lo que quieres hacer en el futuro.
* Dígale a la gente a quién eres y cómo puede ser contactado.


**NOTA: Si tienes problemas para empezar, es buena idea echar un vistazo a los archivos README.md de otras personas.**

Si no puedes conseguir que tu contenido de markdown se procese de la manera que quieras, es también una buena idea encontrar un archivo que tenga lo que desea y luego mirar el archivo raw . Puede copiar y pegar el contenido de archivos raw de otras personas en su archivo README.md y luego editarlo.

Aquí hay un ejemplo de un archivo README.md realmente bien formateado: [STEMM Role Models App](https://github.com/KirstieJane/STEMMRoleModels/blob/gh-pages/README.md)

Si hace clic en el enlace de arriba, le llevará a su archivo README.file. Puede utilizar esto como una plantilla para su archivo README.md.

* Para ver el archivo de markdown crudo hay que hacer clic en el botón raw (arriba a la derecha de la caja blanca).
* Esto le lleva al archivo markdown raw que se procesa en un archivo README.md bien formateado en GitHub.
* Ahora simplemente copia y pégalo en tu pestaña de edición de README.md. Ahora puedes editar esto para tu proyecto.
* Recuerde comprobar cómo se ve haciendo clic en la pestaña de cambios de vista previa.
* Cuando haya terminado de editar, necesita desplazarse hacia abajo hasta la parte inferior de la página y pulse el botón de cambios de confirmación verde.

```{figure} ../../figures/github-edited-readme.jpg
---
name: /github-edited-readme
alt: Diagrama anotado de archivo README.md en modo edición – con una plantilla añadida. Las características se explican en la leyenda de la figura.
align: izquierda
---
Diagrama anotado del archivo README.md en modo edición – con una plantilla añadida.
- **1. Usando MarkDown para añadir contenido a README.md:** el texto Markdown (indicado por '.md' en la extensión de archivo) para su archivo README.md. Este ejemplo muestra el archivo de plantilla que tiene diferentes secciones (las cabeceras y subcabeceras se crean usando uno o más símbolos '#'. Vea la sección {ref}`Conformación de formato del Manual de la comunidad<ch-consistency-formatting-hr-markdown>` para más información sobre el uso de Markdown.
```
### Compromiso - o guardando - sus cambios
Realizar los cambios es como pulsar el "botón guardar" para un archivo. GitHub no guardará automáticamente los cambios, por lo que es importante no omitir este paso.

Los cambios que haya hecho en el archivo serán depositados en su repositorio.

Es una buena práctica escribir un título de confirmación descriptivo y una descripción breve de lo que ha hecho en la caja de cambios de confirmación. Así que algo como - commit title: ‘first edit of the readme file'; description: 'copió la plantilla de … y la editó con los detalles de este proyecto'. Esta información sobre la confirmación se llama un "mensaje de confirmación", y el título de la confirmación le permitirá mirar rápidamente a través del historial de cambios para un archivo (razón por la cual hacerlos descriptivos es tan importante - es como dejar una nota útil para su futuro mismo).

Puede ver una lista de sus commits (o su "historial de confirmación") haciendo clic en el símbolo de reloj en su página de destino o dentro de la página de cada archivo.

## 4. Añadir una licencia a su repositorio

Es importante que toda su obra tenga una licencia desde el principio o que nadie pueda reutilizarla. Las licencias le dicen a otros investigadores cómo pueden reutilizar, modificar y remezclar su trabajo. Ninguna licencia implica que otros no tengan ** permitido usar su trabajo, incluso con atribución. Así que es mejor incluir una licencia que permita a la gente saber lo que puede y no puede hacer y cómo darle crédito por su trabajo.

Dependiendo de tu campo, gran parte de tu trabajo puede ser documentos con sólo algunos datos o código. Las licencias estándar ofrecidas en GitHub son las más approriadas para el software y no serán realmente el tipo adecuado para los documentos.

[Las licencias Creative commons](https://creativecommons.org/licenses/) son las mejores para este propósito y la más abierta es la CC BY 4.0.

Para agregar una licencia a su repositorio, lo primero que hay que hacer es crear un archivo LICENSE.md:

* Para ello, haga clic en el botón Añadir archivo y haga clic en crear archivo. Esto le dará un archivo en blanco.
* Luego, necesita nombrar el archivo, así que llámelo LICENSE.md. Esto lo convierte en un archivo markdown.
* Puede encontrar todas las licencias creativas comunes en el enlace de arriba así que copie el texto de la licencia que desee y luego péguelo en este archivo.
* No te olvides de pulsar el nuevo botón de confirmación verde en la parte inferior y escribir un mensaje de confirmación para describir lo que has hecho.
* También puede añadir un enlace a la licencia en la parte inferior de su archivo README.md. Este es un enlace a un repositorio que puede copiar para añadir en una licencia [CC BY 4.0](https://github.com/santisoler/cc-licenses). Tiene un archivo de texto para su LICENSE. d y también un escudo (o insignia) que puede poner en la parte inferior de su archivo README.md.

Puedes encontrar más información sobre licencias en el capítulo de {ref}`rr-licensing` de The Turing Way.
