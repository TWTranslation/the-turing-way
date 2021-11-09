(rr-binderhub-computadora)=
# Calcular recursos

BinderHub es neutral en la nube, lo que significa que puede ser desplegado en cualquier plataforma en la nube. Por lo tanto, el requisito mínimo es una suscripción a una plataforma en la nube de tu elección.

De hecho, BinderHub no depende en absoluto del alojamiento en la nube y puede ser desplegado en un sistema de computación local.

## Kubernetes

[Kubernetes](https://kubernetes.io/) es un sistema de despliegue automatizado, escalado (haciendo más o menos copias), y gestión de contenedores a través de un clúster de cómputo (no tiene que estar basado en la nube). BinderHub utiliza Kubernetes para administrar los recursos solicitados por los usuarios del servicio Binder y para soportar las herramientas que construyen los entornos.

## Yelmo

[Helm](https://helm.sh/) es un gestor de paquetes para Kubernetes. Los paquetes vienen en forma de *Cartas* que son un conjunto de instrucciones para desplegar, actualizar y administrar aplicaciones ejecutándose en un clúster de Kubernetes. Pueden hacer que la instalación y administración de las aplicaciones de Kubernetes sea mucho más fácil y específica para los proyectos que se pueden publicar en línea. Por ejemplo, la carta Helm para BinderHub está disponible [aquí](https://jupyterhub.github.io/helm-chart/#development-releases-binderhub).

## repo2docker

[repo2docker](https://repo2docker.readthedocs.io/en/latest/?badge=latest) es una herramienta que automáticamente construye una imagen Docker desde un repositorio de código dado un archivo de configuración. Esta imagen de Docker contendrá todos los códigos, datos y recursos que están listados en el repositorio. Todo el software necesario para ejecutar el código también será preinstalado desde el archivo de configuración.

## JupyterHub

[JupyterHub](https://jupyter.org/hub) es un servidor multiusuario para Jupyter Notebooks y contenedores por igual. En el contexto de Binder, el rol principal de JupyterHub es conectar el navegador del usuario a la instancia de BinderHub que se ejecuta en el clúster de Kubernetes. Sin embargo, el JupyterHub se puede personalizar aún más para proporcionar un mayor control sobre el funcionamiento del BinderHub.

BinderHub puede ser considerado como una capa delgada que se sienta encima de repo2docker y JupyterHub, orchestrando sus interacciones y resolviendo URLs.

## ¿Qué sucede cuando se hace clic en un enlace de enlace?

1. El enlace al repositorio es resuelto por BinderHub.
2. BinderHub busca una imagen Docker relacionada con la referencia proporcionada (por ejemplo, el hash de git commit, rama o tag).
3. **Si una imagen de Docker no se encuentra**, BinderHub solicita recursos del clúster Kubernetes para ejecutar repo2docker para hacer lo siguiente:
   - Obtener el repositorio,
   - Crea una imagen de Docker que contenga el software solicitado en el archivo de configuración,
   - Enviar esa imagen al registro de Docker.
4. BinderHub envía la imagen de Docker a JupyterHub.
5. JupyterHub solicita recursos del clúster Kubernetes para servir la imagen Docker.
6. JupyterHub conecta el navegador del usuario al entorno Docker en ejecución.
7. JupyterHub monitoriza el contenedor para su actividad y lo destruye después de un período de inactividad.
