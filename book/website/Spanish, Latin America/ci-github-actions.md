(rr-ci-github-actions)=
# Integración continua con acciones de GitHub

Esta sección le guiará a través de la configuración básica de integración continua (CI) usando **GitHub Actions (GHA)**. GHA es un sistema de automatización de tareas totalmente integrado con GitHub. En otras palabras, es una API que orchestriza cualquier flujo de trabajo basado en cualquier evento. Aunque hay muchos proveedores de servicios de CI, GHA hace más fácil que nunca incorporar CI en sus repositorios. Proporciona una forma flexible de automatizar casi todos los aspectos del flujo de trabajo de tu proyecto. Aquí están sólo algunos ejemplos de casos de uso de las acciones de GitHub:

- Prueba automática del software
- Generar informes del estado de cualquier cambio en el repositorio
- Respuesta a los activadores de flujo de trabajo usando etiquetas, incidencias, menciones especiales y más
- Activando revisiones de código y pull requests
- Gestión de ramas

Las acciones de GitHub son unidades de eventos, lo que significa que responde a cualquier evento (Ejemplos: pull request (PR) creado, se creó) y activa una acción (Ejemplos: añade una etiqueta, ejecuta pruebas, ordena). Cualquier colección de estas acciones se llama un flujo de trabajo. En la siguiente sección se describe una descripción más detallada de este vocabulario relacionado con GitHub.

```{figure} ../../figures/github-actions.jpg
---
ancho: 700px
align: nombre del centro
: acciones de Github
alt: un diagrama que describe cómo la acción de GitHub escucha un evento (por ejemplo, `PR` creado, problema creado, PR fusionado) y luego desencadena un trabajo que puede estar probando, ordenando, etiquetando o desplegando.
---
_The Turing Way_ ilustración del proyecto por Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```
## Vocabulario relacionado con GitHub

### 1. Flujo de trabajo

**El flujo de trabajo** es una unidad de automatización de principio a fin. Consiste en todos los aspectos que deben tenerse en cuenta durante la automatización, incluyendo qué evento puede desencadenar la automatización. El flujo de trabajo puede ser usado para construir, test, paquete, lanzar, o desplegar un proyecto en GitHub. Está hecho de múltiples trabajos que se forman a partir de pasos como se muestra en el diagrama general de abajo.

```{figure} ../../figures/ci-01.png
---
name: ContinuousIntegration-Nov20
alt: Una ilustración de cómo funciona la integración continua con múltiples trabajos y acciones trabajando juntos para alimentar una ilustración de pasos para mostrar la fusión en la versión principal.
---
A la izquierda: proyecto _The Turing Way_ ilustración por Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807). A la derecha: Diagrama general de los conceptos más importantes de Acciones de GitHub, adaptado desde [morioh.com](https://morioh.com/p/aadcfe6cac57).
```

### 2. Job

Un **trabajo** se define como un conjunto de pasos secuenciales ejecutados en el mismo runner. Un flujo de trabajo puede acumularse de uno o varios trabajos, y puede ejecutarse en paralelo (por defecto) o secuencialmente.

### 3. Paso

Un paso **** representa una tarea individual. Un paso podría ser una acción u otra unidad de comandos, como ejecutar un script Python o imprimir algo en la consola.

### 4. Acciones

Un GitHub **Acción** es una pieza de automatización escrita de una manera que es compatible con los flujos de trabajo. Las acciones pueden ser escritas por [GitHub](https://github.com/actions), por la comunidad [de código abierto](https://github.com/sdras/awesome-actions), ¡o puedes escribirlas tú mismo!

## Comenzando con la acción de GitHub

Acciones de GitHub utiliza la sintaxis YAML y se almacena en un directorio llamado `.github/workflows` en el repositorio. Puede usar un flujo de trabajo con plantillas o crear el suyo propio.


### 1- Usar plantilla de acciones de GitHub

Si quieres empezar con acciones de GitHub, puede comenzar haciendo clic en la pestaña "Acciones" en el repositorio donde desea crear un flujo de trabajo, como se muestra a continuación. En la pestaña "Acciones", encontrará flujos de trabajo de CI populares, que pueden ayudar a implementar o automatizar algunas tareas en el repositorio.

```{figure} ../../figures/gifs/start_ghactions.gif
---
width: 600px
align: centro
nombre: GitHub action template
alt: Un gif que muestra donde puedes encontrar la plantilla de acciones de GitHub en tu repositorio de Github.
---
```
Puede elegir cualquiera de estos flujos de trabajo iniciales y personalizarlos aún más.  Una explicación para construir bloques dentro del flujo de trabajo se describe en una sección posterior.


### 2- Usar plantillas específicas de bibliotecas.


La plantilla de Github Action no es el único kit de inicio disponible; hay plantillas específicas de bibliotecas para el idioma de interés. Por ejemplo, puede usar el paquete  {usethis} en R para crear una plantilla para paquetes R ejecutando `usethis::use_github_action_check_standard()`. Esto generará acciones de GitHub para ejecutar comprobaciones de CRAN después de cada commit o pull request. ¡Eso es todo lo que tienes que hacer!


### 3- Utilizar la configuración de otros proyectos como inspriración

Muchas bibliotecas de código abierto bien mantenidas y proyectos establecidos usan Acciones de GitHub para su CI. Eche un vistazo a las listas de verificación sobre solicitudes de extracción de estos proyectos para inspiración e ideas; a continuación revisando sus archivos de configuración CI. En la mayoría de los casos, su licencia permitirá copiar los bits que funcionarían en su caso. La ventaja de este enfoque es utilizar algunos enfoques que ya están funcionando.

Por ejemplo:

- El flujo de trabajo de la Vía Turística para [construir el libro Turing Way y proporcionar una vista previa para las pull requests](https://github.com/alan-turing-institute/the-turing-way/blob/main/.github/workflows/ci.yml)
- Una matriz de pruebas en [3 sistemas operativos y múltiples versiones de Python para el paquete Python NetworkX](https://github.com/networkx/networkx/blob/main/.github/workflows/test.yml)
- Una configuración más compleja de probar la compilación [en múltiples circunstancias para el paquete Python Numpy](https://github.com/numpy/numpy/blob/main/.github/workflows/build_test.yml)


En la siguiente sección, explicaremos los bloques de construcción para el flujo de trabajo.

<!-- (I'll explain each vocab separately using diagrams made with adobe illustrator) -->
