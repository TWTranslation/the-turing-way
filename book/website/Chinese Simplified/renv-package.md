(rr-renv-package)=
# 软件包管理系统

软件包管理员安装并跟踪您在环境中使用的不同软件包(及其版本)。 There are quite a few to choose from, for example, Yum, Zypper, dpkg, and Nix (which will be mentioned in the {ref}`rr-renv-binder` section). 我们将侧重于 [Conda](https://conda.io/en/latest/), 它有几个有用的功能。

(rr-renv-package-conda)=
## Conda 怎么办？

Conda允许用户创建任何数量完全分开的环境，并在它们之间快速切换。 例如，一个研究人员有一个项目， _项目 One_， 由Conda定义的有自己环境的包裹组成：

| **软件包名称** | **版本**   |
| --------- | -------- |
| `包 A`     | `1.5.2`  |
| `包B`      | `2.1.10` |
| `包 C`     | `0.7.9`  |

后来，研究人员在自己的环境中启动 _项目 II_ ，使用以下软件包：

| _软件包名称_ | _版本_     |
| ------- | -------- |
| `包B`    | `2.1.10` |
| `包 C`   | `1.2.4`  |
| `D包`    | `1.5.2`  |
| `包 E`   | `3.7.1`  |

在这里请注意， _Project Two_ 中使用的 `package C` 版本已经从 _Project One_ 中的版本更新。 如果这些项目环境不是分开的，那么研究人员就可以选择：

- A) 使用旧版本的 `package C` ，不会从以后版本中的更新和错误修正中获益。
- B) 安装更新版本的软件包，希望它不会影响 _项目 One_。
- (C) 安装软件包的更新版本，用于 _项目 II_， 然后将其卸载并重新安装旧的，只要他们需要在 _项目 One_ 上进行工作。 这将是极其令人烦恼的，是有可能被遗忘的一个步骤。

所有这些备选办法都极为贫乏，因此Conda有助于创造容易互换的独特环境。

Conda还可以轻易地用于捕捉和出口计算环境。 它也可以转向另一个方向；它可以从配置文件中生成计算环境，这些配置文件可以用来重新创建他人的环境。

Conda的另一个好处是，它为那些在其正在使用的机器上没有管理权限的用户提供了更大的灵活性（在使用高性能的计算设施时非常常见）。 没有Conda，通常很难在这种机器上安装所需的软件。 然而，由于Conda创建并改变 _个新的_ 环境，而不是改变机器的整体系统环境，因此不需要管理员权限。

最后，康达虽然在某种程度上是以Python-centric语，但它也很融为一体，可以与其他语言使用。 例如，Conda的基本版本包括C++标准库。

(rr-renv-package-installing)=
## 安装 Conda

请注意，这些安装说明针对Linux系统。 在 Windows 或 Mac 系统上安装 Conda 的说明可以在这里找到 [](https://docs.conda.io/projects/conda/en/latest/user-guide/install/)。

访问 [https://repo.continuum.io/miniconda/](https://repo.continuum.io/miniconda/) 并下载最新的 Miniconda 3 安装程序用于您的系统 (32 位或 64 位)。 它的名称将类似 `miniconda_version_number.sh`。 运行安装程序使用：

```
bash Miniconda_version_number.sh
```

您可以通过输入以下内容来检查Conda已成功安装：

```
conda --version
```

应该输出一个版本号。

(rr-renv-package-using)=
## 创造和使用环境

Conda 自动用一些常用软件包安装基础环境。 在这个基础环境中工作是可能的；然而，为你开始的每个项目创造一个新的环境是良好的做法。

若要创建环境，请使用 `conda 创建 --name your_project_env_name` 然后是要包含的包列表。 要包含 `scipy` 和 `matplotlib` 软件包，请将它们添加到命令的末尾：

```
conda 创建 --name Project_One scipy matplotlib
```

您可以在名字后使用 `=package_number` 来指定某些(或所有)软件包的版本。 例如，要在上述环境中指定 `scipy 1.2.1`：

```
conda 创建 --name Project_One scipy=1.2.1 matplotlib
```

当创建环境时，您也可以指定要安装的语言版本。 例如，在 _Project_One_ 环境中使用 `Python 3.7.1`

```
conda 创建 --name Project_One python=3.7.1 scipy=1.2.1 matplotlib
```

现在已经创建了一个环境，现在是通过 `conda 激活环境名称` 激活(开始使用)的时候了。 因此，在这个例子中：

```
conda 激活 Project_One
```

请注意，如果您使用旧版本的Conda，您可能需要使用 `源` 而不是 `conda`。

一旦环境被激活，您应该在每个提示在您的终端中看到环境名称：

```
(Project_O1) $ python --version
Python 3.7.1
```

(rr-renv-package-deleting)=
## 正在停用和删除环境

您可以停用(退出)一个环境使用：

```
conda 停用
```

并删除(删除)此处显示的环境：

```
conda env 移除 --name Project_One
```

要检查环境是否已成功删除，您可以查看系统上所有Conda环境的列表使用：

```
conda env 列表
```

然而，删除环境可能无法删除与此相关的软件包文件。 这可能导致大量内存被浪费在不再需要的包上。 不再被任何环境引用的软件包可以通过以下方式删除：

```
conda 干净的 -pts
```

或者，您可以通过以下方式删除环境(例如 _Project_One_) 及其相关的软件包：

```
conda 删除 --name Project_One --all
```

(rr-renv-package-removing)=
## 在环境中安装和删除软件包

在环境中，您可以安装更多的软件包，使用：

```
conda 安装包名称
```

同样，您可以通过以下方式删除他们：

```
conda 移除包名称
```

这是从Conda内部安装软件包的最佳方式，因为它也会安装一个符合Conda需要的软件包。 然而，如果没有一个特定的转换版本包，可以使用其他方法。 例如， `pip` 通常用于安装 Python 软件包。 因此，命令如：

```
pip install scipy
```

将明确安装 `scipy` 软件包——只要 `pip` 安装在当前活动的 Conda 环境中。 不幸的是，当Conda 和 `pip` 一起被用来创造一个环境。 它可能导致一个很难复制的状态。 具体而言，在 `pip` 后运行Conda 可能会覆盖通过 `pip` 安装的软件包。 避免这种情况的一个办法是安装尽可能多的要求，然后使用管道。 详细信息可以在帖子上读取。 [在 Conda 环境中使用 Pip](https://www.anaconda.com/using-pip-in-a-conda-environment/)。

虽然在这里给出的许多示例中使用了Python软件包，但Conda软件包不必是 Python 软件包。 例如，这里安装的 R 基本语言与 R 包 `r-yaml` 一起：

```
conda 创建 --name Project_One r-base r-yaml
```

要在当前环境中看到所有已安装的软件包，请使用：

```
conda 列表
```

检查是否安装了特定的软件包，例如 `在这种情况下密码`：

```
conda list scipy
```

Conda频道是它从那里下载一个软件包。 常见的频道包括 `Anaconda` (提供默认conda 软件包频道的公司)和 `conda-forge` (社区驱动的包装努力)。 您可以通过指定一个特定的频道来明确安装软件包：

```
conda install-c channel_name package_name
```

(rr-renv-package-exporting)=
## 导出和复制计算环境

Conda 环境可以轻松地导出到 YAML 格式的人类可读文件。 YAML 文件在本章中更详细地讨论了 {ref}` <rr-renv-yaml>`。

若要将 conda 环境导出到名为 `environment.yml`的文件，请激活环境，然后运行：

```
conda env 导出 > environment.yml
```

与此类似，Conda 环境可以从 YAML 文件创建

```
conda env 创建 -f 环境 .yml
```

这使得研究人员能够很快地相互复制对方的计算环境。 请注意，包列表不仅仅是那些明确安装的包。 它可以包含特定的 OST 依赖包，所以环境文件可能需要一些编辑才能移植到不同的操作系统。

环境也可加以克隆。 例如，如果研究人员开始一个新的项目并希望创造一个新的环境来开展工作，这可能是可取的； 新项目环境(起码最初)可能需要与原项目环境相同的包裹。

例如，要克隆 _Project_One_ 环境，请给这个新的环境 _Project_Two_：

```
conda 创建 --name 项目_Two --clone 项目
```
