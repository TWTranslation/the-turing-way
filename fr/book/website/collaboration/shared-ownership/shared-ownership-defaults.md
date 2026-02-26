(cl-shared-ownership-defaults)=

# Déclencher pour un meilleur défaut

Research has shown that humans making decisions have a strong tendency to go along with the status quo or default option (See the [Nudge Theory](https://www.imperial.ac.uk/nudgeomics/about/what-is-nudge-theory/) by {cite:ps}`ThalerSunstein2009Nudge`).
En l’absence d’un défaut de paiement défini activement, la norme culturelle ou institutionnelle dominante devient l’option de fait du choix.
Par conséquent, les options par défaut pour les projets en cours et les nouveaux devraient fortement inciter à adopter un modèle de propriété partagée.

Le minimum par défaut pour un projet open source devrait inclure les documents suivants :

1. Sélectionnez une licence open source (chaque fois que vous le pouvez).
2. Reconnaître visiblement les contributeurs.
3. Fixer des normes pour la propriété partagée.

## Licence Open Source

Il est nécessaire de sensibiliser davantage la population aux licences ouvertes, car de nombreux chercheurs qui possèdent actuellement un code ne sont peut-être pas tout à fait conscients de la manière dont les licences open source peuvent protéger l'ouverture et l'identité d'un projet.
More code might be licensed if researchers were given a basic introduction into how different open licenses work (for example, copyleft vs permissive) and which to choose, although this will only help projects that are maintained enough for a license to be added (see {ref}`rr-licensing`) for reference).
Il devrait y avoir une poussée pour que le code soit ouvertement sous licence par défaut.
Cela peut être appliqué par de nombreuses parties prenantes de l'écosystème de la recherche. Funders can require that code produced by a grant is openly licensed and, similarly, publishers can require that code associated with a publication is openly licensed (open research _data_ is already required by funders for example, [in the UK](https://www.ukri.org/about-us/policies-standards-and-data/good-research-resource-hub/open-research/), this could easily be extended to cover software).
Les entreprises qui hébergent des dépôts peuvent - comme certaines - faciliter l'ajout d'une licence, et encourager doucement les utilisateurs à le faire en ajoutant une licence par défaut.

**Call to action: Select a license for your project**

Planifiez votre projet dès le début pour qu'il soit ouvert tout au long du cycle de vie de vos recherches.
Lorsque vous utilisez des données personnelles ou identifiables, indiquez clairement quelles mesures sont prises pour garantir la confidentialité et la sécurité des données.
Pour tout le reste de votre travail, choisissez une licence open source et ajoutez-la à votre dépôt (voir https://choosealicense.com/).
You can read more about it in the {ref}`Licensing<rr-licensing>` chapter.

## Reconnaissance significative des contributeurs

La propriété devrait être mieux partagée avec les contributeurs en veillant à ce que les modes de travail, de contribution et de reconnaissance des contributions soient correctement définis dans le projet.
Les détails sur les personnes et les pratiques devraient être documentés et communiqués de manière transparente, de sorte que non seulement les contributeurs existants puissent construire un sentiment de propriété, mais que les nouveaux contributeurs puissent également identifier les voies qu'ils peuvent emprunter dans le projet.
Il existe de nombreux types de contributions possibles dans des projets open source qui vont au-delà de l'écriture de code ou de documentation.
Chacune de ces contributions devrait être reconnue de manière transparente et équitable.
For example, we can learn from open source metrics like [CHAOSS](https://chaoss.community/) or [CRediT - Contributor Roles Taxonomy](https://casrai.org/credit/), recognise the hidden labour using frameworks defined by [HiddenREF](https://hidden-ref.org/) or as described in {ref}`The Turing Way Acknowledge chapter<ch-acknowledgement>`, allow people to capture their contributions in a way that is most meaningful for them.
Un programme plus structuré peut être développé qui reconnaît, récompense et encourage les contributeurs qui sont cruciaux pour la durabilité de votre projet.

**Call to action: Acknowledging contributors visibly**

Reconnaître les contributeurs en enregistrant leurs noms dans des endroits visibles (comme un fichier de contributeurs) devrait être ajouté aux flux de travail des administrateurs ou des responsables.
Annoncez et célébrez toutes sortes de travaux en les communiquant ouvertement dans les forums et les canaux officiels de la communauté.
Vous pouvez utiliser des actions GitHub, des bots ou un pipeline d'intégration continue pour automatiser le processus.
To take another easier approach, you can install the all-contributors bot by [https://allcontributors.org](https://allcontributors.org) to your repository, which can help you recognise contributions including those that don’t involve pushing code.
See it working on [_The Turing Way_ repository](https://github.com/the-turing-way/the-turing-way#contributors).

## Partage de propriété du projet avec la communauté

Dans le cas d'une propriété partagée, une communauté collective construit le projet et devrait donc être attribuée comme telle.
Pour en faire un défaut, nous devons faciliter la pratique à travers différents projets open source.
Une façon de le faire est de disposer de documents communautaires essentiels démontrant l'engagement de reconnaître et de partager équitablement la propriété du projet avec tous les contributeurs.
Ces documents devraient non seulement être partagés, mais aussi être ouverts aux commentaires, aux contributions et à la mise à jour afin de les rendre significatives pour la communauté.
La politique et les normes communautaires devraient être communiquées dès le départ afin de faciliter un dialogue ouvert, sûr et respectueux entre les membres de la communauté.

**Call to action: Set standards for shared ownership**

Décrivez explicitement qui est considéré comme le propriétaire du projet.
Vous devriez partager le crédit avec la communauté des contributeurs au lieu d'attribuer uniquement les personnes qui administrent le projet.
For example, when citing the project, use “Community” as the first author {ref}`as practised in The Turing Way<fw-cite>`.
Directives de contribution, Code de conduite (voir Guide Open Source pour référence) et d'autres pages de la communauté sur votre référentiel de projet peuvent aider à définir le ton de la culture que vous voulez promouvoir dans la communauté, et comment les contributeurs sont soutenus dans leur participation.
