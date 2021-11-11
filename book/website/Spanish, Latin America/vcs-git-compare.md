(rr-vcs-git-compare)=
# Recuperar y comparar versiones

(rr-vcs-versions-retrieving)=
## Recuperando versiones anteriores

Para cancelar tu último commit (revertir a la versión anterior), ejecuta el siguiente comando:
```
git revert HEAD
```

Este comando crea un nuevo commit que revierte los cambios realizados en la última versión. Si quieres recuperar una versión desde semanas o meses atrás, comienza usando `git log` para encontrar el SHA de la versión que quieres recuperar. Para restablecer todo tu proyecto a esta versión, ejecuta los siguientes comandos:

```
git checkout SHA_of_the_version
```

Si desea la versión antigua de un solo archivo y no la versión anterior del proyecto entero, puedes hacerlo usando el siguiente comando:

 ```
 git checkout SHA_of_the_version -- su_file_name
 ```

(rr-vcs-versions-retrieving-practice)=
### Buena práctica

Los commits deben ser 'atomic', lo que significa que **deben hacer una cosa simple y deben hacerlo completamente**. Por ejemplo, un commit 'atomic' podría estar añadiendo una nueva función o renombrando una variable. Si muchos cambios diferentes a tu proyecto están comprometidos juntos, puede ser difícil solucionar problemas si aparece algún error en esa versión. Además, deshacer todo el compromiso puede echar por tierra un trabajo válido y útil.

Es buena práctica **especificar los archivos a confirmar**, es decir, agregar archivos al área de puesta en escena por nombre (`git add your_file_name`) en lugar de añadir todo (`git add .`). Esto le impide agrupar involuntariamente diferentes cambios juntos. Por ejemplo, si ha hecho un cambio en el archivo A mientras trabaja principalmente en el archivo B, usted puede haber olvidado esto cuando va a confirmar. Con `git add .`, el archivo A se llevaría para el viaje. Si hay varios cambios *no relacionados* que no deben añadirse juntos en un *único archivo* `git add -p your_file_name` le permitirá elegir de forma interactiva qué cambios añadir. Dicho esto, **no necesitas hacer necesariamente commits por archivo** cuando trabajas en múltiples archivos, sino para un solo problema. Por ejemplo, si agregamos una figura a este capítulo aquí, eligiendo uno para llamar la atención de alguien que skimming throughh:

```{figure} ../../figures/flipped-taj-mahal.png
---
nombre: volteado-taj-mahal
alt: Una foto volteada del Taj Mahal para atraer la atención del lector
---
Volteado Taj Mahal
```

se han cambiado dos archivos:

1. En primer lugar, el archivo de figura se añade en el repositorio del proyecto.
2. Luego, se añade una línea en este archivo que hace referencia a la figura, así que se muestra.

Así que dos archivos son afectados, pero "Añadir figura al capítulo de control de versiones" es un único, *atómica* unidad de trabajo, por lo que solo se necesita un commit.

Por último, no confirme nada que se regenere de otros ficheros confirmados en una versión (a menos que sea algo que tomaría horas para regenerar). Archivos generados, como scripts, agarrar su repositorio y puede contener características como marcas de tiempo que pueden causar conflictos de archivos molestos (ver {ref}`rr-vcs-git-merge`). Puede indicar a Git que ignore ciertos archivos creando un archivo llamado `. itignore` e incluyendo nombres del archivo que no necesita almacenar en su repositorio Git. Por ejemplo, los archivos de configuración que podrían cambiar de entorno a entorno deberían ser ignorados.

(rr-vcs-versions-comparing)=
## Comparando versiones

En algún momento, probablemente necesitarás/querrá comparar versiones de un proyecto, por ejemplo, para ver qué versión fue usada para generar un resultado en particular.

Para abordar este problema, utilice la función `git diff` , que toma dos conjuntos de datos de entrada y produce los cambios entre ellos.

`git diff` es una función multi-uso que se ejecuta en fuentes de datos de Git, como commits, ramas, archivos y más. Por defecto, `git diff` le mostrará cualquier cambio no confirmado desde el último commit. Si quieres comparar dos cosas específicas, la sintaxis es:

```
git diff cosa_b
```

Por ejemplo, si desea comparar cómo ha cambiado un archivo entre dos confirmaciones, usa `git log` para obtener los SHAs de esos commits y ejecutar:

```
git diff SHA_a:su_file_name SHA_b:su_file_name
```

O si quisieras comparar dos ramas, sería:

```
git diff branch_name other_branch_name
```

(rr-vcs-versions-comparing-practica)=
### Buenas prácticas

Con un poco de familiaridad, `git diff` se convierte en una herramienta extremadamente potente que puedes usar para rastrear qué archivos han cambiado y cuáles son exactamente esos cambios. Esto es extremadamente valioso para liberar errores y comparar el trabajo realizado por diferentes personas. Ten cuidado de **entender qué es exactamente lo que se compara** y, donde sea posible, **solo compara los archivos relevantes** para lo que te interesa para evitar grandes cantidades de información extraña.
