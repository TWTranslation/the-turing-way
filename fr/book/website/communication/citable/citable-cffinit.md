(cm-citable-cffinit)=

# Create a `CITATION.cff` using `cffinit`

`cffinit` is a web application which helps users create a `CITATION.cff` file.
The application provides guidance for each field of the [CFF schema](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md) and does the validation automatically.
When there are issues, `cffinit` will provide a visual feedback on relevant fields.

Dans les sections suivantes, vous trouverez des détails sur chaque étape du processus.

To get started, visit [`cffinit`](https://citation-file-format.github.io/cff-initializer-javascript/) and click on the "Create" button to continue to the **Start** screen.

```{figure} ../../../figures/gifs/cffinit-0.gif
---
name: cffinit-0
width: 80%
alt: Landing page of cffinit.
---
Landing page of cffinit. [^cffinitversion]
```

[^cffinitversion]: All screen captures in this section refer to `cffinit` v2.0.0.

## Début

On the first page of the application, enter the title of your work, write a message to indicate how you want your software to be mentioned, and select whether you are creating a `CITATION.cff` file for software or a dataset.

```{figure} ../../../figures/gifs/cffinit-1.gif
---
name: cffinit-1
width: 80%
alt: First page of the application, for Title, Message and Type. Fields are empty.
---
First page of the application, for Title, Message and Type. [^cffinitversion]
```

You can see the preview of the generated `CITATION.cff` file on the right.

S'il y a des problèmes dans un des champs, ils seront mis en évidence et les messages d'erreur seront affichés en rouge.
When the generated `CITATION.cff` file is not valid, the preview widget will have a red border.

```{note}
As title, message and author are required fields by the schema, these fields will be highlighted until you provide them.
```

Click next to continue to the **Authors** screen.

```{figure} ../../../figures/gifs/cffinit-1-filled.gif
---
name: cffinit-1-filled
width: 80%
alt: First page of the form, for Title, Message and Type. Fields are filled.
---
First page of the form, for Title, Message and Type. Fields are filled. [^cffinitversion]
```

## Auteurs

The CFF schema requires at least one author in the `CITATION.cff` file.
Cliquez sur le bouton "Ajouter auteur" pour ouvrir un formulaire pour le faire.
Remplissez les champs pertinents pour les auteurs.
L'ajout d'ORCID pour les auteurs est fortement recommandé.
See {ref}`cm-citable-orcid` to learn more about ORCID.

```{figure} ../../../figures/gifs/cffinit-2.gif
---
name: cffinit-2
width: 80%
alt: Second page of the form, for Authors.
---
Second page of the form, for Authors. [^cffinitversion]
```

```{figure} ../../../figures/gifs/cffinit-2-add-author.gif
---
name: cffinit-2-add-author
width: 80%
alt: Second page of the form, for Authors. Author addition in progress.
---
Second page of the form, for Authors. Author addition in progress. [^cffinitversion]
```

After adding one author, you have the minimum required information for a valid `CITATION.cff` file.
Ajouter plus d'auteurs si nécessaire.
Cliquez ensuite sur suivant pour continuer.

```{figure} ../../../figures/gifs/cffinit-2-filled.gif
---
name: cffinit-2-filled
width: 80%
alt: Second page of the form, for Authors. One author filled.
---
Second page of the form, for Authors. One author filled. [^cffinitversion]
```

## Minimal `CITATION.cff` file

Bien joué !
Now your `CITATION.cff` file meets the minimum requirements.
Dans cet écran, vous pouvez télécharger le fichier généré ou le copier à partir du widget de prévisualisation.
Nous vous recommandons fortement d'ajouter plus d'informations.
Cliquez sur le bouton "Ajouter plus" pour ajouter plus de champs à votre fichier de citation pour le rendre encore meilleur.

```{figure} ../../../figures/gifs/cffinit-3.gif
---
name: cffinit-3
width: 80%
alt: Last page of the minimal form.
---
Last page of the minimal form. [^cffinitversion]
```

## Champs supplémentaires

Tous les champs supplémentaires sont optionnels, mais il est recommandé de remplir les champs les plus pertinents pour votre travail.

```{note}
If you decide not to continue further, you can press the "Finish" button to skip all remaining steps and go to the final screen.
```

Sur cet écran, vous verrez de nouvelles étapes dans le stepper.
Voici une brève description des écrans supplémentaires :

- Identifiants : Ajouter des DOIs, des URL et des identifiants du patrimoine du logiciel ;
- Ressources connexes : URL des dépôts liés au travail et à son site Web ;
- Résumé : Un bref résumé du travail ;
- Mots-clés : Mots-clés décrivant le travail;
- Licence : La licence sous laquelle l'œuvre est disponible ;
- Spécifique à la version : Informations sur une version ou une livraison spécifique, y compris la date de la publication.

```{figure} ../../../figures/gifs/cffinit-3-advanced.gif
---
name: cffinit-3-advanced
width: 80%
alt: Third page of the form. More options appear on the left.
---
Third page of the form. More options appear on the left. [^cffinitversion]
```

Cliquez sur le bouton suivant pour commencer à ajouter des champs supplémentaires.

## Ecran final

Bravo que tu as réussi à passer à l'écran final!
After adding all the relevant information, you will have a validated `CITATION.cff` file.
Téléchargez ou copiez-le et ajoutez-le à votre dépôt public pour obtenir le crédit que vous méritez!

```{figure} ../../../figures/gifs/cffinit-final.gif
---
name: cffinit-final
width: 80%
alt: Last page of the complete form.
---
Last page of the complete form. [^cffinitversion]
```
