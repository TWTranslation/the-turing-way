(rr-binderhub-inntroduction)=

# Introducción a BinderHub

[BinderHub](https://binderhub.readthedocs.io/en/latest/index.html) is a cloud-based technology that can launch a repository of code (from GitHub, GitLab, and others) in a browser window such that the code can be executed and interacted with.
Se genera una URL única que permite compartir fácilmente el código interactivo.

El objetivo de estas instancias de Binder es promover la reproducibilidad en los proyectos de investigación, animando a los investigadores a documentar sus dependencias de software y a producir entornos divertidos e interactivos.

Binder, como interfaz de usuario, es útil para la reproducibilidad porque el código necesita ser controlado por la versión y el entorno computacional necesita ser documentado para beneficiarse de la funcionalidad de Binder.
Cada cambio en el repositorio de código también fuerza una nueva construcción de la instancia de Binder.
Esto actúa como un proxy para la integración continua del entorno computacional, ya que la instancia de Binder se romperá si el archivo de configuración no se actualiza.

Learn more about Continuous Integration {ref}`here<rr-ci>`.

## ¿Cómo funciona un BinderHub?

BinderHub se apoya en diferentes herramientas y recursos para crear y lanzar las instancias de Binder.

For more information, see this [high-level explanation of the BinderHub architecture](https://binderhub.readthedocs.io/en/latest/overview.html).
