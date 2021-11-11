(pd-overview-version)=
# Control de versiones y documentación

Una vez que el proyecto está diseñado, es importante llevar un seguimiento de todos los cambios. Esto le ahorrará mucho tiempo y puede ayudar a otros a entender y reutilizar su investigación - usted tiene un registro de lo que funcionó mejor e información para entender por qué.

(pd-overview-version-experiments)=
## Trabajo experimental

Es necesario escribir todos los detalles sobre su trabajo experimental. Esto permite al lector futuro, a un colega y a tu futuro ser capaz de entender y reproducir todo el trabajo experimental relacionado con tu proyecto.

Una herramienta útil para hacer esto es {ref}`bloc de notas de laboratorio electrónico<rr-open-notebooks>` (ELNs). Los ELNs son una versión digital del cuaderno de papel, con la ventaja adicional de búsqueda, almacenamiento seguro y acceso remoto. También son fáciles de compartir entre los miembros del equipo y colaboradores.

Es importante documentar y compartir la metodología, el análisis y los procedimientos utilizados, así como información específica de los datos.

(pd-overview-version-comp)=
## Trabajo computacional

En la fase activa de un proyecto es importante mantener la consistencia en su código (lea este capítulo sobre {ref}`calidad de código<rr-code-quality>`), así como documentar y crear pruebas para ello.

Documentar tu código ayudará a otros a entender tu trabajo. Algunas herramientas que pueden utilizarse para documentar tu código más fácilmente son:
- "Docstring" en R o Python
- Formato "Javadoc" en Java
- El desarrollo integrado de software (RStudio, Eclipse, VS Code) facilita el proceso de escritura de comentarios y la generación de documentación.

Crear pruebas ayuda a ahorrar tiempo y dinero. Proporcionando una forma de saber si tu código funciona, los errores pueden ser fácilmente abordados por ti y otros.

Para leer más acerca de la prueba de código, vaya al {ref}`capítulo de pruebas de código<rr-testing>`.

(pd-overview-version-vcs)=
## Control de versiones

Grabar todos los cambios realizados mientras se investiga es una parte principal de la investigación reproducible. Esto le ayuda a usted y a otros a entender las decisiones tomadas y hace que el trabajo sea reproducible - usted tendrá toda la información sobre los pasos tomados.

Si trabajamos en un proyecto de colaboración, esto también ayudará a mantener un seguimiento de quién realizó cada cambio.

La ventaja adicional es que todo estará bien organizado, con fácil acceso a la versión actual de su proyecto y formas de buscar cambios realizados en el pasado.

Algunos sistemas para controlar las versiones son:
- Git
- Mercurio
- Subversión

Hay un extenso capítulo sobre {ref}`Sistema de Control de Versiones<rr-vcs>` en la Guía de Investigación Reproducible que puede ser útil en esta etapa.
