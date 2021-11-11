(rr-reviewing-recommendation)=
# Recommandations et meilleures pratiques

## Qui commente ?

Dans les projets à petite échelle où les développeurs se connaissent tous déjà, la pratique courante est que le codeur marque quelqu'un dans le groupe comme l'évaluateur. Quand vous êtes taggé en tant que réviseur, vérifiez d'abord si vous avez assez de connaissances sur les nouveaux changements dans le code pour faire un bon travail en un temps raisonnable.

Par contre, les projets de développement à grande échelle auront probablement des règles concrètes pour la manière dont les réviseurs sont alloués aux demandes de fusion individuelles. Ces règles servent à équilibrer la charge de travail du groupe et à maximiser les différents avantages du processus pour le projet et ses participants. Les projets les plus importants peuvent même avoir du personnel spécialisé - ou des équipes de personnel - pour agir en tant que réviseurs. Généralement, les examens de code ne peuvent être effectués que par un sous-ensemble autorisé de contributeurs dans des projets plus grands.

Pour les projets où plusieurs cycles de révision sur des matériaux similaires sont probables et où de longs cycles de développement sont prévus, un certain degré de pensée stratégique sur qui termine les examens est sensé. Un seul examinateur sera probablement en mesure de faire des commentaires sur le code qu'il a examiné avant beaucoup plus efficacement. Cependant, laisser persister les paires de codeur de l'évaluateur est généralement une mauvaise idée, parce qu'il peut conduire à des groupes de même nature que le processus d'examen est conçu pour éviter en premier lieu.

## Soyez sympa !

Comme pour toutes les entreprises open-source et collaboratives, une bonne etiquette de l'internet rend le processus plus fluide. Peut-être le plus important, assumez toujours la bonne foi des deux côtés de l’interaction de la révision, et soyez toujours constructifs. Ces principes sont valables pour le processus de révision au-delà de presque tout autre aspect du projet, car il implique nécessairement des critiques, potentiellement entre deux étrangers complets.

## Garder la collaboration

Contrairement à l'examen traditionnel par les pairs "de style académique", la plupart des systèmes d'évaluation du code présentent un certain nombre d'avantages : ils sont rarement anonymes, ils sont face au public, et sans l'interlocuteur d'un éditeur, le contact entre le réviseur et le revu peut être direct et rapide. Cela signifie que la révision du code est généralement un processus rapide, souple et interactif. Une bonne évaluation par les pairs sera entièrement collaborative, où une fois qu'une requête potentielle a été signalée par un évaluateur, les deux parties concernées peuvent travailler ensemble pour trouver une solution. Il n'est pas non plus atypique pour des tiers de se frayer un chemin pendant les discussions qui peuvent croître avec des commentaires plus sombres, soit volontairement ou par demande. Tout cela est positif.

## Éviter d'être subjectif

Les examens de code devraient s'efforcer d'être aussi objectifs que possible. Bien sûr, des préférences de codage subjectives peuvent apparaître dans n'importe quel projet. Toutefois, de telles préférences devraient être décidées au niveau du projet dès que possible. On peut donc éviter la situation où une opinion pourrait être transmise en réalité. Au lieu de cela, les suggestions peuvent être soutenues en pointant vers des préférences documentées qui ont été mises en place à l'avance. Si vous rencontrez des préférences non documentées, discutez-les à nouveau avec l'équipe et acceptez si vous souhaitez ajouter la préférence à la liste de contrôle de votre processus de vérification de code.

## Spécifier les changements cruciaux contre les changements optionnels

Vous voudrez peut-être différencier les changements qui sont cruciaux et les changements qui sont agréables à avoir. Par exemple, les commentaires qui commencent « Vous pourriez... » pourraient être utilisés pour exprimer des suggestions que les évaluateurs veulent que le codeur considère mais ne sont pas essentiels. Ils peuvent être particulièrement utiles pour guider les codeurs inexpérimentés pour écrire un meilleur code tout en ne faisant pas trop de choix. Le codeur peut alors décider d'ignorer ces commentaires non cruciaux s'ils ne sont pas d'accord. Les réviseurs peuvent utiliser des commentaires qui commencent "Vous devez..." pour spécifier ceux qui ne sont pas optionnels.

## Revoir le code en petits morceaux

L'examen progressif du code en petits morceaux pendant que le projet se développe peut aider à rendre le processus de révision du code beaucoup plus efficace. Il est beaucoup plus difficile de passer en revue une énorme base de code une fois que des erreurs significatives ont été introduites. Si des erreurs peuvent être détectées au début du processus, elles sont beaucoup plus faciles à corriger et cela aidera dans le processus de développement global du code.

Voici quelques conseils généraux sur la façon d'intégrer les revues de code dans notre processus de travail :

- Prenez le temps, lisez attentivement. Examinez tout, rien n'est trop court ou trop simple.
- Essayez d'avoir autre chose à faire et répartissez la charge tout au long de votre jour de travail. Ne passez pas en revue plus d'une heure à la fois, après quoi le taux de réussite diminue rapidement.
- Ne pas revoir plus de 400 lignes de code (LOC) à la fois, moins de 200 LOC est mieux. Ne pas revoir plus de 500 LOC/heure.

## Soyez d'accord avec le fait de prendre la discussion hors ligne

Parfois, avec des revues de code plus complexes, la communication en ligne peut conduire à des conversations improductives. La mise en place d'une réunion en personne peut aider à résoudre certains des problèmes les plus délicats d'une manière plus conviviale et collaborative. Comme alternative, l'équipe de développement/recherche peut organiser des réunions régulières pour effectuer des examens de code avec tous les membres de l'équipe. Par exemple, voir l'approche adoptée par un professeur organisant des [réunions de laboratoire pour le code](http://fperez.org/py4science/code_reviews.html).
