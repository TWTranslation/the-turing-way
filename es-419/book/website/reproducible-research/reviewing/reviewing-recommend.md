(rr-reviewing-recommendation)=

# Recomendaciones y mejores prácticas

## ¿Quién reseña?

Dentro de proyectos a pequeña escala donde los desarrolladores normalmente ya se conocen entre sí práctica común es que el programador etiquete a alguien en el grupo como revisor.
Cuando estás etiquetado como revisor, primero compruebe si tiene suficiente conocimiento sobre los nuevos cambios en el código para hacer un buen trabajo en una cantidad de tiempo razonable.

Por el contrario, es probable que los proyectos de desarrollo a gran escala tengan normas concretas para cómo se asignan los revisores a las solicitudes individuales de extracción.
These rules serve to balance the group workload and to maximise the various benefits of the process to the project and its participants.
The very largest projects may even have dedicated staff - or teams of staff - to act as reviewers.
Typically, code reviews can only be performed by an authorised subset of contributors within larger projects.

For projects where multiple rounds of review on similar material are likely and long development cycles are anticipated, a degree of strategic thinking on who completes reviews is sensible.
A single reviewer is likely to be able to make comments on code they have reviewed before much more efficiently.
However, letting reviewer-coder pairs like this persist is generally a bad idea, as it can lead to the same kinds of groupthink that the review process is designed to avoid in the first place.

(rr-reviewing-recomendation-be-nice)=

## ¡Sé Nichola!

Al igual que con todas las empresas de código abierto y colaborativas, el buen acceso a Internet, etc hace que todo el proceso sea más fluido.
Tal vez lo más importante es que siempre asuman buena fe en ambos lados de la interacción con la revisión, y siempre sean constructivos.
Estos principios son válidos para el proceso de revisión más allá de casi cualquier otro aspecto del proyecto, ya que necesariamente implica crítica, potencialmente entre dos desconocidos completos.

## Manténgalo colaborativo

A diferencia de la revisión por pares tradicional, de estilo "académico", la mayoría de los sistemas de revisión de código tienen una serie de ventajas: rara vez son anónimos, Son de cara al público, y sin el interlocutor de un editor, el contacto entre revisor y reafirmó wee puede ser directo y rápido.
Esto significa que la revisión de código es típicamente un proceso rápido, flexible e interactivo.
Una buena revisión por pares será totalmente colaborativa, donde una vez que una consulta potencial haya sido marcada por un revisor, las dos partes implicadas pueden trabajar juntos para encontrar una solución.
Tampoco es atípico que terceras partes se nieguen durante los hilos de discusión que pueden crecer bajo comentarios de revisión más brillante, voluntariamente o por petición.
Todo esto es bueno.

## Evitar ser subjetivo

Las revisiones del código deben esforzarse por ser lo más objetivas posible.
Por supuesto, pueden surgir preferencias de codificación objetivas en cualquier proyecto.
Sin embargo, estas preferencias siempre que sea posible deberían decidirse de antemano en el nivel del proyecto.
Por lo tanto, se puede evitar la situación en la que una opinión podría ser transmitida como un hecho.
En su lugar, las sugerencias pueden ser apoyadas apuntando a preferencias documentadas que se han establecido con antelación.
Si encuentras preferencias indocumentadas, discutirlos con el equipo de nuevo y aceptar si desea agregar la preferencia a la lista de verificación de su proceso de revisión de código.

## Especificar cambios cruciales contra opciones

Puede que desee diferenciar entre los cambios que son cruciales y los cambios que son agradables de tener.
Por ejemplo, los comentarios que empiezan "Usted podría..." podrían utilizarse para expresar sugerencias que los revisores quieren que el programador tenga en cuenta, pero no son esenciales.
Estos pueden ser particularmente útiles para guiar a los programadores inexpertos para escribir mejor código mientras que no están demasiado listos.
El codificador puede entonces decidir ignorar estos comentarios no cruciales si no están de acuerdo.
Los revisores podrían usar comentarios que comiencen "Deberías..." para especificar aquellos que no son opcionales.

## Revisar código en pequeños trozos

Revisar código en pedazos pequeños incrementalmente a medida que el proyecto está desarrollando puede ayudar a hacer el proceso de revisión de código mucho más eficiente.
Es mucho más difícil revisar una enorme base de código una vez que se hayan introducido errores significativos.
Si los errores pueden ser detectados a principios del proceso, son mucho más fáciles de arreglar y esto ayudará con el proceso general de desarrollo de código.

Aquí hay algunos consejos generales sobre cómo integrar las revisiones de código en nuestro proceso de trabajo:

- Take the time, read carefully. Review everything, nothing is too short or simple.
- Intenta tener algo más que hacer y difunde la carga a lo largo de tu día laborable. Don't review for more than an hour at a time, after that the success rate drops quite quickly.
- Don't review more than 400 lines of code (LOC) at a time, less than 200 LOC is better. Don't review more than 500 LOC/hour.

## Esté de acuerdo al tomar la discusión fuera de línea

A veces, con revisiones más complejas de código, la comunicación en línea puede llevar a conversaciones improductivas.
Establecer una reunión en persona puede ayudar a resolver algunos de los problemas más complicados de una manera más colaborativa y amistosa.
Como alternativa, el equipo de desarrollo/investigación puede establecer reuniones regulares para hacer revisiones de código con todos los miembros del equipo.
For example, see the approach taken by a professor organizing [lab meetings for code](http://web.archive.org/web/20210512053038/http://fperez.org/py4science/code_reviews.html).
