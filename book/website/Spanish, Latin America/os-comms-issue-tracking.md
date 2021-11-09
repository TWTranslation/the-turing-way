(cm-os-comms-issue-tracking)=
# Seguimiento de problemas

La mayoría de los proyectos de desarrollo de software tienen algún tipo de tablero de incidencias para rastrear fácilmente los problemas actuales del proyecto, como arreglar errores, desplegar nuevas características, o planes de participación de la comunidad. [GitHub](https://github.com) (una plataforma de colaboración muy popular) tiene un [gestor de incidencias integrado](https://guides.github.com/features/issues/) y [tableros del proyecto](https://help.github.com/en/github/managing-your-work-on-github/about-project-boards) donde los problemas pueden ser recolectados para rastrear el progreso hacia un más específico, objetivo de alto nivel.

Esta sección es una discusión acerca de por qué el seguimiento de incidencias es útil y donde puede almacenarlos.

(os-comms-issue-tracking-purpose)=
## ¿Cuál es el propósito de sus problemas?

Hay muchas razones para mantener o rastrear temas relacionados con un proyecto. La plataforma para el seguimiento de incidencias y las características seguidas por esos problemas pueden influir en cómo su comunidad interactúa con su proyecto.

Principalmente, los problemas se utilizan para rastrear informes de errores, solicitudes de características, oportunidades para que los miembros de la comunidad se comprometan, y así sucesivamente, entonces una junta pública le permitirá a su comunidad obtener una visión clara de lo que se está abajo del tubería y cómo pueden participar.

Vamos a examinar las juntas de asuntos centralizadas y descentralizadas/distribuidas y cómo pueden involucrar a su comunidad.

(os-comms-issue-tracking-purpose-issues)=
### Problemas por repositorio (descentralizado/distribuido)

Si su proyecto está dividido en múltiples repositorios, entonces es una buena idea mantener los problemas relacionados específicamente con ese módulo dentro de ese repositorio: un sistema descentralizado. Esto permite a tu comunidad centrar su atención en lo que es importante para ellos.

Este enfoque tiene varios tableros de problemas más pequeños para cada repositorio (o módulo) dentro de su código base. Este método tiene muchos resultados positivos, como:

- El volumen de los problemas es más manejable;
- La mayoría de los contribuyentes sólo necesitan ser conscientes de los problemas relacionados con uno o dos repositorios;
- Los colaboradores pueden suscribirse a notificaciones o actualizaciones sólo desde los repositorios que les interesan;
- Se siente como "divide y vencerás", más gente está trabajando en más aspectos para hacer avanzar el proyecto en su conjunto.

(os-comms-issue-tracking-purpose-issues-case-study)=
#### Estudio de caso: mybinder.org

[mybinder. rg](https://mybinder.org) es una plataforma que facilita a los usuarios compartir fácilmente análisis reproducibles y entornos computacionales entre sí en [Jupyter Notebooks](https://jupyter-notebook.readthedocs.io/en/stable/) a través de la nube. Este proyecto se distribuye entre varios repositorios diferentes, cada uno de ellos una herramienta individual que puede ser usada aisladamente de los demás. Éstas son:

- [repo2docker](https://github.com/jupyter/repo2docker),
- [JupyterHub para Kubernetes](https://github.com/jupyterhub/zero-to-jupyterhub-k8s),
- [BinderHub](https://github.com/jupyterhub/binderhub).

También hay algunas herramientas en el ecosistema de Jupyter que sólo están ligadas a Binder. Herramientas a las que utiliza Binder de proyecto y a las personas asociadas con Binder contribuyen, pero también otras comunidades no relacionadas. Tales herramientas son [JupyterHub](https://github.com/jupyterhub/jupyterhub) y [KubeSpawner](https://github.com/jupyterhub/kubespawner).

Cada uno de estos repositorios contiene cientos de problemas de seguimiento del trabajo en curso que está llevando a cabo la comunidad y el alcance de las futuras direcciones de cada proyecto a seguir.

¿Pueden imaginar ustedes intentar combinar todas estas cuestiones en un solo lugar? Sería muy difícil, si no imposible. para que alguien encuentre lo que está buscando y requeriría un esquema muy inteligente de etiquetas, además de instrucciones para filtrar por etiqueta.

En la experiencia del equipo de Project Binder la mayoría de los miembros de la comunidad contribuyen a uno o dos de estos proyectos. Por lo tanto, un acceso consolidado a todas las cuestiones de todas las partes de trabajo no es una prioridad alta para su comunidad.

Encuentran que tener un seguimiento de problemas distribuidos permite a los miembros de la comunidad que sólo pueden trabajar con JupyterHub contribuir cómodamente sin necesidad de estar familiarizado con todo lo que va a ejecutar [mybinder. rg](https://mybinder.org).

(os-comms-issue-tracking-purpose-issues-case-centralized-issue)=
### Repositorio de Problemas Centralizado

Con un gran proyecto, puede ser temerario reunir todas sus cuestiones en un solo lugar en aras de una gestión más fácil: un sistema centralizado. Si está utilizando problemas para rastrear un servicio central, listas de tareas personalizadas, y respondiendo preguntas como si una tarea es de alta prioridad o si ya está asignada a alguien, entonces realizar un seguimiento en un sistema centralizado es una buena opción y no tiene por qué distribuirse necesariamente a su comunidad más amplia.

Sin embargo, en términos de involucrar a su comunidad, un sistema centralizado de este tipo puede ser problemático. Si sus problemas están en otros lugares, esto puede crear muchas barreras de entrada para los miembros de la comunidad, tales como:

- Los problemas son más difíciles de descubrir;
- Si están alojados en otra plataforma (por ejemplo, el código está en GitHub pero los problemas están en [Asana](https://asana.com/)), es otra herramienta que los miembros de la comunidad necesitan aprender a usar;
- Los asuntos están separados del código que están referenciando.

Un impacto muy grande en la comunidad de tener un tablero de asuntos separado es que cuando la gente visita tu repositorio de código, parece un proyecto inactivo porque no hay problemas ni conversaciones en el lugar donde se aloja el código. Esto puede hacer que los miembros de la comunidad crean que el código ya no está siendo activamente desarrollado/mantenido/soportado y que puede optar por usar otro código base o paquete de software.

(os-comms-issue-tracking-comparative-table)=
## Tabla comparativa

La siguiente tabla compara las características de los repositorios distribuidos y centralizados para un proyecto multi-repositorio.

| Característica                                  | Repositorio centralizado | Repositorios distribuidos |
|:----------------------------------------------- |:------------------------:|:-------------------------:|
| Búsqueda global de incidencias                  |            ✅             |                           |
| Hospedado por la misma plataforma que el código |    ❓(no garantizado)     |             ✅             |
| Filtrar por repositorio                         | ❓(usuarios potenciales*) |             ✅             |
| Suscribirse a actualizaciones relevantes        | ❓(usuarios potenciales)  |             ✅             |
| Fácil de descubrir                              |                          |             ✅             |
| Conectado a la base de código                   |                          |             ✅             |
| Aparece activo a la comunidad                   |                          |             ✅             |
| Volumen manejable                               |                          |             ✅             |

*Usuarios avanzados = Son personas que ya están familiarizadas con una plataforma para conocer los gotchas y trucos que hacen su experiencia más eficiente

## Leyendo más

- Publicación del blog comparando la conveniencia y proximidad de la comunidad de Listas de Correo y Foros: [https://psychcentral.com/blog/mailing-lists-vers)[video] forums-community-convenience-closeness/](https://psychcentral.com/blog/mailing-lists-versus-forums-community-convenience-closeness/)
- Blog publicado por [Tim Head](https://github.com/betatim):  [https://betatim.github.io/posts/though, hts-on-collective-thinking/](https://betatim.github.io/posts/thoughts-on-collective-thinking/)
