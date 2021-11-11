(pd-code-estilo-herramientas)=
# Herramientas de estilo de código

Como se ha mencionado anteriormente, hay algunas herramientas automáticas que puedes utilizar para ajustar tu código a las pautas existentes. Estos van desde plugins para paquetes IDEs que "revisen ortografía" tu estilo, y scripts que te hacen lint automáticamente.

## lintr

[lintr](https://cran.r-project.org/web/packages/lintr/lintr.pdf) es un paquete R que revisa tu código usando una variedad de pautas de estilo.  Se puede instalar desde CRAN. La función `lint` toma un nombre de archivo como un argumento y una lista de 'linters' que debería verificar tu código en su lugar. Estos varían desde convenciones de espacios en blanco hasta comprobar que los corchetes de lluvia no tienen sus líneas. La salida proporciona una lista de marcadores con recomendaciones para cambiar el formato de tu código línea por línea lo que significa que es mejor usarlo temprano y a menudo en su proyecto.

```{figure} ../../figures/lintr-output.png
---
height: 500px
name: lintr_output
alt: salida de lintr mostrando recomendaciones para añadir espacio, remover código comentado, remover espacio en blanco de entrenamiento, tener tamaño de caracteres por línea inferior a 80 donde sea necesario en el código de entrada.
---
Un ejemplo de cómo puede ser la salida de lintr para un archivo de entrada con código R.
```

Para más detalles, por favor visite el [repositorio GitHub](https://github.com/jimhester/lintr).

## Autopep8

[Autopep8](https://pypi.org/project/autopep8/) es un módulo Python que puede ejecutarse desde la terminal y formatear automáticamente un archivo a las pautas [pycodestyle](https://github.com/PyCQA/pycodestyle) (antes llamado pep8).  
Está disponible en [pypy](https://pypi.org) y puede ser instalado usando pip.

```
# Install autopep8
$ pip install --upgrade autopep8
```

Puede modificar un archivo ejecutando el siguiente comando:

```
$ autopep8 --in-place --aggressive --aggressive <filename>
```

En cierta medida, el módulo también puede ser utilizado en scripts R!

## Formato automático por negro

[Black](https://black.readthedocs.io/en/stable/) es un paquete de formato automático para Python. Esto significa que automáticamente cambiará el código para que se adhiera a ciertas directrices, como espacios alrededor de los operadores y eliminando espacios en blanco innecesarios. También es consistente, de modo que el código en el que trabajas tú y tus colaboradores se verá el mismo una vez que los formatos negros. No cambia lo que hace el código. Esto puede reducir el tiempo dedicado a hacer los cambios anteriores en el código.
