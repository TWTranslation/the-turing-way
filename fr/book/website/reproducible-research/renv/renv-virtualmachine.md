(rr-renv-vm)=

# Machines virtuelles

(rr-renv-vm-quoi)=

## Que sont les machines virtuelles ?

Les machines virtuelles (VMs) empaquetent essentiellement tout un ordinateur comme une application qui peut être exécutée.
À titre d'exemple, la figure ci-dessous montre un ordinateur portable Windows (notez le bouton de recherche Windows dans le coin inférieur gauche) en exécutant une machine ubuntu virtuelle (notez le terminal sortant le système d'exploitation).
The machine running the VM is called the `host machine`.

Using software like [VirtualBox](https://www.virtualbox.org/) or [Vagrant](https://www.vagrantup.com/), a user can create and run any number of VMs.
Comme vous pourriez probablement le deviner, avoir plusieurs machines virtuelles fonctionnant à la fois peut être une draine de mémoire.
Donc, simplement parce que vous pouvez exécuter plusieurs machines virtuelles ne veut pas dire que vous devriez.

```{figure} ../../../figures/virtual-machine.*
---
name: virtual-machine
alt: A screenshot of a Virtual Machine.
---

```

Les utilisateurs peuvent télécharger, installer, sauvegarder et détruire à leur guise, c'est pourquoi ils sont un outil attrayant pour partager la recherche reproductible.
La recherche nécessite souvent des éléments spécifiques de logiciels ou de systèmes.
Si un chercheur souhaite reproduire le travail d'un autre sur son ordinateur, apporter les changements nécessaires à leur environnement pour exécuter le projet peut avoir un impact sur leur travail.
For example, in the {ref}`rr-renv-useful` section of this chapter, we described how using a different version of Python can lead to unexpected changes in the results of an analysis.
Dire qu'un chercheur installe une version mise à jour de Python pour répliquer une analyse parce que l'analyse nécessite uniquement des fonctionnalités présentes dans la version mise à jour.
Ce faisant, ils mettent leur propre travail en danger.
Les machines virtuelles enlèvent ce risque ; tous les outils téléchargés ou les paramètres modifiés n'affecteront que la machine virtuelle, en préservant la sécurité des recherches du lecteur.
S'ils font par inadvertance casser quelque chose dans la VM, ils peuvent le supprimer et en faire un autre.
Les MV sont en fait une zone de quarantaine.

(rr-renv-vm-research)=

## Utiliser des Machines Virtuelles pour la Recherche Reproductible

Les machines virtuelles peuvent être partagées en les exportant en tant que fichiers uniques.
Another researcher can then import that file using their own virtualisation software like [VirtualBox](https://www.virtualbox.org/) and open up a copy of the VM which will contain all the software files and settings put in place by the person that made the VM.
Par conséquent, dans la pratique, ils auront une version fonctionnelle du projet sans la peine de l'installer eux-mêmes.

(rr-renv-vm-research-settingup)=

### Mise en place d'une Machine Virtuelle

Tout d'abord, choisissez un outil pour générer des VM.
Here the widely-used [VirtualBox](https://www.virtualbox.org/) is chosen.
Téléchargez et installez-le sur votre système.
Pour créer une nouvelle machine, cliquez sur "Nouveau" en haut à gauche.
Une fenêtre apparaît où vous pouvez entrer un nom pour la machine et sélectionner le système d'exploitation (et la version) à utiliser.
In the figure below, a machine called `demo_VM` running Ubuntu is being created:

```{figure} ../../../figures/vm-create-machine.*
---
name: vm-create-machine
alt: A screenshot showing a Virtual Machine is created.
---

```

Au fur et à mesure que vous cliquez, vous pouvez régler d'autres fonctionnalités de la machine à créer, comme la quantité de mémoire à laquelle elle devrait avoir accès.
Les options par défaut sont appropriées pour la plupart des usages, mais ce processus permet la personnalisation.

(rr-renv-vm-research-starting)=

### Lancer une machine virtuelle

To start a virtual machine, select the machine from the list of VMs on the left, and click the green `Start` arrow at the top:

```{figure} ../../../figures/vm-start-machine.*
---
name: vm-start-machine
alt: A screenshot showing how to start a Virtual Machine.
---

```

(rr-renv-vm-research-sharing)=

### Partage de machines virtuelles

Un chercheur peut travailler sur son MV, puis l'exporter.
To export a VM, click `File` in the top left and then `Export`.
Ceci exportera la VM en un seul fichier qui peut être partagé.

```{figure} ../../../figures/vm-export-machine.*
---
name: vm-export-machine
alt: A screenshot showing how to export a Virtual Machine.
---

```

Someone that has access to this file and VirtualBox installed just needs to click `File` in the top left, then `Import` to select that file.
Une fois importé, ils peuvent démarrer la VM comme décrit précédemment, en le sélectionnant dans le menu en cliquant sur la flèche verte de début en haut.

(rr-renv-vm-vagrant)=

## Declarative Virtual Machines with Vagrant

[Vagrant](https://www.vagrantup.com/) is a tool which _"enables users to create and configure lightweight, reproducible, and portable development environments"_.
In this context, an environment is a virtual machine (its CPUs, RAM, networking and so on) and the machines state (operating system, packages).
Vagrant can set up virtual machines using text scripts, instead of pointing and clicking through a graphical user interface.
This makes it particularly useful for automating the process of setting up virtual machines and making that process reproducible.
(rr-renv-vm-vagrant-details)=

### How Vagrant Works

Unlike some other tools you may use to create or manage virtual machines, like [VirtualBox](https://www.virtualbox.org/) and [QEMU](https://www.qemu.org/), Vagrant does not have its own hypervisor.
Instead, Vagrant uses [providers](https://developer.hashicorp.com/vagrant/docs/providers) to interact with other virtualisation tools.
Vagrant has built in providers for [VirtualBox](https://www.virtualbox.org/), [Hyper-V](https://learn.microsoft.com/en-us/virtualization/hyper-v-on-windows/about/) and [Docker](https://www.docker.com/).
Other providers can be supported by plugins.
In particular, the Vagrant developers maintain an [official plugin](https://developer.hashicorp.com/vagrant/docs/providers/vmware/installation) for [VMWare](https://www.vmware.com/).
For Linux users there is also a [community supported provider](https://vagrant-libvirt.github.io/vagrant-libvirt/) for [libvirt](https://libvirt.org/).

```{note}
A hypervisor is software which allows virtual machines to interact with host machines hardware at a low level.
[This](https://www.redhat.com/en/topics/virtualization/what-is-a-hypervisor) article from Red Hat gives a good overview.
```

Vagrant environments can be packed into [boxes](https://developer.hashicorp.com/vagrant/docs/boxes).
When using Vagrant you will most likely start from an existing box and build your environment on top of it.
You can browse and search for public boxes [here](https://app.vagrantup.com/boxes/search).

After deploying a box, Vagrant can also use [provisioners](https://developer.hashicorp.com/vagrant/docs/provisioning) to apply further configuration.
This is useful to adapt a generic box to a specific purpose, for example by installing packages.
Provisioning can be as simple as a shell script but can also incorporate powerful configuration management tools like [Ansible](https://docs.ansible.com/ansible/latest/index.html), [Puppet](https://puppet.com/) and [Chef](https://www.chef.io/).

(rr-renv-vm-vagrant-vagrantfile)=

### The Vagrantfile

With Vagrant, users can define the configuration of a virtual machine (or group of virtual machines) in a declarative configuration language stored in a Vagrantfile.
This configuration is written in the [Ruby](https://www.ruby-lang.org/en/) programming language.
However, it is not necessary to know Ruby as the syntax is simple and the [documentation](https://developer.hashicorp.com/vagrant/docs/vagrantfile) explains all of the available options.

```{attention}
For Vagrant to recognise a Vagrantfile file, it must be called `Vagrantfile`.
```

Defining the virtual machines in plain text has a number of advantages over distributing full virtual machine images:

- The files can be checked into version control
- Small size makes them fast and easy to share
- Users can reproducibly build environments
- A single definition can potentially work across multiple hypervisors (like VirtualBox, VMWare, libvirt)

In combination these qualities support Vagrant's goals of lightweight, portable and reproducible environments.
A project can maintain its development environment alongside the source code and every contributor can use the environment with minimal barriers.

(rr-renv-vm-vagrant-cli)=

### The Vagrant CLI

You will most likely use vagrant through the command line interface (CLI).
The CLI can be used to:

- manage machines with commands like `vagrant up`, `vagrant halt` and `vagrant destroy`
- connect to machines with `vagrant ssh` and `vagrant powershell`
- get, package and publish boxes
- create minimal a Vagrantfile with `vagrant init`

Full documentation for all commands can be found [here](https://developer.hashicorp.com/vagrant/docs/cli).

(rr-renv-vm-vagrant-sync)=

### Syncing Data

Vagrant can help sharing data between the host and the virtual machine by syncing directories.
By default, the directory containing the Vagrantfile is mounted at `/vagrant` on the guest.
Therefore, if you keep a Vagrantfile in the root of a git repository, when you use the Vagrant environment you will find your project at `/vagrant`.
This makes it convenient to develop, build and test your project within the environment.

Additional shared directories can be declared as explained in [the documentation](https://developer.hashicorp.com/vagrant/docs/synced-folders/basic_usage).

```{attention}
Some boxes may not have any shared directories, so it is best to explicitly define any that you want in your Vagrantfile.
In particular, the 'generic' images built by [Roboxes](https://roboxes.org/) do not have any mounts by default.
These boxes are popular as they cover a wide variety of distributions and support a multiple hypervisors.
```

(rr-renv-vm-ttw)=

## A Virtual Machine for The Turing Way

Here we will walk through some important part of a Vagrantfile by designing an environment to build The Turing Way.
Building the book this way might help keep your host system clean from build dependencies.
It could also help debug problems as multiple people can better ensure they are using the same environment to work on the book.

(rr-renv-vm-ttw-vagrantfile)=

### The Vagrantfile

You can find the [full Vagrantfile](https://github.com/the-turing-way/the-turing-way/blob/main/Vagrantfile) in the root of The Turing Way git repository.
We will then use some of the Vagrant CLI commands to provision the machine and use it to build the book.

The top level block of the Vagrantfile specifies the Vagrant configuration version.
This will help maintain backwards compatibility if new versions are released.
All other configuration is contained within this block.

```{code-block} ruby
Vagrant.configure("2") do |config|
  ...
end
```

Next the box to build our environment from is specified.

```{code-block} ruby
  config.vm.box = "generic/fedora36"
```

This is a box for version 36 of the [Fedora Workstation Linux distribution](https://getfedora.org/en/workstation/).
The generic org creates boxes of many Linux distributions for multiple hypervisors.
This makes them useful for creating environments which can be run by users on different operating systems.

The virtual machine's hostname is defined, and The Turing Way project directory is mounted at `/vagrant` inside the virtual machine.

```{code-block} ruby
  config.vm.hostname = 'theturingway'

  config.vm.synced_folder "./", "/vagrant"
```

The number of virtual CPUs and amount of memory are set in provider specific blocks.
In this example two virtual CPUs and 2048MB of RAM are allocated for the VirtualBox and libvirt providers.

Provider specific overrides can also be specified in provider blocks.
In this example the synced directory settings are changed for libvirt to improve NFS compatibility.
NFS is the default method to sync folders for libvirt.

```{code-block} ruby
  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 2
    vb.memory = 2048
  end

  config.vm.provider "libvirt" do |lv, override|
    lv.cpus = 2
    lv.memory = 2048

    override.vm.synced_folder "./", "/vagrant", nfs_udp: false
  end
```

The shell provisioner is used to install the packages necessary to build the book.
First a script is defined to install pip, then use pip to install the python requirements as explained in the [book README](https://github.com/the-turing-way/the-turing-way/blob/main/book/README.md).
The script is then passed to the provisioner.

```{code-block} ruby
  $script = <<-'SCRIPT'
  dnf install -y python3-pip
  sudo -u vagrant pip install --no-warn-script-location -r /vagrant/book/requirements.txt
  SCRIPT

  config.vm.provision "shell", inline: $script
```

(rr-renv-vm-ttw-build)=

### Building the book

Here we will show how to use The Turing Way Vagrant machine to build the book.
First you will need to make sure you have [installed Vagrant](https://developer.hashicorp.com/vagrant/tutorials/getting-started/getting-started-install) and a compatible provider.
[VirtualBox](https://www.virtualbox.org/) will probably be the easiest provider to use as it is supported on Linux, MacOS and Windows.
Windows users can also try [Hyper-V](https://learn.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v), which is included in some editions of Windows 10 and Windows 11.

If you haven't already, clone The Turing Way repository and change to the projects root directory.

```{code-block} console
git clone https://github.com/the-turing-way/the-turing-way.git
cd the-turing-way
```

Now create the virtual machine.
The output will show Vagrant creating the machine as well as the provisioner script installing the build dependencies.
Windows users can modify this command to `vagrant up --provider hyperv` to use Hyper-V.

```{code-block} console
vagrant up
```

You can now connect to the machine with SSH.
Vagrant has a convenient wrapper to make this simple.

```{code-block} console
vagrant ssh
```

The project directory has been mounted at `/vagrant` on the guest.
We can change to the `book/website` directory and build the book like in the [README](https://github.com/the-turing-way/the-turing-way/blob/main/book/README.md).

```{code-block} console
[vagrant@theturingway ~]$ cd /vagrant/book/website/
[vagrant@theturingway website]$ jupyter-book build .
```

As the directory is shared with the host system, you will be able to see the built book on your computer and view it in your browser.

When you are done you can exit the virtual machine, and halt it.
You can also destroy the virtual machine to clean up all storage associated with it.

```{code-block} console
[vagrant@theturingway ~]$ exit
vagrant halt
vagrant destroy
```
