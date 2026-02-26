(cl-github-novice-firststeps)=

# Premiers pas sur GitHub

Ici, nous fournissons des instructions étape par étape pour commencer avec GitHub.

## 1. Create a GitHub account

Go to [https://github.com/](https://github.com/) and create a new account using the sign up to GitHub box.

## 2. Créer un dépôt

Lorsque vous avez créé un nouveau compte et que vous êtes connecté, vous devez créer un nouveau dépôt.

Un référentiel ou un dépôt est l'espace en ligne où vous stockez tous les documents, données et autres fichiers pour votre projet.

- Pour créer le nouveau dépôt, vous devez cliquer sur le signe + dans le coin supérieur droit (dans la bande noire en haut de votre fenêtre) puis cliquer sur Nouveau dépôt. Cela vous mènera à une page qui ressemble à un formulaire.
- Vous verrez le nom de votre compte et vous devrez renseigner un nom de dépôt à côté de celui-ci.
- Aussi, laissez la case cochée pour « public » (donc votre dépôt est ouvert à tous) puis cochez la case pour créer un « fichier README ».
- Cliquez ensuite sur le bouton vert créer le dépôt en bas.

C'est ce que vous devriez voir maintenant.
C'est la page d'accueil de votre dépôt.
Le diagramme ci-dessous explique ce que font tous les boutons, onglets et autres choses !

```{figure} ../../../figures/github-basic-diagram.*
---
name: github-basic-diagram
alt: Annotated diagram of repository after its creation, explaining the main features. The main features are explained in the figure legend.
align: left
---
Annotated diagram of repository after its basic creation, explaining the main features. On the left side of the webpage we have the following features:
- **1. Username:** GitHub user’s name (account). In this example, the username is “EKaroune”.
- **2. Repository:** project directory (also known as repo). In this example, the repository name is “trial-repo”.
- **3. Code:** this tab brings you back to your landing page. It shows you the folders that you have made in the repo.
- **4. Main:** this is your default development branch or active branch of your repository.
- **5. Branch:** parallel version(s) of your repository.
- **6. `README.md` file:** this file contains basic information about your project (in this case it only has the project name: “trial-repo”. When we plan to make a website, this will be rendered as a landing (front) page for your site.

On the right side of the webpage we have the following features:
- **7. Green Code button:** click it to download your repository locally.
- **8. '+' symbol:** where you can create new repository, import repos and create new issues.
- **9. Fork:** create a personal copy of another user’s repo. The number shows how many forks there are of your current repository.
- **10: Add file:** create or upload a file to your repository.
- **11: Commits/clock symbol:** click to see the history of this file as a list of all the edits (commits) saved at different time points.
- **12: Edit/Pencil symbol:** click this pencil symbol to edit your README.md file.
```

## 3. Edit your `README.md` file

Sauf si vous avez ajouté d'autres fichiers ou inclus un fichier de licence lors de la création du dépôt, vous devriez avoir un fichier dans votre dépôt maintenant - README.md.
We'll need to edit this file to add information about the repo.
This file is a {term}`Markdown` file; you can see this because it has “.md” after the name of the file.
This is where you start to use the {term}`Markdown` formatting.
Quoi que vous écriviez dans ce fichier sera affiché sur la page d'accueil de votre projet sur GitHub, alors utilisez-la pour parler de votre projet.

### Naviguer dans l'interface d'édition de GitHub

To edit your `README.md` file:

- Vous pouvez cliquer sur le symbole crayon en haut à droite de la boîte centrale de votre page de destination.

**Or**

- Click on the `README.md` file and then click the pencil symbol.

Vous pouvez maintenant modifier le fichier.
Nous discuterons de la façon de sauvegarder vos modifications après quelques pointeurs sur l'écriture d'un bon README.

```{figure} ../../../figures/github-readme-before-edit.*
---
name: github-readme-before-edit
alt: Annotated diagram of README.md file, if you click on the file name on your landing page. The main features are explained in the figure legend.
align: left
---
Annotated diagram of README.md file, if you click on the file name on your landing page.
- **1. Repository and current file:** the repo name and the name of the file you are viewing.
- **2. Main branch:** currently active branch ("main" is the default). Use to change to different branches of your repo (if there are more branches previously created).
- **3. Contributors:** number of contributors (users) to your file.
- **4. README.md file content:** the content of your README.md file appears here. This content will expand once we add more information..
- **5. Raw file:** view the raw {term}`Markdown` text file.
- **6. Blame:** view the last modification made to each line of the file. It can be used to track when and who made changes and go back to older versions of the file to fix bugs.
- **7. Edit file:** click this pencil to edit your README.md file.
- **8. Delete file:** click the bin to delete this file.
```

```{figure} ../../../figures/github-readme-after-edit.*
---
name: github-readme-after-edit
alt: Annotated diagram of README.md file in edit mode – before editing. Explained in the title.
align: left
---
Annotated diagram of README.md file in edit mode – before editing.
- **1. Preview changes:** press to see your text rendered (how it would appear on GitHub or on a web page).
- **2. Edit file:** press this tab to edit the content of your README.md file.
- **3. Add content to README.md:** write the {term}`Markdown` text for your README.md file. You currently only have the repository title in this file.
```

### Conseils pour écrire votre fichier README

- Gardez-le simple! Quand vous travaillez dans n'importe quel domaine, qu'il s'agisse de l'ingénierie logicielle ou de l'astrophysique, vous apprendrez et utiliserez le jargon – des termes qui ont une signification particulière pour votre champ mais qui n’ont probablement aucun sens pour quiconque ne fait pas partie de ce champ. Trop de jargon peut confondre les nouveaux arrivants, donc utilisez un langage simple et définissez tous les termes potentiellement inconnus ici.
- Partagez votre projet avec d'autres - décrivez ce que vous faites maintenant et ce que vous voulez faire à l'avenir.
- Dites aux gens qui vous êtes et comment vous pouvez être contacté.

**NOTE: If you’re having trouble getting started, it’s a good idea to look at other peoples' `README.md` files.**

If you can’t get your raw {term}`Markdown` content to render in the way you want, it is also a good idea to find a file that has what you want and then look at the raw file.
You can copy and paste other people’s raw file content into your `README.md` file and then edit it.

Here is an example of a really well formatted `README.md` file: [STEMM Role Models App](https://github.com/KirstieJane/STEMMRoleModels/blob/gh-pages/README.md)

If you click the link above, it will take you to their README file. You can use this as a template for your `README.md` file.

- To look at the raw {term}`Markdown` file you need to click on the raw button (top right of the white box).
- This takes you to the {term}`Markdown` raw file that is rendered into a nicely formatted `README.md` file on GitHub.
- Now just copy and paste it into your `README.md` edit tab. Vous pouvez maintenant modifier ceci pour votre projet.
- N'oubliez pas de vérifier à quoi il ressemble en cliquant sur l'onglet de prévisualisation.
- Lorsque vous avez terminé l'édition, vous devez faire défiler vers le bas vers le bas de la page et appuyer sur le bouton vert de changement de livraison.

```{figure} ../../../figures/github-edited-readme.*
---
name: /github-edited-readme
alt: Annotated diagram of README.md file in edit mode – with a template added. Features are explained in the figure legend.
align: left
---
Annotated diagram of README.md file in edit mode – with a template added.
- **1. Using {term}`Markdown` to add content to README.md:** the Markdown (denoted by ‘.md’ in the file extension) text for your README.md file. This example shows the template file that has different sections (headers and subheaders are created by using one or more of ‘#’ symbol. See the {ref}`formatting consistency section of the Community Handbook<ch-consistency-formatting-hr-markdown>` for some more information on using Markdown.
```

### Valider - ou enregistrer - vos modifications

Valider vos modifications, c'est comme appuyer sur le bouton « Enregistrer » pour un fichier.
GitHub ne sauvegardera pas automatiquement vos modifications, il est donc important de ne pas passer cette étape.

Toutes les modifications que vous avez apportées dans le fichier seront déposées dans votre dépôt.

C'est une bonne pratique d'écrire un titre de commit descriptif et une courte description de ce que vous avez fait dans la zone de changement de livraison.
So something like - commit title: ‘first edit of the readme file'; description: 'copied template from … and edited it with the details of this project’.
Cette information sur le commit s'appelle un « message de commit », et le titre du commit vous permettra de parcourir rapidement l'historique des changements pour un fichier (c'est pourquoi leur description est si importante - c'est comme laisser une note utile à votre futur personnel).

Vous pouvez voir une liste de vos commits (ou votre "historique de livraison") en cliquant sur le symbole de l'horloge sur votre page d'accueil ou dans la page pour chaque fichier.

## 4. Ajouter une licence à votre dépôt

Il est important que tout votre travail ait une licence dès le début ou que personne ne puisse la réutiliser. Les licences expliquent aux autres chercheurs comment ils peuvent réutiliser, modifier et remixer votre travail.
No license implies that others are _not_ allowed to use your work, even with attribution.
Il est donc préférable d'inclure une licence qui permet aux gens de savoir ce qu'ils peuvent ou ne peuvent pas faire et comment vous accorder du crédit pour votre travail.

Selon votre terrain, une grande partie de votre travail peut être des documents avec seulement quelques données ou du code.
The standard licenses offered on GitHub are most appropriate for software and won’t really be the right kind for documents.

[Creative commons](https://creativecommons.org/licenses/) licenses are the best to use for this purpose, and the most open of these is the CC BY 4.0.

To add a license to your repository, the first thing to do is create a `LICENSE.md` file:

- Pour ce faire, cliquez sur le bouton Ajouter un fichier et cliquez sur Créer un fichier. Cela vous donnera un fichier vide.
- Then, you need to name the file, so call it `LICENSE.md`. This makes it into a {term}`Markdown` file.
- Vous pouvez trouver toutes les licences créatives dans le lien ci-dessus afin de copier le texte de la licence que vous voulez et ensuite de le coller dans ce fichier.
- N'oubliez pas d'appuyer sur le bouton vert du nouveau fichier de commit en bas et d'écrire un message de commit pour décrire ce que vous avez fait.
- You can also add a link to the license to the bottom of your `README.md` file. Here is a link to a repository that you can copy to add in a [CC BY 4.0 license](https://github.com/santisoler/cc-licenses).
  It has a text file for your `LICENSE.md` file and also a shield (or badge) that you can put at the bottom of your `README.md` file.

You can find more information about licenses in the {ref}`rr-licensing` chapter of The Turing Way.
