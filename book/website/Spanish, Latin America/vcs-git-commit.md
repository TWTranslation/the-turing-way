(rr-vcs-git-commit)=
# El comando `git commit`

Cada vez que "agrega" cambios (archivos nuevos o archivos existentes con algunos cambios) y "confirmar" los cambios en su repositorio Git, creas una versión de tu proyecto que se almacena en tu historial de proyectos y se puede acceder en cualquier momento.

Para confirmar los cambios con una sentencia significado sobre los cambios realizados en una versión, usa `git commit` con una bandera `-m` (m para mensaje) :

```
git commit -m 'sentencia útil sobre el cambio aquí'
```

Puede ver un registro de sus commits anteriores usando

```
git log
```

En el informe de registro de su terminal, verás que cada versión está etiquetada automáticamente con una cadena única de números y letras, llamada SHA. Puede identificar, acceder y comparar diferentes versiones utilizando su SHA correspondiente. Aquí hay un ejemplo de un commit en el registro de Git: El SHA está en la primera línea, y aparte de este SHA, el registro también contiene información sobre la fecha, hora y autor del cambio, así como sobre el mensaje de confirmación ("corrección menor del error tipo").

```
commit 0346c937d0c451f6c622c5800a46f9e9e1c2b035
Autor: Malvika Sharan <some@email.com>
Fecha: mié 6 de mayo 18:22:40 2020 +0100

    corrección tipográfica menor

```

(rr-vcs-commit-messages)=
## Más en los mensajes de confirmación

A medida que trabajas en tu proyecto, harás cada vez más compromisos. Sin ninguna otra información, puede ser difícil recordar qué versión de su proyecto está en cuándo. Almacenar versiones anteriores es inútil si no puedes entenderlas, y averiguar lo que contienen al inspeccionar el código es frustrante y lleva un tiempo valioso.

Cuando confirmas, tienes la oportunidad de escribir un mensaje de confirmación describiendo lo que es el commit y lo que hace, y siempre deberías *siempre,* **_siempre_** hacerlo. Un mensaje de confirmación se adjunta a la confirmación, así que si la mira hacia atrás (por ejemplo, vía `git log`), se mostrará. Crear mensajes de confirmación perspicaces y descriptivos es una de las mejores cosas que puedes hacer para sacar el máximo provecho del control de versiones. Permite a la gente (y a tu futuro cuando has olvidado desde hace mucho tiempo lo que hacías y por qué) entender rápidamente qué actualizaciones contiene un commit sin tener que leer cuidadosamente el código y perder el tiempo para averiguarlo. Los buenos mensajes de confirmación mejoran la calidad de tu código al reducir drásticamente los supuestos equivocados por parte de la gente sobre por qué se hicieron ciertos cambios.

Cuando confirmas a través de `git commit` sin la opción `-m` o `--message` , aparece un campo (ya sea dentro del terminal o en un editor de texto) donde se puede escribir un mensaje de confirmación. Puede escribir una declaración significativa y guardar (y cerrar si escribe el mensaje a través del editor de texto). Puede establecer su editor preferido como predeterminado ejecutando una sentencia como esta:

```
git config --global core.editor "su_preferred_editor"
```

Para evitar escribir este mensaje de confirmación en un editor, puedes usar el comando `git commit -m "tu mensaje aquí"`, como se discutió anteriormente.

(rr-vcs-commit-messages-practice)=
### Buenas prácticas

La regla número uno es: **haga que tenga sentido**. Un mensaje de confirmación como "Corregido un error" deja totalmente en manos de la persona para entender lo que eso significa (otra vez, esta persona puede muy bien ser usted unos meses en el futuro cuando haya olvidado lo que estaba haciendo). Esto puede acabar perdiendo su tiempo o el de otros en averiguar cuál era el error. qué cambios se hicieron en realidad y cómo se corrigió un error. Como tal, un buen mensaje de confirmación debería *explicar lo que hiciste, por qué lo hiciste, y lo que se ve afectado por los cambios*. Como con los comentarios, debe describir lo que el código está "haciendo" en lugar del código mismo. Por ejemplo, no es obvio lo que "Cambiar N_sim a 10" realmente hace, pero "Cambiar número de simulaciones ejecutadas por el programa a 10" es claro.

**Resumir los cambios que su commit contiene**. Esto debe ser escrito en la primera línea (en un máximo de 50 caracteres), luego deje una línea en blanco antes de continuar con la descripción o el cuerpo del mensaje. La primera línea es la versión acortada que aparece como un resumen cuando se utiliza el comando:

```
git log
```

Esto hace que sea mucho más fácil buscar rápidamente a través de un gran número de confirmaciones. También es una buena práctica **usar el tense imperativo presente** en estos mensajes. Por ejemplo, en lugar de "Añadí pruebas para" o "Agregar pruebas para", use "Añadir pruebas para".

Aquí hay un buen ejemplo de una estructura de mensajes de confirmación:

```
Corto (50 caracteres. o menos) resumen de los cambios

Texto explicativo más detallado, si es necesario. Enchufalo a
unos 72 caracteres aproximadamente. En algunos contextos, la primera línea
es tratada como el asunto de un correo electrónico y el resto de
el texto como el cuerpo. La línea en blanco que separa el resumen
del cuerpo es crítica (a menos que omita el cuerpo
por completo); herramientas como rebase se pueden confundir si ejecuta
las dos juntas.

Otros párrafos vienen después de líneas en blanco.

  - Los puntos de bala son correctos, también

  - Por lo general, se utiliza un guión o asterisco para el baldón,
    precedido por un solo espacio, con líneas en blanco en
    entre sí, pero las convenciones varían aquí
```
(rr-vcs-commit-Resumen de commit)=
## Git commit: Resumen

Al confirmar sus cambios a lo largo del desarrollo de su proyecto en unidades significativas con mensajes de confirmación descriptivos y claros, puede crear una historia fácilmente comprensible. Esto ayudará a usted y a otros a entender el progreso de su trabajo. Además, como demostrará la siguiente sección, también hará que sea fácil ver versiones anteriores de su historial o revertir los cambios que ha hecho.
