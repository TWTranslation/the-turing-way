(rr-recomendación-revisión)=
# Recomendaciones y buenas prácticas

## ¿Quién revisa?

Dentro de proyectos a pequeña escala donde los desarrolladores normalmente ya se conocen entre sí práctica común es que el programador etiquete a alguien en el grupo como revisor. Cuando estás etiquetado como revisor, primero compruebe si tiene suficiente conocimiento sobre los nuevos cambios en el código para hacer un buen trabajo en una cantidad de tiempo razonable.

Por el contrario, es probable que los proyectos de desarrollo a gran escala tengan normas concretas para cómo se asignan los revisores a las solicitudes individuales de extracción. Estas reglas sirven para equilibrar la carga de trabajo del grupo y para maximizar los diversos beneficios del proceso para el proyecto y sus participantes. Los proyectos más grandes pueden incluso tener personal dedicado -o equipos de personal- para actuar como revisores. Por lo general, las revisiones de código sólo pueden ser realizadas por un subconjunto autorizado de colaboradores dentro de proyectos más grandes.

Para proyectos en los que es probable que haya múltiples rondas de revisión en material similar y que se anticiquen ciclos de desarrollo largos, un cierto grado de pensamiento estratégico sobre quién completa las revisiones es sensato. Es probable que un solo revisor sea capaz de hacer comentarios sobre el código que han revisado antes mucho más eficientemente. Sin embargo, permitir que los pares de codificadores de revisores como este persisten es una mala idea. ya que puede conducir a los mismos tipos de grupos de pensar que el proceso de revisión está diseñado para evitar en primer lugar.

## ¡Sé agradable!

Al igual que con todas las empresas de código abierto y colaborativas, el buen acceso a Internet, etc hace que todo el proceso sea más fluido. Tal vez lo más importante es que siempre asuman buena fe en ambos lados de la interacción con la revisión, y siempre sean constructivos. Estos principios son válidos para el proceso de revisión más allá de casi cualquier otro aspecto del proyecto, ya que necesariamente implica crítica, potencialmente entre dos desconocidos completos.

## Mantenerlo colaborativo

A diferencia de la revisión por pares tradicional, de estilo "académico", la mayoría de los sistemas de revisión de código tienen una serie de ventajas: rara vez son anónimos, Son de cara al público, y sin el interlocutor de un editor, el contacto entre revisor y reafirmó wee puede ser directo y rápido. Esto significa que la revisión de código es típicamente un proceso rápido, flexible e interactivo. Una buena revisión por pares será totalmente colaborativa, donde una vez que una consulta potencial haya sido marcada por un revisor, las dos partes implicadas pueden trabajar juntos para encontrar una solución. Tampoco es atípico que terceras partes se nieguen durante los hilos de discusión que pueden crecer bajo comentarios de revisión más brillante, voluntariamente o por petición. Todo esto es bueno.

## Evitar ser ambicioso

Las revisiones del código deben esforzarse por ser lo más objetivas posible. Por supuesto, pueden surgir preferencias de codificación objetivas en cualquier proyecto. Sin embargo, estas preferencias siempre que sea posible deberían decidirse de antemano en el nivel del proyecto. Por lo tanto, se puede evitar la situación en la que una opinión podría ser transmitida como un hecho. En su lugar, las sugerencias pueden ser apoyadas apuntando a preferencias documentadas que se han establecido con antelación. Si encuentras preferencias indocumentadas, discutirlos con el equipo de nuevo y aceptar si desea agregar la preferencia a la lista de verificación de su proceso de revisión de código.

## Especificar cambios cruciales versus opcionales

Puede que desee diferenciar entre los cambios que son cruciales y los cambios que son agradables de tener. Por ejemplo, los comentarios que empiezan "Usted podría..." podrían utilizarse para expresar sugerencias que los revisores quieren que el programador tenga en cuenta, pero no son esenciales. Estos pueden ser particularmente útiles para guiar a los programadores inexpertos para escribir mejor código mientras que no están demasiado listos. El codificador puede entonces decidir ignorar estos comentarios no cruciales si no están de acuerdo. Los revisores podrían usar comentarios que comiencen "Deberías..." para especificar aquellos que no son opcionales.

## Revisar código en trozos pequeños

Revisar código en pedazos pequeños incrementalmente a medida que el proyecto está desarrollando puede ayudar a hacer el proceso de revisión de código mucho más eficiente. Es mucho más difícil revisar una enorme base de código una vez que se hayan introducido errores significativos. Si los errores pueden ser detectados a principios del proceso, son mucho más fáciles de arreglar y esto ayudará con el proceso general de desarrollo de código.

Aquí hay algunos consejos generales sobre cómo integrar las revisiones de código en nuestro proceso de trabajo:

- Tómese el tiempo, lea con cuidado. Revisar todo, nada es demasiado corto o simple.
- Intenta tener algo más que hacer y difunde la carga a lo largo de tu día laborable. No revise por más de una hora a la vez, después de eso la tasa de éxito cae bastante rápidamente.
- No revise más de 400 líneas de código (LOC) a la vez, menos de 200 LOC es mejor. No revise más de 500 LOC/hora.

## Esté de acuerdo con tener la discusión fuera de línea

A veces, con revisiones más complejas de código, la comunicación en línea puede llevar a conversaciones improductivas. Establecer una reunión en persona puede ayudar a resolver algunos de los problemas más complicados de una manera más colaborativa y amistosa. Como alternativa, el equipo de desarrollo/investigación puede establecer reuniones regulares para hacer revisiones de código con todos los miembros del equipo. Por ejemplo, vea el enfoque adoptado por un profesor que organiza reuniones de laboratorio [para el código](http://fperez.org/py4science/code_reviews.html).
