(rr-ci-recursos)=
# Lista de control y recursos

## Checklist

- Tienes un proyecto en el que colaboras al menos con otra persona
- Poner el proyecto en GitHub
- Tener miembros del proyecto comprometidos regularmente con su trabajo en este repositorio central
- Ese proyecto debería tener al menos algunas pruebas
- Escribe un archivo `ci.yml` que:
  - Debe estar dentro de `.github/workflows`
  - Define el nombre del evento de GitHub que desencadena el flujo de trabajo usando `en la tecla` del YMAL.
  - Define una máquina host específica en la que ejecutar el trabajo usando `jobs` y `runs-on`.
  - Incluye código para instalar cualquier dependencia necesaria para ejecutar el proyecto en un paso before_install
  - Contiene un script para ejecutar las pruebas del proyecto
- Commit el archivo `ci.yml` al repositorio GitHub del proyecto
- Cada vez que un nuevo commit es empujado Travis ejecutará las pruebas y devolverá los resultados. Si estos reportan que un commit causa que las pruebas/pruebas fallen, entonces encuentra y soluciona el problema tan pronto como sea posible

## Qué aprender a continuación

Si todavía no ha leído el capítulo de pruebas se sugiere hacerlo para aprender más sobre los diferentes tipos de pruebas y sus beneficios con el fin de aprovechar al máximo el CI.

## Definiciones/glosario

**Integración continua:** El proceso de combinar regularmente el trabajo de los miembros del proyecto en una versión centralizada. También llamado CI. El software de CI normalmente ejecuta pruebas en la versión integrada de un proyecto para identificar conflictos y errores introducidos por la integración.

**Construcción:** Un grupo de trabajos. Por ejemplo, una compilación podría tener dos trabajos, cada uno de los cuales prueba un proyecto con una versión diferente de un lenguaje de programación. Una construcción termina cuando todos sus trabajos están terminados.

**Entorno computacional:** El entorno donde se ejecuta un proyecto, incluyendo el sistema operativo, el software instalado en él y las versiones de ambos.

**GitHub:** Una plataforma de control de versiones muy utilizada.

**Acciones de GitHub:** Es un servicio CI/CD que se ejecuta en repos de GitHub.

**Flujos de trabajo** Son archivos YAML almacenados en el directorio _.github/workflows_ de un repositorio.

**Acción** Es un paquete que puede importar y usar en su **flujo de trabajo**. GitHub proporciona un **[Mercado de Acciones](https://github.com/marketplace?type=actions)** para encontrar acciones a usar en los flujos de trabajo.

**Job** Es una máquina virtual que ejecuta una serie de **pasos**. **Los trabajos** son paralelizados por defecto, pero **los pasos** son secuenciales por defecto.

## Tutoriales prácticos

- Para empezar con las Acciones de GitHub, Padok proporciona [un tutorial práctico](https://github.com/padok-team/github-actions-tutorial) donde puedes construir un flujo de trabajo que prueba automáticamente, compila, publica e implementa un microservicio simple.
- GitHub Learning Lab también ofrece una guía interactiva para [proyectos prácticos para aprender acciones de GitHub](https://lab.github.com/githubtraining/github-actions:-continuous-integration).

## Referencias

- [Qué es CI](https://github.com/travis-ci/docs-travis-ci-com/blob/master/user/for-beginners.md) **MIT**
- [SSI blog](https://software.ac.uk/using-continuous-integration-build-and-test-your-software?_ga=2.231776223.1391442519.1547641475-1644026160.1541158284) **Creative Commons Attribution Non-Commercial 2.5 Licencia**
- [La diferencia entre integración continua, despliegue continuo y entrega continua](https://www.digitalocean.com/community/tutorials/an-introduction-to-continuous-integration-delivery-and-deployment) **Licencia Internacional Creative Commons Attribution-NonCommercial-ShareAlike 4.0**
- [CI con python](https://docs.python-guide.org/scenarios/ci/) **Attribution-NonCommercial-ShareAlike 3.0 Unported**
- [Empezando con Acciones de GitHub: conceptos y tutorial](https://www.padok.fr/en/blog/github-actions)
- [Tutorial CI/CD usando Acciones de GitHub](https://dev.to/michaelcurrin/intro-tutorial-to-ci-cd-with-github-actions-2ba8)
- [Creando una acción de contenedor Docker](https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action)

### Materiales utilizados: ¿Qué son las acciones de Github y cómo funciona?

- [Hoja de Acciones de GitHub](https://resources.github.com/whitepapers/GitHub-Actions-Cheat-sheet/)
- [Documentos de GitHub: Acciones - Conceptos básicos](https://docs.github.com/en/actions/getting-started-with-github-actions/core-concepts-for-github-actions)
- [Documentos de GitHub: Acciones - Configuración y gestión de flujos de trabajo](https://docs.github.com/en/actions/configuring-and-managing-workflows)

## Agradecimientos

Gracias a David Jones del grupo de la Universidad de Sheffield RSE por sus útiles debates.
