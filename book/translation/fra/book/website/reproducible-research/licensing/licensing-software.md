(rr-licence-logiciel)=
# Licences de logiciel

Une licence de logiciel régit l'étendue d'utilisation ou de redistribution des logiciels, avec ou sans documentation logicielle.

Il existe de nombreuses licences logicielles. Beaucoup d'entre eux permettent au titulaire de faire très peu, mais certains vous donnent plus de liberté d'utilisation et de réutilisation du logiciel sous licence.

Le site web [https://choosealicense.com/](https://choosealicense.com/) offre un mécanisme simple pour vous aider à choisir la meilleure licence pour votre projet.

Pour donner un sens à cette variété, nous pouvons les catégoriser comme suit.

## Catégories de licence

<table>
    <thead>
        <tr>
            <th colspan="3">Gratuit</th>
            <th rowspan="3">Propriétaire</th>
        </tr>
        <tr>
            <th colspan="2">Copie à gauche</th>
            <th rowspan="2">Permissive</th>
        </tr>
        <tr>
            <th>Forte</th>
            <th>Faible</th>
        </tr>
    </thead>
    <tbody>
        <tr>
        <td>GPL<sup>1 CDDL</sup><sup>2</sup></td>
        <td>LGPL<sup>3</sup> MPL<sup>4</sup></td>
        <td>BSD<sup>5</sup> MIT<sup>6</sup> Apache</td>
            <td>Recherche seulement: Non&nbsp;copier, Non&nbsp;modification</td>
        </tr>
    </tbody>
    <caption>
      <div class="footnote">
        <sup>1</sup>GPL: GNU General Public License <sup>2</sup>CDDL : Licence commune de développement et de distribution <sup>3</sup>LGPL: GNU Lesser General Public License <sup>4</sup> MPL : Licence publique Mozilla <sup>5</sup> BSD : Berkeley Software Distribution <sup>6</sup> MIT : Massachusetts Institute of Technology
      </div>
      Les licences peuvent être soit libres soit propriétaires, avec des licences libres plus classées comme Copyleft ou Permissive.
    </caption>
</table>

(rr-licence-logiciel-libre)=
## Logiciel Libre

Les licences de logiciels sont soit gratuites, soit exclusives. Les logiciels libres sont fournis avec des termes de licence qui vous donnent ([tel que défini par GNU](https://www.gnu.org/philosophy/free-sw.html) ) :

* _Freedom 0_: La liberté d'exécuter le programme comme vous le souhaitez, pour n'importe quel but.
* _Freedom 1_: La liberté d'étudier comment le programme fonctionne, et de le modifier, donc il fait votre informatique comme vous le souhaitez. L'accès au code source est une condition préalable.
* _Freedom 2_: La liberté de redistribuer des copies afin d'aider les autres dans votre communauté.
* _Freedom 3_: La liberté de distribuer des copies de vos versions modifiées aux autres. En faisant cela, vous pouvez donner à toute la communauté une chance de bénéficier de vos changements. L'accès au code source est une condition préalable.

Ensemble, ces quatre libertés neutralisent effectivement le droit d’auteur ; *Libertés 0* et *2* vous permettent d'utiliser le logiciel original et de le partager avec d'autres. *Les libertés 1* et *3* vous permettent de créer des œuvres dérivées basées sur le logiciel et de les partager avec d'autres.

Notez qu'il est parfaitement acceptable de vendre des copies de logiciels libres, de garantie ou de services de développement ; il s'agit de la liberté de faire des choses avec le logiciel, pas à propos de son prix.

Il y a deux autres définitions similaires en cours d'utilisation ; l'Open Source Institute [Définition Open Source](https://opensource.org/osd-annotated) et les [principes du logiciel libre selon Debian](https://www.debian.org/social_contract#guidelines). La définition du logiciel libre ci-dessus, par Richard Stallman, est la plus simple et la plus concise, et dans la pratique, les catégories qu'ils définissent sont presque identiques.

Un logiciel qui n'est pas gratuit est propriétaire. Les logiciels que vous n'êtes pas autorisé à copier ou modifier entrent dans cette catégorie, de même que les logiciels avec des restrictions d'utilisation, par exemple, "pour une utilisation de recherche uniquement" ou "pour une utilisation non commerciale uniquement".

Il y a des sous-catégories de logiciels propriétaires nommées de manière confuse. _Freeware_ est un logiciel qui peut être copié sans payer qui que ce soit, mais qui ne peut pas être modifié. _La source Shared-source_ est fournie avec la source, mais sans permission de modifier. Aucun de ces deux éléments n'est libre dans le sens ci-dessus.

(rr-licensing-software-derivative)=
## Logiciel dérivé

Dans la catégorie des logiciels libres, il y a plusieurs sous-catégories, qui se distinguent par ce qui est autorisé lors de la fabrication de logiciels dérivés. Il y a deux façons de faire un travail dérivé d'un programme ou d'une bibliothèque : le modifier (forking), ou le combinant avec un autre logiciel (par exemple en utilisant une bibliothèque dans votre programme). Bien sûr, vous pouvez modifier et ensuite combiner.

La modification d'un programme mène à un nouveau programme dérivé de l'original. Ceci est similaire à la dérivation de la nouvelle édition d'un manuel de l'original. Tant les versions originales que les versions modifiées sont des œuvres en vertu de la loi sur le droit d'auteur, et elles peuvent toutes deux faire l'objet d'une licence.

Comme exemple de combinaison de logiciels, imaginez un programme A qui utilise deux bibliothèques préexistantes B et C. Le programme A complet sera composé de la bibliothèque B, de la bibliothèque C, et un peu de code D qui relie les bibliothèques ensemble et peut-être ajoute des fonctionnalités supplémentaires. Chacun de ces quatre éléments est une œuvre d’auteur avec une licence. Le programme A peut parfois être qualifié de « travail combiné », de « travail global » ou de « travail plus grand ».

Différentes licences de logiciels libres imposent des contraintes différentes sur la façon dont les versions modifiées et les travaux combinés peuvent être licenciées.

(rr-licensing-software-permissive)=
## Licences Permissives

Comme le nom l'indique, les licences de logiciels libres permissives sont les moins restrictives. Ils vous permettent de distribuer le logiciel sans modification sous cette licence, avec ou sans code source. Ils vous permettent également de distribuer une version modifiée sous n'importe quelle licence que vous voulez, et vous permettent de distribuer une œuvre combinée sous n'importe quelle licence.

Des exemples de licences permissives bien connues sont les différentes licences BSD, la licence MIT et la licence Apache 2.0.

(rr-licensing-software-copyleft)=
## Copie à gauche

Les licences Copyleft ajoutent quelques restrictions à la licence des œuvres dérivées. Comme les licences permissives, elles vous permettent de distribuer le logiciel inchangé sous cette licence. Cependant, si vous distribuez un binaire, vous devez aussi inclure le code source. Les versions modifiées doivent être distribuées sous la même licence que l'original ; vous n'êtes pas autorisé à modifier la licence.

Lors de la création d'un travail combiné, une autre distinction peut être faite. _Forte_ les licences copyleft sur un composant nécessitent un travail combiné pour être licencié sous la même licence que le composant. Dans l'exemple ci-dessus, si la bibliothèque B est distribuée sous une forte licence copyleft telle que la GNU GPL, alors le programme A doit être distribué sous cette même licence.

_Les licences_ faibles permettent de distribuer le travail combiné (A) sous n'importe quelle licence, aussi longtemps que la source du composant sous licence (B) est également disponible sous sa licence originale. Ils peuvent également exiger que le destinataire du travail combiné puisse relier à nouveau les modules après avoir modifié le composant.

(rr-licensing-software-overview)=
## Aperçu des autorisations

<table>
    <thead>
        <tr>
            <th rowspan="2"></th>
            <th colspan="2">Copie à gauche</th>
            <th rowspan="2">Permissive</th>
            <th rowspan="2">Propriétaire</th>
        </tr>
        <tr>
            <th>Forte</th>
            <th>Faible</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th>Utiliser pour n'importe quoi</th>
            <td>Oui</td>
            <td>Oui</td>
            <td>Oui</td>
            <td>Parfois</td>
        </tr>
        <tr>
            <th>Changements privés</th>
            <td>Oui</td>
            <td>Oui</td>
            <td>Oui</td>
            <td>Rarement</td>
        </tr>
        <tr>
            <th>Distribuer l'original</th>
            <td>Même licence, avec la source</td>
            <td>Même licence, avec la source</td>
            <td>Même licence, également binaire<sup>1</sup></td>
            <td>Rarement</td>
        </tr>
        <tr>
            <th>Distribuer modifié</th>
            <td>Même licence, avec la source</td>
            <td>Même licence, avec la source<sup>2</sup></td>
            <td>N'importe quelle licence, également binaire</td>
            <td>Rarement</td>
        </tr>
        <tr>
            <th>Distribuer combiné</th>
            <td>Même licence, avec la source</td>
            <td>N'importe quelle licence, ajouts binaires</td>
            <td>N'importe quelle licence, également binaire</td>
            <td>Rarement</td>
        </tr>
    </tbody>
    <caption>
      <div class="footnote">
        <sup>1</sup>Sous n'importe quelle licence pour la licence MIT <sup>2</sup>La réattribution de LGPL à la GPL est autorisée
      </div>
      Les licences autorisées accordent le plus grand ensemble de permissions aux utilisateurs. Les licences Copyleft nécessitent la redistribution de la source originale ou modifiée pour utiliser la même licence, avec de faibles licences de copyleft permettant un choix différent de licence pour l'œuvre combinée. Les licences propriétaires ne fournissent que rarement des autorisations en dehors du droit d'utilisation du logiciel.
    </caption>
</table>

