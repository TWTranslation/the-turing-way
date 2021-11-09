(cm-new-community-techissue)=
# Abordar problemas técnicos

Asegúrate de que también tienes planes para las personas que quieran contribuir a tu proyecto pero que puedan desviar muy rápidamente de tus objetivos originales sin supervisión ni orientación. Si se requieren habilidades o prácticas específicas para que alguien contribuya a su proyecto, usted debería ser capaz de señalar a la gente a los recursos relevantes para que puedan comprometerse con su proyecto eficazmente.

Estas son algunas recomendaciones para preparar su proyecto para abordar problemas técnicos que su equipo o miembros de la comunidad probablemente puedan afrontar.

## Configurar herramientas para habilitar la colaboración

Al escribir la investigación, ya sea del informe final o para compartir los hallazgos preliminares, debería haber una decisión consciente sobre qué software está utilizando para escribir su resultado. Esta decisión afecta a cómo se verá la colaboración en su proyecto. Para evitar posibles barreras a la colaboración, tenga en cuenta los siguientes aspectos:
* **Disponibilidad del software**: Asegúrese de que todos los colaboradores tengan acceso al software y la plataforma que está utilizando, por ejemplo, suscripción de pago o licencia para utilizar software propietario.
* **Habilidades técnicas**: Asegúrese de que todos los colaboradores se sientan cómodos usando el software, por ejemplo, están seguros de editar un archivo escrito en un lenguaje de programación o etiquetado.

Los temas específicos del contexto pueden aparecer dependiendo de los roles y responsabilidades compartidos dentro de un equipo. Por lo tanto, se pueden planificar soluciones potenciales para abordar estas cuestiones, incluyendo proporcionar tutoriales cortos (ver el siguiente punto). Ser consciente de las posibles barreras que el software que usamos puede crear puede conducir a la elección de herramientas y soluciones que funcionen para todos nuestros colaboradores.

## Proporcionar tutoriales breves y concisos

En la mayoría de los proyectos de investigación trabajamos en lo que es urgente ahora lo que podría significar que podríamos pasar por alto lo que es importante a largo plazo. Por ejemplo, podríamos querer probar varios algoritmos en nuestros datos pero no prestar atención al registro sistemático del resultado en una plataforma central a la que otros acceden. Ofrecer capacitación o videos breves pregrabados sobre prácticas recomendadas puede permitir a los miembros de la comunidad trabajar usando un flujo de trabajo estándar o hacerse cargo de algunas tareas de otros.

## La prueba es importante

¡Errar es humano! Y cuando trabajen bajo presión, podrían ser más frecuentes.

Prueba tus códigos y anima a tu comunidad a revisar y probar el código del otro. Además de escribir código que resuelva problemas, deberías enseñar y promover la práctica de [prueba unitaria](http://softwaretestingfundamentals.com/unit-testing/) para probar si las unidades/componentes individuales del software funcionan como se esperaba.

También puede configurar un entorno de {ref}`Integración continua<rr-ci>` para ayudar a automatizar las pruebas en su flujo de trabajo.

Vea la sección de {ref}`prueba <rr-testing>` en la Guía de Investigación Reproducible para más información.

## La reproducibilidad es aún más importante

Una gran cosa para los miembros menos involucrados del equipo es probar constantemente la reproducibilidad de cualquier código/entorno. Hágalo desde el principio y no será una sorpresa más tarde cuando no funcione en el ordenador de otro.

Póngase en contacto con los expertos, especialmente cuando se trata de código antiguo. Contacte con otras comunidades con experiencia específica para ahorrar esfuerzo y tiempo que pueda invertirse en otras tareas. Por ejemplo, gran parte del conocimiento científico se basa en los resultados de FORTRAN, Código C, y Java que ya no se mantiene y, probablemente, no está documentado. Encontrar a alguien con el conocimiento y la experiencia del código heredado para responder a las preguntas que tienen otros desarrolladores será un gran ahorro de tiempo.

Vea el capítulo {ref}`Guía para la Investigación Reproducible <rr>` para más información.

## Compartir código (y datos) temprano

Los desarrolladores deben compartir su código en un repositorio público controlado por versiones (como GitHub y GitLab) y coordinar quién está trabajando en qué característica o arreglar. Especialmente, cuando se ejecutan proyectos urgentes contra el reloj, es crucial no perder tiempo al final de su proyecto en la compilación de los diferentes componentes de su investigación cuando usted puede practicar hacerlo desde el principio.

## Tome nota de los problemas de privacidad

Pregúntese a sí mismo, ¿cómo pueden las personas que necesitan acceder a estos datos? Cómo pueden reutilizar y compartir los datos adecuadamente. Elija una licencia de código abierto apropiada para sus datos, scripts y software. Elija una licencia relevante que garantice la protección de la información sensible como los datos de movimiento y ubicación asuntos de salud personal, información de contacto, nombres, fecha de nacimiento y direcciones personales. Evitar la recopilación de datos personales que no sean necesarios o violar la confidencialidad.
