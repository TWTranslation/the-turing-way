(pd-project-repo-readme)=
# Page d'accueil - fichier README

Une page d'accueil pour votre projet est la première chose que de nouveaux visiteurs verront dans votre référentiel de projet. Sur un référentiel en ligne, comme GitHub, cette page de destination est nommée 'README' qui est équivalente à la page principale d'un site web.

> Les fichiers README sont le tapis de bienvenue de votre projet - il vous donne une chance de brancher des contributeurs et des utilisateurs potentiels en montrant la valeur de votre projet. - [Mozilla Open Leadership](https://mozilla.github.io/open-leadership-training-series/articles/opening-your-project/write-a-great-project-readme/)

Pour communiquer efficacement votre projet et inviter vos lecteurs à contribuer à votre projet, votre fichier README devrait couvrir :
* Ce que vous faites, pour qui et pourquoi.
* Ce qui rend votre projet spécial et passionnant.
* Comment commencer.
* Où trouver des ressources clés.

Pensez à concevoir une page de destination qui soit attrayante pour le plus grand nombre de lecteurs possible et qui fournit toutes les informations utiles sans submerger vos contributeurs. Pour un projet logiciel, fournissez des instructions sur l'installation, le test, le déploiement et d'autres exigences pour l'exécution de votre logiciel. Voir ce modèle [par PurpleBooth](https://github.com/PurpleBooth/a-good-readme-template).

Pour plus de détails, voir [cette présentation](https://docs.google.com/presentation/d/e/2PACX-1vTvwtT3GddLaDr8J4ZEf8TkufiN_Wn1Kgv2xu6YSH8hgocb6LJ_WB82OzfcPeJ0b09_xyMOMSft7-Gq/pub?start=false&loop=false&delayms=3000) par le programme de formation et de mentorat [Open Life Science](https://openlifesci.org/). Aussi, consultez ce [court atelier de Hao Ye](https://ha0ye.github.io/CW21-README-tips/) avec un [modèle README](https://ha0ye.github.io/CW21-README-tips/template_README.html) pour vous aider à démarrer.

```{note}
**Trois leçons sur README**

- Sachez vos utilisateurs et ce dont ils ont besoin
- Demandez aux utilisateurs de faire des choses puissantes rapidement
- Faites attention au jargon !

Source: Hao Ye. (2021, mars). Collaborations Workshop 2021 Mini-Workshop: Conseils README pour rendre votre projet plus accessible (Version v1.0.0). Zenodo. http://doi.org/10.5281/zenodo.4647391
```

## Étude de cas : _The Turing Way_

En utilisant [_The Turing Way_ README file](https://github.com/alan-turing-institute/the-turing-way/blob/main/README.md) comme exemple, nous décrivons à quoi ressemble un bon fichier README.

_Le fichier README de Turing Way_ contient les détails suivants fournis dans l'ordre chronologique :
1. Nom du projet en tant qu'en-tête supérieur.
2. Un ensemble de [badges/boucliers GitHub](https://github.com/badges/shields) (Vous pouvez créer votre propre badge [ici](https://shields.io/)). Les boucliers GitHub sont des boutons cliquables qui fournissent des actions concises liées au projet, qui dans _The Turing Way_ incluent les éléments suivants : [![Lire le livre](https://img.shields.io/badge/read-the%20book-blue.svg)](https://the-turing-way.netlify.com) [![Rejoignez notre liste de diffusion](https://img.shields.io/badge/receive-our%20newsletter%20❤%EF%B8%8F-blueviolet.svg)](https://tinyletter.com/TuringWay) [![Rejoignez le chat sur https://gitter.im/alan-turing-institute/the-turing-way](https://img.shields.io/gitter/room/alan-turing-institute/the-turing-way?logo=gitter)](https://gitter.im/alan-turing-institute/the-turing-way) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3233853.svg)](https://doi.org/10.5281/zenodo.3233853) [![](https://img.shields.io/static/v1?label=TuringWay&message=I%20want%20to%20contribute!&color=yellow&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8%2F9hAAACYklEQVQ4jXXTy09TQRTH8f5VPhI1xoVxYURNAFcmRleaGDdGXQlKAYkLUARNfICoScGKpTyE3t5bkKD2AUQepUXB0gcgLTalD9rema8LKRVrT3I2k%2Fl95kwyY6BMfQiFqHaoVDlUBoJBZJl9hn8XRsIhqh0abd55tnWdrBA8WfBSpakMhUqhXUCJhKl2aLR65%2FEtLeGc%2BYoy5aHf46bX7cThctK%2BAw2HQkVAW41wzqHRMjNNRteR%2BQzGjg5udZtQ47FiO50gdLZ1nVbvPNUOFSUSxnB4sJ%2F0TjCTTjHk%2BoJl%2BRtqPEaL6zMH79Rw0dyDVVURqRgyn0EkN8jkshwZGsBQodgQyQ2kyDPsce859drjdqLRKE0D%2FZhHR5F6DpHc2B3%2FjF3BcFqxARIpBXXmt9ii67vAYDhIr8fNx0UfE3OzzC0sIHIpxNYqSPEHqFBsiFQMkU3h8vs5%2FvABTeNje6BCj%2FxcwzLlIZHYROq5v4EoIr2JyCbJ57Kobjd3u7o41v4I68pyCfTGrhSvUKHYAJD5bcTWGjKbJJdO4A8E6JyexP4rWgK8Vkb2AjK7hcxnmZybxfF9kff%2BhZJQofvXwhg7O4vAfU2l79ME79xOrjY3c9ZYVzZs8nvZf6%2BRQCRCTgiODg1iCK6vc6WtjZM1tzlRW8sNa99%2Fx64fH%2BNAQz0un49nfh%2BVmspAcKX4lKWUbMbjXOg2cf3Vy%2BLIoRWqekxc7nhB6%2FQ0lZqKJRBAyjKfKZFIcKixgVPPn3LTamFfUyPne7qp1Oz0Bn4g5d7vVAIUamJ2FqPZzCW7gvlHabBQvwE2XnlAiFRrOwAAAABJRU5ErkJggg%3D%3D)](https://github.com/alan-turing-institute/the-turing-way/blob/main/CONTRIBUTING.md)
3. Liens vers la version traduite des fichiers README pour permettre aux lecteurs de les lire dans leur langue préférée.
4. Une phrase chaque fois fournissant la vision du projet, l'objectif et le public cible.
5. Un tableau du contenu fournissant des liens rapides vers différentes sections du fichier README
6. Différentes sections avec des détails et des liens appropriés :
  - À propos du projet : motivation et arrière-plan
  - L'équipe: qui sont les membres de l'équipe
  - Contribution : liens vers la ligne directrice de la contribution et le code de conduite
  - Citer la route de Turing : instructions pour citer le projet
  - Contacter : les coordonnées des prospects du projet

Enfin, nous fournissons une liste complète des contributeurs au projet. Cette table des contributeurs est mise à jour en utilisant le bot [all-contributors](https://allcontributors.org) qui reconnaît toutes sortes de contributions, y compris celles qui 'ne poussent pas le code'.
