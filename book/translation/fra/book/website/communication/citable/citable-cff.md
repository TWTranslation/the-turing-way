(cm-citable-cff)=
# Citation de logiciel avec CITATION.cff

Le [Format de fichier de référence](https://citation-file-format.github.io) vous permet de fournir des métadonnées de citation, pour les logiciels ou les jeux de données, dans des fichiers en texte brut faciles à lire par les humains et les machines.

```{figure} ../../figures/recognition.jpg
---
nom: reconnaissance
largeur: 500px
alt: Rechercher des développeurs de logiciels obtenir la reconnaissance en rendant le logiciel citable.
---
Les développeurs de logiciels de recherche obtiennent une reconnaissance en rendant le logiciel citable. Illustration du projet _Turing Way_ par Scriberia. Zenodo. [http://doi.org/10.5281/zenodo.3332807](http://doi.org/10.5281/zenodo.3332807)
```

Pour fournir ces métadonnées, commencez par écrire un fichier `CITATION.cff` et ajoutez-les à votre logiciel ou à votre jeu de données. Une CITATION `. ff` le fichier agrége l'information dans un format de valeur clé qui peut être facilement interprété et mis à jour par les humains, et facilement analysé et converti avec des outils existants.

(cm-citable-cff-pourquoi)=
## Pourquoi utiliser `CITATION.cff`?

Il y a de grands avantages lorsque vous utilisez un fichier `CITATION.cff` pour les informations de citation de votre logiciel !

C'est plus facile pour vous : Lorsque vous hébergez le code source de votre logiciel sur GitHub et que vous avez une CITATION `. ff` dans votre dépôt, vous pouvez utiliser l'intégration Zenodo-GitHub pour publier automatiquement les nouvelles versions du logiciel. Zenodo utilisera les informations de `CITATION.cff` et les affichera avec la publication. Vous n'avez plus à modifier ces informations manuellement sur Zenodo.

```{figure} ../../figures/software-credit.jpg
---
nom: software-credit
largeur: 500px
alt: Plus de crédits pour les créateurs de logiciels.
---
Plus de crédits pour les créateurs de logiciels. Illustration du projet _Turing Way_ par Scriberia. Zenodo. [http://doi.org/10.5281/zenodo.3332807](http://doi.org/10.5281/zenodo.3332807)
```

C'est plus facile pour les utilisateurs de votre logiciel :
1. Ils peuvent directement utiliser les informations de citation de `CITATION.cff` pour citer votre logiciel.
2. Si votre code source est sur GitHub, elles montreront les informations de citation dans la barre latérale comme une citation formatée, et aussi au format BibTeX. Les utilisateurs peuvent copier, coller dans leurs manuscrits et/ou citer correctement votre logiciel.
3. S'ils utilisent le gestionnaire de référence Zotero, ils peuvent importer les métadonnées de citation directement de la CITATION `. ff` fichier dans le dépôt GitHub de leur gestionnaire de références.

(cm-citable-cff-how-to-create)=
## Comment créer un fichier `CITATION.cff`

`CITATION.cff` est un fichier `YAML` avec sa propre définition de schéma. Le schéma définit les règles pour chaque champ, et quels champs sont requis et quels sont les champs optionnels. L'utilisateur doit suivre ces règles afin de créer un fichier `CITATION.cff` valide.

Un exemple minimal d'un fichier `CITATION.cff` valide, qui ne contient que les clés requises, ressemblerait à ceci :

```yaml
auteurs:
  - noms familiaux : Doe
    prénoms: Jean
cff-version: 1.2.
message: "Si vous utilisez ce logiciel, veuillez le citer en utilisant les métadonnées de ce fichier."
titre: "Mon logiciel de recherche"
```

Cependant, ajouter plus de champs peut vous aider à créer plus de métadonnées descriptives de votre logiciel. L'exemple ci-dessous fournit également des informations importantes sur les logiciels tels que la version, la date de publication, le DOI, la licence, les mots-clés.

```yaml
abstrait : "C'est mon logiciel de recherche génial. Il fait beaucoup de choses.
auteurs :
  - noms de famille : Doe
    noms donnés: Jean
    orcid: "https://orcid. rg/0000-0001-8888-9999"
cff-version: 1.2.
date de sortie : "2021-10-13"
identifiants :
  - description : "C'est la collection de snapshots archivés de toutes les versions de mon logiciel de recherche"
    type : doi
    valeur : 10. 281/zenodo.123456
  - description : "C'est le snapshot archivé de la version 0. 1.2 of My Research Software"
    type: doi
    value: 10.5281/zenodo. 23457
mots clés :
  - "logiciel incroyable"
  - recherche
licence: Apache-2.
message: "Si vous utilisez ce logiciel, veuillez le citer en utilisant les métadonnées de ce fichier."
repository-code: "https://github. om/citation-file-format/my-research-software"
title: "My Research Software"
version: 0.11.2
```

La liste complète des champs est décrite dans le [guide du schéma CFF](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md). Dans la section suivante, vous pouvez trouver quels outils peuvent vous aider à créer et utiliser le fichier `CITATION.cff`.

### Étapes pour rendre votre logiciel accessible

Pour rendre votre logiciel citable, vous devez suivre les deux étapes ci-dessous.

#### Étape 1. Créer un fichier `CITATION.cff`

Il y a deux façons de créer un fichier `CITATION.cff`.

1. Utilisez [cffinit](https://citation-file-format.github.io/cff-initializer-javascript/), une application web qui vous guide à travers le processus de création de votre fichier de référence. Le `cffinit` a quelques avantages par rapport à l'édition manuelle telle que

    - pas besoin d'installer des outils supplémentaires ;
    - pas besoin de validation manuelle;
    - conseils pour chaque champ;
    - un retour visuel pour indiquer les problèmes.

    Nous vous suggérons d'utiliser `cffinit` car il simplifie la création et la validation. Pour plus de détails sur l'utilisation de `cffinit` voir {ref}`cm-citable-cffinit`.

2. Modifiez le fichier manuellement dans votre éditeur de code favori. Les inconvénients de cette méthode sont l'installation des outils nécessaires sur votre système et la validation vous-même. En outre, les messages d'erreur de la validation peuvent être relativement longs et difficiles à comprendre. Une fois que vous avez un fichier `CITATION.cff` , il doit être validé pour vous assurer qu'il n'y a pas de problème. Vous pouvez valider votre fichier `CITATION.cff` en ligne de commande avec le [`paquet cffconvert` Python](https://pypi.org/project/cffconvert/).

    ```shell
    cd path/to/CITATION.cff
    cffconvert --validate
    ```

    Si vous préférez utiliser Docker, vous pouvez utiliser le cffconvert [`de l'image` Docker](https://hub.docker.com/r/citationcff/cffconvert):

    ```shell
    cd path/to/CITATION.cff
    docker run --rm -v ${PWD}:/app citationcff/cffconvert --validate
    ```

    Si vous obtenez des messages d'erreur, recherchez l'erreur de validation pertinente et corrigez-la.

```{note}
Pour vous assurer que votre dépôt GitHub a toujours un fichier `CITATION.cff` valide, vous pouvez utiliser le [cff-validator](https://github.com/marketplace/actions/cff-validator) GitHub Action.
```

#### Étape 2. Ajoutez votre `CITATION.cff` à un dépôt de code public

Après avoir créé une CITATION `valide. fichier ff` vous devrez l'ajouter à la racine de votre code ou référentiel de données pour qu'il puisse être facilement trouvé et cité.

(cm-citable-cff-updating)=
## Mise à jour de votre fichier `CITATION.cff`

Quand vous devez mettre à jour votre `CITATION. ff` fichier, par exemple pour ajouter un auteur ou pour modifier les informations sur les versions, vous devrez éditer le fichier manuellement. Il est recommandé de mettre à jour votre fichier `CITATION.cff` avant de faire une version de logiciel.

(cm-citable-cff-how-to-cite)=
## Comment citer en utilisant `CITATION.cff`

Si vous avez trouvé un logiciel ou des jeux de données qui contiennent une CITATION `. ff`, il y a quelques façons d'obtenir les informations de référence pour les citer dans votre publication.

- Vous pouvez utiliser l'un des outils, comme le programme en ligne de commande `cffconvert` pour convertir votre `CITATION. ff` fichier vers l'un des [formats supportés](https://github.com/citation-file-format/cff-converter-python#supported-output-formats), tels que APA, BibTeX ou EndNote.

- Sinon, si le logiciel ou les jeux de données que vous voulez citer sont disponibles sur GitHub, vous pouvez utiliser l'interface de GitHub pour copier la référence dans les formats APA ou BibTeX en cliquant sur le bouton "Citer ce dépôt" (voir la zone verte dans l'image ci-dessous). Pour plus de détails sur la citation du logiciel sur GitHub, veuillez consulter le guide [GitHub sur la citation du logiciel](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-citation-files).

  ```{figure} ../../figures/github-cff-integration.jpg
  ---
  name : github-cff-integration
  alt: Bouton sur GitHub qui fournit la conversion automatique du fichier `CITATION.cff` au format APA et BibTex.
  ---
  "Citer ce dépôt" convertit automatiquement le fichier `CITATION.cff` au format APA et BibTex.
  ```

  ```{note}
  Le bouton "Citer ce dépôt" n'apparaît que lorsqu'il y a un fichier `CITATION.cff` dans le dépôt.
  ```

(cm-citable-cff-outils disponibles)=
## Outils disponibles

Plusieurs outils existent pour faciliter la création et la validation des fichiers `CITATION.cff` ainsi que la conversion vers et depuis d'autres formats. Le dépôt du format de fichier Citation fournit [une liste de tous les outils connus](https://github.com/citation-file-format/citation-file-format#tools-to-work-with-citationcff-files-wrench) pour cela.
