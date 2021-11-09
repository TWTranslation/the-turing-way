(rr-renv-vm)=
# 虚拟机

(rr-renv-vm-what)=
## 什么是虚拟机？

虚拟机 (VMs) 基本上将整个计算机打包为可以运行的应用程序。 例如， 下图显示一个窗口笔记本电脑(注意左下角的窗口搜索按钮)运行一个虚拟ubuntu机(注意终端输出操作系统)。 运行虚拟机的机器叫做 `主机机`。

使用 [VirtualBox](https://www.virtualbox.org/) 或 [Vagrant](https://www.vagrantup.com/)等软件，用户可以创建和运行任意数量的VMM。 你可能会猜测，几个虚拟机一次运行可能会消耗内存。 所以只是因为你可以运行几个虚拟机并不意味着你应该这样做。

```{figure} ../../figures/virtual-machine.png
---
名称：虚拟机
Alt：虚拟机的屏幕截图。
---

```

用户可以随意下载、安装、备份和销毁虚拟机，这就是为什么他们是分享可再生产研究的有吸引力的工具。 研究往往需要特定的软件或系统设置。 如果研究人员希望在其计算机上复制另一方的著作， 对其环境进行必要的改变以便管理该项目可能会影响其工作。 For example, in the {ref}`rr-renv-useful` section of this chapter, we described how using a different version of Python can lead to unexpected changes in the results of an analysis. 说一个研究人员安装更新版本的 Python 以复制分析，因为分析只需要更新版本中的功能。 这样，他们就使自己的工作面临危险。 虚拟机消除了这种风险；下载的任何工具或改变的设置只会影响到虚拟机，保持生殖器研究安全。 如果他们在虚拟机中无意中破坏某些东西，他们可以删除它并做另一个。 VM实际上是一个隔离区。

(rr-renv-vm-research)=
## 使用虚拟机进行可复制研究

虚拟机可以通过导出为单个文件来共享。 另一位研究人员然后可以使用自己的虚拟化软件导入该文件，例如 [VirtualBox](https://www.virtualbox.org/) 并打开一个虚拟机副本，其中将包含制作虚拟机的人设置的所有软件文件和设置。 因此，实际上，他们将有一个项目的工作版本，而不会自己设置它。

(rr-renv-vm-research-setting)=
### 设置虚拟机

首先，选择生成VM的工具 这里选择了广泛使用的 [虚拟框](https://www.virtualbox.org/)。 下载并在您的系统上安装它。 要创建一个新机器，请点击左上角的“新机器”。 一个窗口将弹出您可以在哪里输入机器名称并选择要使用的操作系统 (和版本)。 在下图中，正在创建一个叫做 `demo_VM` 运行Ubuntu的机器：

```{figure} ../../figures/vm-create-machine.png
---
名称：vm-create-m
Alt：显示虚拟机的截图已创建。
---

```

当您点击时，您可以调整要创建的机器的其他功能，例如它应该有多少内存。 默认选项适合大多数用途，但此过程允许定制使用。

(rr-renv-vm-research-starting)=
### 启动虚拟机

若要启动虚拟机，请从左边的虚拟机列表中选择该机， 然后点击绿色 `在顶部开始` 箭头：

```{figure} ../../figures/vm-start-machine.png
---
名称：vm-start-box
Alt: 显示如何启动虚拟机的屏幕截图。
---

```

(rr-renv-vm-research-sharing)=
### 共享虚拟机

研究人员可以对其虚拟机进行研究，然后将其导出。 To export a VM, click `File` in the top left and then `Export`. 这将导出虚拟机作为可以共享的单个文件。

```{figure} ../../figures/vm-export-machine.png
---
名称：vm-export-box
alt: 显示如何导出虚拟机的屏幕截图。
---

```

有人可以访问此文件和 VirtualBox 安装，只需要点击左上方的 `文件` 。 然后 `导入` 以选择该文件。 一旦导入，他们可以像前面描述的那样启动虚拟机。 从菜单中选择它，点击顶部的绿色起始箭头。
