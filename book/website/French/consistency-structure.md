(ch-consistcy-structure)=
# Structure

La structure fait référence à la manière dont _La Voie Turante_ est organisée. Un bon cadre structurel garantit que le contenu de _de la Voie Tournante_ est présenté de manière ordonnée.

(ch-consistcy-structure-hr)=
## Exigences difficiles

Les vérifications dures qui traitent de la structure de _La Voie de Turing_ incluent :

(ch-consistcy-structure-hr-emptyfiles)=
### Vérification 1 : Ne pas ajouter de fichiers vides dans le `_toc.yml`

Le fichier `_toc.yml` est l'endroit où vit _la table des matières_ de Turing Way (ToC). Certains fichiers référencés dans les CdV sont vides, et leur inclusion signifie que les lecteurs peuvent naviguer vers un (sous-)chapitre vide en lisant _The Turing Way_. Cela a un impact négatif sur l'expérience du lecteur au fur et à mesure qu'ils passent par le livre.

```{figure} ../../figures/empty-toc-file.png
---
nom: fichier vide-toc-
alt: Un fichier vide qui a été inclus dans la table des matières de Turing Ways. Les lecteurs peuvent toujours naviguer vers des fichiers vides lorsqu'ils sont inclus dans la table des matières.
---
Les fichiers vides inclus dans la table des matières de Turing Way sont toujours accessibles par les lecteurs.
```

Une suggestion générale est de supprimer les références à de tels fichiers du ToC et de soulever un problème dans le dépôt _The Turing Way_ Github [Github](https://github.com/alan-turing-institute/the-turing-way) pour que le contenu soit écrit pour ces fichiers. Lorsque le contenu est écrit, les fichiers peuvent alors être ajoutés au CT.

Par exemple, [ce problème](https://github.com/alan-turing-institute/the-turing-way/issues/1391) conserve une liste de fichiers vides et incomplets actuellement dans _The Turing Way_, et [cette PR](https://github.com/alan-turing-institute/the-turing-way/pull/1448) écrit du contenu pour le sous-chapitre `Licence de données` affiché dans l'image {ref}` <empty-toc-file>`.

(ch-consistcy-structure-hr-structure)=
### Vérifier 2 : Assurez-vous que les chapitres suivent une structure cohérente

_La Voie Turing_ est composée de cinq guides qui contiennent plusieurs chapitres et sous-chapitres. Cependant, ces chapitres ne suivent pas une structure uniforme, en ôtant l'expérience du lecteur.

```{figure} ../../figures/recommended-chapter-structure.png
---
nom : recommandéd-chapter-structure
alt : La structure recommandée pour les chapitres de la Voie Turing. Les chapitres devraient avoir une page de destination avec une section pour les prérequis et les raisons pour lesquelles le chapitre est utile. Les chapitres devraient également avoir une liste de contrôle et un sous-chapitre de ressources en plus du reste du contenu du chapitre.
---
Structure recommandée pour les chapitres dans The Turing Way.
```

- **Page d'accueil :**
    - La page d'accueil du chapitre devrait inclure des informations sur tous les pré-requis requis pour comprendre le chapitre, un résumé du contenu du chapitre, et une explication des raisons pour lesquelles le chapitre est utile.
- **Sous-chapitres :**
    - Un chapitre peut contenir n'importe quel nombre de sous-chapitres ou aucun du tout. Cependant, veuillez prendre note de la prochaine exigence concernant la liste de contrôle et les sous-chapitres de ressources.
- **Checklist subchapter:**
    - Le sous-chapitre de la liste de contrôle détaille les points d'action à prendre pour le lecteur en se basant sur les concepts introduits dans le chapitre.
- **Sous-chapitre Ressources :**
    - Le sous-chapitre des ressources pointe le lecteur vers d'autres sources où il peut en apprendre plus sur les concepts abordés dans le chapitre, ainsi que des sujets connexes à explorer.


```{attention} Please note that making chapters follow this structure may require splitting some of the existing content into new files.
Les références à ces fichiers doivent être mises à jour dans la table des matières du fichier `_toc.yml`.
```

Reportez-vous au modèle de chapitre [](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/templates/chapter-template) pour structurer de nouvelles contributions de chapitre, et l'utiliser pour évaluer les chapitres actuels dans _The Turing Way_. Pour les chapitres qui ne correspondent pas à cette structure, veuillez soulever une Pull Request.


(ch-consistcy-structure-hr-toc)=
### Vérification 3 : N'ajoutez pas une 'table des matières' dans les chapitres ou sous-chapitres.

Certains chapitres dans _The Turing Way_ ont été écrits avec un tableau de matières fabriqué à la main. Cependant, Jupyter Book génère automatiquement une table des matières permanente qui peut être trouvée sur le côté gauche du livre _The Turing Way_ et une table de contenu dynamique et spécifique à la page située en haut à droite de chaque page. Cela rend inutile une table des matières écrite manuellement, et cela peut avoir un impact négatif sur l'expérience d'un lecteur avec _The Turing Way_.

```{figure} ../../figures/many-table-of-contents.png
---
nom : plusieurs table-de-matières
alt : Un sous-chapitre de la Voie Turing avec trois tables de matières. Deux qui sont générés par Jupyter Book et un fait par l'auteur du chapitre.
---
La table des matières écrite manuellement est inutile car Jupyter Book génère automatiquement deux tables de matières séparées.
```
#### Démo

<div class="video-content">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/zKWrvgCxSB0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(cohérence-structure-hr-citation)=
### S'assurer que les sources externes sont correctement citées et référencées

Comme décrit dans le guide de style de {ref}`<ch-style-citing>`, _Les références de la Voie Turing_sont stockées dans un fichier BibTeX appelé `références. ib`. Lors de l'écriture d'un nouveau contenu, assurez-vous que les informations collectées à partir de sources externes sont citées en utilisant le format BibTeX et ajoutées aux références `. fichier ib` si approprié.

Le guide de style de {ref}`<ch-style-citing>` montre comment ajouter une nouvelle référence au fichier BibTeX centralisé, et montre comment cette référence peut être incluse dans votre écriture.


(ch-consistcy-structure-soft-req)=
## Exigences douces

Les Soft Requirements qui traitent de la structure _de la Voie de Turing_ comprennent :

(ch-consistcy-structure-sr-summary)=
### Vérification 1 : Assurez-vous que chaque chapitre a un bon résumé dans sa page d'accueil

Un chapitre avec un bon résumé donne au lecteur un aperçu du contenu qui suit. Idéalement, les résumés devraient communiquer l'idée principale du chapitre et identifier tout détail d'appui, mais être brèves et précises. Les résumés devraient également faire des références croisées adéquates aux sous-chapitres du chapitre, pour le bénéfice des lecteurs qui pourraient vouloir explorer rapidement les sujets abordés dans les introductions de résumé. Les chapitres dans _The Turing Way_ qui contiennent des résumés qui ne correspondent pas à ces critères peuvent avoir besoin d'être reformulés ou réécrits.


(ch-consistcy-structure-sr-modulaire)=
### Vérifier 2 : Diviser les chapitres longs en sous-chapitres plus petits afin qu'ils soient modulaires

Les longs chapitres peuvent être difficiles à franchir pour certains lecteurs. En outre, le contenu très long peut être intimidant pour les autres lecteurs qui ne peuvent être intéressés que par les idées principales dont parle le chapitre. Par conséquent, pour faciliter la lecture de  _la voie Turing_ , les chapitres longs devraient être modulés de manière appropriée.

Lorsque vous gardez des chapitres modulaires, assurez-vous que ses sous-chapitres ne parlent que d'un aspect du sujet global. Par exemple, si un chapitre sur l'apprentissage automatique devait être écrit pour _The Turing Way_, un tel chapitre devrait contenir au moins trois sous-chapitres que chaque chapitre intitulé Apprentissage supervisé, Apprentissage non supervisé et Apprentissage du renforcement.
