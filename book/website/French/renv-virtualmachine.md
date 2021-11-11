(rr-renv-vm)=
# Machines virtuelles

(rr-renv-vm-quoi)=
## Que sont les machines virtuelles ?

Les machines virtuelles (VMs) empaquetent essentiellement tout un ordinateur comme une application qui peut être exécutée. À titre d'exemple, la figure ci-dessous montre un ordinateur portable Windows (notez le bouton de recherche Windows dans le coin inférieur gauche) en exécutant une machine ubuntu virtuelle (notez le terminal sortant le système d'exploitation). La machine exécutant la VM est appelée la `machine hôte`.

En utilisant des logiciels comme [VirtualBox](https://www.virtualbox.org/) ou [Vagrant](https://www.vagrantup.com/), un utilisateur peut créer et exécuter n'importe quel nombre de VM. Comme vous pourriez probablement le deviner, avoir plusieurs machines virtuelles fonctionnant à la fois peut être une draine de mémoire. Donc, simplement parce que vous pouvez exécuter plusieurs machines virtuelles ne veut pas dire que vous devriez.

```{figure} ../../figures/virtual-machine.png
---
name : machine virtuelle
alt : une capture d'écran d'une machine virtuelle.
---

```

Les utilisateurs peuvent télécharger, installer, sauvegarder et détruire à leur guise, c'est pourquoi ils sont un outil attrayant pour partager la recherche reproductible. La recherche nécessite souvent des éléments spécifiques de logiciels ou de systèmes. Si un chercheur souhaite reproduire le travail d'un autre sur son ordinateur, apporter les changements nécessaires à leur environnement pour exécuter le projet peut avoir un impact sur leur travail. Par exemple, dans la section {ref}`rr-renv-useful` de ce chapitre, nous avons décrit comment utiliser une version différente de Python peut conduire à des changements inattendus dans les résultats d'une analyse. Dire qu'un chercheur installe une version mise à jour de Python pour répliquer une analyse parce que l'analyse nécessite uniquement des fonctionnalités présentes dans la version mise à jour. Ce faisant, ils mettent leur propre travail en danger. Les machines virtuelles enlèvent ce risque ; tous les outils téléchargés ou les paramètres modifiés n'affecteront que la machine virtuelle, en préservant la sécurité des recherches du lecteur. S'ils font par inadvertance casser quelque chose dans la VM, ils peuvent le supprimer et en faire un autre. Les MV sont en fait une zone de quarantaine.

(rr-renv-vm-research)=
## Utiliser des Machines Virtuelles pour la Recherche Reproductible

Les machines virtuelles peuvent être partagées en les exportant en tant que fichiers uniques. Un autre chercheur peut ensuite importer ce fichier en utilisant son propre logiciel de virtualisation comme [VirtualBox](https://www.virtualbox.org/) et ouvrir une copie de la VM qui contiendra tous les fichiers logiciels et les paramètres mis en place par la personne qui a fait la VM. Par conséquent, dans la pratique, ils auront une version fonctionnelle du projet sans la peine de l'installer eux-mêmes.

(rr-renv-vm-research-settingup)=
### Mise en place d'une Machine Virtuelle

Tout d'abord, choisissez un outil pour générer des VM. Ici, la [VirtualBox](https://www.virtualbox.org/) largement utilisée est choisie. Téléchargez et installez-le sur votre système. Pour créer une nouvelle machine, cliquez sur "Nouveau" en haut à gauche. Une fenêtre apparaît où vous pouvez entrer un nom pour la machine et sélectionner le système d'exploitation (et la version) à utiliser. Dans la figure ci-dessous, une machine appelée `demo_VM` exécutant Ubuntu est en cours de création :

```{figure} ../../figures/vm-create-machine.png
---
nom: vm-create-machine
alt: Une capture d'écran montrant une Machine Virtuelle est créée.
---

```

Au fur et à mesure que vous cliquez, vous pouvez régler d'autres fonctionnalités de la machine à créer, comme la quantité de mémoire à laquelle elle devrait avoir accès. Les options par défaut sont appropriées pour la plupart des usages, mais ce processus permet la personnalisation.

(rr-renv-vm-research-starting)=
### Lancer une machine virtuelle

Pour démarrer une machine virtuelle, sélectionnez la machine dans la liste des VM à gauche, et cliquez sur la flèche verte `Démarrer` en haut :

```{figure} ../../figures/vm-start-machine.png
---
nom: vm-start-machine
alt: Une capture d'écran montrant comment démarrer une Machine Virtuelle.
---

```

(rr-renv-vm-research-sharing)=
### Partage de machines virtuelles

Un chercheur peut travailler sur son MV, puis l'exporter. Pour exporter une VM, cliquez sur `Fichier` en haut à gauche puis `Exporter`. Ceci exportera la VM en un seul fichier qui peut être partagé.

```{figure} ../../figures/vm-export-machine.png
---
nom: vm-export-machine
alt: Une capture d'écran montrant comment exporter une Machine Virtuelle.
---

```

Quelqu'un qui a accès à ce fichier et VirtualBox installé a juste besoin de cliquer sur `Fichier` en haut à gauche, puis `Importer` pour sélectionner ce fichier. Une fois importé, ils peuvent démarrer la VM comme décrit précédemment, en le sélectionnant dans le menu en cliquant sur la flèche verte de début en haut.
