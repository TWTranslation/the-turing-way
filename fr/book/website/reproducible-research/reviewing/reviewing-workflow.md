(rr-reviewing-workflow)=

# Flux de travail typiques

_This chapter has particular reference to Github_

```{figure} ../../../figures/readable-code.*
---
height: 500px
name: readable-code
alt: This image highlights the importance of code readability.
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Formal vs Informal Reviews

For a formal review process to work effectively, it's imperative that the project is using good {ref}`version control<rr-vcs>`.
However, it bears stating that **all review of code is very valuable**, including informal or ad-hoc approaches. En effet, ce type d'examen informel "par-dessus l'épaule" par les pairs peut constituer un élément préliminaire clé, même dans les pipelines d'examen hautement formalisés, économiser beaucoup de stress et argumenter une fois que l'étape formelle commence.

This section focuses on the typical workflows behind a formal review process, as commonly implemented within [Github](https://github.com/).
Other coding environments like [BitBucket](https://bitbucket.org/) or [GitLab](https://about.gitlab.com/) could have conceptually similar mechanisms but they are not explained here.

## Préparez le Code

Avant de demander un examen, assurez-vous que vous avez satisfait à tous les critères de qualité évidents pour le projet auquel vous contribuez.
This means making sure you have checked the review list (see {ref}`checklist for the coder<rr-checklist-for-code-review>`).

A reviewer should check these things (see {ref}`checklist for the coder<rr-checklist-for-code-review>`), but defects on these fronts should be by occasional oversight, rather than systematic.

## Proposer des modifications

In the GitHub system, the review is begun directly from and often accessed through the [pull request page](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request).
L'étape de révision se situe entre les points où le codeur estime que sa contribution est terminée et où cette contribution est fusionnée dans le code tronc du projet, et donc il est intimement associé à une demande de tirage unique.

Within the Github environment, projects can be configured to _require_ a review before a given pull request can be merged.
Même si cette option n'a pas été sélectionnée, il est toujours possible (et en effet de bonnes pratiques) de demander manuellement un examen sur une pull request en attente.

## Créer et discuter de la revue

À ce stade, le processus de révision peut commencer. In Github, the reviewer can provide both general comments as well as line-by-line comments, see [GitHub code review](https://github.com/features/code-review).
Chaque commentaire devient son propre sujet de commentaires, ce qui permet de discuter en amont de chaque question au besoin.
Cette interaction devrait permettre de parvenir à un consensus sur chaque commentaire.

Une fois la révision terminée, vous pouvez discuter des commentaires nécessaires. Ensuite, vous faites les changements et enregistrez les modifications apportées contre les commentaires appropriés.
De plus, vous vérifiez que l’examinateur sait que vous croyez avoir entièrement abordé l’examen.

Une fois que vous estimez que les changements sont terminés, l’examinateur vérifie qu’ils répondent effectivement à tous les commentaires initiaux. Si nécessaire, le réviseur s'engage de manière constructive avec vous s'il n'est pas d'accord sur certains points afin de parvenir à un consensus. Dans la plupart des cas, l’examinateur a un dernier mot si un consensus ne peut être trouvé.

Une fois que les modifications postérieures à la revue ont été apportées au code, faire des mises à jour finales des commentaires au besoin pour compléter une histoire de ce qui a été fait et le raisonnement qui sous-tend.

## Communiquer les résultats via GitHub

In Github, comments should be added in the `Files changed` section, so they can be attached to a particular line of code, see [GitHub reviewing changes in pullrequests](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/reviewing-changes-in-pull-requests). Faites beaucoup de petits commentaires de cette manière, plutôt qu'une grosse boule de texte avec tout ce qu'il contient, de sorte que les différentes questions peuvent être maintenues séparées. Le cas échéant, reportez-vous aux questions et à la documentation existantes.

Si vous examinez le code existant plutôt que les modifications, il est toujours pratique d'utiliser des demandes de fusion.
Si vous trouvez un problème qui a un correctif évident, vous pouvez soumettre une pull request avec un correctif de la manière habituelle.

Si vous n'avez pas de correction, vous pouvez ajouter un commentaire vide à la ligne pertinente, et créez une demande d'ajout à partir de cela comme patch. The relevant line(s) will then light up in the pull request's `Files changed` overview, and you can add your comments there.
Dans ce cas, soit la demande d'ajout n'est jamais fusionnée (mais les commentaires ont été traités d'une autre manière, ou pas du tout) ou les commentaires supplémentaires sont annulés et remplacés par une correction convenue.

Dans tous les cas, il y a beaucoup de petits pull requests, pas une grosse et le support de GitHub pour les revues de code est plutôt limité. Placer trop de problèmes dans une seule demande d'ajout devient rapidement peu maniable.

## Fusionner les modifications

Une fois le processus d’examen terminé, l’examinateur approuve les modifications et la fusion peut se produire.
Les projets individuels ont généralement des règles et/ou des lignes directrices pour savoir si le codeur ou le réviseur appuie réellement sur le bouton de fusion, donc vérifier.
Dans de nombreux cas, les flux de travail du projet achèvent une révision et signent par l’examinateur une condition préalable formelle à l’exécution de la fusion.
Pour éviter tout doute, l'adoption de ce principe même pour les petits projets ou les projets informels est probablement sensée.
