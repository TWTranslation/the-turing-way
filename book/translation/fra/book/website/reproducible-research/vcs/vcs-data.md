```{figure} ../../../figures/data-provenance.jpg
---
name: provenance
alt: Different people work at different stations to enable provenance.
---
Provenance on which data in which version was underlying which computation is crucial for reproducibility. _The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-vcs-data)=

# Contrôle de version pour les données

Nous avons discuté du fait que le contrôle des composants des projets en évolution pourrait contribuer à rendre le travail plus organisé, plus efficace, plus collaboratif et plus reproductible.
Many scientific projects, however, do not only contain code, manuscripts, or other small-sized files, but contain larger files such as large datasets, analysis results, or binary files (presentations, manuscripts, pdfs) which can change or be updated in a project just like other small sized text components.
In this chapter, we discuss why and how to do data versioning, especially why Git is not well suited for data versioning and what we can be done about it.

(rr-vcs-data-importance)=

## Importance des données de contrôle de version

Nous ne devrions pas accepter l'idée que les données utilisées pour l'analyse sont statiques; une fois acquis, il ne change pas et sert d'élément pour une analyse donnée et l'épine dorsale de nos résultats scientifiques.
La réalité est que les données ne sont que rarement invariantes.
Par exemple, tout au long d'un projet scientifique, les jeux de données peuvent être étendus avec de nouvelles données, adaptées aux nouveaux schémas de nommage, réorganisé en différentes hiérarchies de fichiers, mis à jour avec de nouveaux points de données ou modifié pour corriger des erreurs.
Sometimes you might also want to experiment off different versions of the same dataset.

De tels processus dynamiques sont excellents et bénéfiques pour la science, car ils garantissent que les données sont utilisables et à jour, mais ils peuvent être confus s'ils ne sont pas
correctement documentés.
Si un jeu de données est la base du calcul d'un résultat scientifique change sans contrôle de version, la reproductibilité peut être menacée : les résultats peuvent devenir invalides, ou les scripts qui sont basés sur des noms de fichiers qui changent entre les versions peuvent se casser.
Especially if original data gets replaced with new data without version control in place, the original results of the analysis may not be reproduced.
Therefore, version controlling data and other large files in a similar way to version controlling code or manuscripts can help ensure the reproducibility of a project and capture the provenance of results;
that is "the precise subset and version of data a set of result originates from".
Avec tous les autres éléments d'un projet de recherche, les données identifiées dans des versions précises font partie du résultat de la recherche.
L'aspect reproductibilité d'un projet scientifique peut améliorer beaucoup si nous pouvons suivre le sous-ensemble ou la version des données sur lesquelles repose une certaine analyse ou un certain résultat.

(rr-vcs-data-challenges)=

## Défis dans le contrôle de version des données

As we described earlier, there are  {ref}`limitation to git <rr-vcs-git-limitations>`.
As long as the files to version control are small in size, not too numerous and can be stored in a few `csv` or character separated files, tools such as [Git](https://git-scm.com/) are appropriate.

However, when you work, share, and collaborate on large, potentially [binary](https://en.wikipedia.org/wiki/Binary_file) files (such as many scientific data formats), you need to think about ways to version control this data with specialised tools.
Si d'autres tentent de cloner votre dépôt ou de récupérer/tirer pour le mettre à jour localement, il faudra plus de temps pour le faire s'il contient des fichiers plus volumineux qui ont été versionnés et modifiés.

Accordingly, repository hosting services usually impose maximum file sizes on users.
Par exemple, si un seul fichier dans votre dépôt dépasse 100 Mo, vous ne pourrez pas envoyer ce fichier dans un dépôt GitHub.
Furthermore, if a large file was accidentally added to a repository, removing the file from the repository can be tedious, as this file needs to be [purged](https://help.github.com/en/github/authenticating-to-github/removing-sensitive-data-from-a-repository).

Ces défauts peuvent rendre le contrôle de versions fastidieux et lent, entraver les collaborations sur les dépôts avec de grandes données, et empêcher que des données ou des projets avec des données ne soient partagées sur des plates-formes comme GitHub.

(rr-vcs-data-tools)=

## Outils pour contrôler les données de version

Several tools are available to handle version controlling and sharing large files.
La plupart d'entre eux s'intègrent très bien à Git et étendent les capacités d'un référentiel pour contrôler les gros fichiers.
Avec ces outils, de grandes données peuvent être ajoutées à un référentiel, la version contrôlée, retournées aux états précédents, ou mis à jour et modifié en collaboration, et même partagé via GitHub sous forme de petits fichiers.
Certains de ces outils incluent :

(rr-vcs-data--tools-dvc)=

### DVC

DVC (open-source Version Control System for Machine Learning Projects) https://dvc.org/.
DVC guarantees reproducibility by consistently maintaining a combination of input data, configuration, and the code that was initially used to run an experiment.

(rr-vcs-data--tools-lfs)=

### Git LFS

[Git LFS](https://git-lfs.github.com/) comes with a command-line extension to Git and allows you to treat files of any size alike, using standard Git commands.
A major shortcoming, however, is that Git LFS is a _centralised_ solution.
Les fichiers volumineux ne sont pas distribués mais stockés sur un serveur distant.
Cela nécessite généralement de configurer votre serveur ou de payer pour un service - ce qui peut le rendre très inaccessible.

(rr-vcs-data-tools-gitannex)=

### `git-annex`

The [`git-annex`](https://git-annex.branchable.com/) tool is a distributed system that can manage and share large files independent from a central service or server.
`git-annex` manages all file _content_ in a separate directory in the repository (`.git/annex/objects`, the so-called _annex_) and only places file _names_ with some metadata into version control by Git.
Lorsqu'un dépôt Git avec une annexe est poussé à un service d'hébergement web tel que GitHub, le contenu stocké dans l'annexe n'est pas téléchargé.
Instead, they can be pushed to a storage system (such as a web server, but also third party services such as Dropbox, Google Drive, Amazon S3, box.com, and [many more](https://git-annex.branchable.com/special_remotes/)).
If a repository with an annex is cloned, the clone will not contain the _contents_ of all annexed files by default, but display only file names.
Cela rend le dépôt petit, même s'il suit des centaines de gigaoctets de données, et clonage rapide, alors que le contenu des fichiers est stocké dans une ou plusieurs solutions de stockage externe gratuite ou commerciale.
On-demand, any file content can then be obtained with a `git-annex get` command from the external file storage.

(rr-vcs-data-tools-submodules)=

### git submodules

Submodules allows to split the data in different repositories, while keeping everything under a single "parent" repository.
It is very powerful, but difficult to use.
Especially, using  {ref}`Git Branches<rr-vcs-workflow-branches>` in  submodules make it complex to handle.
However, this is the only tool listed here allowing to work with many files in a Git repository.

(rr-vcs-data-tools-datalad)=

### Chargeur de données

[DataLad](https://www.datalad.org/), builds upon git and git-annex.
Like `git-annex`, it allows you to version control data and share it via third-party providers but simplifies and extends this functionality.
En plus de partager et de contrôler les gros fichiers ; il permet d'enregistrer, de partager et d'utiliser des environnements logiciels, d'enregistrer et de réexécuter des commandes ou des analyses de données, et d'opérer de manière transparente dans une hiérarchie de référentiels.

(rr-vcs-data-inclusivity)=

## Data versioning and inclusivity

Data versioning in Git require the use of more complex tools, and this means that accessibility to the data will be more difficult.
For instance, if you use datalad with Github, newcomers trying to see one of the large file will have difficulties:
they will be able to see that the file exists, but will not be able to download or see it without cloning the repository and running git-annex or datalad commands.

So while using these tools will make Git commands to run faster, one may want to disable them for critical binary files, like presentations or pdfs.
A solution can be to pack them in submodules, so that the repositories are keeping a small size.

As an example, we can take the repository creating the turing book.
The repository is slow to work with, because a lot of binary files were used over the time.
However, it makes the onboarding of new users easier.
