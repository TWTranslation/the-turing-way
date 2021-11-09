(rr-renv-containers)=
# 容器

(rr-renv-containers-why)=
## 为什么容器？

即使对中度复杂的项目来说，软件依赖性堆积的规模也可能很大。 取一个简单的管道来构建一个 pdf 报告，用于使用 `Rmarkdown`进行分析脚本。 可复制， 不仅需要安装相应的 R 包，还需要安装同样的 R 版本， 但同时也是 `pandoc` 和 `LaTeX` 的版本需要与运行期间相同。

与其试图通过软件包管理器(如conda)解决这些依赖关系――这也取决于所有必需的软件在单个软件包管理器中可用――不如创建一个包括所有依赖的整个计算机环境的快照。 然后这些计算环境是自成一体的，因此名称是“容器”。

(rr-renv-containers-what)=
## 什么是容器？

容器允许研究人员将一个项目与它所需要的所有部件（如图书馆）包装起来。 依赖关系和系统设置 - 并将其作为一个软件包发送。 然后任何人都可以打开容器并在容器内工作。 查看并与项目交互，好像他们从容器中访问的机器与容器中指定的机器是相同的。不管他们的计算环境 _实际是_ 是什么。 它们的设计是为了使 更容易在非常不同的环境之间传输项目。

从某种意义上说，容器的行为就像一个虚拟机一样。 对外部世界而言，他们看起来像自己的完整系统。 然而，与虚拟机不同的是，而不是创建一个完整的虚拟操作系统，加上通常用一个软件和工具。 容器只含有它们所需要的个别组件才能操作它们所包含的项目。 这大大提高了性能，减少了应用程序的大小。

容器是一种特别有用的复制研究方法，它依赖于某种方式配置软件。 或利用不同系统（或不存在）不同系统之间的图书馆。 概括而言， 容器是一种比包件管理系统或Binder更强有力的分享可再生产研究的方法，因为它们复制了用于研究的整个系统。 不仅仅是它明确使用的软件包。 它们的主要不利方面是由于它们的深度更高。 它们在概念上比许多其他重复计算环境的方法更难掌握和生产。

Ben Corrie对 [“什么是容器？”](https://www.youtube.com/watch?v=EnJ7qX9fkcU) 中的核心概念提供了一个可以合理理解的概述。

(rr-renv-containers-images)=
## 什么是图像？

图像是用于生成容器的文件。 人类不制作图像；他们写成生成图像的配方。 容器则是从图像实例化的相同拷贝。

想像这样：

- 一个配方文件是人类写作，包含生成项目工作版本及其计算环境的所有步骤。 但没有实际材料。 将此视为蓝图。
- 构建一个图像需要那个配方并使用它，集合所有的软件包、软件库， 为使全面的项目和环境成为完整的项目和环境所需的配置，并将其捆绑在一个压缩的块上。 想想像一块用蓝图制作的平板包家具。
- 容器拿着这幅图像，汇集了项目的一个完全可行的版本以及运行该项目所需的环境。 认为这是装配平板包家具。

所以，如果研究人员想让他人复制他们的作品， 他们需要写一个配方文件并用它来构建他们项目的图像。 然后他们可以与任何想要复制其工作的人分享这个图像文件。 该人然后可以使用图像生成包含工程工作版本的容器。

(rr-renv-containers-docker)=
## 什么是停靠？

有许多工具可用来创建容器并与之合作。 我们将把重点放在广泛使用的Docker上，但我们也意识到诸如独特性之类的其他方面也存在。 高性能计算系统有时更喜欢使用独特性，因为它不需要 `sudo` 权限来运行，而停靠机器。

在Docker中，用于生成图像的配方文件被称为Dockerfiles，应命名为 `Dockerfile`。

[Docker Hub](https://hub.docker.com/) 有许多事先制作的图片， 例如： [图像](https://hub.docker.com/_/ubuntu) Ubuntu 机器，可以下载和扩展。 这使得编写Dockerfiles的过程比较容易，因为用户很少需要从零开始，他们只能自定义现有的图像。 然而，这使得用户易受类似的安全问题的伤害，这些问题在 {ref}`rrr-renv-yaml-security` 的 {ref}`rr-renv-yaml` 子章节中描述：

- 在Docker图片中包含恶意代码
- 制作图像的人有可能在不知情的情况下将具有安全脆弱性的软件包括在这些软件中。

[这篇](https://opensource.com/business/14/7/docker-security-selinux) 篇文章更深入地探讨了容器的潜在安全弱点，这里是一个 [详细的细目](https://opensource.com/business/14/9/security-for-docker) 目前停靠处的安全功能</a> 以及它们的运作方式。 与往常一样，使用他人制作的图像的最佳建议是， 只有当机器来自信任的源时才下载并运行某些东西。 Docker Hub 有用于常用、已验证图像的“官方图像”徽章，如下所示：

```{figure} ../../figures/docker-official-image.png
---
名称：docker-official-image
alt: 官方图片徽章的截图
-
```

(rr-renv-containers-installdocker)=
## 正在安装 Docker

在各种不同的系统上安装Docker的程序可以在这里 [](https://docs.docker.com/install/)。 详细的安装说明也适用于各种操作系统，例如 [Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/)， [Debian](https://docs.docker.com/install/linux/docker-ce/debian/), [Macs](https://docs.docker.com/docker-for-mac/install/), 和 [Windows](https://docs.docker.com/docker-for-windows/install/).

(rr-renv-containers-commands)=
## 密钥命令

以下是创建和使用容器的几个关键命令：

- 要从 Dockerfile 生成图像，请前往Dockerfile 所在的目录并运行：
  ```
  sudo docker build--tag image_name
  ```
- 要列出您系统上的图像，请使用：
  ```
  sudo 停靠图像 ls
  ```
- 要删除图像，请运行：
  ```
  sudo docker rmi image_name
  ```
- 要从图像中打开容器，请运行：
  ```
  sudo 停靠运行-i -t image_name
  ```
  `-i -t` 标志会自动在容器中打开一个交互式终端，以便您可以查看和与项目文件交互。
- 要退出交互式终端，请使用：
  ```
  退出
  ```
- 若要获取一个带有ID的活动容器的列表，请运行：
  ```
  Sudo 停靠容器
  ```
- 还有三个用于改变容器状态的主要命令：
  - 暂停运行容器的过程。
    ```
    sudo 停靠容器 ID
    ```
    将 `暂停` 替换为 `取消暂停` 可以使容器停用。
  - 停止一个容器将终止运行它的过程。 容器必须停止才能删除。
    ```
    sudo 停靠容器ID
    ```
    A stopped container can be restarted by replacing `stop` with `restart`.
  - 如果 `停止` 不起作用的容器可以使用
    ```
    sudo 停靠器杀死容器ID
    ```
- 要移除容器，请运行：
  ```
  sudo docker rm container_ID
  ```
(rr-renv-containers-dockerfiles)=
## 写入 Docker文件

让我们穿过一个非常简单的 Dockerfile：

```
# 步骤 1：设置计算环境

# 设置基础图像
FROM ubuntu:18. 4

# 运行项目需要安装的软件包
RUN apt-get update && \
    apt-get install-y --no-install-recommended python3。 python3-pip &&
    rm -rf /var/lib/apt/lists/*
RUN python3 -m pip install numpy

#------------------------

# 步骤 2: 将项目文件包含在镜像中

# 复制机器构建图像的`project_files`目录中的文件
# 到容器的`project`文件夹中。 此文件夹和路径中缺失的
# 目录是自动创建的。
COPY 工程文件/项目
```

这看起来很复杂，但这个示例中的大多数行都是注释(前面有 `#`'s)。 实际代码只有六行。 其中第一个是一个 `FROM` 语句，指定了一个基础图像。 所有Dockerfiles 都需要一个 FROM，即使它只是 `FROCH`。 Dockerfile 下面的所有命令都建立在基础图像的基础上，使研究人员的项目能够正常运行。 指定图像版本 (`18.04` 在此情况下) 是可选的。 然而，这是最佳做法，因为它确保我们的 Dockerfile 在新版本的 Ubuntu 之后仍然有效， 它可能不包括我们稍后需要的软件包 (或其中的特定版本) (例如， `python3)。`。

值得花时间选择适当的基本图像， 这样做可以大大减少编写Dockerfile所需的工作量。 例如，包含在其中的 R 编程语言的图像集可以在这里找到 [](https://github.com/rocker-org/rocker-versioned)。 如果一个项目使用R, 使用其中之一作为基本图像而不是在你的 Dockerfile 中写入命令以安装R是方便的。

接下来是最大的行块。 它是一系列 `RUN` 语句，在构建图像时运行 shell 命令。 在这个块中，他们被用来安装运行项目所需的软件。 第一个 `RUN` 块是这种形式的 命令链：

```
RUN command_to_do_thing_1 \
   && command_to_do_thing_2 \
   && command_to_do_thing_3 \
   && command_to_do_thing_4
```

将相关命令分组为单个 `RUN` 块是一个好的做法，以减少您图像的最终大小为 [避免创建不必要的图层](https://docs.docker.com/develop/develop-images/#minimize-the-number-of-layers) 我们还遵循最佳做法，使用 `--no-install-recommended` to [避免安装不必要的软件包](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#dont-install-unnecessary-packages) 和 [清理 `apt-cache`](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#run)两者都进一步缩小了Debian 或 Ubuntu 图像的大小。

安装Python后，我们使用另一个RUN语句来安装代码所需的库。

最后， `COPY` 命令用于将图像从机器构建中的项目文件复制到图像本身。 此命令的语法是 `COPY file_to_cope location_in_container_to_copy_to`。 在此示例中， `project_files` 目录中的所有文件都包含在容器中的 `项目` 文件中。 注意您只能从 Dockerfile 所在目录复制文件， 或它内的子目录(例如为 `project_files` 子目录)。

`添加` 命令具有与 `COPY`相同的功能， 但它也可以用来添加不在机器构建图像上的文件。 例如，它可以用来包含在线托管的文件，方法是通过 `ADD` 文件的 URL。 使用 `COPY`是很好的做法，但有 `ADD` 是特别需要的。 作为 `COPY` 更明确地说明正在做什么。

如果一个容器是从一个名为 `book_example`的图像中打开的，则会发生以下情况：

```{figure} ../../figures/container-example.png
---
name: container-example
alt: A screen sharing of when a container is open from an image
-
```

正如你可以看到的那样，目录 `project` 已经创建，在项目文件中 `分析。 y` 和 `data.csv` 已复制到它。 因为Dockerfile已经包含项目所需的软件，图像中的 `analys.py` 脚本运行时没有安装更多软件。

(rr-renv-containers-dockerfiles-workdir)=
### `WorkDIR`

此命令可以在 Dockerfiles 中用于更改当前工作目录。 在 Dockerfile 中跟随此操作的命令将在新的工作目录中应用，除非/直到另一个 `WorKDIR` 更改工作目录。 当一个容器与一个交互式终端打开时，终端将在最后工作目录中打开. 这是一个使用 `WORKDIR`和它生成的容器的 Dockerfile的简单例子。

```
# 基本设置
FROM ubuntu
RUN apt-get update

# 制作一个名为A
RUN mkdir A

# 制作一个工作目录A
WORKDIR A

# 制作两个目录， 一个叫做B_1 和一个叫做B_2
RUN mkdir B_1
RUN mkdir B_2
```

```{figure} ../../figures/workdir-example.png
---
name: workdir-example
alt: 使用WORKDIR 命令生成的容器截图
-
```

目录 `B_1` 和 `B_2` 已经在目录 `A` 中创建。

`在构建图像时需要更改目录时应该使用WORKDIR`。 它可能诱惑使用 `RUN cd directory_name` 因为这个语法对于那些通常通过命令行工作的人来说更加熟悉。 但这可能导致错误。 在Dockerfile中的每一个 `RUN` 语句后，图像将被保存，下面的命令将被重新应用于图像。 As an example, here is what happens in the above example if the `WORKDIR A` line is swapped for `RUN cd A`.

```{figure} ../../figures/cd-example.png
---
name: cd-example
alt: 在 WORKDIR 命令与 RUN cd 交换时发生什么情况的屏幕截图
-
```

在这种情况下，所有目录都处于顶层。 而不是 `B_1` 和 `B_2` 在 `A` 内。 这是因为图像在 `RUN cd A` 命令后重新启动，并默认在顶级(root) 级别打开， 所以 `mkdir B_1` 和 `mkdir B_2` 命令生效的地方。

(rr-renv-containers-dockerfiles-commands)=
### 其他命令

Dockerfiles有时使用的其他命令包括：

- `CMD`: 这用于在容器打开后立即运行命令。 这不同于作为 _设置_ 个容器的一部分运行的RUN命令。 例如，为了在容器从图像中打开时有一个欢迎消息， `CMD` 可以用作以下用途：
  ```
  CMD ["回声","欢迎! 你刚刚打开了这个容器！"]
  ```
  在某人开始在容器 工作之前需要运行的任何命令都使用CMD，而不是强迫用户自己运行它们（而且相信他们甚至知道自己需要）是很好的做法。
- `VOLUMES`: 这些将会在稍后讨论 {ref}` <rr-renv-containers-volumes>`
- `MAINTAINER`: 这包含着编写Docker文件的人的信息。 它通常包含在Docker文件的顶部。
- `EXPOSE`: 这包括应该曝光的端口。 它对使用 Docker 的人更适合分享网页应用。
- `USER`: 更改命令运行的用户 (用于丢弃权限)。

(rr-renv-containers-dockerignore)=
## 正在构建图像和 `.dockerinvate` 个文件

如 {ref}`密钥命令 <rr-renv-containers-commands>` 部分所述。 要在与 要使用并运行的 Dockerfile 相同的目录中创建一个终端：

```
sudo docker build--tag name_to_give_image
```

当一张图像在Dockerfile的目录和下面的所有内容都被生成时(这被称为“上下文”)，都会被发送到Docker 守护程序来构建图像。 守护进程使用Dockerfile及其上下文来构建图像。 如果上下文包含许多大文件，而这些文件并不是构建图像所需要的， (例如旧的数据文件)，是浪费时间，将它们送到守护程序中。 这样做可以使构建图像的过程变得缓慢。 文件可以通过在一个名为 `.dockernovel` 的文本文件中列出它们从上下文中删除。 这样做是一个良好做法。

文件不需要被单独列在 `.dockerwitch` 文件中。 这是一个 `.dockerinvate` 文件内容的示例：

```
*.jpg
**/*.png
data_files/*
file_to_exclusde.txt
```

此处从上下文中排除：

- 与 Dockerfile 文件相同的目录中所有 `.jpg` 文件
- 所有 `.png` 文件与Dockerfile _同一目录中的任何子目录_
- `data_files` 目录内的所有文件
- 命名为 `file_to_exclude.txt`

(rr-renv-containers-sharing)=
## 分享图像

Docker 图像可以非常容易地通过 [Docker Hub](https://hub.docker.com/)分享，这需要一个帐户。 说两名研究员Alice和Bob正在合作一个项目，Alice希望与Bob分享她一些工作的形象。

要做到这一点，Alice必须：

- 写一个 Dockerfile 来制作她的作品的图像。
- 构建图像。 她(正在发明)称它为图像名称
- 前往DockerHub 注册一个帐户。 说Alice(再次是发明的) 选择用户名 `username_Alice`
- 通过机床上的终端登录DockerHub
  ```
  sudo 停靠登录
  ```
- 通过命令行通过提供图像名称并使用图案 `username/image_name: version` 来标记她的机器上的项目图像。 因此Alice运行命令：
  ```
  sudo docker 标签 image_name username_Alice/image_name:version_1
  ```
- 将图像推送到她的 Docker Hub 帐户，使用：
  ```
  sudo 停靠标签推送用户名_Alice/image_name:version_1
  ```
- Alice的图像现在已在线并可以下载。 转到博客...

Bob (假定他已经安装Docker) 可以仅仅通过运行 Alice的图像打开一个容器

```
sudo docker 运行-i -t username_Alice/image_name:version_1
```

起初，Docker将在Bob机器上搜索此图像。 When it does not find it, it will _automatically_ search DockerHub, download Alice's image, and open the container with Alice's work and environment on Bob's machine.

(rr-renv-containers-copying)=
## 正在将文件复制到容器中

容器的作用很像虚拟机； 因此，将文件复制进出这些文件并不象复制文件到同一计算机内的不同地点那样微不足道。

文件可以从运行容器的机器复制到容器中使用：

```
sudo docker cp file_name container_ID:path_to_where_put_file/file_name
```

使用 `sudo码容器` 获取容器 ID。

一个文件可以从容器内复制到运行容器的机器上，在容器上运行以下命令：

```
sudo docker cp container_ID:path_to_file/file_name path_to_where_put_file/file_name
```

如果第二部分 ( `path_to_where_to_put_file/file_name`) 被替换为 ``然后文件将被复制到运行命令的终端目录中。

(rr-renv-containers-volumes)=
## 卷

每次从图像打开一个容器，这个容器是全新的。 说一个容器已打开，并在容器内完成工作。 说一个容器已打开，并在容器内完成工作。 如果该容器被关闭，其图像又被用来打开另一容器， 这项工作都不会在新的工作中进行。 它只会在图像中描述起始状态。

如果研究人员想要随着时间的推移在容器中工作，这可能是一个问题。 幸运的是，在这方面还有一定的方法。 甚至在容器关闭后卷宗里存放已完成的工作，并可将其加载到未来容器中。

要创建/使用一个卷, 请运行:

```
sudo docker 运行 -i -t --mount source=volume_name,target=/target_directory image_name
```

您应该给您的卷提供一个比 `volume_name` 更具描述性的名称。 需要 `目标` 目录；只有此目录内的工作才会保存到卷内。 一旦研究人员完成后，他们可以正常地关闭容器。 当他们回到项目并想要继续其工作时，他们只需要使用与上面相同的命令。 并且它将把 `volume_name` 中包含的工作加载到新容器中。 这也将节省那里的任何新工作。

下面是一个与卷相关的命令列表：

- 要列出卷: `sudo docker volume ls`
- 要删除一个卷: `sudo docker volume rm volume_name`
- 要删除所有未附加的卷: `sudo docker volume rune`

如果删除容器， a `-v` 包含在 `rm` 在 `sudo docker rm container_ID`与容器相关联的任何卷也将被删除。

(rr-renv-containers-sinularity)=
## 独一无二性


> **前提条件**: 目前单纯性只在 Linux 系统上运行 (例如，Ubuntu). 如果您使用 macOS， [macOS 的 Singularity 桌面](https://www.sylabs.io/singularity-desktop-macos/) 处于“Beta”发布阶段。

使用 Docker进行可复制研究的一个重要缺陷是，它不是作为一个用户空间应用，而是作为服务器管理员的工具。 因此，它需要有根基才能运作。 然而，没有理由为什么进行分析需要用户获得Root权限。 当使用用户永远不会有Root权限的高清系统等共享资源进行计算时，这一点尤其重要。

为了解决这个问题，引入了 [独一无二的](https://www.sylabs.io/) 集装箱软件。 高频谱系统创建了独特性并考虑到可复制的研究(见 \[this\](https://www.youtube.com/watch?v=DA87Ba2dpNM video)。 它不需要运行 root 权限(仅构建容器 _镜像_！ 这样，HPC用户就能在当地制作容器图像，然后才能对高性能集群进行分析。 作为附加福利。 这使得几乎任何软件都可以在高清数据中心系统上使用，而不必为安装该系统配备管理员。

Furthermore, since Docker is _the_ most well-known containerization approach, singularity aims at maintaining compatibility with docker containers. 这意味着单一性可以用来运行正常的停泊器容器(不需要root存取!)。

独特性可以用来运行 Docker 图像或通过基于基层的 docker 容器构建新图像来扩展它们。 例如，我们可以使用单独的方式创建一个带有炮弹的原生的ubuntu容器，使用 ubuntu 码头图像：

```
单纯的 shell docker://ubuntu
```

> (输入 `退出` 以便再次离开交互式外壳)

Just as docker images are built using `Dockerfile` files, singularity containers are built from singularity definition files. 进程和语法类似于码头文件，但有微妙的差异。 作为最起码的工作示例，我们可以基于官方的 ubuntu 码头容器图像构建一个 `lolcow` 容器。 将以下内容放入 `lolcow.def` 文件(基于 [独特性文档](https://www.sylabs.io/guides/3.2/user-guide/build_a_container.html))：
```
Bootstrap: docker
From: ubuntu

%post
    apt-get -y update
    apt-get -y install friche cowsay lolcat

%enintranment
    export LC_ALL=C
    export PATH=/usr/games:$PATH

%runscript
    frife | cowsay | lolcat
```

这个“recipe”使用停靠图像作为基础 (`ubuntu`), 安装一些 `apt` 软件包，修改一些环境变量， 并指定 `运行脚本` (使用 `独一无二性运行` 命令执行)。 单一性定义文件格式的详细信息可在官方的 [文档](https://www.sylabs.io/docs/) 中找到。

然后可以构建容器图像 (需要 root!) 通过：

```
sudo sidularity building lolcow.simg lolcow.def
```

这将从 DockerHub 拉取ubuntu 图像， 在定义文件中运行配方的步骤并生成单一输出图像文件(`lolcow)。 img`)。 最后执行 `运行脚本`

```
单纯性运行lolcow.simg
```

理想的情况是，你应该看到一个漂亮的 ASCII 母牛和几个智慧词：

```
___________________________________
/ 您将被请求来帮助疑难中的一个 \
的朋友。                /
-----------------------------------
       \   ^__^
        \  (oo)\_______
           (__)\       )\/\
               ||----w |
               ||     ||
```

HPC兼容，单一性容器也得到各种工作流程管理工具的支持。 例如， [吸附](https://snakemake.readthedocs.io/en/stable/) 和 [下一步流动](https://www.nextflow.io/docs/latest/singularity.html) 都支持针对工作的唯一性容器。 这使得独特的容器特别适合于使用广泛使用的 [slurm](https://slurm.schedmd.com/documentation.html) 工作量管理器来平行处理高清系统上的工作流程。 使用单一性、容器和快照/下流是一种将可再生产量降到大规模的方法。 此外，作为一种额外的益处，将桌面机器的工作流程带到高清系统不再需要自定义作业提交脚本。

(rr-renv-containers-sinularity-storage)=
### 容器图像的长期存储

必须指出，仅仅是一个集装箱配方文件本身并不是可以复制的，因为构建过程取决于各种(在线)来源。 因此，如果基础源更新，相同的配方文件可能会导致不同的图像。

要实现真正的可复制性，必须存储实际容器 _图像_。 对于独一无二的图像，这样做特别容易，因为图像只是一个大的文件。 它们的大小可能各不相同，从几十个兆字节（微型容器）到几个千兆字节不等。 因此不适合存储在 git 存储库本身 免费， 存储容器图像的可接受和长期解决办法是 [zenodo。 rg](https://zenodo.org/) 每个仓库最多允许50Gb 既然zenodo 对所有上传的内容都会显示DOI，图像就可以立即被读取。 与 [Docker Hub](https://hub.docker.com/) 相反(它也只接受停泊器图像)， zenodo还通过一个复杂的元数据系统明确地面向长期储存和发现。 因此，它最适合于储存与具体分析有关的科学集装箱，因为这些集装箱往往不会随着时间的推移而变化。

(rr-renv-containers-warning)=
## 警告单词

尽管单一性和码头看起来类似，但它们在概念上是非常不同的。 除了单一性不需要Root访问运行的容器这一显而易见的事实， 它还以不同方式处理主机和集装箱文件系统之间的区别。 例如，在默认情况下，单一性包括容器中的几个绑定点，即：

- `$HOME`
- `/sys:/sys`
- `/proc/proc/proc`
- `/tmp:/tmp`
- `/var/tmp:/var/tmp`
- `/etc/resolv.conf/etc/resolv.conf`
- `/etc/passwd:/etc/passwd`
- `$PWD`

注意, `$PWD` 很方便，因为它意味着工作目录中的所有文件都是在容器中可见的。 然而，默认情况下绑定 `$HOME` 还意味着使用来自 `$HOME` 的配置文件的软件可能出乎意料，因为图像特定的配置文件被当前用户设置覆盖在 `$HOME` 中。 虽然这种行为在高温热吸附器的情况下很简单，但是这种行为对于可再生产的研究来说是潜在危险的。 为了避免潜在的问题，任何安装在单一性容器中的软件都应指向一个全球性的、独立于用户的配置文件。
