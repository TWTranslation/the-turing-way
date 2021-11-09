(rr-ci-options)=
# ¿Qué es la integración continua?

La integración continua (IC) es la práctica de integrar cambios en un proyecto realizado por individuos en una gran mayoría, versión compartida con frecuencia (normalmente múltiples veces por día). El software de CI también se utiliza normalmente para identificar cualquier conflicto y error que sean introducidos por cambios, para que se encuentren y fijen pronto, minimizando el esfuerzo necesario para hacerlo. Las pruebas en ejecución regularmente también evitan que los humanos tengan que hacerlo manualmente. Al informar a los usuarios de errores tan pronto como sea posible a los investigadores (si el proyecto es un proyecto de investigación) no pierden mucho tiempo haciendo trabajos que tal vez deban ser desechados, que puede ser el caso si las pruebas se ejecutan infrequently y los resultados se producen usando código defectuoso.

Este capítulo requiere una fuerte comprensión del control de versiones. Los conceptos centrales que tendrá que recordar son:

- Cómo se puede utilizar para permitir que las personas que colaboran en un solo proyecto combinen su trabajo a través de la fusión
- ¿Cuáles son los conflictos de fusión y las dificultades que pueden presentar
- Qué es GitHub y cómo usarlo

En resumen, si un grupo de investigadores están colaborando en un proyecto, es una buena práctica utilizar el control de versiones para seguir sus cambios a lo largo del tiempo, y combinar su trabajo con regularidad. Si no combinan (integrar) su trabajo con regularidad, entonces cuando lo hagan es probable que sea muy difícil, ya que diferentes personas pueden haber hecho cambios contradictorios.

Integración continua es una práctica de desarrollo de software donde los miembros de un equipo integran su trabajo con frecuencia, en lugar de trabajar de forma aislada y fusionándose en grandes cambios en intervalos inciertos. En IC, por lo general, cada persona se integra al menos diariamente. Cada integración es verificada por una compilación automatizada (generalmente incluyendo pruebas) para detectar errores de integración lo antes posible.

La idea es minimizar el costo de la integración haciéndola una consideración temprana. Los investigadores pueden descubrir conflictos en los límites entre código nuevo y existente antes, mientras que todavía son relativamente fáciles de conciliar. Una vez resuelto el conflicto, el trabajo puede continuar con confianza en que el nuevo código cumple los requisitos de la base existente. El objetivo es construir un software más saludable desarrollando y probando en pequeños incrementos. Muchos equipos descubren que este enfoque conduce a problemas de integración significativamente reducidos y permite que un equipo se desarrolle más rápidamente.

El código de integración frecuentemente no ofrece, por sí solo, ninguna garantía sobre la calidad del nuevo código o funcionalidad. Esto nos lleva al segundo aspecto del IC. Cuando un desarrollador fusiona código en el repositorio principal, los procesos automatizados construyen una versión funcional del proyecto. Después, las suites de prueba se ejecutan contra la nueva versión para comprobar si se introdujo algún error. Si la construcción o la fase de prueba fallan, el equipo será avisado para que puedan trabajar para solucionar el problema. Es más fácil corregir un error en algo que escribió hace unos minutos que algo que escribió ayer (o la semana pasada, o el último mes).

Al asegurarse de que su código se construye y se prueba regularmente CI ayuda a los investigadores a demostrar que su código hace lo que dice que hace, y que lo hace correctamente. Por lo general, los servidores de integración continua también permitirán ejecutar trabajos de compilación y prueba en momentos específicos. para que se pueda hacer un trabajo cron [](https://en.wikipedia.org/wiki/Cron), nightly-build-and-test, así como un trabajo de construcción y prueba bajo demanda.


## ¿Cuáles son las opciones para los proveedores de servicios de IC?

Hay muchos proveedores de servicios de CI, como GitHub Actions y Travis CI. Cada uno de estos servicios tiene sus propias ventajas y desventajas. En esta sección le ofrecemos un breve resumen con enlaces a ejemplos para ayudarle a seleccionar el más adecuado para usted.

 - [Acciones de GitHub](https://help.github.com/en/actions), para algunos ejemplos ver las [guías de idioma y framework](https://help.github.com/en/actions/language-and-framework-guides) y [este tutorial](https://github.com/NLESC-JCER/ci_for_science#-github-actions).
 - [Círculo CI](https://circleci.com/), para algunos ejemplos ver [aquí](https://circleci.com/docs/2.0/project-walkthrough/) y [aquí](https://circleci.com/docs/2.0/hello-world/).
 - [GitLab CI](https://docs.gitlab.com/ee/ci/), para algunos ejemplos los [ejemplos de GitLab CI](https://docs.gitlab.com/ee/ci/examples/README.html) y [este tutorial](https://github.com/NLESC-JCER/ci_for_science#-gitlab-ci).
 - [Azure Pipelines](https://azure.microsoft.com/en-us/services/devops/pipelines/), para algunos ejemplos vea la [página de soporte al ecosistema](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/?view=azure-devops) y [este tutorial](https://github.com/trallard/ci-research).
 - [Jenkins](https://www.jenkins.io/), para algunos ejemplos ver [este tutorial](https://www.jenkins.io/doc/tutorials/)
 - [Travis CI](https://travis-ci.com/), para algunos ejemplos el [tutorial de Travis](https://docs.travis-ci.com/user/tutorial/).

Puede encontrar una lista más extensa de proveedores de servicios de CI [aquí](https://www.software.ac.uk/resources/guides/hosted-continuous-integration).
