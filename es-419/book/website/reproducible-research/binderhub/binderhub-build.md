(rr-binderhub-build)=

# Crea tu propio BinderHub

[mybinder.org](https://mybinder.org/) is the free, public BinderHub that hosts almost 100k Binder launches per week.
¿Por qué te gustaría construir el tuyo?

Binder [{term}`def<Binder>`] is an open source project maintained by volunteers and as such they ask that users stay within certain computational limitations in order to keep running costs as low as possible whilst still providing a usable service.
Al alojar tu propio BinderHub, puedes ofrecer a tus usuarios recursos mucho más flexibles y personalizados.

Estas personalizaciones podrían incluir:

- autenticación,
- mayores recursos computacionales por usuario,
- librerías y paquetes personalizados
- permitiendo el acceso a repositorios privados,
- almacenamiento persistente para los usuarios,
- restringir el uso compartido dentro de una determinada institución o equipo.

## Problemas que puedes encontrar al desplegar un BinderHub

Los BinderHubs son cada vez más populares entre las universidades e institutos de investigación.
Esto se debe a que pueden facilitar varias instancias del mismo conjunto de "cuadernos interactivos" (notebooks) para ser usados en un entorno de tutorial o taller.

Si estás desplegando un BinderHub alojado en la nube en nombre de tu organización, puedes necesitar permisos específicos en la suscripción a la plataforma en la nube de tu organización.
Los permisos que necesites variarán según la plataforma en la nube a la que tengas acceso y sus políticas de servicios de "soporte técnico informático" (TI).
At minimum, you'll need to be able to assign [Role Based Access Control (RBAC)](https://docs.microsoft.com/en-us/azure/role-based-access-control/overview) to your resources so they can act autonomously in order to manage user traffic.
