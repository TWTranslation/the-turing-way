(rr-binderhub-build)=
# Construye tu propio BinderHub

[mybinder.org](https://mybinder.org/) es el BinderHub público gratuito, que alberga casi 100k de lanzamientos por semana. ¿Por qué quieres construir tu propia?

Binder [{term}`def<Binder>`] es un proyecto de código abierto mantenido por los voluntarios y como tal solicitan que los usuarios permanezcan dentro de ciertas limitaciones computacionales para mantener los costos de ejecución lo más bajos posible mientras siguen prestando un servicio utilizable. Al alojar su propio BinderHub, usted puede ofrecer a sus usuarios recursos mucho más flexibles y personalizados.

Estas personalizaciones podrían incluir:

- autenticación,
- mayores recursos computacionales por usuario,
- paquetes y pilas de librería bespoke,
- permitiendo el acceso a repositorios privados,
- almacenamiento persistente para los usuarios,
- restringir compartir dentro de una determinada institución o equipo.

## Problemas que puede afrontar al desplegar un BinderHub

BinderHubs es cada vez más popular entre las universidades y los institutos de investigación. Esto se debe a que pueden facilitar múltiples instancias del mismo conjunto de cuadernos para su uso en un tutorial o configuración del taller.

Si está desplegando un BinderHub alojado en la nube en nombre de su organización, puede que necesite permisos específicos en la suscripción a la plataforma en la nube de su organización. Los permisos que necesita varían en función de la plataforma de nube a la que tenga acceso y de sus políticas de servicios de TI. Como mínimo, necesitarás asignar [Control de Acceso Basado en Rol (RBAC)](https://docs.microsoft.com/en-us/azure/role-based-access-control/overview) a tus recursos para que puedan actuar de forma autónoma con el fin de gestionar el tráfico de usuarios.
