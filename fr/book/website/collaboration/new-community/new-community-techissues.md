(cm-new-community-techissue)=

# Adresser des problèmes techniques

Assurez-vous que vous avez également des plans en place pour les personnes qui veulent contribuer à votre projet mais qui pourraient s'écarter très rapidement de vos objectifs initiaux sans supervision ni orientation.
Si quelqu'un a besoin de compétences ou de pratiques spécifiques pour contribuer à votre projet, vous devriez être en mesure de pointer les gens vers des ressources pertinentes afin qu'ils puissent participer efficacement à votre projet.

Voici quelques recommandations pour préparer votre projet en vue de résoudre les problèmes techniques auxquels votre équipe ou les membres de votre communauté peuvent faire face.

## Configurer des outils pour permettre la collaboration

Lors de la rédaction de la recherche soit du rapport final, soit pour le partage des résultats préliminaires, il devrait y avoir une décision consciente sur le logiciel que vous utilisez pour écrire votre résultat.
Cette décision affecte à quoi ressemblera la collaboration dans votre projet.
Pour éviter tout obstacle potentiel à la collaboration, prenez en compte les aspects suivants :

- **Availability of software**: Ensure that all of the collaborators have access to the software and platform you are using, for example, paid subscription or licence to use proprietary software.
- **Technical skills**: Ensure that all of the collaborators are comfortable using the software, for example, they are confident to edit a file written in a programming or mark-up language.

Des problèmes spécifiques au contexte peuvent apparaître en fonction des rôles et des responsabilités partagés au sein d'une équipe.
Par conséquent, des solutions potentielles peuvent être planifiées pour résoudre ces problèmes, notamment en fournissant de courts tutoriels (voir le point suivant).
Être conscient des obstacles potentiels que le logiciel que nous utilisons peut créer peut conduire à choisir des outils et des solutions qui fonctionnent pour tous nos collaborateurs.

## Fournir des tutoriels courts et concis

Dans la plupart des projets de recherche, nous travaillons sur ce qui est urgent en ce moment, ce qui pourrait nous faire oublier ce qui est important à long terme.
Par exemple, nous pourrions vouloir tester plusieurs algorithmes sur nos données, mais ne pas prêter attention à l'enregistrement systématique du résultat dans une plate-forme centrale à laquelle les autres accèdent.
Offrir une formation ou de courtes vidéos préenregistrées sur les pratiques recommandées peut permettre aux membres de votre communauté de travailler en utilisant un workflow standard ou de reprendre certaines tâches à d'autres.

## Le test est important

L'erreur est humaine ! Et lorsqu’ils travaillent sous pression, ils pourraient être plus fréquents.

Testez vos codes et encouragez votre communauté à revoir et à tester le code de l'autre.
In addition to writing code that solves problems, you should teach and promote the practice of [unit testing](http://softwaretestingfundamentals.com/unit-testing/) to test if the individual units/components of software work as expected.

You can also set up a {ref}`Continuous Integration<rr-ci>` environment to help automate testing in your workflow.

See the {ref}`testing <rr-testing>` section in the Guide for Reproducible Research for more information.

## La reproductibilité est encore plus importante

Une grande chose pour les membres de l'équipe moins impliqués à faire est de tester constamment la reproductibilité de n'importe quel code/environnement.
Faites cela dès le début et ce ne sera pas une surprise plus tard quand cela ne fonctionne pas sur l'ordinateur de quelqu'un d'autre.

Communiquez avec les experts, en particulier lorsque vous traitez du code existant.
Communiquez avec d'autres communautés avec une expertise spécifique pour économiser du temps et des efforts qui peuvent être investis dans d'autres tâches. Par exemple, une grande partie des connaissances scientifiques sont basées sur les résultats de FORTRAN, C et Java qui ne sont plus maintenus et, probablement, ne sont pas documentés. Trouver quelqu'un avec la connaissance et l'expérience du code hérité pour répondre aux questions des autres développeurs sera un gain de temps énorme.

See the {ref}`Guide for Reproducible Research <rr>` chapter for more information.

## Partager le code (et les données) plus tôt le

Les développeurs doivent partager leur code dans un dépôt public contrôlé par des versions (comme GitHub et GitLab) et coordonner qui travaille sur quelle fonctionnalité ou correction.
En particulier, lorsque des projets urgents sont exécutés contre l'heure, il est crucial de ne pas perdre de temps à la fin de votre projet dans la compilation des différents composants de votre recherche quand vous pouvez pratiquer le faire dès le début.

## Prenez note des problèmes de confidentialité

Demandez-vous, comment les personnes qui ont besoin d'accéder à ces données peuvent y accéder.
Comment ils peuvent réutiliser et partager les données de manière appropriée.
Choisissez une licence open source appropriée pour vos données, vos scripts et vos logiciels.
Choisissez une licence pertinente garantissant la protection des informations sensibles telles que les données de déplacement et de localisation, des problèmes de santé personnels, des renseignements sur les contacts, les noms, la date de naissance et les adresses personnelles.
Évitez de recueillir des renseignements personnels qui ne sont pas nécessaires ou de violer la confidentialité.
