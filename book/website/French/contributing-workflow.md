(ch-contributing-workflow)=
# Flux de travail de la contribution

Que vous écriviez un nouveau contenu ou que vous examiniez les contenus existants, contribuant à _The Turing Way_ englobe généralement les étapes décrites dans cette section. Vous pouvez consulter les recommandations ici afin de vous assurer que vous avez préparé votre contribution de façon adéquate pour examen. Veuillez noter que l'ordre de ces recommandations n'est pas strict et nous vous encourageons à suivre l'approche qui vous convient le mieux.

(gabarit de workflow) =
## Sélectionner un modèle

Une fois que vous avez décidé du type de contenu que vous voulez contribuer à _The Turing Way_, utilisez le modèle [correspondant](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/templates) pour préparer votre contribution.

```{note}
Veuillez noter que nous accueillons avec plaisir les nouvelles contributions du modèle.
Si le chapitre ou les modèles d'études de cas ne correspondent pas à vos besoins, veuillez ouvrir une demande de tirage avec des suggestions pour les améliorer.
Si vous voulez contribuer du contenu pour lequel il n'y a pas de modèle correspondant, vous êtes également encouragé à créer le modèle manquant et à l'ajouter à la collection de modèles.
```

(ch-contributing-workflow-location)=
## Placer les nouveaux fichiers et dossiers dans les emplacements appropriés

_Le dépôt Github de Turing Way_suit une structure de fichier globale où les guides sont des dossiers et les chapitres sont des sous-dossiers à l'intérieur d'eux. De même, les études de cas sont situées à l'intérieur d'un sous-dossier `études de cas` dans les dossiers Guide. Tous les dossiers se trouvent dans le répertoire [`livre/site`](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/website).

Lors de l'écriture d'un nouveau contenu, assurez-vous que les nouveaux fichiers et dossiers que vous créez sont placés de manière appropriée pour préserver la structure de fichier de _La Voie Turing_.

Par exemple, le chapitre [Contrôle de version](https://the-turing-way.netlify.app/reproducible-research/vcs.html) du Guide pour la recherche de reproduction est placé comme suit :

````{admonition} Adding new files and folders
:class: menu déroulant
```
livre\website
Ω
<unk> ── reproduccible-research <---- (dossier pour le Guide de la recherche reproductible)
Enregistrement de la recherche reproducible. d <---- (Page d'atterrissage du Guide)
Ω<unk> <unk> vcs. d <---- (Landing page for the Version Control chapter)
| | new-chapter <---- (Landing page for a new chapter)
Ω文
文<unk> ── vcs (chapter folder)
文| 文vcs-workflow. d
| | | vcs-git. d
| | | vcs-git-commit.md
| | | ...
| | | | vcs-personal-stories.md
文| 文vcs-checklist. d
文| 文vcs-resources. d
文|
| |
| <unk> ── new-chapter (nouveau dossier de chapitres)
| | | ...
|    
<unk> ── project-design <---- (dossier pour le Guide pour la conception du projet)
    文project-design.md
    Ω...
```
````

De nouveaux chapitres dans le Guide pour la recherche de reproduction doivent être ajoutés comme `nouveau chapitre` dans l'exemple ci-dessus.

(ch-contributing-workflow-naming)=
## Nommer correctement les fichiers/dossiers

Veuillez suivre les conventions _The Turing Way's_ pour nommer des fichiers. Avec les noms de fichiers appropriés, d'autres contributeurs peuvent facilement identifier le but et l'emplacement de vos fichiers et les ajouter ou les améliorer si nécessaire.

(ch-contributing-guide-workflow)=
## Suivez les directives de style et de cohérence

Au fur et à mesure que vous écrivez votre chapitre, gardez à l'esprit les recommandations _du style_ [de la Voie Turc](https://the-turing-way.netlify.app/community-handbook/style.html) et [de cohérence](https://the-turing-way.netlify.app/community-handbook/consistency.html). Cela garantit que votre nouveau contenu est accessible et s'adapte au style, à la structure et à la mise en forme du livre.

(ch-contributing-workflow-toc)=
## Ajouter vos nouveaux fichiers à la table des matières du livre

La table des matières à l'échelle du livre vit dans le fichier `_toc.yml` [](https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_toc.yml). Ce fichier structure _The Turing Way_ et définit l'ordre dans lequel les chapitres apparaissent. Les fichiers de votre chapitre doivent être ajoutés au `_toc.yml` comme il se doit.

Par exemple, parce que l'étude de cas [Méthodes statistiques](https://the-turing-way.netlify.app/reproducible-research/case-studies/statistical-methods-manuscript.html) appartient au Guide pour la recherche reproductible, il a été ajouté à la table des matières comme suit:

````{admonition} Updating the book-wide table of contents
:class: dropdown
```

- fichier: reproduccible-research/reproduccible-research
  sections:
...

  - titre : Fichier d'études de cas
    : reproduccible-research/case-studies
    sections:
    - titre : Un manuscrit de méthodes statistiques
      fichier : reproduccible-research/case-studies/statistical-methods-manuscript
```

````

(ch-contributing-workflow-referencing)=
## Référence des sources externes de manière appropriée

Assurez-vous que les sources externes sont correctement référencées et incluses dans le fichier _The Turing Way's_ centralisé bibtex comme recommandé dans le guide de style [](https://the-turing-way.netlify.app/community-handbook/style/style-citing.html)

(ch-contributing-workflow-glossaire)=
## Mettre à jour le glossaire du livre

_Le Turing Way_ maintient un glossaire à l'échelle du livre situé dans son [mot après](https://the-turing-way.netlify.app/afterword/glossary.html). Lors de l'écriture de votre chapitre, [mettez à jour le glossaire à l'échelle du livre](https://the-turing-way.netlify.app/community-handbook/style/style-more-styling.html) avec les termes clés de votre chapitre dont les lecteurs devraient se souvenir.

(ch-contributing-workflow-crosschecking)=
## Cross check your Pull Request

Le contenu des modèles est uniquement destiné à guider et à structurer votre écriture. Veuillez supprimer tous les espaces réservés, conseils et suggestions du modèle de votre chapitre avant de soumettre votre PR pour vérification.
