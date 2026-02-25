(rr-reviewing)=

# Processus d'évaluation du code

(rr-reviewing-prerequisites)=

## Prerequisites

| Prerequisite                   | Importance | Notes                                                                                                                                                  |
| ------------------------------ | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| {ref}`Version Control<rr-vcs>` | Nécessaire | Understanding the way that [GitHub](https://github.com) arranges its branches, forks, and pull requests within repositories is needed. |

```{figure} ../../figures/bug-catching.*
---
height: 500px
name: bug-catching
alt: People catching different insects in different ways - representing bugs in our code or project.
---
Catching bugs. _The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-reviewing-summary)=

## Summary

La revue de code offre un moyen supplémentaire de tester la qualité du code.
Instead of relying simply on {ref}`tests<rr-testing>` which the original author puts together themselves, code review gets another programmer to look over the new code and assess it. The goal is to point out strengths and also potential areas of improvement.

L'examen du code est souvent effectué par pairs, chaque réviseur ayant également une partie de son code révisé par son partenaire.
Cela peut aider les programmeurs à voir et à discuter des questions et des approches alternatives aux tâches, et à apprendre de nouveaux trucs et astuces.
Cela signifie également que les pratiques de révision du code sont particulièrement bien adaptées aux projets avec plus d'un contributeur apportant des changements.
Néanmoins, même les plus petits projets peuvent exploiter ces approches grâce à une gestion de projet créative.

En raison de leur nature, les revues de code agissent comme des tests qualitatifs - plutôt que quantitatifs - mais elles ne sont pas moins précieuses pour cela.

Cette section fournira un aperçu des motifs, des meilleures pratiques et des workflows possibles pour l'examen du code.
Some details refer specifically to GitHub's code review functionality as a powerful and widely-used example of a formal code review system; however, equivalent and very similar systems are available elsewhere (for example, [GitLab](https://about.gitlab.com)), and even informal code review practices can also be very beneficial to a project.
