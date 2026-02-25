(rr-renv-vm)=

# Máquinas virtuais

(rr-renv-vm-what)=

## O que são Máquinas Virtuais?

As Máquinas Virtuais (PMs) empacotam essencialmente um computador inteiro como um aplicativo que pode ser executado.
Como exemplo, a figura abaixo mostra um laptop de janela (observe o botão de busca de janelas no canto inferior esquerdo) executando uma máquina de ubuntu virtual (note o terminal colocando o sistema operacional).
The machine running the VM is called the `host machine`.

Using software like [VirtualBox](https://www.virtualbox.org/) or [Vagrant](https://www.vagrantup.com/), a user can create and run any number of VMs.
Como provavelmente poderia imaginar, ter várias VMs a serem executadas de uma só vez pode ser um esgoto de memória.
Portanto, só porque pode administrar várias VMs não quer dizer que devesse.

```{figure} ../../../figures/virtual-machine.*
---
name: virtual-machine
alt: A screenshot of a Virtual Machine.
---

```

Os usuários podem baixar, instalar, fazer backup e destruir VMs de qualquer forma, por isso eles são uma ferramenta atraente para o compartilhamento de pesquisas reprodutíveis.
Pesquisas muitas vezes requerem peças específicas de software ou configurações do sistema.
Se um pesquisador desejar reproduzir o trabalho de outro em seu computador, realizar as alterações necessárias em seu ambiente para executar o projeto pode impactar o seu trabalho.
For example, in the {ref}`rr-renv-useful` section of this chapter, we described how using a different version of Python can lead to unexpected changes in the results of an analysis.
Diga a um pesquisador que instala uma versão atualizada do Python para replicar uma análise, porque a análise requer que ele só esteja presente na versão atualizada.
Ao fazê-lo, põem em risco o seu próprio trabalho.
VMs removem esse risco; qualquer ferramenta baixada ou configurações alteradas afetará apenas a VM, mantendo a pesquisa de reprodutor segura.
Se fizerem inadvertidamente quebrar algo na VM, podem apagá-lo e fazer outro.
Com efeito, as VMs são uma área quarentena de pessoas.

(rr-renv-vm-pesquisa)=

## Usando Máquinas Virtuais para Pesquisa Reprodutível

Máquinas virtuais podem ser compartilhadas exportando-as como arquivos individuais.
Another researcher can then import that file using their own virtualisation software like [VirtualBox](https://www.virtualbox.org/) and open up a copy of the VM which will contain all the software files and settings put in place by the person that made the VM.
Por conseguinte, na prática, terão uma versão funcional do projecto, sem a dificuldade de o pôr a si próprio.

(rr-renv-vm-pesquisa-settingup)=

### Configurando uma Máquina Virtual

Primeiro, escolha uma ferramenta para gerar as VMs.
Here the widely-used [VirtualBox](https://www.virtualbox.org/) is chosen.
Baixe e instale-o no seu sistema.
Para criar uma nova máquina, clique "Novo" no canto superior esquerdo.
Uma janela aparecerá onde você pode digitar um nome para a máquina e selecionar que sistema operacional (e versão) utilizar.
In the figure below, a machine called `demo_VM` running Ubuntu is being created:

```{figure} ../../../figures/vm-create-machine.*
---
name: vm-create-machine
alt: A screenshot showing a Virtual Machine is created.
---

```

Conforme você clica, você pode ajustar outras características da máquina a ser criada, como quanta memória ela deve ter acesso.
As opções padrão são adequadas para a maioria dos fins, mas este processo permite a personalização.

(rr-renv-vm-pesquisa-iniciando)=

### Iniciando uma Máquina Virtual

To start a virtual machine, select the machine from the list of VMs on the left, and click the green `Start` arrow at the top:

```{figure} ../../../figures/vm-start-machine.*
---
name: vm-start-machine
alt: A screenshot showing how to start a Virtual Machine.
---

```

(rr-renv-vm-pesquisa-compartilhamento)=

### Compartilhando Máquinas Virtuais

Um pesquisador pode fazer seu VM e, em seguida, exportá-lo.
To export a VM, click `File` in the top left and then `Export`.
Isto irá exportar a VM como um único arquivo que pode ser compartilhado.

```{figure} ../../../figures/vm-export-machine.*
---
name: vm-export-machine
alt: A screenshot showing how to export a Virtual Machine.
---

```

Someone that has access to this file and VirtualBox installed just needs to click `File` in the top left, then `Import` to select that file.
Uma vez importado, eles poderão iniciar a VM conforme descrito anteriormente, selecionando-o a partir do menu clicando na seta para início verde na parte superior.

(rr-renv-vm-vagrant)=

## Máquinas Virtuais Declarativas com Vagrant

[Vagrant](https://www.vagrantup.com/) is a tool which _"enables users to create and configure lightweight, reproducible, and portable development environments"_.
Neste contexto, o ambiente é uma máquina virtual (suas CPUs, RAM, rede e assim por diante) e o estado da máquina (sistema operacional, pacotes).
Vagrant pode configurar máquinas virtuais usando scripts de texto, em vez de apontar e clicar em uma interface gráfica de usuário.
Isso o torna particularmente útil para automatizar o processo de configuração de máquinas virtuais e deixar esse processo reprodutível.
(rr-renv-vm-vagrant-details)=

### Como Funciona o Vagrant

Unlike some other tools you may use to create or manage virtual machines, like [VirtualBox](https://www.virtualbox.org/) and [QEMU](https://www.qemu.org/), Vagrant does not have its own hypervisor.
Instead, Vagrant uses [providers](https://developer.hashicorp.com/vagrant/docs/providers) to interact with other virtualisation tools.
Vagrant has built in providers for [VirtualBox](https://www.virtualbox.org/), [Hyper-V](https://learn.microsoft.com/en-us/virtualization/hyper-v-on-windows/about/) and [Docker](https://www.docker.com/).
Outros provedores podem ser suportados por plugins.
In particular, the Vagrant developers maintain an [official plugin](https://developer.hashicorp.com/vagrant/docs/providers/vmware/installation) for [VMWare](https://www.vmware.com/).
For Linux users there is also a [community supported provider](https://vagrant-libvirt.github.io/vagrant-libvirt/) for [libvirt](https://libvirt.org/).

```{note}
A hypervisor is software which allows virtual machines to interact with host machines hardware at a low level.
[This](https://www.redhat.com/en/topics/virtualization/what-is-a-hypervisor) article from Red Hat gives a good overview.
```

Vagrant environments can be packed into [boxes](https://developer.hashicorp.com/vagrant/docs/boxes).
Ao usar o Vagrant, você provavelmente vai começar de uma caixa vazia e construir seu ambiente em cima dela.
You can browse and search for public boxes [here](https://app.vagrantup.com/boxes/search).

After deploying a box, Vagrant can also use [provisioners](https://developer.hashicorp.com/vagrant/docs/provisioning) to apply further configuration.
Isso é útil para adaptar uma caixa genética a um propósito específico, pela instalação de pacotes, por exemplo.
Provisioning can be as simple as a shell script but can also incorporate powerful configuration management tools like [Ansible](https://docs.ansible.com/ansible/latest/index.html), [Puppet](https://puppet.com/) and [Chef](https://www.chef.io/).

(rr-renv-vm-vagrant-vagrantfile)=

### O Vagrantfile

Com o Vagrant, usuários podem definir a configuração de uma máquna virtual (ou de um grupo de máquinas virtuais) com uma linguagem declarativa de configuração armazenada em um Vagrantfile.
This configuration is written in the [Ruby](https://www.ruby-lang.org/en/) programming language.
However, it is not necessary to know Ruby as the syntax is simple and the [documentation](https://developer.hashicorp.com/vagrant/docs/vagrantfile) explains all of the available options.

```{attention}
For Vagrant to recognise a Vagrantfile file, it must be called `Vagrantfile`.
```

Definir máquinas virtuais em texto simples tem várias vantagens em relação à distribuição de imagens completas de máquinas virtuais:

- Os arquivos podem ser verificados em versionamento
- O tamanho menor torna o compartilhamento fácil e rápido
- Usuários podem construir ambientes de forma reprodutível
- Uma única definição pode funcionar potencialmente em vários hipervisores (como VirtualBox, VMWare, libvirt)

Em conjunto, essas qualidades dão suporte para os objetivos do Vagrant de ambientes leves, portáteis e reproduzíveis.
Um projeto pode manter seu ambiente de desenvolvimento em conjunto com o código-fonte, e todos os contribuidores podem usar o ambiente com barreiras mínimas.

(rr-renv-vm-vagrant-cli)=

### A CLI do Vagrant

Você muito provavelmente usará o Vagrant pela interface de linha de comando (CLI, do inglês command line interface).
A CLI pode ser usado para:

- manage machines with commands like `vagrant up`, `vagrant halt` and `vagrant destroy`
- connect to machines with `vagrant ssh` and `vagrant powershell`
- Obter, empacotar e publicar caixas
- create minimal a Vagrantfile with `vagrant init`

Full documentation for all commands can be found [here](https://developer.hashicorp.com/vagrant/docs/cli).

(rr-renv-vm-vagrant-sync)=

### Sincronizando Dados

O Vagrant pode ajudar a compartilhar dados entre o host e a máquina virtual, sincronizando diretórios.
By default, the directory containing the Vagrantfile is mounted at `/vagrant` on the guest.
Therefore, if you keep a Vagrantfile in the root of a git repository, when you use the Vagrant environment you will find your project at `/vagrant`.
Isso torna conveniente o desenvolvimento, a criação e o teste de seu projeto no ambiente.

Additional shared directories can be declared as explained in [the documentation](https://developer.hashicorp.com/vagrant/docs/synced-folders/basic_usage).

```{attention}
Some boxes may not have any shared directories, so it is best to explicitly define any that you want in your Vagrantfile.
In particular, the 'generic' images built by [Roboxes](https://roboxes.org/) do not have any mounts by default.
These boxes are popular as they cover a wide variety of distributions and support a multiple hypervisors.
```

(rr-renv-vm-ttw)=

## Uma máquina virtual para o The Turing Way

Aqui, examinaremos algumas partes importantes de um Vagrantfile, projetando um ambiente para criar o The Turing Way.
Building the book this way might help keep your host system clean from build dependencies.
It could also help debug problems as multiple people can better ensure they are using the same environment to work on the book.

(rr-renv-vm-ttw-vagrantfile)=

### O Vagrantfile

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
