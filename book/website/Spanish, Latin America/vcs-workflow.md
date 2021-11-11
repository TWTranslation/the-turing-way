(rr-vcs-workflow)=
# Flujo de trabajo general

El control de versiones es un enfoque sistemático para registrar cambios realizados en un archivo, o conjunto de archivos, con el tiempo. Esto le permite a usted y a sus colaboradores rastrear el historial, ver qué cambió y recordar versiones específicas más tarde cuando sea necesario. Un procedimiento típico para usar el control de versiones es el siguiente:

1. Crear archivos - estos pueden contener texto, código o ambos.
2. Trabaja en estos archivos, cambiando, eliminando o añadiendo contenido nuevo.
3. Crear una instantánea del estado del archivo (también conocido como versión) en este momento.

Este proceso de creación de una instantánea se describe de forma diferente en diferentes programas de control de versiones. Por ejemplo, Git lo describe como "un commit". Algunos sistemas lo llaman "un punto de tiempo" o "un punto de control"; y esto se denomina "guardar tu trabajo" en otros casos como en [Google docs](https://docs.google.com/) o [HackMD](http://hackmd.io/).

A medida que vas guardando tu trabajo añadiendo cambios, cada vez haces más instantáneas. Puede pensar que estas versiones guardan las versiones de estos archivos mientras documentan su historia. Si necesita volver a una versión anterior de un archivo debido a un error, o si ha cambiado de opinión sobre una actualización anterior, puede acceder al archivo en su versión preferida, o devolver todo su proyecto a un estado anterior.

A continuación se muestra una ilustración de esto.

```{figure} ../../figures/main-branch.png
---
name: main-branch
alt: Una ilustración de una rama principal
---
Una ilustración de una rama principal
```

En muchos sistemas de control de versiones, podrá añadir un comentario cada vez que guarde una nueva versión. Estos comentarios deben ser claros y concisos para que sea fácil entender qué cambios se propusieron y qué actualizaciones se hicieron en una versión. Esto asegura que es fácil encontrar lo que buscas cuando necesites volver a una versión anterior. Sus colaboradores le darán las gracias, pero también las futuras versiones de usted mismo.

(rrr-vcs-workflow-branches)=
## Desarrollo no lineal de tu proyecto con "Ramas"

Así que tienes tu proyecto y quieres añadir algo nuevo o probar algo antes de reflejar los cambios en la carpeta principal del proyecto. Para añadir algo nuevo, puedes continuar editando tus archivos y guardarlos con los cambios propuestos. Supongamos que desea intentar algo sin reflejar los cambios en el repositorio central. En ese caso, puede utilizar la función de "sucursal" de sistemas de control de versiones más avanzados como Git. Una rama crea una copia local del repositorio principal donde puede trabajar y probar nuevos cambios. Cualquier trabajo que realices en tu sucursal no se reflejará en tu proyecto principal (referido como tu sucursal principal) para que permanezca seguro y libre de errores. Al mismo tiempo, usted puede probar sus ideas y solucionar problemas en una sucursal local.

Cuando estés contento con los nuevos cambios, puedes presentarlos al proyecto principal. La característica de fusión en Git permite que las líneas de desarrollo independientes en una sucursal local se integren en la sucursal principal.

```{figure} ../../figures/one-branch.png
---
name: one-branch
alt: Una ilustración de un desarrollo y rama principal en git
---
Una ilustración de un desarrollo y una rama principal en git.
```

Puede tener más de una rama de su copia principal. Si una de sus sucursales termina sin funcionar, puede abandonarla o eliminarla sin afectar a la rama principal de su proyecto.

```{figure} ../../figures/two-branches.png
---
nombre: dos ramas
alt: Una ilustración de dos ramas de desarrollo y una rama principal en git
---
Dos ramas de desarrollo y una rama principal en git.
```

Si quieres, puedes crear ramas a partir de ramas (y ramas fuera de esas ramas, etc.).

```{figure} ../../figures/sub-branch.png
---
nombre: sub-branch1
alt: Una ilustración de una rama de desarrollo en git.
---
Una rama de desarrollo en git.
```

No importa cuántas ramas tengas, puedes acceder a las versiones anteriores que hayas hecho en cualquiera de ellas. Si tienes curiosidad por saber cómo usar esta característica en la práctica, encontrarás más detalles a continuación algunas secciones.
