(rr-binderhub-inntroduction)=
# Introducción a BinderHub

[BinderHub](https://binderhub.readthedocs.io/en/latest/index.html) es una tecnología basada en la nube que puede lanzar un repositorio de código (desde GitHub, GitLab, y otros) en una ventana del navegador tal que el código se puede ejecutar e interactuar con. Se genera una URL única que permite compartir fácilmente el código interactivo.

El propósito de estas instancias de Binder es promover la reproducibilidad en proyectos de investigación animando a los investigadores a documentar sus dependencias de software y producir diversión, ¡entornos interactivos!

Binder, como interfaz de usuario, es útil para la reproducibilidad porque el código necesita ser controlado por la versión y el entorno computacional necesita ser documentado para beneficiarse de la funcionalidad de Binder. Cada cambio en el repositorio de código también fuerza una nueva compilación de la instancia de Binder. Esto actúa como un proxy para la integración continua del entorno computacional ya que la instancia de Binder se romperá si el archivo de configuración no se actualiza.

Más información sobre la integración continua {ref}`aquí<rr-ci>`.

## ¿Cómo funciona un BinderHub?

BinderHub depende de diferentes herramientas y recursos para crear y lanzar las instancias de Binder .

Para más información, vea esta [explicación de alto nivel de la arquitectura BinderHub](https://binderhub.readthedocs.io/en/latest/overview.html).
