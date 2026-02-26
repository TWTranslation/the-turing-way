(rr-binderhub-compute)=

# Recursos informáticos

BinderHub es neutral en cuanto al proveedor de servicios de nube, lo que significa que puede desplegarse en cualquier plataforma.
Por lo tanto, el requisito mínimo es una suscripción a una plataforma en la nube de tu elección.

De hecho, BinderHub no depende en absoluto del alojamiento en la nube y puede ser desplegado en un sistema de computación local.

## Kubernetes

[Kubernetes](https://kubernetes.io/) is a system for automating deployment, scaling (making more or fewer copies), and management of containers across a compute cluster (it doesn't have to be cloud-based).
BinderHub utiliza Kubernetes para administrar los recursos solicitados por los usuarios del servicio Binder y para soportar las herramientas que construyen los entornos.

## Helm

[Helm](https://helm.sh/) is a package manager for Kubernetes.
Packages come in the form of _Charts_ which are a set of instructions to deploy, upgrade and manage applications running on a Kubernetes cluster.
Pueden hacer que la instalación y administración de las aplicaciones de Kubernetes sea mucho más fácil y específica para los proyectos que se pueden publicar en línea.
For example, the Helm Chart for BinderHub is available [here](https://jupyterhub.github.io/helm-chart/#development-releases-binderhub).

## repo2docker

[repo2docker](https://repo2docker.readthedocs.io/en/latest/?badge=latest) is a tool that automatically builds a Docker image from a code repository given a configuration file.
Esta imagen Docker contendrá todos los códigos, datos y recursos que aparecen en el repositorio.
Todo el software necesario para ejecutar el código también se preinstalará desde el archivo de configuración.

## JupyterHub

[JupyterHub](https://jupyter.org/hub) is a multi-user server for Jupyter Notebooks and containers alike.
En el contexto de Binder, la función principal de JupyterHub es conectar el navegador del usuario a la instancia de BinderHub que se ejecuta en el clúster de Kubernetes.
Sin embargo, el JupyterHub puede personalizarse aún más para proporcionar un mayor control sobre el funcionamiento del BinderHub.

BinderHub puede ser considerado como una capa delgada que se encuentra encima de repo2docker y JupyterHub, orquestrando sus interacciones y resolviendo URLs.

## ¿Qué sucede cuando se hace clic en un enlace de Binder?

1. El enlace al repositorio es resuelto por BinderHub.
2. BinderHub busca una imagen Docker relacionada con la referencia proporcionada (por ejemplo, el hash del comando git commit, la rama o la etiqueta).
3. **If a Docker image is not found**, BinderHub requests resources from the Kubernetes cluster to run repo2docker to do the following:
   - Obtener el repositorio,
   - Construir una imagen Docker que contenga el software solicitado en el archivo de configuración,
   - Enviar la imagen al registro Docker.
4. BinderHub envía la imagen Docker a JupyterHub.
5. JupyterHub solicita recursos del clúster Kubernetes para servir la imagen Docker.
6. JupyterHub conecta el navegador del usuario con el entorno Docker en ejecución.
7. JupyterHub monitoriza la actividad del contenedor y lo remueve tras un periodo de inactividad.
