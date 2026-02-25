(rr-make-debugging)=

# Débogage des fichiers Makefiles

Lors de l'écriture d'un Makefile, il peut parfois être utile de pouvoir voir les valeurs des variables pour attraper des erreurs ou des bogues dans le Makefile. To facilitate
this, Make contains two commands: `info` and `error`, and there is a debug
mode to Make.

With the `info` command you can print the current value of a variable to
stdout, while Make is processing the file. Par exemple, dans le Makefile au-dessus de vous pouvez ajouter :

```makefile
$(info $$DATA = $(DATA))
```

This will print `DATA = data/action.csv ... data/western.csv`.

With the `error` command you can stop the execution of Make at a certain
point in the Makefile. Ceci est utile lorsque vous voulez afficher la valeur d'une variable et ne pas lancer Make further :

```makefile
$(error $$DATA = $(DATA))
```

Finally, you can also debug the Makefile by running Make with the debug flag:
`make -d`. Cela affichera toutes les règles (y compris les règles intégrées) qui font des essais pour chacune des cibles, et si une règle doit être exécutée ou non.

If you only want to print the rules that Make will run and not actually run
them, you can use `make -n`. These last two options can also be combined, so
that you see the debug output and Make doesn't run anything: `make -dn`.
