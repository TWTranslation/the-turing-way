(cm-citable-cffinit)=
# Créez un `CITATION.cff` en utilisant `cffinit`

`cffinit` est une application web qui aide les utilisateurs à créer un fichier `CITATION.cff`. L'application fournit des conseils pour chaque champ du schéma [CFF](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md) et effectue la validation automatiquement. Lorsqu'il y a des problèmes, `cffinit` fournira un retour visuel sur les champs pertinents.

Dans les sections suivantes, vous trouverez des détails sur chaque étape du processus.

Pour commencer, visitez [`cffinit`](https://citation-file-format.github.io/cff-initializer-javascript/) et cliquez sur le bouton "Créer" pour continuer à l'écran **Démarrer**.

```{figure} ../../figures/gifs/cffinit-0.gif
---
nom : cffinit-0
largeur : 80%
alt : Page d'accueil de cffinit.
---
Page d'accueil de cffinit. [^cffinitversion]
```

## Début

Sur la première page de l'application, entrez le titre de votre travail, écrivez un message pour indiquer comment vous voulez que votre logiciel soit mentionné, et sélectionnez si vous créez une CITATION `. ff` fichier pour un logiciel ou un jeu de données.

```{figure} ../../figures/gifs/cffinit-1.gif
---
nom : cffinit-1
largeur : 80%
alt : Première page de l'application, pour Titre, Message et Type. Les champs sont vides.
---
Première page de l'application, pour Titre, Message et Type. [^cffinitversion]
```

Vous pouvez voir l'aperçu du fichier généré `CITATION.cff` sur la droite.

S'il y a des problèmes dans un des champs, ils seront mis en évidence et les messages d'erreur seront affichés en rouge. Lorsque le fichier `CITATION.cff` généré n'est pas valide, le widget d'aperçu aura une bordure rouge.

```{note}
Comme le titre, le message et l'auteur sont des champs obligatoires par le schéma, ces champs seront mis en évidence jusqu'à ce que vous les fournissiez.
```

Cliquez sur le bouton suivant pour continuer à l'écran **Auteurs**.

```{figure} ../../figures/gifs/cffinit-1-filled.gif
---
nom : cffinit-1-rempli
largeur: 80%
alt : Première page du formulaire, pour Titre, Message et Type. Les champs sont remplis.
---
Première page du formulaire, pour le titre, le message et le type. Les champs sont remplis. [^cffinitversion]
```

## Auteurs

Le schéma CFF nécessite au moins un auteur dans le fichier `CITATION.cff`. Cliquez sur le bouton "Ajouter auteur" pour ouvrir un formulaire pour le faire. Remplissez les champs pertinents pour les auteurs. L'ajout d'ORCID pour les auteurs est fortement recommandé. Voir {ref}`cm-citable-orcid` pour en savoir plus sur l'ORCID.

```{figure} ../../figures/gifs/cffinit-2.gif
---
nom : cffinit-2
largeur : 80%
alt : Seconde page de la forme, pour auteurs.
---
Deuxième page du formulaire, pour les auteurs. [^cffinitversion]
```

```{figure} ../../figures/gifs/cffinit-2-add-author.gif
---
nom : cffinit-2-add-author
largeur : 80%
alt : Seconde page de la forme, pour auteurs. Ajout de l'auteur en cours.
---
Deuxième page du formulaire, pour les auteurs. Ajout de l'auteur en cours. [^cffinitversion]
```

Après avoir ajouté un auteur, vous avez le minimum d'informations requises pour un fichier `CITATION.cff` valide. Ajouter plus d'auteurs si nécessaire. Cliquez ensuite sur suivant pour continuer.

```{figure} ../../figures/gifs/cffinit-2-filled.gif
---
nom : cffinit-2-rempli
largeur: 80%
alt : Seconde page du formulaire, pour auteurs. Un auteur a rempli.
---
Deuxième page du formulaire, pour les auteurs. Un auteur a rempli. [^cffinitversion]
```

## Fichier minimal `CITATION.cff`

Bien joué ! Maintenant votre fichier `CITATION.cff` répond aux exigences minimales. Dans cet écran, vous pouvez télécharger le fichier généré ou le copier à partir du widget de prévisualisation. Nous vous recommandons fortement d'ajouter plus d'informations. Cliquez sur le bouton "Ajouter plus" pour ajouter plus de champs à votre fichier de citation pour le rendre encore meilleur.

```{figure} ../../figures/gifs/cffinit-3.gif
---
nom : cffinit-3
largeur : 80%
alt : Dernière page de la forme minimale.
---
Dernière page de la forme minimale. [^cffinitversion]
```

## Champs supplémentaires

Tous les champs supplémentaires sont optionnels, mais il est recommandé de remplir les champs les plus pertinents pour votre travail.

```{note}
Si vous décidez de ne pas continuer davantage, vous pouvez appuyer sur le bouton « Terminer » pour sauter toutes les étapes restantes et aller à l'écran final.
```

Sur cet écran, vous verrez de nouvelles étapes dans le stepper. Voici une brève description des écrans supplémentaires :
- Identifiants : Ajouter des DOIs, des URL et des identifiants du patrimoine du logiciel ;
- Ressources connexes : URL des dépôts liés au travail et à son site Web ;
- Résumé : Un bref résumé du travail ;
- Mots-clés : Mots-clés décrivant le travail;
- Licence : La licence sous laquelle l'œuvre est disponible ;
- Spécifique à la version : Informations sur une version ou une livraison spécifique, y compris la date de la publication.

```{figure} ../../figures/gifs/cffinit-3-advanced.gif
---
nom : cffinit-3-advanced
largeur : 80%
alt : Troisième page de la forme. Plus d'options apparaissent sur la gauche.
---
Troisième page du formulaire. Plus d'options apparaissent sur la gauche. [^cffinitversion]
```

Cliquez sur le bouton suivant pour commencer à ajouter des champs supplémentaires.

## Ecran final

Bravo que tu as réussi à passer à l'écran final! Après avoir ajouté toutes les informations pertinentes, vous aurez un fichier `CITATION.cff` validé. Téléchargez ou copiez-le et ajoutez-le à votre dépôt public pour obtenir le crédit que vous méritez!

```{figure} ../../figures/gifs/cffinit-final.gif
---
nom : cffinit-finale
largeur : 80%
alt : Dernière page du formulaire complet.
---
Dernière page du formulaire complet. [^cffinitversion]
```
