(rr-evaluación-motivación)=
# Importancia y beneficios personales

*Cómo esto te ayudará / por qué esto es útil*

Al igual que con [testing](#Testing), un objetivo clave de revisión de código es eliminar errores y malas prácticas de los cambios realizados en un proyecto de software antes de que esos cambios ingresen a la base de código principal. Sin embargo, también tiene otros beneficios directos e indirectos para los proyectos. Éstas se discuten a continuación.

Las revisiones de código son un método eficaz para mejorar la calidad del software. McConnell (2004) sugiere que las pruebas unitarias encuentran aproximadamente el 25% de los defectos, función prueba el 35%, prueba de integración el 45%, y revisión de código el 55-60%. Mientras que significa que ninguno de estos métodos es lo suficientemente bueno por sí solo. y que estos deben combinarse, claramente la revisión de código es una herramienta esencial aquí.

## Tabla de contenidos

- [Capturando errores y elocuentes](#catching-bugs-and-elementary-errors)
- [Mejoras en las pruebas](#improvements-to-testing)
- [Documentación](#documentation)
- [Lectura](#readability)
- [Forma de estilo](#style-enforcement)
- [Conocimiento y cohesión del grupo](#group-knowledge-and-cohesion)

(rr-reviewing-motivation-bugs)=
## Capturando errores y elocuentes

Un objetivo simple del proceso de revisión es atrapar errores y errores elocuentes en los cambios propuestos antes de que se introduzcan en el código del tronco. De esta manera, la revisión de código comparte aspectos con pruebas. Sin embargo, un sólido programa de pruebas debería reducir la importancia de la revisión de código para identificar este tipo de errores directos, ya que las pruebas deben capturarlas antes de que el código lo haga para revisar la etapa. Así que, en principio, esta función de revisión de código debería restringirse a cambios triviales como errores de documentación. En la práctica, sin embargo, la revisión de código actúa como una segunda línea importante de defensa contra todo tipo de errores y errores.

(rr-revisar-mejora-motivaciones)=
## Mejoras en las pruebas

Como se ha señalado anteriormente, una revisión debería, y a menudo lo hace, detectar errores reales en los cambios propuestos de código. Esto, por supuesto, es una señal de que los cambios propuestos no fueron suficientemente probados en primer lugar. Un objetivo principal de la revisión de código es destacar los lugares en el código donde los procesos de prueba existentes o nuevos desarrollos son incongruentes. De esta manera, la revisión del código ayuda a garantizar la salud futura del código base proporcionando una segunda perspectiva sobre qué tipos de pruebas son necesarias - no sólo ahora, pero también bajo escenarios hipotéticos que podrían surgir en el futuro a medida que evolucionara el código.

(rr-revisión-documentación-motivación)=
## Documentación

<!--SiccarPoint notes a whole section on documentation is justified in the book!-->
Una buena documentación<!--la referencia va aquí una vez que existe la sección-->es un componente clave de la reproducibilidad y del software sostenible en general. La revisión del código proporciona otro par de ojos para considerar si la documentación proporcionada junto con los cambios propuestos en el código es adecuada para el propósito. Esto es doblemente valioso, como el revisor que busca desde fuera del proceso de desarrollo puede tener una perspectiva más clara que el programador sobre si la nueva documentación ofrece suficiente información para que un usuario llegue al código por primera vez.

Este tipo de retroalimentación sobre la documentación se aplica igualmente a la documentación de cara al usuario y a los comentarios en línea.

(rr-revisión-motivación-legibilidad)=
## Lectura

En relación con la documentación, la revisión de código también puede ayudar a asegurar que el código sea legible y fácil de entender. Tener un segundo par de ojos puede ayudar a localizar áreas donde el código puede ser difícil de seguir. Cuanto más legible sea tu código, más fácil será para otros desarrolladores reproducir tu código para sus propios propósitos.

(rr-revisión-motivación-cumplimiento)=
## Forma de estilo

Many projects enforce certain {ref}`code style guidelines<rr-code-quality>`, be the widely-adopted standards (for example, [PEP8](https://www.python.org/dev/peps/pep-0008/), the [Google C++ style guide](https://google.github.io/styleguide/cppguide.html)) or more project-specific conventions. [Servicios automatizados](../../code_quality/code_quality#online-services-providing-software-quality-checks) proporcionan una manera conveniente de imponer un estilo de codificación e iniciar la discusión sobre la calidad del código. La revisión del código proporciona una oportunidad para asegurar que todos los cambios propuestos cumplan con las normas mínimas requeridas para el proyecto.

(rr-revisión-conocimiento de motivación)=
## Conocimiento y cohesión del grupo

## Mejora de estilo

Muchos proyectos aplican ciertas pautas de estilo de código [](../../code_quality/code_quality#coding-style), ya sean estándares adoptados ampliamente (por ejemplo, [PEP8](https://www.python.org/dev/peps/pep-0008/), la [guía de estilo de Google C++](https://google.github.io/styleguide/cppguide.html)) o más convenciones específicas de proyectos. [Servicios automatizados](../../code_quality/code_quality#online-services-providing-software-quality-checks) proporcionan una manera conveniente de imponer un estilo de codificación e iniciar la discusión sobre la calidad del código. La revisión del código proporciona una oportunidad para asegurar que todos los cambios propuestos cumplan con las normas mínimas requeridas para el proyecto.


## Conocimiento de grupo y cohesión

Las prácticas de revisión del código proporcionan ventajas significativas más allá de la simple defensa de la salud del código tronco de un proyecto cuando se proponen cambios. La revisión entre pares crea un intercambio bidireccional de información a través de una red entre todos los miembros contribuidores de un equipo. Esto proporciona una transferencia eficaz y orgánica de las mejores prácticas.

Las reseñas llevadas a cabo con el espíritu correcto (ver especialmente [aquí](#Be_nice)) también sirven para un propósito importante a la hora de reunir a los miembros del equipo y crear cohesión de grupo. En particular, las buenas revisiones de los miembros del equipo central del trabajo de los recién llegados a un proyecto pueden ayudar a que esos recién llegados se sientan bienvenidos y apreciados, y alentar su participación continua.
