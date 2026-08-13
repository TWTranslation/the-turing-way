(rr-make-debugging)=

# Debugging Makefiles

Al escribir un Makefile, a veces puede ser útil para poder ver los valores de variables para capturar errores o errores en el Makefile. To facilitate
this, Make contains two commands: `info` and `error`, and there is a debug
mode to Make.

With the `info` command you can print the current value of a variable to
stdout, while Make is processing the file. Por ejemplo, en el Makefile de arriba puedes añadir:

```makefile
$(info $$DATA = $(DATA))
```

This will print `DATA = data/action.csv ... data/western.csv`.

With the `error` command you can stop the execution of Make at a certain
point in the Makefile. Esto es útil cuando desea imprimir el valor de una variable y no ejecutar Hacer más:

```makefile
$(error $$DATA = $(DATA))
```

Finally, you can also debug the Makefile by running Make with the debug flag:
`make -d`. Esto imprimirá todas las reglas (incluidas las incorporadas) que hacen intentos para cada uno de los objetivos, y si es necesario o no ejecutar una regla.

If you only want to print the rules that Make will run and not actually run
them, you can use `make -n`. These last two options can also be combined, so
that you see the debug output and Make doesn't run anything: `make -dn`.
