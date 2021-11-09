# Evaluación de riesgo: complejidad e impacto

Todos utilizamos las evaluaciones de riesgos todo el tiempo. A veces son procedimientos formales para asegurar que una actividad es segura. pero la mayoría de las veces están pensando en un momento - ¿Es este café demasiado caliente? ¿Llegará un autobús? El software no es diferente, y usar un enfoque de evaluación de riesgos como el descrito a continuación puede realmente ayudar a que su trabajo sea exitoso y sostenible.

## La matriz de riesgo

Una matriz de riesgo es una forma muy popular de cuantificar lo que está pasando con lo que te interesa. Un eje mide la exposición de alguna manera, y el otro el impacto de un error. Cuanto más lejos del origen, más garantías se necesitan para que el riesgo sea aceptable.

```{figure} ../../figures/risk-matrix.png
---
nombre: risk-matrix
alt: Impacto vs matriz de riesgo de complejidad
---
Impacto vs matriz de riesgo de complejidad
```

En nuestro caso, utilizaremos como dos ejes la «complexión» y el «impacto». Algunos estudios de caso ilustran cómo funciona…

Caso 1

> Richard necesita enviar 100 trabajos pequeños al grupo de departamentos, con los nombres de los trabajos variando según un patrón simple. Esto es tedioso y quiere salir fuera y jugar. Por lo tanto, Richard decide escribir un guión corto de shell para enviar todos los trabajos. Pausa unos segundos y pregunta:

> ¿Cuán complicado es esto? Sólo será alrededor de 1 pantalla de texto.

> ¿Qué pasa si sale mal? Los trabajos no se enviarán ni se ejecutarán y recibiré algunos mensajes de correo electrónico fallidos.

> Aquí, Richard decide que tanto la complejidad como el impacto de esta pequeña pieza de software son bajos. Por lo tanto, usar el control de versiones y escribir documentación es desproporcionado en este momento. Él decide hacer una carrera seca haciéndose eco de la línea de envío a la terminal para que pueda darle una rápida comprobación.
> Unas semanas más tarde, alguien en el laboratorio quiere hacer lo mismo. Richard ofrece su guión ya que funcionó bastante bien para él. Las porterías se han movido. Richard se detiene por unos segundos más y reevalúa el riesgo…
> …5 años más tarde El guión de Richard se ha convertido en un gran sistema de control de flujo de trabajo que permite a varias universidades gestionar complejos flujos de trabajo que consisten en miles de puestos de trabajo que se someten a una serie de diferentes recursos de computación. El software ahora tiene una junta formal de proyectos que establece la gobernanza y la dirección del software, asegurar que sea sostenible y satisfacer las necesidades de los 100 usuarios de todo el mundo.

Caso 2...

> Jemma tiene un problema con la visualización de algunos datos. La biblioteca habitual no puede manejar el formato de sus datos. She’s heard about Seth’s Friday afternoon project where he has written a wrapper around this library to solve what seems to be the same problem. Tienen un café y deciden trabajar juntos. Durante este café, toman algunas decisiones sobre cómo van a funcionar juntos con éxito, esta es su evaluación de riesgos. Seth se compromete a salir y mejorar la documentación en línea y añadir algunos ejemplos de casos de uso antes de compartir. Jemma acuerda configurar un repositorio en el que Seth pondrá el código.

> Con el tiempo, más personas comienzan a hacer uso de este software, con peticiones de características que añaden complejidad y cambios en la biblioteca subyacente causando roturas. Jemma y Seth están de acuerdo en que las cosas se están poniendo un poco arriesgadas, porque el impacto de resultados erróneos podría causar problemas en la publicación de los resultados. Por lo tanto, introducen pruebas de integración continuas y un proceso de revisión para garantizar que las cosas sigan siendo sostenibles.

El punto clave de estos estudios de caso es que cada pieza de software tiene necesidades diferentes para ser sostenible, y estos requisitos pueden cambiar con el tiempo. El uso de los conceptos de control de versiones, pruebas, documentación y otros conceptos de sostenibilidad son útiles para la gestión del riesgo. El uso de ninguna de estas herramientas deja su software expuesto a las cosas que van mal, pero utilizar todas ellas desde el principio puede obstaculizar la innovación. El enfoque de evaluación de riesgos le ayuda a encontrar el equilibrio adecuado por ahora. Revisar el tema de vez en cuando, o cuando algo cambie.

## Más sobre la medición de la complejidad

Una medida de la complejidad es el conteo de líneas. Cuantas más líneas tengas más lugares hay para cometer un error. Sin embargo, hay otras cosas que podrían preocuparse. ¿En cuántas bibliotecas dependen? ¿Cuántas funciones hay? Todas ellas miden la complejidad del código. La complejidad también puede tomar otras formas. ¿Cuántos casos de uso hay? ¿Su software de recuento de blob sólo se utiliza para contar los bloques en las biosciences? ¿Hay gente que lo usa para contar las manchas en las imágenes CCTV? ¿En qué tipo de ordenador lo utilizan las personas? ¿CPU? ¿GPU? ¿Raspberry Pi? Echa una vista amplia de tu software.

## Más sobre la medición del impacto

¿Qué sucede cuando el software no funciona? A veces te molesta por unos minutos. Sin embargo, otro software que va mal puede tener enormes consecuencias: la retracción de su papel seminal o incluso la pérdida de vidas. Medir el impacto requiere un buen conocimiento de para qué se está utilizando su software. A veces puede ser difícil hacer un seguimiento de esto hasta que las cosas vayan mal. Sin embargo, uno puede intentar evitarlo en el pasaporte haciendo preguntas como «¿este software que utilizo para el análisis de mi papel es algo bueno?». Una vez más, tenga una amplia visión de su software.
