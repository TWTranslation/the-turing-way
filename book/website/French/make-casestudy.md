(rr-make-casestudy-rp)=
# Étude de cas : Papier reproductible en utilisant Make

Dans le tutoriel ci-dessus, nous avons utilisé les évaluations de films IMDB pour différents genres comme exemples de données. Ces données ont été obtenues à partir d'un jeu de données [partagé sur Kaggle](https://www.kaggle.com/orgesleka/imdbmovies#imdb.csv) en tant que fichier CSV. Le fichier ressemble à ceci :

```text
fn,tid,title,wordsInTitle,url,imdbRating,ratingCount,duration,year,type,nrOfWins,nrOfNominations,nrOfPhotos,nrOfNewsArticles,nrOfUserReviews,nrOfGenre,Action,Adult,Adventure,Animation,Biography,Comedy,Crime,Documentary,Drama,Family,Fantasy,FilmNoir,GameShow,History,Horror,Music,Musical,Mystery,News,RealityTV,Romance,SciFi,Short,Sport,TalkShow,Thriller,War,Western
titles01/tt0012349,tt0012349,Der Vagabund und das Kind (1921),der vagabund und das kind,http://www.imdb.com/title/tt0012349/,8.4,40550,3240,1921,video.movie,1,0,19,96,85,3,0,0,0,0,0,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
titles01/tt0015864,tt0015864,Goldrausch (1925),goldrausch,http://www.imdb.com/title/tt0015864/,8.3,45319,5700,1925,video.movie,2,1,35,110,122,3,0,0,1,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
titles01/tt0017136,tt0017136,Metropolis (1927),metropolis,http://www.imdb.com/title/tt0017136/,8.4,81007,9180,1927,video.movie,3,4,67,428,376,2,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0
titles01/tt0017925,tt0017925,Der General (1926),der general,http://www.imdb.com/title/tt0017925/,8.3,37521,6420,1926,video.movie,1,1,53,123,219,3,1,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
```

En surface, cela ressemble à un fichier CSV normal, quand vous essayez de l'ouvrir avec la bibliothèque Python CSV, ou Pandas, ou R `read_csv`, ou même `readr:read_csv`, les données ne sont pas chargées correctement. Cela arrive parce que le fichier CSV utilise un caractère d'échappement `\` pour les noms de films qui ont des virgules dans eux et que les lecteurs CSV ne détectent pas automatiquement cette variation au format CSV. Il s'avère que c'est un problème assez courant pour les chercheurs de données : les fichiers CSV sont souvent salissants et utilisent un *dialecte*peu commun : comme des délimiteurs étranges et caractères de guillemets rares.  Collectivement, les chercheurs de données perdent assez de temps sur ces problèmes de querelles de données où une intervention manuelle est nécessaire. Mais ce problème n'est pas aussi facile à résoudre : pour un ordinateur, un fichier CSV est simplement une longue chaîne de caractères et chaque dialecte vous donnera *un tableau* Comment donc déterminer le dialecte avec précision en général?

Récemment, les chercheurs de l'Institut Alan Turing ont présenté une méthode qui atteint 97% de précision sur un large corpus de fichiers CSV, avec une amélioration de 21% par rapport aux approches existantes sur les fichiers CSV non standard. This research was made reproducible through the use of Make and is available through an online repository: [https://github.com/alan-turing-institute/CSV_Wrangling](https://github.com/alan-turing-institute/CSV_Wrangling).

Ci-dessous nous allons décrire brièvement à quoi ressemble le fichier Makefile pour un tel projet .  Pour le fichier complet, veuillez consulter le dépôt. Le fichier Makefile se compose de de plusieurs sections :

1. Collecte de données: parce que les données sont collectées à partir de sources publiques, le dépôt contient un script Python qui permet à n'importe qui de télécharger les données via une simple commande `make data`.

2. Tous les chiffres, tableaux et constantes utilisés dans le papier sont générés en fonction des résultats des expériences. Pour faciliter la recréation de tous les résultats d'un certain type, `. Les cibles HONY` sont incluses qui dépendent de tous les résultats de ce type (pour que vous puissiez exécuter `faire des chiffres`). Les règles pour ces sorties suivent le même modèle que celles pour les figures dans le tutoriel ci-dessus.  Les tables sont créées en tant que fichiers LaTeX afin qu'elles puissent être directement incluses dans la source LaTeX du manuscrit.

3. Les règles pour les résultats de détection suivent une signature spécifique :

   ```makefile
   $(OUT_DETECT)/out_sniffer_%.json: $(OUT_PREPROCESS)/all_files_%.txt
    python $(SCRIPT_DIR)/run_detector.py sniffer $(DETECTOR_OPTS) $<$@
   ```

   Le symbole `%` est utilisé pour créer des sorties pour les deux sources de fichiers CSV avec une seule règle dans {ref}`rrr-make-examples-patternrules` et la règle utilise dans {ref}`rr-make-examples-automaticvar` pour extraire les entrées et noms de fichiers de sortie.

4. Certaines des règles de nettoyage supprimeront les fichiers de sortie qui prennent un certain temps pour créer.  Par conséquent, ceux-ci dépendent d'une cible spéciale `check_clean` que demande à l'utilisateur de confirmer avant de continuer :

   ```makefile
   check_clean:
    @echo -n "Êtes-vous sûr(e) ? [y/N]" && lire ans && [ $$ans == y ]
   ```

Il est important de souligner que ce fichier n'a pas été créé en une seule fois, mais qu'il a été construit de manière itérative . Le Makefile a commencé comme un moyen d'exécuter plusieurs méthodes de détection dialectes sur une collection de fichiers d'entrée et s'est progressivement développé pour inclure la création de figures et de tables à partir des fichiers de résultats. Ainsi, le conseil pour utilisant Make for reproduccibility est de *commencer petit et commencer tôt*.

Le Makefile publié dans le référentiel ne contient pas le papier, mais ce *est* inclus dans le Makefile interne et suit la même structure que le rapport `. df` fichier dans le tutoriel ci-dessus. Cela s'est avéré particulièrement utile pour la collaboration car seul un seul dépôt devait être partagé qui contient le code, les résultats et le manuscrit.
