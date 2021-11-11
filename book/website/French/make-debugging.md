(rr-make-debugging)=
# Débogage des fichiers Makefiles

Lors de l'écriture d'un Makefile, il peut parfois être utile de pouvoir voir les valeurs des variables pour attraper des erreurs ou des bogues dans le Makefile. Pour faciliter ceci, Make contient deux commandes : `info` et `erreur`, et il y a un mode debug pour Make.

Avec la commande `info` vous pouvez afficher la valeur actuelle d'une variable à stdout, pendant que Make traite le fichier. Par exemple, dans le Makefile au-dessus de vous pouvez ajouter :

```makefile
$(info $$DATA = $(DATA))
```

Cela affichera `DATA = data/action.csv ... data/western.csv`.

Avec la commande `error` vous pouvez arrêter l'exécution de Make à un certain point dans le Makefile. Ceci est utile lorsque vous voulez afficher la valeur d'une variable et ne pas lancer Make further :

```makefile
$(erreur $$DATA = $(DATA))
```

Enfin, vous pouvez également déboguer le Makefile en exécutant Make avec l'option de débogage : `make -d`. Cela affichera toutes les règles (y compris les règles intégrées) qui font des essais pour chacune des cibles, et si une règle doit être exécutée ou non.

Si vous voulez seulement imprimer les règles qui Make will s'exécutera et ne les exécutera pas réellement , vous pouvez utiliser `make -n`. Ces deux dernières options peuvent également être combinées, donc que vous voyez la sortie de débogage et Make ne tourne rien : `make -dn`.
