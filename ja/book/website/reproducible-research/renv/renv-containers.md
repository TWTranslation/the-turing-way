(rr-renv-containers)=

# コンテナ

(rr-renv-containers-why)=

## なぜ容器なのか？

適度に複雑なプロジェクトでも、ソフトウェア依存性スタックのサイズは大きくなります。
Take a simple pipeline to build a pdf report for an analysis scripted in R using `Rmarkdown`, for example.
To make this reproducible, not only do (i) the respective R packages need to be installed and (ii) the R version needs to be the same, but also (iii) the versions of `pandoc` and `LaTeX` need to be the same as during runtime.

パッケージマネージャ(condaなど)を介してこれらの依存関係を解決しようとする代わりに、単一のパッケージマネージャーで利用可能なすべての必要なソフトウェアにも依存します。すべての依存関係を含むコンピューティング環境全体のスナップショットを作成する方が簡単かもしれません。
これらのコンピューティング環境は自己完結しているため、「コンテナ」という名前になります。

This RedHat blog
post
provides an introduction to containers and container terminology.

(rr-renv-containers-what)=

## コンテナとは何ですか?

コンテナを使用すると、研究者が必要なすべての部品(ライブラリなど)を含むプロジェクトをパッケージ化できます。 依存関係とシステムの設定 - そしてそれをすべて一つのパッケージとして出荷します。
Anyone can then open up a container and work within it, viewing and interacting with the project as if the machine they are accessing it from is identical to the machine specified in the container - regardless of what their computational environment _actually_ is.
彼らは、非常に異なる環境間でプロジェクトを
転送しやすくするように設計されています。

ある意味、コンテナは仮想マシンのように動作します。 外の世界では、彼らは自分の完全なシステムのように見えます。
しかし、仮想マシンとは異なり、仮想オペレーティングシステム全体を作成するのではなく、一般的に1つのパッケージ化されたすべてのソフトウェアとツールを作成します。 コンテナには必要な個々の部品のみが含まれています
これにより、パフォーマンスが大幅に向上し、アプリケーションのサイズが小さくなります。

コンテナは、特定の方法で構成されるソフトウェアに依存する研究を再現するための特に有用な方法です。 または、異なるシステム間で変化する(または存在しない)ライブラリを使用する。
まとめると コンテナは、研究に使用されるシステム全体を再現するため、パッケージ管理システムやBinderよりも再現性のある研究を共有するより堅牢な方法です。 明示的に使われているパッケージだけではありません
彼らの主な欠点は、彼らのより大きな深さに起因することです 他の多くの計算環境を再現する手法よりも概念的に把握・生成が困難です

Ben Corrie give a reasonably accessible overview of core concepts in ['What is a container?'](https://www.youtube.com/watch?v=EnJ7qX9fkcU).

(rr-renv-containers-images)=

## 画像とは？

イメージは、コンテナを生成するために使用されるファイルです。
人間はイメージを作るのではなくレシピを書いてイメージを作るのです
コンテナーはイメージからインスタンス化された同一のコピーです。

次のように考えてみてください。

- 人が書くレシピファイルには、プロジェクトの動作バージョンとその計算環境を生成するすべてのステップが含まれています。 しかし実際の素材はありません
  これを設計図だと考えてください
- イメージを構築するには、そのレシピを使用して、すべてのパッケージ、ソフトウェアライブラリを組み立てます。 完全なプロジェクトと環境を作るために構成する必要がありました 凝縮した塊にまとめます
  設計図を使って作られたフラットパックの家具のような画像を考えてみてください。
- コンテナーはそのイメージを取り、プロジェクトの完全に動作するバージョンと、実行に必要な環境を組み立てます。
  これをフラットパックの家具の組み立てだと考えてください。

研究者が自分の仕事を再現することを他の人に許可する場合 レシピファイルを書いてプロジェクトのイメージを作る必要があります
その後、彼らは自分の仕事を複製したい誰とでもこの画像ファイルを共有することができます。
その人は、イメージを使用して、プロジェクトの動作バージョンを含むコンテナを生成できます。

(rr-renv-containers-docker)=

## Docker

(rr-renv-containers-whatdocker)=

### Dockerとは?

コンテナを作成し、操作するための多くのツールがあります。
We will focus on [Docker](https://www.docker.com/), which is widely used, but be aware that others such as [Apptainer](http://apptainer.org/), [LXC](https://linuxcontainers.org/), [Podman](https://podman.io/), [Singularity](https://sylabs.io/singularity/) also exist.
Apptainer and Singularity are designed with a focus on high-performance computing and tend to be well supported and preferred on such systems.
Podman may be seen as a completely free and open-source alternative to Docker.
It has a Docker compatible command-line interface and can run Docker container images.
Apptainer, Singularity and Podman do not need `sudo` permissions to be run, while up until April 2020 Docker did (please see the {ref}`rr-renv-containers-rootless` section).

In Docker, the recipe files used to generate images are known as Dockerfiles, and should be named `Dockerfile`.

[Docker Hub](https://hub.docker.com/) hosts a great many pre-made images, such as
[images](https://hub.docker.com/_/ubuntu) of Ubuntu machines, which can be downloaded and build upon.
これにより、Dockerfiles を書くプロセスが比較的簡単になります。ユーザーはほとんどゼロから始める必要がないため、既存のイメージをカスタマイズすることができます。
However, this leaves a user vulnerable to similar security issues as described in the {ref}`rr-renv-yaml-security` of the {ref}`rr-renv-yaml` sub-chapter:

- Dockerイメージに悪意のあるコードを含めることが可能です
- 画像を制作する人は、セキュリティ上の脆弱性を持つソフトウェアを無意識に含めることができます。

[This](https://opensource.com/business/14/7/docker-security-selinux) article goes deeper into the potential security vulnerabilities of containers and here is a [detailed breakdown](https://opensource.com/business/14/9/security-for-docker) of security features currently within Docker, and how they function.
他の人が作成した画像を使用するための最良のアドバイスは、いつものようにです。 信頼できる情報源からのみダウンロードして実行してください
Docker Hub には、一般的に使用される画像の「公式イメージ」バッジがあります。

```{figure} ../../../figures/docker-official-image.*
---
name: docker-official-image
alt: A screenshot of official image badges
---
```

(rr-renv-containers-installdocker)=

### Docker のインストール

Installers for Docker on a variety of different systems are available [here](https://docs.docker.com/install/).
Detailed installation instructions are also available for a variety of operating systems such as [Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/), [Debian](https://docs.docker.com/install/linux/docker-ce/debian/), [Macs](https://docs.docker.com/docker-for-mac/install/), and [Windows](https://docs.docker.com/docker-for-windows/install/).

(rr-renv-containers-commands)=

### キーコマンド

コンテナを作成し、操作するためのいくつかの重要なコマンドは次のとおりです。

- Dockerfileからイメージをビルドするには、Dockerfileがあるディレクトリに移動して実行します。
  ```
  sudo docker build --tag image_name .
  ```
- システム上の画像を一覧表示するには、以下を使用します。
  ```
  sudo docker image ls
  ```
- 画像を削除するには、以下を実行してください:
  ```
  sudo docker rmi image_name
  ```
- イメージからコンテナを開くには、以下を実行します。
  ```
  sudo docker run -i -t image_name
  ```
  The `-i -t` flags automatically open up an interactive terminal within the container so you can view and interact with the project files.
- 対話型端末を終了するには、以下を使用します。
  ```
  exit
  ```
- IDを持つアクティブなコンテナのリストを取得するには、次を実行します。
  ```
  sudo docker container ls
  ```
- コンテナの状態を変更するために使用される3つの主要なコマンドもあります:
  - 一時停止すると、コンテナを実行しているプロセスが一時停止されます。
    ```
    sudo docker pause container_ID
    ```
    Containers can be unpaused by replacing `pause` with `unpause`.
  - コンテナを停止すると、実行中のプロセスが終了します。 コンテナを削除するには、コンテナを停止する必要があります。
    ```
    sudo docker stop container_ID
    ```
    A stopped container can be restarted by replacing `stop` with `restart`.
  - If `stop` does not work containers can be killed using
    ```
    sudo docker kill container_ID
    ```
- コンテナを削除するには、以下を実行します。
  ```
  sudo docker rm container_ID
  ```

(rr-renv-containers-dockerfiles)=

### Dockerfilesの書き込み

簡単なDockerfileの解剖図を見てみましょう。

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
実際のコードは6行しかありません。
The first of these is a `FROM` statement specifying a base image.
All Dockerfiles require a FROM, even if it is just `FROM SCRATCH`.
Dockerfile 内の以下のコマンドはすべて、研究者のプロジェクトの機能バージョンを作成するためのベースイメージをビルドします。
Specifying a version for the image (`18.04` in this case) is optional.
However, it is best practice as it ensures that our Dockerfile remains valid after new releases of Ubuntu, which may not include packages (or specific versions thereof) that we require later (for example `python3.7`).

適切なベースイメージを選択するのに時間を費やす価値があります。 Dockerfile を書く作業量を劇的に削減できます。
For example, a collection of images with the R programming language included in them can be found [here](https://github.com/rocker-org/rocker-versioned).
プロジェクトがRを利用する場合 Dockerfile で R をインストールするのに時間を費やすのではなく、ベースイメージとしてこれらのいずれかを使用すると便利です。

線の最大のブロックが次に来ます。
It's a series of `RUN` statements, which run shell commands when building the image.
このブロックでは、プロジェクトを実行するために必要なソフトウェアをインストールするために使用されます。 The first `RUN` block is a
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

Pythonをインストールした後、コードに必要なライブラリをインストールするために、もう1つのRUNステートメントを使用します。

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

このコマンドはDockerfilesで現在の作業ディレクトリを変更するために使用できます。
Commands that follow this in the Dockerfile will be applied within the new working directory unless/until another `WORKDIR` changes the working directory.
コンテナがインタラクティブ端子で開かれると、ターミナルは最後の作業ディレクトリに開きます。
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

#### その他のコマンド

Dockerfiles で時々使用される他のコマンドは次のとおりです。

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
  通常はDockerfileの上部に含まれています。
- `EXPOSE`: This includes ports that should be exposed.
  Web アプリを共有するために Docker を使用している人により関連性があります。
- `USER`: Change the user that a command is run as (useful for dropping privileges).

(rr-renv-containers-dockerignore)=

### Building Images and `.dockerignore` Files

As mentioned in the {ref}`key commands <rr-renv-containers-commands>` section, to build an image open a terminal in the same directory as
the Dockerfile to be used and run:

```
sudo docker build --tag name_to_give_image .
```

イメージがビルドされると、Dockerfileのディレクトリ以下(これを「コンテキスト」と呼びます)にすべてがDockerデーモンに送信され、イメージをビルドします。
デーモンは、Dockerfile とそのコンテキストを使用してイメージをビルドします。
コンテキストに多くの大きなファイルが含まれている場合、イメージを構築するために必要ではありません。 (古いデータファイル、例えば)それからそれらをデーモンに送る時間の無駄です。
そうすることで、イメージを構築するプロセスを遅くすることができます。
Files can be excluded from the context by listing them in a text file called `.dockerignore`.
そうするのは良い習慣です。

The files do not need to be listed individually in the `.dockerignore` file.
Here is an example of the contents of a `.dockerignore` file:

```
*.jpg
**/*.png
data_files/*
file_to_exclude.txt
```

これはコンテキストから除外されます：

- All `.jpg` files in the same directory as the Dockerfile file
- All `.png` files in the same directory as the Dockerfile file _or any subdirectories within it_
- All files within the `data_files` directory
- The file named `file_to_exclude.txt`

(rr-renv-containers-sharing)=

### 画像の共有

Docker images can be shared most easily via [Docker Hub](https://hub.docker.com/), which requires an account.
AliceとBobの2人の研究者がプロジェクトに協力しており、Aliceは彼女の作品の一部をBobと共有したいと考えています。

これを行うには、アリスが必要です:

- Dockerfile を書いて彼女の作品のイメージを生成します。
- 画像を作成します。 彼女（発明家）はそれを image_name と呼んでいます
- Go to Docker Hub and sign up for an account. Say Alice (again, being inventive) chooses the username `username_Alice`
- Log into Docker Hub via the terminal on her machine using:
  ```
  sudo docker login
  ```
- Tag the image of her project on her machine via the command line by supplying the name of the image and using the pattern `username/image_name:version`. アリスは次のコマンドを実行します。
  ```
  sudo docker tag image_name username_Alice/image_name:version_1
  ```
- イメージを Docker Hub アカウントにプッシュします。
  ```
  sudo docker tag push username_Alice/image_name:version_1
  ```
- アリスの画像はオンラインになり、ダウンロードできます。 ボブに向かって...

Bob (Docker が既にインストールされていると仮定する) を実行するだけで Alice のイメージからコンテナを開くことができます

```
sudo docker run -i -t username_Alice/image_name:version_1
```

最初は、Docker は、Bob のマシンでこのイメージを検索します。
When it does not find it, it will _automatically_ search Docker Hub, download Alice's image, and open the container with Alice's work and environment on Bob's machine.

(rr-renv-containers-copying)=

### コンテナへと、コンテナからファイルをコピーする

コンテナは仮想マシンによく似ています 結果としてファイルをコピーするのは 同じコンピュータ内の別の場所に ファイルをコピーするのは

コンテナを実行しているマシンから、以下を使用してファイルをコピーできます。

```
sudo docker cp file_name container_ID:path_to_where_to_put_file/file_name
```

Recall that container IDs can be obtained using `sudo docker container ls`.

コンテナを実行しているマシン上で次のコマンドを実行することで、コンテナ内からコンテナを実行しているマシンにファイルをコピーできます:

```
sudo docker cp container_ID:path_to_file/file_name path_to_where_to_put_file/file_name
```

If the second part (the `path_to_where_to_put_file/file_name`) is substituted for a `.`, then the file will be copied to whatever directory the terminal running the command is in.

(rr-renv-containers-volumes)=

### ボリューム

イメージからコンテナを開くたびに、そのコンテナはまったく新しいものになります。
コンテナが開かれ、その中で作業が行われるとします。
If that container is closed, and the image it came from is again used to start another container, none of that work will be in the new one.
It will simply have the starting state described in the image.

研究者が時間の経過とともに容器の中で仕事をしたい場合、これは問題になることがあります。 幸いなことに、ボリュームを使用してこれを回避する方法があります。
ボリュームは閉じた後でもコンテナ内で行われた作業を保存し、将来のコンテナにその作業をロードするために使用することができます。

ボリュームを作成/使用するには、以下を実行してください:

```
sudo docker run -i -t --mount source=volume_name,target=/target_directory image_name
```

You should give your volume a more descriptive name than `volume_name`.
A `target` directory is required; only work within this directory will be saved in the volume.
研究者が完了すると、通常通り容器を閉じることができます。
When they come back to the project and want to continue their work, they only need to use the same command as above, and it will load the work contained in `volume_name` into the new container.
それはそこにも新しい仕事を保存します。

以下はボリューム関連コマンドの一覧です。

- To list volumes: `sudo docker volume ls`
- To delete a volume: `sudo docker volume rm volume_name`
- To delete all unattached volumes: `sudo docker volume prune`

If, when deleting a container, a `-v` is included after `rm` in `sudo docker rm container_ID`, any volumes associated with the container will also be deleted.

(rr-renv-containers-rootless)=

### Docker without root access

Up until April 2020, the only way to run Docker was with root access.
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
In fact, Podman provides a Docker-compatible command-line interface.
For most use cases, a user familiar with Docker can simply alias the Docker command to Podman (`alias docker=podman`) and carry on as normal.
Podman includes a [full set of tools](https://docs.podman.io/en/latest/Commands.html) to create, run, manage, and share containers.

Podman is free and open-source software released under the Apache License 2.0.
This is in contrast to Docker which has some open-source components, such as the engine and command-line interface, but also develops closed-source, [subscription-requiring](https://www.docker.com/blog/updating-product-subscriptions/) software, including the Docker Desktop clients for MacOS and Windows.

All [Open Container Initiative](https://opencontainers.org/) container images can be used with Podman including Docker images hosted on Docker Hub.
It is likely existing projects using Docker can be migrated to Podman.

Unlike Docker which uses a daemon running as root, Podman is daemonless.
Unprivileged users can run containers using Podman.
In most cases this will be configured automatically.
This avoids a problem with the standard Docker configuration where users able to run containers have implicit access to the Docker daemon.
The Docker Daemon is run by root by default and provides a trivial way to escalate privileges and get a high level of access to the hosts devices and filesystem.

````{note}
Adding a user to the docker group is essentially giving them a high-level of access to the host with a very simple route to privilege escalation.
For example:

```console
docker run --mount=type=bind,source=/,destination=/host -it busybox
```

The user now has access to the filesystem of the host with the permissions of `root`.
````

(rr-renv-containers-installpodman)=

### Installing Podman

The Podman documentation has up-to-date instructions for [installing Podman](https://podman.io/getting-started/installation).

It is important to understand that Podman is a tool for running Linux containers and so it requires a Linux host.
If your computer is running Windows or MacOS, you can use the [Podman remote client](https://github.com/containers/podman/blob/main/docs/tutorials/mac_win_client.md) to interact with Podman on a Linux virtual machine or remote Linux Host.

Alternatively, the MacOS Podman client includes the experimental `podman machine` subcommand for managing a Linux virtual machine that Podman can use.
Detailed instructions can be found [on Podman's GitHub repository](https://github.com/containers/podman/blob/main/docs/tutorials/mac_experimental.md)
On Windows you can also run Podman in the [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/) (>= 2.0).
[This RedHat blog post](https://www.redhat.com/sysadmin/podman-windows-wsl2) has instructions.

For most recent Linux distributions you should [find Podman in the official repositories](https://podman.io/getting-started/installation#linux-distributions).
Most distributions (including Arch, Debian, Fedora, and Ubuntu) will apply the appropriate configuration to let unprivileged users run Podman automatically.
If there are any problems, the Podman documentation [has instructions for configuration](https://docs.podman.io/en/latest/markdown/podman.1.html?highlight=rootless#rootless-mode).
This is as simple as two commands per user who should be able to run Podman.

(rr-renv-containers-commandspodman)=

### Podman Commands

Podman has a Docker-compatible command line interface so those commands will not be reiterated here.
The Docker commands in the {ref}`key commands <rr-renv-containers-commands>` should all work by substituting `sudo docker` with `podman`.
Details of all commands and their options can be found [in the Podman documentation](https://docs.podman.io/en/latest/Commands.html).

(rr-renv-containers-imagespodman)=

### Building Container Images

Podman can build container images using the `podman build` command.
Podman will build images from either Dockerfiles or Containerfiles.
Containerfiles use the same format as Dockerfiles, which are discussed in {ref}`Writing Dockerfiles <rr-renv-containers-dockerfiles>`

(rr-renv-containers-rootlesspodman)=

### Rootless Containers

Rootless containers are containers run by a normal user (not using `sudo` or with the `root` account).
These containers never have more privileges than the account that runs them.
This is an strong security advantage for rootless containers compared to running containers as root or through the Docker daemon.

```{note}
If you are running a distribution with SELinux (for example Fedora or CentOS) you may need to add the `--privileged` flag to the Podman commands below in order to access the host filesystem inside of containers.
```

This can be demonstrated with a simple example. Create a directory and put file with some text in it:

```console
mkdir tmp
echo "Hello" > tmp/a.txt
```

Now mount this directory into an interactive [busybox](https://www.busybox.net/) container:

```console
podman run --mount=type=bind,source=./tmp,destination=/tmp -it docker.io/library/busybox
```

In the container's shell, confirm that the session belongs to the root user:

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

It is also impossible to read or modify files that the user running the container would not be able to.
For example, the `/etc/shadow` file which contains users' hashed passwords:

```console
podman run --mount=type=bind,source=/etc/shadow,destination=/shadow -it docker.io/library/busybox
/ # cat /shadow
cat: can't open '/shadow': Permission denied
```

If the above Podman command were run as root, using `sudo`, then the container would not be rootless and it would be possible to read and modify `etc/shadow`.

(rr-renv-containers-singularity)=

## Singularity

```{note}
As Singularity is a tool for running Linux containers it can not run natively on
Windows or MacOS.

Singularity provides [Vagrant](https://www.vagrantup.com/) boxes which let users
on Windows or MacOS quickly deploy a virtual machine with Singularity installed.
Instructions can be found [in the Singularity
documentation](https://sylabs.io/guides/latest/admin-guide/installation.html#installation-on-windows-or-mac)
```

Historically, a significant drawback of using Docker for reproducible research is that it was not intended as a user-space application but as a tool for server administrators.
As such, it required root access to operate.
There is, however, no reason why the execution of an analysis should require root access for the user.
This is especially important when computations are conducted on a shared resource like high-performance computing (HPC) systems where users will never have root access.

The [singularity](https://www.sylabs.io/) container software was introduced to address this issue.
Singularity was created with HPC systems and reproducible research in mind (see [this](https://www.youtube.com/watch?v=DA87Ba2dpNM) video).
Singularity containers do not require root access to run.
Root access is normally required to build container images.
However it is possible to build images as a normal user (with some restrictions) using the [fakeroot feature](https://sylabs.io/guides/latest/user-guide/fakeroot.html).
This enables users to build container images locally before running them on a high-performance cluster.
As an added benefit, this makes it possible to bring software and project dependencies to an HPC system without requiring the system administrators to install or maintain them.

Furthermore, Singularity can take advantage of the large Docker ecosystem by building Singularity container images from Docker container images.
Docker images can also be extend by building new images based on docker containers as a base layer.

(rr-renv-containers-singularity-images)=

### Singularity Container Images

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

A container image can then be built:

```console
sudo singularity build lolcow.sif lolcow.def
```

This will pull the ubuntu image from Docker Hub, run the steps of the recipe in the definition file and produce a Singularity image file (`lolcow.sif`).
The container can be run with:

```console
singularity run lolcow.sif
```

or, simply:

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

You should see a nice ASCII cow and a few words of wisdom:

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

### GPU Support

A key distinction of Singularity is that it is able to natively utilise host GPUs in containers.
Singularity has support for CUDA supporting GPUs from Nvidia and ROCm supporting GPUs from AMD.
Running containers with GPU support does not require root privileges.
Complete details on using GPUs can be found [in the Singularity documentation](https://sylabs.io/guides/latest/user-guide/gpu.html)

To use Nvidia GPUs in a container pass the `--nv` flag to the `run`, `exec` or `shell` command.
For example:

```console
singularity pull docker://tensorflow/tensorflow:latest-gpu
singularity exec --nv tensorflow_latest_gpu.sif nvidia-smi
```

Using AMD GPUs is similar but the `--rocm` flag is used.
For example:

```console
singularity pull docker://rocm/tensorflow:latest
singularity run --rocm tensorflow_latest.sif
```

When using the `--nv` and `--rocm` graphics drivers and libraries from the host are passed to the container.
You must therefore ensure that the application inside the container is compatible with the driver stack on the host.
For example, if the host has support for CUDA 10.2 a container featuring PyTorch build for CUDA 11.3 is likely to problems running.

(rr-renv-containers-singularity-hpc)=

### Singularity on HPC

Being HPC compatible, singularity containers are also supported by a wide range of workflow management tools.
For example, both [snakemake](https://snakemake.readthedocs.io/en/stable/) and [nextflow](https://www.nextflow.io/docs/latest/singularity.html) support job-specific singularity containers.
This makes singularity containers uniquely suited for parallelizing workflows on HPC systems using the widely used [slurm](https://slurm.schedmd.com/documentation.html) workload manager.
Using singularity, containers and snakemake/nextflow is a way of scaling reproducibility to a massive scale.
Furthermore, as an added benefit, bringing workflows from a desktop machine to an HPC system no longer requires writing custom job submission scripts.

(rr-renv-containers-singularity-storage)=

### コンテナーイメージの長期保存

It is important to note that a mere container recipe file is not reproducible in itself since the build process depends on various (online) sources.
Thus, the same recipe file might lead to different images if the underlying sources were updated.

To achieve true reproducibility, it isimportant to store the actual container _images_.
For singularity images, this is particularly easy since an image is simply a large file.
These can vary in size, from a few tens of megabytes (micro-containers) to several gigabytes, and are therefore not suited for being stored in a git repository themselves
A free, citable, and long-term solution to storing container images is [zenodo.org](https://zenodo.org/) which allows up to 50 Gb per repository.
Since zenodo mints DOIs for all content uploaded, the images are immediately citable.
In contrast to [Docker Hub](https://hub.docker.com/) (which also only accepts docker images),
zenodo is also clearly geared towards long-term storage and discoverability via a sophisticated metadata system.
Thus, it is ideally suited for storing scientific containers associated with particular analyses since these tend to not change over time.

(rr-renv-containers-warning)=

### Words of Warning

Even though singularity and docker might look similar, they are conceptually very different.
Singularity handles the distinction between the host and container file system differently.
For instance, by default, singularity includes a few bind points in the container, namely:

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
While this behaviour is handy in HPC scenarios, it is potentially dangerous for reproducible research.
To avoid potential issues, any software installed in a singularity container should be pointed to a global, user-independent configuration file.
