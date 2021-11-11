(style-ch-style-custom-styling)=
# Style personnalisé

Bien que le contenu ait contribué à _The Turing Way_ doit être écrit en {ref}`Markdown <ch-consistency-formatting-hr-markdown>` si possible, parfois, la syntaxe `HTML` peut être nécessaire pour formater votre contribution comme vous le souhaitez. Déjà, Jupyter Book convertit la syntaxe de Markdown en `HTML`, rendant possible d'avoir une version web du livre _The Turing Way_. Résultat: écrire votre propre `HTML personnalisé` peut introduire une certaine variation dans la façon dont votre nouveau contenu apparaît en ligne par rapport au reste du livre.

Pour minimiser cette disparité, _The Turing Way_ maintient des feuilles de style [à l'échelle du livre](https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_static/book-stylesheet.css) qui contrôlent l'apparence du contenu du livre. En incluant `HTML` dans vos contributions, veuillez vous référer à ces feuilles de style et ajouter les classes et identifiants pertinents qui y sont définis à vos éléments `HTML`. Cela garantit que votre nouveau contenu correspond au style général du livre _The Turing Way_.

Dans ce sous-chapitre, nous vous expliquons comment utiliser les feuilles de style du livre pour styliser vos contributions dans des exemples de cas d'utilisation. Si vous voulez améliorer le style du livre, ce sous-chapitre donne également un bref aperçu de la façon de le faire.

(ch-style-personnalise-style-feuilles de style)=
## Utiliser les feuilles de style

(ch-style-custom-styling-vidéos)=
### Vidéos

Tant qu'il est possible d'intégrer des images et des GIFs dans votre contenu en utilisant la syntaxe Markdown, il n'est actuellement possible d'intégrer que des vidéos avec `HTML`. En plus, nous ne recommandons pas d'ajouter des vidéos directement au dépôt Github de _The Turing Way_ car les fichiers vidéo sont généralement volumineux et rendront la charge du livre beaucoup plus lente, surtout pour les lecteurs avec des connexions Internet lentes.

Pour ajouter une vidéo à votre contribution, téléchargez-la d'abord sur le canal Youtube de _The Turing Way_ , puis copier/coller le code `HTML` qui est généré lorsque vous :
1. Cliquez sur l'option `Partager` sous la vidéo,
1. Puis cliquez sur l'option `Intégrer` à partir de la plage d'options qui apparaît.


Le code `HTML` que vous copiez sera un élément [`iframe`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe). Par exemple :

```
<iframe width="560" height="315" src="https://www.youtube.com/embed/MdOS6tPq8fc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
```

Par défaut, les `iframes` ne sont pas réactifs, ce qui signifie que la vidéo que vous venez d'intégrer sera inaccessible aux lecteurs sur les appareils mobiles. Pour résoudre ceci, _Les feuilles de style_ de Turing Way définissent des classes et un style qui permettent `iframes` de redimensionner et d'adapter l'écran dont le livre est lu.

To leverage this custom styling, wrap the `iframe` in `div` tags and give the `div` element a `video-container` class. Par exemple :

```
<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/MdOS6tPq8fc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
```

Le code ci-dessus est alors affiché comme suit:

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/MdOS6tPq8fc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-style-personnalisation-améliorations-styles)=
## Améliorer le style de _La Voie Tournante_

Le livre Jupyter fonctionne en convertissant la syntaxe Markdown en `HTML`. Par conséquent, pour améliorer le style global du livre, les règles `CSS` devraient cibler les éléments `HTML` que Jupyter Book génère.

Avant d'écrire un CSS, inspectez d'abord le code source HTML du livre. Cela vous donne une idée des éléments à cibler, et peut vous aider à trouver comment structurer vos règles CSS.

Tous les navigateurs Web vous permettent de visualiser facilement le code source des sites Web. Sur les ordinateurs exécutant le système d'exploitation Windows, cela se fait en utilisant `CTRL + U`. Pour les ordinateurs sous Mac OS, ceci est fait en utilisant `Option + Commande + U`.

Une fois que vous avez déterminé le(s) élément(s) que vous voulez modifier, écrivez votre CSS dans le fichier de feuille de style _La Voie de Turing_ [](https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_static/book-stylesheet.css). Si, par exemple, vous vouliez changer la `famille de polices` du texte de paragraphe dans l'ensemble du livre _The Turing Way_ alors vous pouvez ajouter la règle CSS suivante aux feuilles de style qui ciblent tous les éléments avec une balise `<p>`:

```
p {
    font-family: georgia, garamond, serif;
}
```

Si vous pensez que le style introduit dans _The Turing way_ peut être utile pour d'autres utilisateurs de Jupyter Book, envisagez de faire une contribution amont au projet en créant un nouveau problème GitHub et en commençant une discussion avec leurs mainteneurs : [https://github. om/executablebooks/jupyter-book/issues](https://github.com/executablebooks/jupyter-book/issues).
