(Pd-filenaming)=
# Nommer les fichiers, dossiers et autres choses

## Prérequis / Niveau de compétence recommandé

Aucune.

## Summary

En nommant vos fichiers, dossiers et autres composants de recherche de manière cohérente et descriptive, vous pouvez rendre votre travail trouvé, compréhensible et réutilisable par vous-même, vos collaborateurs et d'autres personnes intéressées par vos recherches. Il permet aux autres de comprendre de quoi porte l'objet numérique : ce que contiennent les fichiers et où les trouver. De plus, en suivant des conseils simples pour le nommage de fichiers, vous pouvez faciliter l’identification et le traitement de vos fichiers pour les ordinateurs.

## Comment cela va vous aider/pourquoi cela est utile

Utiliser de bons noms est probablement le moyen le plus simple d'améliorer la reproductibilité et la réutilisabilité de votre projet de recherche.

## Contenu du chapitre

Il y a trois principes pour nommer des choses; les deux premiers s'appliquent à toutes sortes de choses et la troisième est facultative mais utile pour garder une trace de vos fichiers {cite:ps}`Bryan2015Filenaming`.

Les noms de fichiers doivent être :
1. Lisible par une machine
2. Lisible par les humains
3. Optionnel: Jouer bien avec l'ordre par défaut


Avant de plonger dans les détails de ce qu'ils signifient, regardons quelques exemples de mauvais et de bons noms de fichiers.

| ❌ Mauvaise                                                              | ✔️ Bon                                            |
| ----------------------------------------------------------------------- | ------------------------------------------------- |
| `Myabstract.docx`                                                       | `2020-06-08_abstract-for-sla.docx`                |
| `Les noms de fichiers de Joe utilisent des espaces et Punctuation.xlsx` | `Les noms de fichiers sont-getting-better.xlsx`   |
| `figure 1.png`                                                          | `Fig01_scatterplot-talk-length-vs-interest.png`   |
| `fig 2.png`                                                             | `Présence Fig02_histogramme.png`                  |
| `JW7d^(2sl@deletethisandyourcareerisoverWx2*.txt`                       | `1986-01-28_raw-data-from-challenger-o-rings.txt` |


### Lisible par une machine

Les noms des composants numériques doivent être faciles à comprendre pour les ordinateurs. Les ordinateurs comme les noms n'ont pas d'espaces, l'utilisation délibérée de délimiteurs et aucun caractère spécial ou accentué. Les ordinateurs sont également sensibles à la casse, donc pour eux `cat.txt` et `Cat.txt` sont des fichiers différents.

Les noms de fichiers `Joe ́s utilisent des espaces et Punctuation.xlsx` et `JW7d^(2sl@deletethisandyourcareerisoverWx2*. xt` montré ci-dessus utilisent des espaces vides et des caractères spéciaux (`char@@2`, `^`, `(`, `@`,`*`), ce qui peut entraîner des difficultés, par exemple lorsque vous voulez envoyer l'ordinateur de quelqu'un d'autre.

Les bons noms de fichier/dossier sont faciles à rechercher (également en utilisant des expressions régulières) et faciles à calculer (par exemple en divisant les caractères `_` ou `-`).

### Lisible par les humains

Pour atteindre la lisibilité humaine, il est utile d'avoir des noms courts (< 25 caractères) mais descriptifs qui contiennent des informations sur le contenu du fichier/dossier. Les limites de mots dans le nom du fichier peuvent être indiquées en utilisant la majuscule médiale appelée cas de chameau, par exemple "NomFile", ou underscore, par exemple "file_name". Les noms de fichiers ne doivent pas avoir d'espaces ou d'autres caractères spéciaux.

Pour les liens web ou Uniform Resource Locator (URL), ce concept s'appelle [clean URL](https://en.wikipedia.org/wiki/Clean_URL).

### Jouer bien avec l'ordre par défaut

Pour créer un bon ordre par défaut, ajouter un nombre ou une date au début du nom est souvent une bonne idée. Cela permet de trier nos fichiers par ordre croissant selon les versions de fichiers ou par ordre chronologique. Par exemple, nous organisons souvent tous nos diapositives créés à différentes dates dans le même dossier. Pour les trier par leur date de création, nous pouvons commencer les noms de fichiers par `an month-day` (par exemple `2020-02-21`). Nous recommandons d'utiliser quelque chose comme le standard [ISO 8601 : AAAA-MM-JJ](https://en.wikipedia.org/wiki/ISO_8601) pour les dates. Si vous utilisez d'autres numéros, nous vous recommandons de les remplir à gauche avec des zéros, car votre ordinateur va ordonner `003 < 004 < 020 < 100` au lieu de `100 < 20 < 3 <`.

Nommer les dossiers selon un nombre logique peut conduire à un désordre si l'ordre change dans le futur. Par exemple, il y a un dossier avec les chapitres du livre `01_introduction`, `02_naming_files`, et `03_naming_folders`. L'auteur écrit une préface du livre et décide de le presser avant le chapitre d'introduction. Cela signifierait qu'ils devront renommer tous les fichiers pour maintenir l'ordre prévu. Cela se produit beaucoup et il est clair que cela a plus d'inconvénients que d'avantages.

## Checklist

Voici quelques conseils pour nommer des fichiers dans un projet de recherche, qui sont à la fois lisibles par des humains et des machines {cite:ps}`Cowles2019Filenaming,Hodge2015Filenaming`:

- Nommez vos fichiers de manière cohérente
- Garder court mais descriptif
- Évitez les caractères spéciaux ou les espaces pour les garder compatibles avec la machine
- Utilisez des majuscules ou des tirets bas pour le rendre lisible par les humains
- Utiliser le formatage de date cohérent, par exemple ISO 8601 : `AAAA-MM-JJ` pour maintenir l'ordre par défaut
- Inclure un numéro de version le cas échéant
- Partagez/établissez une convention de nommage lorsque vous travaillez avec des collaborateurs
- Enregistrez une convention de nommage dans votre plan de gestion des données


## Ce qu'il faut apprendre par la suite

Vous voulez construire un dossier avec tous les fichiers de votre projet de recherche ? Consultez notre chapitre sur {ref}compendia de recherche`<rr-compendia>`.
