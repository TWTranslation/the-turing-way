(rr-ci-ressources)=
# Liste de contrôle et ressources

## Checklist

- Ayez un projet sur lequel vous collaborez avec au moins une autre personne
- Mettre le projet sur GitHub
- Demandez aux membres du projet d'engager régulièrement leur travail dans ce dépôt central
- Ce projet devrait avoir au moins quelques tests
- Écrire un fichier `ci.yml` qui:
  - Doit être dans `.github/workflows`
  - Définissez le nom de l'événement GitHub qui déclenche le workflow en utilisant la clé `sur` sur le YMAL.
  - Définit une machine hôte spécifique sur laquelle exécuter la tâche en utilisant `jobs` et `runs-on`.
  - Inclut du code pour installer toutes les dépendances requises pour exécuter le projet dans une étape avant l'installation
  - Contient un script pour exécuter les tests du projet
- Valider le fichier `ci.yml` dans le dépôt GitHub du projet
- Chaque fois qu'un nouveau commit est repoussé Travis exécutera les tests et retournera les résultats. Si ce rapport indique qu'un commit cause l'échec des tests/tests, alors trouvez et corrigez le problème dès que possible

## Ce qu'il faut apprendre par la suite

Si vous n'avez pas encore lu le chapitre des tests, il est suggéré de le faire pour en savoir plus sur les différents types de tests et leurs avantages afin de tirer le meilleur parti de CI.

## Définitions/glossaire

**Intégration continue :** Le processus de combiner régulièrement le travail des membres du projet dans une version centralisée. Aussi appelé CI. Le logiciel CI exécute généralement des tests sur la version intégrée d'un projet pour identifier les conflits et les bogues introduits par l'intégration.

**Construction :** Un groupe de travaux. Par exemple, une version peut avoir deux emplois, chacun testant un projet avec une version différente d'un langage de programmation. Une construction se termine lorsque tous ses travaux sont terminés.

**Environnement informatique :** L'environnement où un projet est exécuté, y compris le système d'exploitation, le logiciel installé dessus et les versions des deux.

**GitHub :** Une plate-forme de contrôle de version largement utilisée.

**Actions GitHub :** C'est un service CI/CD qui s'exécute sur les dépôts GitHub.

**Workflows** Ce sont des fichiers YAML stockés dans le répertoire _.github/workflows_ d'un dépôt.

**Action** C'est un package que vous pouvez importer et utiliser dans votre **workflow**. GitHub fournit une place de marché **[Actions](https://github.com/marketplace?type=actions)** pour trouver des actions à utiliser dans les workflows.

**Tâche** C'est une machine virtuelle qui exécute une série de **pas**. **Les Jobs** sont parallélisés par défaut, or **les pas** sont séquentiels par défaut.

## Tutoriels pratiques

- Pour vous aider à démarrer avec GitHub Actions, Padok fournit [un tutoriel pratique](https://github.com/padok-team/github-actions-tutorial) où vous pouvez construire un workflow qui teste automatiquement, construit, libère et déploie un microservice simple.
- GitHub Learning Lab propose également un guide interactif pour [des projets pratiques pour apprendre les actions GitHub](https://lab.github.com/githubtraining/github-actions:-continuous-integration).

## Références

- [Qu'est-ce que CI](https://github.com/travis-ci/docs-travis-ci-com/blob/master/user/for-beginners.md) **MIT**
- [blog SSI](https://software.ac.uk/using-continuous-integration-build-and-test-your-software?_ga=2.231776223.1391442519.1547641475-1644026160.1541158284) **Creative Commons Attribution Non-Commercial 2.5 License**
- [La différence entre intégration continue, déploiement continu et livraison continue](https://www.digitalocean.com/community/tutorials/an-introduction-to-continuous-integration-delivery-and-deployment) **Creative Commons Attribution-NonCommercial-ShareAlike 4.0 Licence Internationale.**
- [CI avec python](https://docs.python-guide.org/scenarios/ci/) **Attribution-NonCommercial-ShareAlike 3.0 non porté**
- [Commencer avec GitHub Actions : concepts et tutoriels](https://www.padok.fr/en/blog/github-actions)
- [Tutoriel CI/CD utilisant GitHub Actions](https://dev.to/michaelcurrin/intro-tutorial-to-ci-cd-with-github-actions-2ba8)
- [Création d'une action de conteneur Docker](https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action)

### Matériaux utilisés : Qu'est-ce que les actions Github et comment cela fonctionne-t-il ?

- [Feuille de triche d'actions GitHub](https://resources.github.com/whitepapers/GitHub-Actions-Cheat-sheet/)
- [Docs GitHub : Actions - concepts de base](https://docs.github.com/en/actions/getting-started-with-github-actions/core-concepts-for-github-actions)
- [Docs GitHub : Actions - Configuration et gestion des workflows](https://docs.github.com/en/actions/configuring-and-managing-workflows)

## Remerciements

Merci à David Jones du groupe RSE de l'Université de Sheffield pour les discussions utiles.
