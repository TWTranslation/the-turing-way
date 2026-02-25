(Pd-filenaming)=

# Nommer les fichiers, dossiers et autres choses

## Prérequis / Niveau de compétence recommandé

Aucune.

## Summary

En nommant vos fichiers, dossiers et autres composants de recherche de manière cohérente et descriptive, vous pouvez rendre votre travail trouvé, compréhensible et réutilisable par vous-même, vos collaborateurs et d'autres personnes intéressées par vos recherches.
Il permet aux autres de comprendre de quoi porte l'objet numérique : ce que contiennent les fichiers et où les trouver. De plus, en suivant des conseils simples pour le nommage de fichiers, vous pouvez faciliter l’identification et le traitement de vos fichiers pour les ordinateurs.

## Motivation and Background

Utiliser de bons noms est probablement le moyen le plus simple d'améliorer la reproductibilité et la réutilisabilité de votre projet de recherche.

## Chapter content

There are three principles to naming things; the first two apply to all kinds of things and the third is optional but valuable for keeping track of your files {cite:ps}`Bryan2015Filenaming`.

Les noms de fichiers doivent être :

1. Lisible par une machine
2. Lisible par les humains
3. Optionnel: Jouer bien avec l'ordre par défaut

Avant de plonger dans les détails de ce qu'ils signifient, regardons quelques exemples de mauvais et de bons noms de fichiers.

| ❌ Mauvaise                                        | ✔️ Bon                                            |
| ------------------------------------------------- | ------------------------------------------------- |
| `Myabstract.docx`                                 | `2020-06-08_abstract-for-sla.docx`                |
| `Joe’s Filenames Use Spaces and Punctuation.xlsx` | `Joes-filenames-are-getting-better.xlsx`          |
| `figure 1.png`                                    | `Fig01_scatterplot-talk-length-vs-interest.png`   |
| `fig 2.png`                                       | `Fig02_histogram-talk-attendance.png`             |
| `JW7d^(2sl@deletethisandyourcareerisoverWx2*.txt` | `1986-01-28_raw-data-from-challenger-o-rings.txt` |

### Lisible par une machine

Les noms des composants numériques doivent être faciles à comprendre pour les ordinateurs.
Les ordinateurs comme les noms n'ont pas d'espaces, l'utilisation délibérée de délimiteurs et aucun caractère spécial ou accentué.
Also computers (or rather their operation systems) may be case sensitive, so for them `cat.txt` and `Cat.txt` may be different files.

The file names `Joe´s Filenames Use Spaces and Punctuation.xlsx` and `JW7d^(2sl@deletethisandyourcareerisoverWx2*.txt` shown above use empty spaces and special characters (`´`, `^`, `(`, `@`,`*`), which can lead to difficulties, for example when you want to send it someone else's computer.

Good file/folder names are easy to search for (also using regular expressions) and easy to compute on (for example by splitting on `_` or `-` characters).

### Lisible par les humains

To achieve human readability, it is helpful to have short (< 25 characters) but descriptive names that contain information on the content of the file/folder.
Les limites de mots dans le nom du fichier peuvent être indiquées en utilisant la majuscule médiale appelée cas de chameau, par exemple "NomFile", ou underscore, par exemple "file_name".
Les noms de fichiers ne doivent pas avoir d'espaces ou d'autres caractères spéciaux.

For web links or Uniform Resource Locator (URL), this concept is called [clean URL](https://en.wikipedia.org/wiki/Clean_URL).

### Jouer bien avec l'ordre par défaut

Pour créer un bon ordre par défaut, ajouter un nombre ou une date au début du nom est souvent une bonne idée.
Cela permet de trier nos fichiers par ordre croissant selon les versions de fichiers ou par ordre chronologique.
Par exemple, nous organisons souvent tous nos diapositives créés à différentes dates dans le même dossier.
To sort them by their date of creation, we can start the file names with `year-month-day` (for example `2020-02-21`).
We recommend using something like the [ISO 8601 standard: YYYY-MM-DD](https://en.wikipedia.org/wiki/ISO_8601) for dates.
If you use other numbers, we recommend left padding them with zeros, because your computer will order `003 < 004 < 020 < 100` as opposed to `100 < 20 < 3 < 4`.

Nommer les dossiers selon un nombre logique peut conduire à un désordre si l'ordre change dans le futur.
For example, there is a folder with the book chapters `01_introduction`, `02_naming_files`, and `03_naming_folders`. L'auteur écrit une préface du livre et décide de le presser avant le chapitre d'introduction. Cela signifierait qu'ils devront renommer tous les fichiers pour maintenir l'ordre prévu.
Cela se produit beaucoup et il est clair que cela a plus d'inconvénients que d'avantages.

## Checklist

Here are some tips for naming files within a research project, which are both human- and machine-readable {cite:ps}`Cowles2019Filenaming,Hodge2015Filenaming`:

- Nommez vos fichiers de manière cohérente
- Garder court mais descriptif
- Évitez les caractères spéciaux ou les espaces pour les garder compatibles avec la machine
- Utilisez des majuscules ou des tirets bas pour le rendre lisible par les humains
- Use consistent date formatting, for example ISO 8601: `YYYY-MM-DD` to maintain default order
- Inclure un numéro de version le cas échéant
- Partagez/établissez une convention de nommage lorsque vous travaillez avec des collaborateurs
- Enregistrez une convention de nommage dans votre plan de gestion des données

## What to learn next

Vous voulez construire un dossier avec tous les fichiers de votre projet de recherche ?
Check out our chapter on {ref}`research compendia<rr-compendia>`.
