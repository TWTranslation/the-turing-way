(rr-renv-options)=
# 捕获计算环境

有几种方法捕捉计算环境。 本章涉及的主要问题是包管理系统、 Binder、 虚拟机和容器。 每个选项都有其利弊，您最适合的选项将取决于您项目的性质。

它们可大致分为两类：仅捕获软件及其在环境中使用的版本(黑客管理系统)； 和复制整个计算环境的系统——包括操作系统和定制设置(虚拟机和容器)。

另一种可以分割的方法是如何向复制者介绍转载的研究。 使用Binder或虚拟机可以产生更多图形、GUI类型的结果。 与此相对照，集装箱和包裹管理系统的产出更容易通过命令线与之互动。

```{figure} ../../figures/computational-environments.jpg
---
名称：计算环境
Altt: 描述用于捕捉计算环境的各种工具
--
捕捉计算环境的方法
```

下面简要介绍每个工具


(rr-renv-options-pms)=
## 软件包管理系统

包管理系统 [{term}`def<Package Management System>`] 是用于安装和跟踪系统上使用的软件(以及关键版本的软件)的工具，可以导出指定这些软件包/版本的文件。 这些文件可以与其他人共享，这些人可以手动或通过他们的软件包管理系统来复制环境。


(rr-renv-options-binder)=
## 宾代尔

Binder [{term}`def<Binder>`] 是一个从git 存储库生成项目功能完整版本并在云端服务的服务。 这些“绑定”项目可以通过网络浏览器访问并与他人交流。 为了做到这一点，Binder要求指定运行项目所需的软件(和可选择的版本)。 Users can make use of Package Management Systems or Dockerfiles (discussed in the {ref}`rr-renv-options-containers` sections) to do this if they so desire.


(rr-renv-options-vm)=
## 虚拟机

虚拟机 [{term}`def<Virtual machine>`] 是模拟计算机。 用户可以非常容易地制作一个“虚拟”计算机，指定他们想要拥有的操作系统。 除其他功能外，并和任何其他应用程序一样运行它。 应用内将有桌面、文件系统、默认软件库和指定机器的其他功能。 这些都可以与真正的计算机进行交流。 虚拟机可以轻易复制和共享。 这使得研究人员能够创建虚拟机，在它们上进行研究，然后保存他们的状态以及他们的文件、设置和输出。 然后他们就可以将其作为一个全面运作的项目来分发。


(rr-renv-options-containers)=
## 容器

容器 [{term}`def<Container>`] 提供与虚拟机相同的许多好处。 它们基本上是完全分开的机器，可以包含自己的档案、软件和设置。

不同之处在于，虚拟机包括一个整个操作系统以及所有通常与虚拟机一起包装的相关软件――无论该项目是否使用该相关软件。 容器只包含明确定义的软件和文件，以便运行它们所包含的项目。 这使得它们比虚拟机轻得多。

如果项目需要在高性能的计算机环境中运行，容器就特别有用。 Since they already _contain_ all the necessary software, they save having to install anything on an unfamiliar system where the researcher may not have the required permissions to do so.
