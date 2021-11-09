(rr-make-debugging)=
# Depuración de Makefiles

Al escribir un Makefile, a veces puede ser útil para poder ver los valores de variables para capturar errores o errores en el Makefile. Para facilitar esto, Make contiene dos comandos: `info` y `error`, y hay un modo depuración para Make.

Con el comando `info` puedes imprimir el valor actual de una variable a stdout, mientras Make está procesando el archivo. Por ejemplo, en el Makefile de arriba puedes añadir:

```makefile
$(info $$DATA = $(DATA))
```

Esto imprimirá `DATA = data/action.csv ... data/western.csv`.

Con el comando `error` puedes detener la ejecución de Make en cierto punto en el Makefile. Esto es útil cuando desea imprimir el valor de una variable y no ejecutar Hacer más:

```makefile
$(error $$DATA = $(DATA))
```

Finalmente, también puede depurar el Makefile ejecutando Make con la bandera de depuración: `make -d`. Esto imprimirá todas las reglas (incluidas las incorporadas) que hacen intentos para cada uno de los objetivos, y si es necesario o no ejecutar una regla.

Si solo quieres imprimir las reglas que Make se ejecutarán y no se ejecutarán , puedes usar `make -n`. Estas últimas dos opciones también se pueden combinar, así que que vea la salida de depuración y haga que no se ejecute nada: `make -dn`.
