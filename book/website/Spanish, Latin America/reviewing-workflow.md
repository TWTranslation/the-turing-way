(rr-revisión-workflow)=
# Flujos de trabajo típicos

*Este capítulo tiene referencia particular a Github*

```{figure} ../../figures/readable-code.jpg
---
height: 500px
name: readable-code
alt: Esta imagen resalta la importancia de la legibilidad de código.
---
_The Turing Way_ ilustración del proyecto por Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Comentarios formales vs Informales

Para que un proceso de revisión formal funcione eficazmente, es imperativo que el proyecto esté utilizando un buen {ref}`control de versiones<rr-vcs>`. Sin embargo, lleva afirmando que **toda revisión del código es muy valiosa**, incluyendo enfoques informales o ad-hoc. De hecho, este tipo de revisión informal "por encima del hombro" puede formar un componente preliminar clave incluso en tuberías de revisión muy formalizadas. ahorrando mucho estrés y arguing una vez que comienza la etapa formal.

Esta sección se centra en los flujos de trabajo típicos detrás de un proceso de revisión formal, como se implementa comúnmente dentro de [Github](https://github.com/). Otros entornos de codificación como [BitBucket](https://bitbucket.org/) o [GitLab](https://about.gitlab.com/) podrían tener mecanismos conceptualmente similares pero no se explican aquí.

## Prepara el código

Antes de solicitar una revisión, asegúrese de que ha cumplido con todas las pruebas de calidad del proyecto al que está contribuyendo. Esto significa asegurarse de que ha comprobado la lista de reseñas (ver la lista de verificación de {ref}`para el codificador<rr-checklist-for-code-review>`).

Un revisor debería comprobar estas cosas (ver la lista de verificación de {ref}`para el codificador<rr-checklist-for-code-review>`), pero los defectos en estos frentes deberían ser ocasionalmente excesivos, en lugar de sistemáticos.

## Proponer cambios

En el sistema de GitHub, la revisión se inicia directamente y se accede a menudo a través de la página de [pull request](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request). La fase de revisión se da entre los puntos donde el codificador cree que su contribución está completa y donde esa contribución se fusiona en el código del tronco del proyecto, y por lo tanto se asocia íntimamente con un solo pull request.

Dentro del entorno de Github, los proyectos pueden ser configurados para *requerir* una revisión antes de que un pull request pueda ser combinado. Incluso si esta opción no ha sido seleccionada, todavía es posible (y de hecho la mejor práctica) solicitar manualmente una revisión sobre una solicitud de extracción pendiente.

## Crear y discutir la reseña

En este punto, el proceso de revisión puede comenzar. En Github, el revisor puede proporcionar tanto comentarios generales como comentarios de línea por línea, ver [revisión del código de GitHub](https://github.com/features/code-review). Cada comentario se convierte en su propio hilo de comentarios, permitiendo discusiones sobre cada tema según sea necesario. Esta interacción debería permitir alcanzar un consenso sobre cada comentario.

Una vez que la revisión esté completa, puede discutir cualquier comentario necesario. Luego realiza los cambios y registra los cambios realizados contra comentarios apropiados. Además, comprueba que el revisor sepa que cree que ha abordado completamente la revisión.

Una vez que crees que los cambios están completos, el revisor comprueba que efectivamente se ocupan de todos los comentarios iniciales. Como es necesario, el revisor se compromete constructivamente con usted si no están de acuerdo en ciertos puntos para llegar a un consenso. En la mayoría de los casos, el revisor tiene una última palabra si no se puede encontrar un consenso.

Una vez que los cambios posteriores a la revisión se han hecho al código, hacer actualizaciones finales de los comentarios necesarios para completar una historia de lo que se ha hecho y el razonamiento detrás de ella.

## Comunicando resultados a través de GitHub

En Github, los comentarios deben ser añadidos en la sección `Archivos cambiados` , para que se puedan adjuntar a una línea de código en particular, vea [los cambios en GitHub en los pullrequests](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/reviewing-changes-in-pull-requests). Haga muchos comentarios pequeños de esta manera, en lugar de una gran bola de texto con todo en ella, de modo que se puedan mantener diferentes cuestiones por separado. Cuando sea pertinente, refiérase a las cuestiones y documentación existentes.

Si está revisando el código existente en lugar de cambios, todavía es útil usar pull requests. Si encuentras un problema que tiene una corrección obvia, puedes enviar un pull request con un parche de la manera habitual.

Si no tienes una solución, puedes añadir un comentario vacío a la línea correspondiente, y crear un pull request de eso como un parche. Las línea(s) relevantes se encenderán en el resumen de la solicitud de extracción `de archivos` cambiados y puede añadir sus comentarios allí. En este caso, o el pull request nunca es fusionado (pero los comentarios procesados de alguna otra manera, o no en absoluto), o los comentarios adicionales son revertidos y reemplazados por una solución acordada.

En todos los casos, archive muchas pequeñas solicitudes de extracción y no una grande, ya que el soporte de GitHub para revisiones de código es bastante limitado. Poner demasiados problemas en un solo pull request rápidamente se vuelve inmanejable.

## Combinar los cambios

Una vez completado el proceso de revisión, el revisor aprueba los cambios y puede ocurrir la fusión. Los proyectos individuales típicamente tienen reglas y/o pautas para si el programador o el revisor realmente presionan el botón de fusión, así que compruebe. En muchos casos, los flujos de trabajo del proyecto hacen que la finalización de una revisión y su cierre por parte del revisor sea una condición previa formal para realizar la fusión. Para evitar dudas, adoptar este principio incluso para proyectos pequeños o informales es probablemente sensato.
