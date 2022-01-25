
(rr-code-reuse-details)=
# Recommandations détaillées pour la réutilisation du code

Assurez-vous que vous (ou quelqu'un d'autre) pouvez réutiliser votre code pour faire la même chose que vous. Cette section contient une simple liste de recommandations pour rendre votre logiciel plus réutilisable. Dans cette section, vous trouverez une explication plus détaillée de chacune de ces recommandations, avec des pointeurs vers d'autres parties pertinentes de ce guide.

## Recommandations répétables

À ce stade, vous n'aurez peut-être même pas besoin de pouvoir ouvrir le code et le lire, vous voulez juste vous assurer que vous pouvez relancer toutes les étapes nécessaires et obtenir les mêmes résultats que vous avez obtenus.

### 1. Assurez-vous que vous pouvez le trouver (dans l'espace)

Votre code doit être stocké publiquement et partagé avec des collaborateurs. Il a un identifiant persistant unique, afin que tout le monde puisse le trouver et y accéder.

**Voir aussi**: {ref}`rr-vc`

### 2. Assurez-vous de le trouver (en temps)

Idéalement, l'évolution temporelle du code est documentée avec le contrôle de version. Cela vous permet de récupérer une version spécifique du passé.

**Voir aussi**: {ref}`rr-vc`

### 3. Assurez-vous que vous pouvez exécuter la même séquence d'opérations

Souvent, l'homme qui a mis en place l'environnement est aussi celui qui a écrit le code et celui qui connaît l'ordre exact des étapes nécessaires pour pouvoir ré-exécuter le code et reproduire les résultats. Cela pourrait certainement être soigneusement documenté pour qu'un autre humain le réagisse.

**Voir aussi**: [leçon CodeRefinery sur la recherche reproductible](https://coderefinery.github.io/reproducible-research/)

### 4. Assurez-vous que votre environnement et la séquence des opérations sont robustes et qu'aucun humain n'est nécessaire pour reproduire ce qui a été fait

Vous ne voulez pas dépendre des humains. Ils ont tendance à commettre des erreurs, même s'ils n'ont pas de mauvaises intentions. Vous voulez donc que votre environnement soit scripté et soit recréé au besoin et que votre séquence d'opérations soit exécutée par un script de pipeline qui colle toutes les séquences d'étapes. Un effet secondaire agréable de script de la séquence des opérations est que cela peut souvent servir de documentation sur les étapes.

**Voir aussi**: {ref}`rr-renv-option`

### 5. Licence de votre code

Assurez-vous d'attacher une licence à votre code et indiquez comment vous voulez être cité lorsque les gens le réutilisent. Pensez à utiliser une licence permissive qui permet une réutilisation. De plus, vous devez choisir une licence compatible avec les licences des bibliothèques ou des paquets dont dépend votre logiciel.

**Voir aussi**: {ref}`rr-licence-logiciel`, {ref}`rr-licence-logiciel-permissive`, {ref}`rr-compatibilité-licence-compatibilité`

### 6. Assurez-vous qu'il est citable

Assurez-vous de spécifier comment vous voulez être cité lorsque les gens le réutilisent.

**Voir aussi**: {ref}`cm-citable-logiciel`

### 7. Inclure les données nécessaires

Si le logiciel dépend de n'importe quel type de données, les données doivent être disponibles

**Voir aussi**: {ref}`rr-rdm-données`

## Recommandations réexécutables

Assurez-vous que vous (ou d'autres) pouvez le réutiliser pour faire ce que vous avez fait, mais avec des données différentes/différents paramètres

### 1. Enlever les bits codés en dur et rendre le code modulaire
Vous ne voulez pas avoir de détails spécifiques à vos données ou paramètres d'analyse codés en dur dans le code. Si quelque chose peut devenir une fonction réutilisable, séparez-la des paramètres codés en dur et transformez-la en quelque chose (ré)utilisable tout seul. Rendre les modules purs : étant donné la même entrée, une fonction pure retourne toujours la même valeur. Au lieu de spécifier des chemins de fichiers à l'intérieur des scripts, considérez les passer comme des arguments en ligne de commande pour un script plus portable et plus général et réutilisable.

**Voir aussi**: [leçon de développement de code modulaire CodeRefinery](https://cicero.xyz/v3/remark/0.14.0/github.com/coderefinery/modular-code-development/master/talk.md/#1)

### 2. Teste que les modules que tu as créés peuvent prendre différents types de données ou paramètres d'entrée
Vous ne savez peut-être pas encore comment votre code sera réutilisé dans le futur, mais vous pouvez éviter comment il ne devrait pas être utilisé si vous pouvez tester quels paramètres sont autorisés.

**Voir aussi**: [leçon CodeRefinery sur les tests automatisés](https://coderefinery.github.io/testing/motivation/)

### 3. Transformez les modules en package/toolbox
Séparez encore plus les spécificités de votre projet avec les bits qui peuvent être réutilisés dans d'autres de vos projets ou par d'autres personnes.

**Voir aussi**: {ref}`rr-renv-package`, [Logiciel d'emballage](https://scicomp.aalto.fi/scicomp/packaging-software/), [packaging logiciel en Python](https://aaltoscicomp.github.io/python-for-scicomp/packaging/)

## Recommandations portables
La portabilité désigne la capacité de transférer des logiciels vers un nouvel environnement. Cela pourrait faire référence à une machine identique (mais pas la même), mais il peut aussi faire référence à une nouvelle architecture matérielle, système d'exploitation, etc. Ces deux éléments sont importants pour la réutilisation des logiciels.

### 1. Assurez-vous que vous pouvez recréer l'environnement où il a vécu
L'environnement est un instantané fragile dans le temps qui accompagne silencieusement le code. Il peut inclure l'humain qui a géré le logiciel, les étapes que l'humain a fait pour préparer les données, le matériel, le système d'exploitation, les bibliothèques, les paquets externes/boîtes à outils/dépendances. Tout cela peut être soigneusement documenté pour qu'un autre humain puisse refaire les mêmes étapes.

**Voir aussi**: {ref}`rr-renv`

## Recommandations extensibles et modifiables
Assurez-vous que d'autres peuvent construire sur votre code pour l'étendre et l'améliorer.

### 2. Assure-toi que ton code est lisible par les humains
Il paie souvent plus à écrire du code pour les autres humains afin qu'ils puissent le lire (y compris votre futur moi-même). Un oneliner cryptique avec des noms de variables obscurs n'est ni plus rapide ni plus efficace que de diviser la ligne en plusieurs étapes avec des noms de variables lisibles qui ont un sens. De plus, l'utilisation de conventions de codage aidera d'autres lecteurs.

**Voir aussi**: {ref}`rr-code-style-and-formatting`, {ref}`rr-code-quality-avantages`

### 3. Assurez-vous que les commentaires sont présents
Écrivez des commentaires avant d'écrire le code actuel. Imaginez que quelqu'un puisse juste lire les commentaires et sauter tous les bits de code entre les commentaires et obtenir une image complète de ce qui se passe comme s'il lisait tout le code.
