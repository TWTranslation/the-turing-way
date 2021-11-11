(rr-vcs-git-ramas)=
# Ramas de Git

Cuando trabajas en un proyecto, individual o colaborativamente, puedes encontrarte con los siguientes escenarios:

- Si añade una nueva característica a su proyecto, corre el riesgo de romper accidentalmente su código de trabajo mientras pone a prueba la característica. Esto causaría problemas inesperados a los usuarios activos de su proyecto, incluso si el único usuario activo es usted.
- Cuando usted colabora con otros, y cada uno trabaja simultáneamente en la rama principal, puede haber mucha confusión y cambios conflictivos.
- Algún código/característica puede no ser interesante para todos. Es posible que tenga que haber una forma de permitir que se haga un nuevo trabajo en un proyecto protegiendo al mismo tiempo el trabajo que ya se ha hecho.

Las ramas de git son extremadamente valiosas al abordar cualquiera de estos problemas. Para cada proyecto Git, por defecto, tiene una rama llamada 'main' donde se registran todos los commits. La característica de sucursal de Git nos permite crear una copia de un proyecto en el que podemos trabajar y continuar haciendo compromisos sin integrarlos en la rama principal de inmediato. Mientras tanto, uno puede continuar haciendo commits en la rama principal, que no se ve afectado por los cambios realizados en otras ramas. Una vez que estés contento con lo que estabas trabajando en una sucursal, puede fusionarlo en su rama principal (o de hecho en cualquier otra rama). La combinación estará cubierta en el subcapítulo {ref}`rr-vcs-git-merge`.

Si prueba una característica en una rama que no funciona, puede eliminarla o abandonarla (por ejemplo, Característica B en el diagrama de abajo) en lugar de pasar tiempo desescogiendo los cambios si usted estaba haciendo todo su trabajo en la rama principal. Puedes tener tantas ramas fuera de las ramas como desees (por ejemplo, Función A-1).

El uso de ramas mantiene el código de trabajo a salvo, especialmente en colaboraciones. Cada colaborador puede tener su propia rama o ramas que sólo se fusionan en el proyecto principal cuando están listos.

```{figure} ../../figures/sub-branch.png
---
name: sub-branch
alt: Una ilustración de ramificación en Git. Se muestran cuatro ramas nombradas principal: Característica A, Característica B, y Característica A-1. La característica A y B son ramas de la rama principal, mientras que la Feature A-1 es una rama hecha de Feature A.
---
Una ilustración de ramificación en Git
```

Puedes crear una rama y cambiar a ella utilizando:
```
git checkout -b name_of_su_nuevo_rama
```

Para cambiar entre ramas, utilice el siguiente comando:
```
git checkout name_of_the_rama
```

Debes comprometer cualquier trabajo que tengas en curso antes de poder cambiar a otra rama.

Puedes ver todas las ramas de tu proyecto utilizando:

```
rama git
```
Esto da la salida como una lista con un asterisco junto a la rama en la que está. También puedes usar `git status` si has olvidado qué rama estás activada.

Si decides deshacerte de una rama puedes eliminarla con:

```
rama git -D nombre_de_la_rama
```
(rr-vcs-ramas-práctica)=
## Buenas prácticas

Las ramas deben utilizarse para **mantener limpia la rama principal**. Es decir, el principal sólo debe contener trabajos completos, probados, y que pertenecen correctamente a la versión principal del proyecto. De manera similar, deberías intentar mantener las ramas individuales lo más limpias posible **solo añadiendo una nueva característica por rama**. Esto es porque si estás trabajando en varias características, Algunos pueden estar terminados y listos para fusionarse en principal, mientras que otros todavía están en desarrollo. Mantener limpias sus ramas significa hacer cambios relacionados con la característica en la rama de la característica. Dale a tus ramas **nombres sensatos**, "new_feature" está muy bien hasta que empieces a desarrollar una nueva característica en otra rama.

## Tutorial interactivo

[Learn Git Branching](https://learngitbranching.js.org/) es un proyecto para proporcionar una forma interactiva de aprender Git. Pasar a través de sus tutoriales proporcionará una experiencia sustancial con los comandos git y las técnicas de manipulación de ramas más usadas.
