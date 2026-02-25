(rr-renv-containers)=

# Contêineres

(rr-renv-containers-why)=

## Por que contêineres?

Mesmo para projetos moderadamente complexos, o tamanho da pilha de dependências de software pode ser enorme.
Take a simple pipeline to build a pdf report for an analysis scripted in R using `Rmarkdown`, for example.
To make this reproducible, not only do (i) the respective R packages need to be installed and (ii) the R version needs to be the same, but also (iii) the versions of `pandoc` and `LaTeX` need to be the same as during runtime.

Em vez de tentar resolver essas dependências por meio de um gerenciador de pacotes (como conda) - que também depende de todos os softwares necessários estarem disponíveis em um único gerenciador de pacotes - pode ser mais fácil criar um registro (snapshot) de todo o ambiente de computação, incluindo todas as dependências.
Então, estes ambientes computacionais são auto-contidos, daí a designação de 'contêineres'.

This RedHat blog
post
provides an introduction to containers and container terminology.

(rr-renv-containers-what)=

## O que são contêineres?

Os contêineres permitem que um pesquisador empacote um projeto com todas as partes necessárias - como bibliotecas, dependências e configurações do sistema - e enviar tudo como um pacote.
Anyone can then open up a container and work within it, viewing and interacting with the project as if the machine they are accessing it from is identical to the machine specified in the container - regardless of what their computational environment _actually_ is.
Eles são projetados para facilitar a transferência de projetos entre ambientes muito diferentes.

De certa forma, os contêineres se comportam como uma máquina virtual. Para o mundo exterior, parecem ter o seu próprio sistema completo.
No entanto, ao contrário de uma máquina virtual, ao invés de criar todo um sistema operacional virtual e todas as ferramentas e softwares tipicamente empacotados com um, os contêineres só contêm os componentes individuais de que eles precisam para operar o projeto que eles contêm.
Isso dá um aumento significativo de desempenho e reduz o tamanho do aplicativo.

Os contêineres são uma maneira particularmente útil de reproduzir a pesquisa que depende que o software para ser configurado de certa maneira, ou que usa bibliotecas que variam entre (ou não existem em) diferentes sistemas.
Em resumo, contêineres são uma forma mais robusta de compartilhar pesquisas reprodutíveis do que sistemas de gerenciamento de pacotes ou Binder, porque eles reproduzem todo o sistema usado para a pesquisa, não apenas os pacotes usados explicitamente por ele.
A sua principal desvantagem é o que, pela maior profundidade, são conceitualmente mais difíceis de entender e produzir do que muitos outros métodos de replicação de ambientes computacionais.

Ben Corrie give a reasonably accessible overview of core concepts in ['What is a container?'](https://www.youtube.com/watch?v=EnJ7qX9fkcU).

(rr-renv-containers-images)=

## O que são Imagens?

As imagens são os arquivos usados para gerar contêineres.
Os seres humanos não fazem imagens; escrevem receitas para gerar imagens.
Os contêineres são, em seguida, cópias idênticas instanciadas a partir de imagens.

Pense nisso assim:

- Um arquivo de receita que um humano escreve contém todas as etapas para gerar uma versão funcional do projeto e seu ambiente computacional, mas não há materiais reais.
  Pense nisso como uma planta.
- A construição de uma imagem utiliza essa receita e a usando, monta todos os pacotes, bibliotecas de software e configurações necessárias para fazer o projeto e o ambiente completos e empacotá-los de forma condensada.
  Pense em imagens como uma mobília montável feita usando a planta.
- Os contêineres levam essa imagem e montam uma versão totalmente funcional do projeto e do ambiente necessário para executá-la.
  Pense nisto como se fosse a construção de móveis montáveis.

Portanto, se um pesquisador quiser permitir que outros reproduzam seus trabalhos, ele precisaria escrever um arquivo de receita e usá-lo para construir uma imagem do projeto.
Em seguida, ele pode compartilhar este arquivo de imagem com qualquer pessoa que queira replicar seu trabalho.
Essa pessoa pode então usar a imagem para gerar um contêiner contendo uma versão funcional do projeto.

(rr-renv-containers-docker)=

## Docker

(rr-renv-containers-whatdocker)=

### O que é Docker?

Há muitas ferramentas disponíveis para criar e trabalhar com contêineres.
We will focus on [Docker](https://www.docker.com/), which is widely used, but be aware that others such as [Apptainer](http://apptainer.org/), [LXC](https://linuxcontainers.org/), [Podman](https://podman.io/), [Singularity](https://sylabs.io/singularity/) also exist.
Apptainer e Singularity são projetados com foco em computação de alto desempenho e tendem a ter bom suporte e preferência nesses sistemas.
Podman pode ser visto como uma alternativa completamente gratuita e de código aberto para o Docker.
Ele tem uma interface por linha de comando compatível com o Docker e pode executar imagens desse contêiner.
Apptainer, Singularity and Podman do not need `sudo` permissions to be run, while up until April 2020 Docker did (please see the {ref}`rr-renv-containers-rootless` section).

In Docker, the recipe files used to generate images are known as Dockerfiles, and should be named `Dockerfile`.

[Docker Hub](https://hub.docker.com/) hosts a great many pre-made images, such as
[images](https://hub.docker.com/_/ubuntu) of Ubuntu machines, which can be downloaded and build upon.
Isso torna o processo de escrita de Dockerfiles relativamente fácil, já que os usuários raramente precisam começar do zero, eles podem simplesmente personalizar as imagens existentes.
However, this leaves a user vulnerable to similar security issues as described in the {ref}`rr-renv-yaml-security` of the {ref}`rr-renv-yaml` sub-chapter:

- É possível incluir código malicioso nas imagens do Docker
- É possível que pessoas que produzem imagens incluam software neles com vulnerabilidades de segurança, sem perceber

[This](https://opensource.com/business/14/7/docker-security-selinux) article goes deeper into the potential security vulnerabilities of containers and here is a [detailed breakdown](https://opensource.com/business/14/9/security-for-docker) of security features currently within Docker, and how they function.
O melhor conselho para o uso de imagens construídas por outros é, como de costume, só baixe e execute algo em sua máquina se ela vier de uma fonte confiável.
O Docker Hub tem emblemas de "imagem oficial" para imagens normalmente usadas, verificadas, como mostrado aqui:

```{figure} ../../../figures/docker-official-image.*
---
name: docker-official-image
alt: A screenshot of official image badges
---
```

(rr-renv-containers-installation)=

### Instalando o Docker

Installers for Docker on a variety of different systems are available [here](https://docs.docker.com/install/).
Detailed installation instructions are also available for a variety of operating systems such as [Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/), [Debian](https://docs.docker.com/install/linux/docker-ce/debian/), [Macs](https://docs.docker.com/docker-for-mac/install/), and [Windows](https://docs.docker.com/docker-for-windows/install/).

(rr-renv-containers-commands)=

### Comandos-chave

Aqui estão alguns comandos-chave para criar e trabalhar com contêineres:

- Para construir uma imagem de um arquivo Dockerfile, vá para o diretório onde o arquivo Dockerfile está e execute:
  ```
  sudo docker build --tag image_name .
  ```
- Para listar as imagens em seu sistema, use:
  ```
  sudo docker image ls
  ```
- Para remover uma imagem, execute:
  ```
  sudo docker rmi image_name
  ```
- Para abrir um contêiner de uma imagem, execute:
  ```
  sudo docker run -i -t image_name
  ```
  The `-i -t` flags automatically open up an interactive terminal within the container so you can view and interact with the project files.
- Para sair de um terminal interativo, use:
  ```
  exit
  ```
- Para obter uma lista de contêineres ativos com IDs, execute:
  ```
  sudo docker container ls
  ```
- Há também três comandos principais usados para alterar o status dos contêineres:
  - Pausing suspende o processo rodando o contêiner.
    ```
    sudo docker pause container_ID
    ```
    Containers can be unpaused by replacing `pause` with `unpause`.
  - Parar um contêiner termina o processo que o executa. Um contêiner deve ser parado antes que possa ser excluído.
    ```
    sudo docker stop container_ID
    ```
    A stopped container can be restarted by replacing `stop` with `restart`.
  - If `stop` does not work containers can be killed using
    ```
    sudo docker kill container_ID
    ```
- Para remover um contêiner, execute:
  ```
  sudo docker rm container_ID
  ```

(rr-renv-containers-dockerfiles)=

### Escrevendo arquivos Dockerfiles

Vamos ver a anatomia de um Dockerfile muito simples:

```
# Step 1: Set up the computational environment

# Set the base image
FROM ubuntu:18.04

# Install packages needed to run the project
RUN apt-get update && \
    apt-get install -y --no-install-recommends python3.7 python3-pip && \
    rm -rf /var/lib/apt/lists/*
RUN python3 -m pip install numpy

#-----------------------

# Step 2: Include the project files in the image

# Copy files from the `project_files` directory on the machine building the image
# into the `project` folder in the container. This folder and any missing
# directories in its path are created automatically.
COPY project_files/ project/
```

This looks complicated, but most of the lines in this example are comments (which are preceded by `#`'s).
Há apenas seis linhas de código real.
The first of these is a `FROM` statement specifying a base image.
All Dockerfiles require a FROM, even if it is just `FROM SCRATCH`.
Todos os comandos a seguir em um arquivo Dockerfile são baseados na imagem base para fazer uma versão funcional do projeto do pesquisador.
Specifying a version for the image (`18.04` in this case) is optional.
However, it is best practice as it ensures that our Dockerfile remains valid after new releases of Ubuntu, which may not include packages (or specific versions thereof) that we require later (for example `python3.7`).

Vale a pena investir tempo para escolher uma imagem base apropriada, pois isso pode reduzir drasticamente a quantidade de trabalho envolvida na escrita de um Dockerfile.
For example, a collection of images with the R programming language included in them can be found [here](https://github.com/rocker-org/rocker-versioned).
Se um projeto faz uso de R, é conveniente usar uma dessas como imagem base ao invés de passar tempo escrevendo comandos no seu Dockerfile para instalar R.

O maior bloco de linhas vem em seguida.
It's a series of `RUN` statements, which run shell commands when building the image.
Neste bloco, eles são usados para instalar o software necessário para executar o projeto. The first `RUN` block is a
chain of commands of this form:

```
RUN command_to_do_thing_1 \
   && command_to_do_thing_2 \
   && command_to_do_thing_3 \
   && command_to_do_thing_4
```

It is good practice to group related commands into a single `RUN` block to reduce the final size of your image by
[avoiding the creation of unnecessary layers](https://docs.docker.com/develop/develop-images/#minimize-the-number-of-layers).
We also follow best-practice by using `--no-install-recommends` to [avoid installing unnecessary packages](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#dont-install-unnecessary-packages)
and [cleaning up the `apt-cache`](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#run), both of which further reduce the size of Debian or Ubuntu images.

Depois de instalarmos o Python, usamos outro comando RUN para instalar uma biblioteca exigida pelo nosso código.

Finally the `COPY` command is used to copy the project files from the machine building the image into the image itself.
The syntax of this command is `COPY file_to_copy location_in_container_to_copy_to`.
In this example, all the files in the `project_files` directory are included in the `project` file in the container.
Note that you can only copy files from the directory where the Dockerfile is located, or subdirectories within it (in the example, that is the
`project_files` subdirectory).

The `ADD` command has the same capabilities as `COPY`, but it can also be used to add files not on the machine building the image.
For example it can be used to include files hosted online by following `ADD` with a URL to the file.
It is good practice to use `COPY`, except where `ADD` is specifically required, as the term `COPY` is more explicit about what is being done.

Here is what happens if a container is opened from an image called `book_example`, built from the example above:

```{figure} ../../../figures/container-example.*
---
name: container-example
alt: A screenshot of what happens when a container is opened from an image
---
```

As you can see, the directory `project` has been created, and inside the project files, `analysis.py` and `data.csv` have been copied into it.
Because the Dockerfile already includes the software required for the project, in the image, the `analysis.py` script runs without installing more software.

(rr-renv-containers-dockerfiles-workdir)=

### `WORKDIR`

Esse comando pode ser usado no Dockerfiles para alterar o diretório de trabalho atual.
Commands that follow this in the Dockerfile will be applied within the new working directory unless/until another `WORKDIR` changes the working directory.
Quando um contêiner for aberto com um terminal interativo, o terminal será aberto no diretório final.
Here is a simple example of a Dockerfile that uses `WORKDIR`, and the container it generates.

```
# Basic setup
FROM ubuntu
RUN apt-get update

# Make a directory called A
RUN mkdir A

# Make the working directory A
WORKDIR A

# Make two directories, one called B_1 and one called B_2
RUN mkdir B_1
RUN mkdir B_2
```

```{figure} ../../../figures/workdir-example.*
---
name: workdir-example
alt: Screenshot of container generated using WORKDIR command
---
```

Directories `B_1` and `B_2` have been created within directory `A`.

`WORKDIR` should be used when changing directories is necessary while building an image.
It may be tempting to use `RUN cd directory_name` instead, as this syntax will be more familiar to those that commonly work via the command line,
but this can lead to errors.
After each `RUN` statement in a Dockerfile, the image is saved, and any following commands are applied to the image anew.
As an example, here is what happens in the above example if the `WORKDIR A` line is swapped
for `RUN cd A`.

```{figure} ../../../figures/cd-example.*
---
name: cd-example
alt: A screenshot of what happens when the WORKDIR command is swapped with RUN cd
---
```

All the directories have are in the top level in this case, rather than `B_1` and `B_2` being inside `A`.
This is because the image was restarted after the `RUN cd A` command and opened at the top (root) level by default, so that is where the
`mkdir B_1` and `mkdir B_2` commands took effect.

(rr-renv-containers-dockerfiles-commands)=

#### Outros comandos

Outros comandos que às vezes são usados em arquivos do Dockerfiles incluem:

- `CMD`: This is used to run commands as soon as the container is opened.
  This is different to RUN commands which are commands run as part of _setting up_ a container.
  For example, to have a welcome message when a container is opened from the image, `CMD` could be used as follows:
  ```
  CMD ["echo","Welcome! You just opened this container!"]
  ```
  It is good practice to use CMD for any commands that need to be run before someone starts working in the container
  instead of forcing users to run them themselves (and trusting that they will even know that they need to).
- `VOLUMES`: These will be discussed {ref}`later <rr-renv-containers-volumes>`.
- `MAINTAINER`: This contains information regarding the person that wrote the Dockerfile.
  Normalmente está incluído no topo de um arquivo Dockerfile.
- `EXPOSE`: This includes ports that should be exposed.
  É mais relevante para as pessoas que usam o Docker para compartilhar aplicativos web.
- `USER`: Change the user that a command is run as (useful for dropping privileges).

(rr-renv-containers-dockerignore)=

### Building Images and `.dockerignore` Files

As mentioned in the {ref}`key commands <rr-renv-containers-commands>` section, to build an image open a terminal in the same directory as
the Dockerfile to be used and run:

```
sudo docker build --tag name_to_give_image .
```

Quando uma imagem é construída, tudo no diretório do Dockerfile e abaixo (isso é chamado de "contexto") é enviado para o Docker daemon para construir a imagem.
O daemon usa o Dockerfile e seu contexto para construir a imagem.
Se o contexto contém muitos arquivos grandes, que não são necessários para a construção da imagem (dados antigos, por exemplo), então é uma perda de tempo enviá-los para o daemon.
Fazer isso pode deixar o processo de construção de uma imagem mais lento.
Files can be excluded from the context by listing them in a text file called `.dockerignore`.
É uma boa prática fazê-lo.

The files do not need to be listed individually in the `.dockerignore` file.
Here is an example of the contents of a `.dockerignore` file:

```
*.jpg
**/*.png
data_files/*
file_to_exclude.txt
```

Isso exclui do contexto:

- All `.jpg` files in the same directory as the Dockerfile file
- All `.png` files in the same directory as the Dockerfile file _or any subdirectories within it_
- All files within the `data_files` directory
- The file named `file_to_exclude.txt`

(rr-renv-containers-sharing)=

### Compartilhando imagens

Docker images can be shared most easily via [Docker Hub](https://hub.docker.com/), which requires an account.
Imagine dois investigadores, Alice e Bob, que estão colaborando num projeto e Alice deseja compartilhar uma imagem de algum de seu trabalho com Bob.

Para fazer isso, Alice deve:

- Escrever um arquivo Dockerfile para produzir uma imagem do seu trabalho.
- Construir a imagem. Ela (sendo inventiva) a chama de nome_imagem
- Ir ao Docker Hub e cadastrar sua conta. Say Alice (again, being inventive) chooses the username `username_Alice`
- Fazer login no Docker Hub pelo terminal usando:
  ```
  sudo docker login
  ```
- Tag the image of her project on her machine via the command line by supplying the name of the image and using the pattern `username/image_name:version`. Então o Alice executa o comando:
  ```
  sudo docker tag image_name username_Alice/image_name:version_1
  ```
- Fazer push da imagem (subir) para sua conta do Docker Hub usando:
  ```
  sudo docker tag push username_Alice/image_name:version_1
  ```
- A imagem do Alice está online e pode ser baixada. Agora para o Bob...

Bob (supondo que ele já tenha instalado o Docker) pode abrir um contêiner da imagem do Alice simplesmente executando:

```
sudo docker run -i -t username_Alice/image_name:version_1
```

Inicialmente, o Docker irá procurar essa imagem na máquina do Bob.
When it does not find it, it will _automatically_ search Docker Hub, download Alice's image, and open the container with Alice's work and environment on Bob's machine.

(rr-renv-containers-copying)=

### Copiando arquivos para e de contêineres

Os contêineres agem muito como máquinas virtuais; como resultado, copiar arquivos para e fora deles não é tão trivial como copiar arquivos para diferentes locais dentro do mesmo computador.

Um arquivo pode ser copiado da máquina que está executando um contêiner para o contêiner com:

```
sudo docker cp file_name container_ID:path_to_where_to_put_file/file_name
```

Recall that container IDs can be obtained using `sudo docker container ls`.

Um arquivo pode ser copiado de dentro de um contêiner para a máquina que está executando o seguinte comando na máquina:

```
sudo docker cp container_ID:path_to_file/file_name path_to_where_to_put_file/file_name
```

If the second part (the `path_to_where_to_put_file/file_name`) is substituted for a `.`, then the file will be copied to whatever directory the terminal running the command is in.

(rr-renv-containers-volumes)=

### Volumes

Toda vez que um contêiner é aberto a partir de uma imagem, esse contêiner é completamente novo.
Imagine que um contêiner está aberto e que é realizado trabalho dentro dele.
Se o contêiner for fechado e a imagem da qual ele veio for usada novamente para iniciar outro contêiner, nada desse trabalho estará no novo.
Ele simplesmente terá o estado inicial descrito na imagem.

Isso pode ser um problema se um pesquisador quiser trabalhar em um contêiner ao longo do tempo. Felizmente, há uma maneira de contornar esta situação utilizando volumes.
Os volumes armazenam o trabalho feito em um contêiner mesmo depois de fechado, e podem ser usados para carregar aquele trabalho em futuros contêineres.

Para criar/usar um volume, execute:

```
sudo docker run -i -t --mount source=volume_name,target=/target_directory image_name
```

You should give your volume a more descriptive name than `volume_name`.
A `target` directory is required; only work within this directory will be saved in the volume.
Assim que o pesquisador terminar, ele poderá fechar o contêiner normalmente.
When they come back to the project and want to continue their work, they only need to use the same command as above, and it will load the work contained in `volume_name` into the new container.
Qualquer novo trabalho será salvado também.

Abaixo está uma lista de comandos relacionados ao volume:

- To list volumes: `sudo docker volume ls`
- To delete a volume: `sudo docker volume rm volume_name`
- To delete all unattached volumes: `sudo docker volume prune`

If, when deleting a container, a `-v` is included after `rm` in `sudo docker rm container_ID`, any volumes associated with the container will also be deleted.

(rr-renv-containers-rootless)=

### Docker sem acesso root

Até abril de 2020, o único modo de executar o Docker era com acesso root.
"Rootless" mode was made available as part of the [v20.10](https://docs.docker.com/engine/security/rootless/) release.
Rootless mode is currently only available on Linux and requires an initial install of Docker >= v20.10.

The underlying difference between Docker without and with rootless mode is that previously any system running Docker had a daemon running as `uid0` that creates and owns all images, but with rootless mode the user creates and owns any images that they initialize.
To install and run the rootless version of Docker as a non-root user, use the following commands (where `20.10` refers to the installed version of Docker):

```
dockerd-rootless-setuptool.sh install
docker run -d --name dind-rootless --privileged docker:20.10-dind-rootless
```

The following prerequisites, which are part of the [`shadow-utils`](https://github.com/shadow-maint/shadow) package are required to run Docker rootless: `newuidmap` and `newgidmap`.

(rr-renv-containers-podman)=

## Podman

[Podman](https://podman.io/) is an open-source container engine that can be seen as a meaningful alternative to Docker.
Na verdade, o Podman fornece uma interface de linha de comando compatível com o Docker.
For most use cases, a user familiar with Docker can simply alias the Docker command to Podman (`alias docker=podman`) and carry on as normal.
Podman includes a [full set of tools](https://docs.podman.io/en/latest/Commands.html) to create, run, manage, and share containers.

Podman é um software livre e de código aberto lançado sob a licença Apache 2.0 ("Apache License").
This is in contrast to Docker which has some open-source components, such as the engine and command-line interface, but also develops closed-source, [subscription-requiring](https://www.docker.com/blog/updating-product-subscriptions/) software, including the Docker Desktop clients for MacOS and Windows.

All [Open Container Initiative](https://opencontainers.org/) container images can be used with Podman including Docker images hosted on Docker Hub.
É provável que projetos existentes em Docker possam ser migrados para o Podman.

Ao contrário do Docker, que usa um daemon rodando como root, o Podman não tem daemons.
Usuários sem privilégios podem executar contêineres usando o Podman.
Na maioria dos casos, isso será configurado automaticamente.
Isso evita um problema com a configuração padrão do Docker, em que usuários capazes de executar contêineres têm acesso implícito ao daemon do Docker.
O Docker Daemon é executado pelo root por padrão e fornece uma forma trivial de escalar privilégios e obter um alto nível de acesso aos dispositivos e ao sistema de arquivos dos hospedeiros ("hosts").

````{note}
Adding a user to the docker group is essentially giving them a high-level of access to the host with a very simple route to privilege escalation.
For example:

```console
docker run --mount=type=bind,source=/,destination=/host -it busybox
```

The user now has access to the filesystem of the host with the permissions of `root`.
````

(rr-renv-containers-installpodman)=

### Instalando o Podman

The Podman documentation has up-to-date instructions for [installing Podman](https://podman.io/getting-started/installation).

É importante entender que o Podman é uma ferramenta para executar contêineres Linux e, portanto, requer um host Linux.
If your computer is running Windows or MacOS, you can use the [Podman remote client](https://github.com/containers/podman/blob/main/docs/tutorials/mac_win_client.md) to interact with Podman on a Linux virtual machine or remote Linux Host.

Alternatively, the MacOS Podman client includes the experimental `podman machine` subcommand for managing a Linux virtual machine that Podman can use.
Detailed instructions can be found [on Podman's GitHub repository](https://github.com/containers/podman/blob/main/docs/tutorials/mac_experimental.md)
On Windows you can also run Podman in the [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/) (>= 2.0).
[This RedHat blog post](https://www.redhat.com/sysadmin/podman-windows-wsl2) has instructions.

For most recent Linux distributions you should [find Podman in the official repositories](https://podman.io/getting-started/installation#linux-distributions).
A maioria das distribuições (incluindo Arch, Debian, Fedora e Ubuntu) aplicará a configuração apropriada para permitir que usuários sem privilégios executem o Podman automaticamente.
If there are any problems, the Podman documentation [has instructions for configuration](https://docs.podman.io/en/latest/markdown/podman.1.html?highlight=rootless#rootless-mode).
Isso é tão simples quanto dois comandos por usuário que podem executar o Podman.

(rr-renv-containers-commandspodman)=

### Comandos do Podman

O Podman possui uma interface de linha de comando compatível com o Docker, então esses comandos não serão reiterados aqui.
The Docker commands in the {ref}`key commands <rr-renv-containers-commands>` should all work by substituting `sudo docker` with `podman`.
Details of all commands and their options can be found [in the Podman documentation](https://docs.podman.io/en/latest/Commands.html).

(rr-renv-containers-imagespodman)=

### Construindo Imagens de Contêineres

Podman can build container images using the `podman build` command.
O Podman criará imagens a partir de Dockerfiles ou Containerfiles.
Containerfiles use the same format as Dockerfiles, which are discussed in {ref}`Writing Dockerfiles <rr-renv-containers-dockerfiles>`

(rr-renv-containers-rootlesspodman)=

### Contêineres sem Root

Rootless containers are containers run by a normal user (not using `sudo` or with the `root` account).
Esses contêineres nunca têm mais privilégios do que a conta que os executa.
Essa é uma grande vantagem de segurança dos contêineres sem root, em comparação com executar contêineres como root ou pelo daemon do Docker.

```{note}
If you are running a distribution with SELinux (for example Fedora or CentOS) you may need to add the `--privileged` flag to the Podman commands below in order to access the host filesystem inside of containers.
```

Isso pode ser demonstrado com um exemplo simples. Crie um diretório e coloque um arquivo com algum texto nele:

```console
mkdir tmp
echo "Hello" > tmp/a.txt
```

Now mount this directory into an interactive [busybox](https://www.busybox.net/) container:

```console
podman run --mount=type=bind,source=./tmp,destination=/tmp -it docker.io/library/busybox
```

No shell do contêiner, confirme que a sessão pertence ao usuário root:

```console
/ # id
uid=0(root) gid=0(root) groups=10(wheel)
/ # whoami
root
```

Append some text to the file created on the host, mounted at `/tmp/a.txt` in the container:

```console
/ # echo "World!" >> /tmp/a.txt
```

Create a new file in the `tmp` directory and close the container:

```console
/ # touch /tmp/b.txt
/ # exit
```

Inspect the files in `tmp` on the host. The file `a.txt` was modified by the container process:

```console
$ cat tmp/a.txt
Hello
World!
```

The file `b.txt` was created. However, despite being created by `root` inside the container, on the host it is owned by the user which ran the container.
This can be confirmed with `ls -l tmp/b.txt`.

Também é impossível ler ou modificar arquivos que o usuário que está executando o contêiner não conseguiria.
For example, the `/etc/shadow` file which contains users' hashed passwords:

```console
podman run --mount=type=bind,source=/etc/shadow,destination=/shadow -it docker.io/library/busybox
/ # cat /shadow
cat: can't open '/shadow': Permission denied
```

If the above Podman command were run as root, using `sudo`, then the container would not be rootless and it would be possible to read and modify `etc/shadow`.

(rr-renv-containers-singularity)=

## Palavras de Aviso

```{note}
As Singularity is a tool for running Linux containers it can not run natively on
Windows or MacOS.

Singularity provides [Vagrant](https://www.vagrantup.com/) boxes which let users
on Windows or MacOS quickly deploy a virtual machine with Singularity installed.
Instructions can be found [in the Singularity
documentation](https://sylabs.io/guides/latest/admin-guide/installation.html#installation-on-windows-or-mac)
```

Uma desvantagem significativa do uso do Docker para pesquisa reprodutível é que não se pretende como uma aplicação do user-space mas como uma ferramenta para administradores de servidores.
Como tal, requer acesso root para operar.
No entanto, não há qualquer razão para que a execução de uma análise exija o acesso de raiz do utilizador.
Isto é especialmente importante quando os cálculos são conduzidos em um recurso compartilhado, como sistemas de computação de alto desempenho (HPC), em que os usuários nunca terão acesso root.

The [singularity](https://www.sylabs.io/) container software was introduced to address this issue.
Singularity was created with HPC systems and reproducible research in mind (see [this](https://www.youtube.com/watch?v=DA87Ba2dpNM) video).
Os contêineres do Singularity não exigem acesso root para serem executados.
Normalmente é necessário acesso root para criar imagens de contêiner.
However it is possible to build images as a normal user (with some restrictions) using the [fakeroot feature](https://sylabs.io/guides/latest/user-guide/fakeroot.html).
Isso permite que os usuários criem imagens de contêiner localmente antes de executá-las em um cluster de alto desempenho.
Como benefício adicional, isso torna possível trazer dependências de software e projeto para um sistema HPC sem exigir que os administradores do sistema os instalem ou mantenham.

Além disso, o Singularity pode aproveitar o grande ecossistema do Docker criando imagens de contêiner do Singularity a partir de imagens de contêiner do Docker.
As imagens do Docker também podem ser estendidas criando novas imagens baseadas em contêineres do Docker como camada base.

(rr-renv-containers-singularity-images)=

### Imagens de contêineres do Singularity

Just as Docker images are built using `Dockerfile` files, singularity containers are built from singularity definition files.
The Singularity documentation has a complete [specification of the definition file format](https://sylabs.io/guides/latest/user-guide/definition_files.html)

As a minimal working example, we can build a `lolcow` container based on the official ubuntu docker container image.
This is based on [an example](https://sylabs.io/guides/latest/user-guide/build_a_container.html) in the Singularity documentation.
Put the following text in a file named `lolcow.def`:

```
Bootstrap: docker
From: ubuntu

%post
    apt-get -y update
    apt-get -y install fortune cowsay lolcat

%environment
    export LC_ALL=C
    export PATH=/usr/games:$PATH

%runscript
    fortune | cowsay | lolcat
```

This example uses a docker image (`ubuntu`) as a basis.
The required packages are installed packages with `apt-get`.
The `PATH` variable is updated so that the run commands will be found when the container is run.
The `%runscript` defines the command to be executed when the container is run.

Uma imagem de contêiner pode então ser criada:

```console
sudo singularity build lolcow.sif lolcow.def
```

This will pull the ubuntu image from Docker Hub, run the steps of the recipe in the definition file and produce a Singularity image file (`lolcow.sif`).
O contêiner pode ser executado com:

```console
singularity run lolcow.sif
```

ou, simplesmente:

```console
./lolcow.sif
```

````{note}
The way that Singularity packages container images as a single file in your working directory is convenient for migrating your work to HPC.
You may simply copy your container image to a cluster using `scp` or `rsync`:

```console
rsync -avz lolcow.sif <user>@<hpc_system>:~/
```
````

Você deverá ver uma bela vaca ASCII e algumas palavras de sabedoria:

```
___________________________________
/ You will be called upon to help a \
\ friend in trouble.                /
-----------------------------------
       \   ^__^
        \  (oo)\_______
           (__)\       )\/\
               ||----w |
               ||     ||
```

(rr-renv-containers-singularity-gpu)=

### Suporte à GPU

Uma distinção fundamental do Singularity é que ele é capaz de utilizar nativamente GPUs do host em contêineres.
Detalhes completos sobre o uso de GPUs podem ser encontrados <0>na documentação do Singularity</0>.
Executar contêineres com suporte a GPU não requer privilégios de root.
Complete details on using GPUs can be found [in the Singularity documentation](https://sylabs.io/guides/latest/user-guide/gpu.html)

To use Nvidia GPUs in a container pass the `--nv` flag to the `run`, `exec` or `shell` command.
Por exemplo:

```console
singularity pull docker://tensorflow/tensorflow:latest-gpu
singularity exec --nv tensorflow_latest_gpu.sif nvidia-smi
```

Using AMD GPUs is similar but the `--rocm` flag is used.
Por exemplo:

```console
singularity pull docker://rocm/tensorflow:latest
singularity run --rocm tensorflow_latest.sif
```

When using the `--nv` and `--rocm` graphics drivers and libraries from the host are passed to the container.
É necessário garantir que o aplicativo dentro do contêiner seja compatível com a pilha de drivers no host.
Por exemplo, se o host tiver suporte para CUDA 10.2, um contêiner com PyTorch criado para CUDA 11.3 provavelmente terá problemas de execução.

(rr-renv-containers-singularity-hpc)=

### Singularity em HPC

Sendo compatível com HPC, contêineres de singularidade também são suportados por uma ampla gama de ferramentas de gerenciamento de fluxo de trabalho.
For example, both [snakemake](https://snakemake.readthedocs.io/en/stable/) and [nextflow](https://www.nextflow.io/docs/latest/singularity.html) support job-specific singularity containers.
This makes singularity containers uniquely suited for parallelizing workflows on HPC systems using the widely used [slurm](https://slurm.schedmd.com/documentation.html) workload manager.
Usando singularidade, contêineres e snakemake/nextflow é uma forma de escalar a reprodutibilidade em uma escala maciça.
Além disso, como um benefício adicional, trazendo fluxos de trabalho de uma máquina para um sistema HPC já não requer mais escrever scripts de submissão de trabalho personalizados.

(rr-renv-containers-singularity-storage)=

### Armazenamento de longo prazo de imagens de contêiner

É importante notar que um simples arquivo de receitas de contêiner não é reproduzível em si, uma vez que o processo de construção depende de várias fontes (on-line).
Assim, o mesmo arquivo de receita pode levar a imagens diferentes se as fontes subjacentes forem atualizadas.

To achieve true reproducibility, it isimportant to store the actual container _images_.
Para imagens singulares, isso é particularmente fácil, já que uma imagem é simplesmente um arquivo grande.
These can vary in size, from a few tens of megabytes (micro-containers) to several gigabytes, and are therefore not suited for being stored in a git repository themselves
A free, citable, and long-term solution to storing container images is [zenodo.org](https://zenodo.org/) which allows up to 50 Gb per repository.
Desde que zenodo mints DOIs para todo o conteúdo enviado, as imagens são imediatamente referenciáveis.
In contrast to [Docker Hub](https://hub.docker.com/) (which also only accepts docker images),
zenodo is also clearly geared towards long-term storage and discoverability via a sophisticated metadata system.
Assim, é idealmente adequado para armazenar contentores científicos associados a análises específicas, uma vez que estas tendem a não mudar com o tempo.

(rr-renv-containers-warning)=

### Palavras de Alerta

Embora a singularidade e o docker possam parecer semelhantes, são conceitualmente muito diferentes.
Além do fato óbvio que a singularidade não requer acesso root para contêineres executados, lida também com a distinção entre o sistema de arquivos de host e o de contêiner de forma diferente.
Por exemplo, por padrão, a singularidade inclui alguns pontos de bind no container, nomeadamente:

- `$HOME`
- `/sys:/sys`
- `/proc:/proc`
- `/tmp:/tmp`
- `/var/tmp:/var/tmp`
- `/etc/resolv.conf:/etc/resolv.conf`
- `/etc/passwd:/etc/passwd`
- `$PWD`

Note, `$PWD` comes in handy since it implies that all files in the working directory are visible within the container.
Binding `$HOME` by default, however, also implies that software using configuration files from `$HOME` might behave unexpectedly since the image specific configuration files are overwritten with the current users settings in `$HOME`.
Embora este comportamento seja útil em cenários HPC, é potencialmente perigoso para a investigação reprodutível.
Para evitar problemas em potencial, qualquer software instalado em um contêiner de singularidade deve ser apontado para um arquivo de configuração global, independente do usuário.
