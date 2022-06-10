(rr-code-reuse-recommendations)=
# Aperçu de la réutilisation du code

Cette section contient une liste de recommandations pour rendre votre logiciel plus réutilisable. La section {ref}`rr-code-reuse-details` contient une explication plus approfondie de chacune de ces recommandations. Vous pouvez suivre les recommandations qui sont plus adaptées à votre type de logiciel et sauter celles qui ne sont pas pertinentes dans votre cas.

## Recommandations répétables

1. Assurez-vous que vous pouvez le trouver (dans l'espace ; cela signifie que vous pouvez localiser le référentiel/projet)
1. Assurez-vous que vous pouvez le trouver (en temps; en signification: être en mesure de localiser une version particulière)
1. Assurez-vous que vous pouvez exécuter la même séquence d'opérations
1. Assurez-vous que votre environnement et la séquence des opérations sont robustes et qu'aucun humain n'est nécessaire pour reproduire ce qui a été fait
1. Licence de votre code
    - avec une licence qui permet la réutilisation ;
    - avec une licence compatible avec les licences des dépendances
1. Assurez-vous qu'il est citable
1. Inclure les données nécessaires
1. Écrire une documentation utile*

## Recommandations réexécutables

1. Retirer les bits codés en dur (comme les chemins qui n'existaient que sur le disque dur où le pipeline a été exécuté) et rendre le code modulaire
1. Teste que les modules que tu as créés peuvent prendre différents types de données ou paramètres d'entrée
1. Transformez les modules en package/toolbox
1. Écrire une documentation utile*

## Recommandations portables
1. Assurez-vous que vous pouvez recréer l'environnement où il a vécu
1. Écrire une documentation utile*

## Recommandations extensibles
1. Écrire une documentation utile*

## Recommandations modifiables
1. Assure-toi que ton code est lisible par les humains
1. Assurez-vous que les commentaires sont présents
1. Écrire une documentation utile*

Le lecteur observant peut remarquer que `Écrire de la documentation utile` est mentionné pour chaque niveau de réutilisation. Ceci est dû au fait que différents niveaux de documentation sont requis pour différents niveaux de réutilisation.

## Documentation

*Différentes exigences de documentation pour différents niveaux de réutilisation*

Écrire de la documentation utile est une exigence importante pour tous les niveaux de réutilisation. Cependant, pour les différents niveaux de réutilisation, il y a des exigences de documentation différentes :

La documentation:
- explique l'utilisation, en précisant :
  - ce que fait le logiciel ; (requis pour le répéter)
  - comment il peut être utilisé ; (requis pour répéter)
  - quelles options/paramètres sont disponibles. (requis pour les répétitives)
- contient des exemples de comment le lancer. (requis pour les répétitives)
- a des instructions d'installation, y compris les bonnes descriptions de :
  - le matériel dont il dépend (par exemple GPUs); (requis pour le portable)
  - le système d'exploitation sur lequel le logiciel a été testé ; (requis pour être portable)
  - des exigences (telles que les bibliothèques et les paramètres de l'interpréteur de commandes). (requis pour le portable)
