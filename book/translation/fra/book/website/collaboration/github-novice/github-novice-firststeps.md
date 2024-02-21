(cl-github-novice-firststeps)=
# Premiers pas sur GitHub

Ici, nous fournissons des instructions étape par étape pour commencer avec GitHub.

## 1. Create a GitHub account

Rendez-vous sur [https://github.com/](https://github.com/) et créez un nouveau compte en vous inscrivant sur GitHub box.

## 2. Créer un dépôt

Lorsque vous avez créé un nouveau compte et que vous êtes connecté, vous devez créer un nouveau dépôt.

Un référentiel ou un dépôt est l'espace en ligne où vous stockez tous les documents, données et autres fichiers pour votre projet.

* Pour créer le nouveau dépôt, vous devez cliquer sur le signe + dans le coin supérieur droit (dans la bande noire en haut de votre fenêtre) puis cliquer sur Nouveau dépôt. Cela vous mènera à une page qui ressemble à un formulaire.
* Vous verrez le nom de votre compte et vous devrez renseigner un nom de dépôt à côté de celui-ci.
* Aussi, laissez la case cochée pour « public » (donc votre dépôt est ouvert à tous) puis cochez la case pour créer un « fichier README ».
* Cliquez ensuite sur le bouton vert créer le dépôt en bas.

C'est ce que vous devriez voir maintenant. C'est la page d'accueil de votre dépôt. Le diagramme ci-dessous explique ce que font tous les boutons, onglets et autres choses !

```{figure} ../../figures/github-basic-diagram.jpg
---
nom: github-basic-diagram
alt: Schéma de référentiel annoté après sa création, expliquant les principales fonctionnalités. Les principales caractéristiques sont expliquées dans la légende de la figure.
align: gauche
---
Diagramme annoté de dépôt après sa création de base, expliquant les principales fonctionnalités. Sur le côté gauche de la page web, nous avons les fonctionnalités suivantes :
- **1. Nom d'utilisateur :** Nom d'utilisateur GitHub (compte). Dans cet exemple, le nom d'utilisateur est « EKaroune ».
- **2. Répertoire du projet :** (aussi connu sous le nom de repo). Dans cet exemple, le nom du dépôt est « trial-repo».
- **3. Code :** cet onglet vous ramène à votre page de destination. Il vous montre les dossiers que vous avez faits dans le dépôt.
- **4. Principal:** c'est votre branche de développement par défaut ou branche active de votre référentiel.
- **5. Branche :** version(s) parallèle de votre dépôt.
- **6. fichier README.md :** ce fichier contient des informations de base sur votre projet (dans ce cas, il n'a que le nom du projet : « trial-repo». Lorsque nous prévoyons de créer un site Web, celui-ci sera rendu comme une page d'accueil (frontale) pour votre site.

Sur le côté droit de la page web, nous avons les fonctionnalités suivantes :
- **7. Bouton Code Vert:** cliquez dessus pour télécharger votre dépôt localement.
- **8. Symbole '+' :** où vous pouvez créer un nouveau dépôt, importer des repos et créer de nouveaux tickets.
- **9. Fork:** créer une copie personnelle du dépôt d’un autre utilisateur. Le nombre indique le nombre de forks de votre dépôt actuel.
- **10: Ajouter un fichier:** créer ou télécharger un fichier dans votre dépôt.
- **11: Engagement/symbole horloge :** cliquez pour voir l'historique de ce fichier comme une liste de toutes les modifications (commits) enregistrées à différents points de temps.
- **12: Éditer/Crayon :** Cliquez sur ce symbole crayon pour éditer votre fichier README.md.
```

## 3. Modifier votre fichier README.md

Sauf si vous avez ajouté d'autres fichiers ou inclus un fichier de licence lors de la création du dépôt, vous devriez avoir un fichier dans votre dépôt maintenant - README.md. Nous aurons besoin de modifier ce fichier pour ajouter des informations sur le dépôt. Ce fichier est un fichier Markdown ; vous pouvez le voir car il a « .md » après le nom du fichier. C'est là que vous commencez à utiliser le formatage Markdown. Quoi que vous écriviez dans ce fichier sera affiché sur la page d'accueil de votre projet sur GitHub, alors utilisez-la pour parler de votre projet.

### Naviguer dans l'interface d'édition de GitHub
Pour éditer votre fichier README.md :

* Vous pouvez cliquer sur le symbole crayon en haut à droite de la boîte centrale de votre page de destination.

**Ou**

* Cliquez sur le fichier README.md, puis cliquez sur le symbole crayon.

Vous pouvez maintenant modifier le fichier. Nous discuterons de la façon de sauvegarder vos modifications après quelques pointeurs sur l'écriture d'un bon README.

```{figure} ../../figures/github-readme-before-edit.jpg
---
nom: github-readme-before-edit
alt: diagramme annoté du fichier README.md, si vous cliquez sur le nom du fichier sur votre page de destination. Les principales caractéristiques sont expliquées dans la légende de la figure.
align: gauche
---
Diagramme annoté du fichier README.md, si vous cliquez sur le nom du fichier sur votre page de destination.
- **1. Dépôt et fichier courant :** le nom du dépôt et le nom du fichier que vous visualisez.
- **2. Branche principale :** branche actuellement active ("main" est la branche par défaut). Utiliser pour changer de branches de votre dépôt (si il y a plus de branches précédemment créées).
- **3. Contributeurs:** nombre de contributeurs (utilisateurs) à votre fichier.
- **4. Contenu du fichier README.md :** le contenu de votre fichier README.md apparaît ici. Ce contenu se développera une fois que nous ajouterons plus d'informations.
- **5. Fichier brut:** afficher le fichier texte markdown brut.
- **6. Blame:** afficher la dernière modification faite à chaque ligne du fichier. Il peut être utilisé pour suivre quand et qui a fait des changements et retourner aux anciennes versions du fichier pour corriger les bogues.
- **7. Editer le fichier :** cliquez sur ce crayon pour éditer votre fichier README.md.
- **8. Supprimer le fichier :** cliquer sur la corbeille pour supprimer ce fichier.
```

```{figure} ../../figures/github-readme-after-edit.jpg
---
nom: github-readme-after-edit
alt: diagramme annoté du fichier README.md en mode édition – avant l'édition. Expliqué dans le titre.
align: gauche
---
Diagramme annoté du fichier README.md en mode édition – avant l'édition.
- **1. Aperçu des modifications:** appuyez sur la touche pour voir votre texte affiché (comment il apparaîtra sur GitHub ou sur une page Web).
- **2. Editer le fichier :** appuyer sur cet onglet pour modifier le contenu de votre fichier README.md.
- **3. Ajoutez du contenu à README.md:** écrivez le texte Markdown de votre fichier README.md. Vous n'avez actuellement que le titre du dépôt dans ce fichier.
```

### Conseils pour écrire votre fichier README

* Gardez-le simple! Quand vous travaillez dans n'importe quel domaine, qu'il s'agisse de l'ingénierie logicielle ou de l'astrophysique, vous apprendrez et utiliserez le jargon – des termes qui ont une signification particulière pour votre champ mais qui n’ont probablement aucun sens pour quiconque ne fait pas partie de ce champ. Trop de jargon peut confondre les nouveaux arrivants, donc utilisez un langage simple et définissez tous les termes potentiellement inconnus ici.
* Partagez votre projet avec d'autres - décrivez ce que vous faites maintenant et ce que vous voulez faire à l'avenir.
* Dites aux gens qui vous êtes et comment vous pouvez être contacté.


**REMARQUE : Si vous avez du mal à commencer, il est bon de regarder les fichiers README.md des autres utilisateurs.**

Si vous ne pouvez pas obtenir votre contenu markdown brut pour le rendre comme vous le souhaitez, c'est aussi une bonne idée de trouver un fichier qui a ce que vous voulez, puis de regarder le fichier brut. Vous pouvez copier et coller le contenu du fichier brut d’autres personnes dans votre fichier README.md puis le modifier.

Voici un exemple de fichier README.md vraiment bien formaté : [Application STEMM Role Models](https://github.com/KirstieJane/STEMMRoleModels/blob/gh-pages/README.md)

Si vous cliquez sur le lien ci-dessus, il vous mènera à leur fichier README.file. Vous pouvez l'utiliser comme modèle pour votre fichier README.md.

* Pour regarder le fichier markdown brut, vous devez cliquer sur le bouton brut (en haut à droite de la case blanche).
* Cela vous amène au fichier markdown brut qui est rendu dans un fichier README.md bien formaté sur GitHub.
* Maintenant, il suffit de le copier et de le coller dans l'onglet d'édition de README.md. Vous pouvez maintenant modifier ceci pour votre projet.
* N'oubliez pas de vérifier à quoi il ressemble en cliquant sur l'onglet de prévisualisation.
* Lorsque vous avez terminé l'édition, vous devez faire défiler vers le bas vers le bas de la page et appuyer sur le bouton vert de changement de livraison.

```{figure} ../../figures/github-edited-readme.jpg
---
name : /github-edited-readme
alt: diagramme annoté du fichier README.md en mode édition – avec un modèle ajouté. Les caractéristiques sont expliquées dans la légende de la figure.
align: gauche
---
Diagramme annoté du fichier README.md en mode édition – avec ajout d'un modèle.
- **1. Utiliser MarkDown pour ajouter du contenu à README.md:** le texte Markdown (marqué par « .md » dans l'extension de fichier) pour votre fichier README.md. Cet exemple montre le fichier modèle qui a différentes sections (les en-têtes et les sous-en-têtes sont créés en utilisant un ou plusieurs symboles « #». Reportez-vous à la section {ref}`cohérence de mise en forme du Manuel Communautaire<ch-consistency-formatting-hr-markdown>` pour plus d'informations sur l'utilisation de Markdown.
```
### Valider - ou enregistrer - vos modifications
Valider vos modifications, c'est comme appuyer sur le bouton « Enregistrer » pour un fichier. GitHub ne sauvegardera pas automatiquement vos modifications, il est donc important de ne pas passer cette étape.

Toutes les modifications que vous avez apportées dans le fichier seront déposées dans votre dépôt.

C'est une bonne pratique d'écrire un titre de commit descriptif et une courte description de ce que vous avez fait dans la zone de changement de livraison. Donc quelque chose comme - titre de livraison: « première modification du fichier readme »; description : 'modèle copié de … et édité avec les détails de ce projet'. Cette information sur le commit s'appelle un « message de commit », et le titre du commit vous permettra de parcourir rapidement l'historique des changements pour un fichier (c'est pourquoi leur description est si importante - c'est comme laisser une note utile à votre futur personnel).

Vous pouvez voir une liste de vos commits (ou votre "historique de livraison") en cliquant sur le symbole de l'horloge sur votre page d'accueil ou dans la page pour chaque fichier.

## 4. Ajouter une licence à votre dépôt

Il est important que tout votre travail ait une licence dès le début ou que personne ne puisse la réutiliser. Les licences expliquent aux autres chercheurs comment ils peuvent réutiliser, modifier et remixer votre travail. Aucune licence n'implique que les autres *ne sont pas autorisés* à utiliser votre travail, même avec l'attribution. Il est donc préférable d'inclure une licence qui permet aux gens de savoir ce qu'ils peuvent ou ne peuvent pas faire et comment vous accorder du crédit pour votre travail.

Selon votre terrain, une grande partie de votre travail peut être des documents avec seulement quelques données ou du code. Les licences standards offertes sur GitHub sont les plus appréciées pour les logiciels et ne seront pas vraiment les bonnes pour les documents.

[Les licences Creative commons](https://creativecommons.org/licenses/) sont les meilleures à utiliser à cet effet, et les plus ouvertes sont les CC BY 4.0.

Pour ajouter une licence à votre dépôt, la première chose à faire est de créer un fichier LICENSE.md :

* Pour ce faire, cliquez sur le bouton Ajouter un fichier et cliquez sur Créer un fichier. Cela vous donnera un fichier vide.
* Ensuite, vous devez nommer le fichier, alors appelez-le LICENSE.md. Cela en fait un fichier markdown.
* Vous pouvez trouver toutes les licences créatives dans le lien ci-dessus afin de copier le texte de la licence que vous voulez et ensuite de le coller dans ce fichier.
* N'oubliez pas d'appuyer sur le bouton vert du nouveau fichier de commit en bas et d'écrire un message de commit pour décrire ce que vous avez fait.
* Vous pouvez également ajouter un lien vers la licence en bas de votre fichier README.md. Voici un lien vers un référentiel que vous pouvez copier pour ajouter dans une licence [CC BY 4.0](https://github.com/santisoler/cc-licenses). Il a un fichier texte pour votre LICENSE. d et un bouclier (ou badge) que vous pouvez mettre au bas de votre fichier README.md.

Vous pouvez trouver plus d'informations sur les licences dans le chapitre {ref}`rr-license` de The Turing Way.
