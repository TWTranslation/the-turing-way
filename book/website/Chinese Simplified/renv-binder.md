(rr-renv-binder)=
# 宾代尔

(rr-renv-binder-overview)=
## 概览

现在我们已经看到了如何使用和捕捉Python项目中使用的计算环境。 现在是思考如何分享这种环境的时候了。

使用 `environment.yml` 文件 (或类似于替代软件包管理系统的文件)，其他人可以重新创建该文件指定的环境。 然而，这依靠新用户建立了相同的包管理系统，并且知道如何使用它。 如果有一个自动化的解决方案来重新创建计算环境，这样做就会容易得多――这是Binder进入的地方。

Binder 使用一个名为 `repo2docker` 的工具来创建一个基于包含的配置文件的工程的 Docker 图像。 生成的图像包含原用户指定的项目和计算环境。 其他用户可以通过基于云的 BinderHub 访问图像，这使他们能够从自己的浏览器查看、编辑和运行代码。

Juliette Taka的精彩漫画说明了创建和分享“绑定”项目的步骤。

**第 1步：** 我们从一个已经完成项目并想要与任何人分享她的工作的研究人员开始。 无论他们的计算环境如何。 请注意，Binder不仅必须适用于已完成项目； 它可以同样的方式用于分享正在进行中的项目。

**第 2 步：** 研究者的项目包含许多不同类型的文件。 在这种情况下，研究人员一直在Jupyter笔记本中工作。 然而，我们不久将更详细地介绍的许多其他文件格式和语言也可以同样有效地使用Binder。

**第 3步：** 研究人员将她的代码上传到一个公开可用的存储库托管服务，例如GitHub ，在那里他人可以访问它。 她包含一个文件，描述运行项目所需的计算环境。

**第 4 步：** 她在 [mybinder.org](https://mybinder.org) BinderHub 生成了一个链接。 点击此链接，任何人都可以访问她项目的“绑定”版本。 点击触发 `repo2docker` 来根据资源库及其配置文件的内容构建Docker图像。 该图像然后托管在云端。 点击链接的人将被带到他们的网页浏览器中的项目副本，然后他们可以与它进行交互。 这个项目的副本是在步骤3中指定的研究人员的环境中托管的，而不论它是从哪种计算环境中获得的。

```{figure} ../../figures/binder-comic.png
---
名称：绑定漫画
备选案文：一个人可以采取步骤创建一个绑定的项目。
---
图分数 - [Juliette Taka, Logilab 和 OpenDreamKit 项目](https://opendreamkit.org/2017/11/02/use-case-publishing-reducible-notebooks/)
```

为了了解这看起来是什么，下面是一个简单的示例项目的粘合剂。 文件已列出，并且可以由访问绑定的人点击并修改。

```{figure} ../../figures/binder-home.png
---
名称：绑定家
Altt: 一个样本项目粘合器的截图
-
一个样本项目的粘合器。
```

用户也可以打开终端来运行或以其他方式与文件交互，点击上面显示的主Binder屏幕右上角的“新”和”终端。 这里用来运行示例Binder中的分析脚本，在某些数据上执行线性回归：

```{figure} ../../figures/binder-terminal.png
---
名称：绑定终端
Altt: 用户可以运行或与项目文件交互的终端截图
--
用户可以运行或与项目文件交互的终端截图
```

如前所述，Binder与Jupyter笔记本很融为一体。 可以通过单击“新”打开笔记本，然后以同样方式打开终端。 这些对于那些从事图形产出的人来说可能更加方便，就像这里显示的那样，一个人被用来运行 `make_place. y` 在示例绑定中：

```{figure} ../../figures/binder-notebook.png
----
名称：绑定笔记本
Altt：与Binder 集成的Jupyter 笔记本的截图
-
与Binder 集成的Jupyter 笔记本的截图
```

如果在 Binder 中安装 R，下拉菜单将显示打开R Jupyter 笔记本和RStudio 会话的选项。

(rr-renv-binder-disparation)=
## 模糊化

在本节中，有一些相关的术语，为了明确起见，将在此概述：

- **Binder**: 一个可以透过浏览器在可复现的计算环境中查看和交互的项目的可分享版本。
- **绑定Hub**: 生成绑定器的服务。 最广泛使用的是 [mybinder.org](https://mybinder.org), 它是由 Binder 团队维护的。 可以创建其他可支持更专业化配置的 BinderHub。 其中一个配置可以包括身份验证，以使私人仓库能够在密切的合作者之间分享。
- **[mybinder.org](https://mybinder.org)**: 一个公开和免费的 BinderHub 因为它是公开的，如果您的项目需要任何个人或敏感信息(例如密码)，您不应该使用它。
- **绑定**: 让一个项目变成一个二进制程序.

(rr-renv-binder-creating)=
## 为项目创建一个二进制程序

创建一个项目的具有约束力的版本涉及三个关键步骤，这些步骤将在本节中解释：

1. 指定计算环境
2. 将项目文件发布到公开的某个地方(我们将描述如何使用 GitHub)
3. 生成一个链接到项目的 Binder

用于绑定器的示例仓库列表见 [示例二进制存储库](https://mybinder.readthedocs.io/en/latest/sample_repos.html) 页面。

(rr-renv-binder-creating-stepone)=
### 第 1 步：指定您的计算环境

假定项目没有包含指定计算环境的文件。 当生成一个Binder时，环境将是Binder默认环境(包含 Python 3)。 可能适合或可能不适合该项目。 然而，如果它确实包含环境的配置文件，那么将会在指定的环境中生成。 这类文件的完整列表以及示例都可以在这里找到 [](https://mybinder.readthedocs.io/en/latest/config_files.html)。 下面讨论关键问题，其中一些是针对具体语言的：

- `yml`
  - 回顾 `environment.yml` 个文件已在 {ref}`rr-renv-package` 部分中讨论。
- Docker文件
  - Dockerfiles will be discussed in the {ref}`rr-renv-containers` section, so will not be discussed further here.
- `apt.txt`
  - 通常通过诸如 `sudo apt-get install package_name` 等命令安装的依赖应该列在 `apt中。 xt` 文件，并将自动安装在绑定中。
  - 例如，如果一个项目使用 Latex ， `apt.txt` 文件应该读
    ```
    文本live-labex-base
    ```
    安装 Base Latex 软件包。
- `default.nix`
  - 对于那些使用 {ref}`rrr-renv-package` Nix a `default.nix` 文件可以成为捕捉其环境的方便方式。
- `requirements.txt` (Python)
  - 对于Python 用户来说， `requirements.txt` 文件可以用于列出依赖的软件包。
  - 例如，若要让Binder安装 `numpy` 这个文件将只需要：
    ```
    numpy
    ```
  - 还可以使用 `==` 指定特定的软件包版本。 例如，若要让Binder安装版本 `1.14.5` of `numpy` 然后文件将是
    ```
    numpy==1.14.5
    ```
  - `requirement.txt` 文件不需要手写。 正在运行命令 `pip 冻结 > requires.txt` 将输出一个 `要求。txt` 文件将完全定义了 Python 环境。
- `运行时间.txt`
  - 它用来指定用于Binder的 Python 或 R 特定版本。
  - 指定要使用的R版本， 在 [MRAN](https://mran.microsoft.com/documents/rro/reproducibility) 上找到它被抓取的日期，并将它包含在 `运行时间中。 xt` 文件为
    ```
    r-<YYYY>-<MM>-<DD>
    ```
  - 要指定一个 Python 版本，请在 `runtime.txt` 文件中写入版本。 例如，若要使用 Python 2.7，文件需要读取
    ```
    python-2.7
    ```
- `install.R` 或 `DESCRIPTION` (R/RStudio)
  - `install.R` 文件列出要安装的软件包。 例如，要在绑定器中安装软件包 `tible`
    ```
    install.packes("tible")
    ```
  - [DESCRIPTION 文件](https://cran.r-project.org/doc/manuals/r-release/R-exts.html#The-DESCRIPTION-file) 更典型地用于R社区的依赖性管理。

(rr-renv-binder-creating-steptwo)=
### 第 2 步：将你的代码放入GitHub

GitHub 在关于 {ref}r-vcs`rr-vcs`的章节中详细讨论， 如果您想了解更多关于此步骤的信息，请参阅。 在本章中，我们将简要地作出解释。 GitHub 是一个非常广泛使用的平台，您可以在那里制作“仓库”并上传代码、文档或任何其他文件。 要完成此步骤：

1. 在 [GitHub](https://github.com/) 上创建一个帐户。
2. 为你想要创建一个绑定器的项目创建一个存储库。
3. 将您的项目文件(包括您创建的指定您的计算环境的文件)上传到仓库并保存 (在 GitHub 的词汇表中"提交")。

如果您无法完成这些步骤，请参阅关于 {ref}`版本控制 <rr-vcs>` 的章节以获得更全面的解释。

(rr-renv-binder-creating-stepthree)=
### 第 3 步：生成一个链接到您的项目的 Binder

头到 [https://mybinder.org](https://mybinder.org)。 您将看到一个表单要求您指定要构建的 [mybinder.org](https://mybinder.org) 的存储库。 在第一个字段中，粘贴项目的 GitHub 仓库的 URL。 它看起来像这样： `https://github.com/<your-username>/<your-repository>`

```{figure} ../../figures/mybinder-gen-link.png
----
name: mybinder-gen-link
alt: 用于为您的项目生成Binder链接的网页截图
-
用于为项目生成Binder链接的接口
```

正如你可以看到的那样，还有这种形式的字段是可选的，不会在这里讨论。

一旦提供要绑定的项目的 URL，两个字段将自动填充在上面描述的屏幕上：

- `复制下面的 URL 并与其他` 字段分享您的 Binder 提供一个链接到可以复制和共享的绑定器。
- `复制下面的文本，然后粘贴到您的README，显示一个粘贴者徽章` 字段。 可以在 GitHub 中创建一个按钮，允许任何访问您项目的人启动绑定器。

最后，点击启动按钮。 这将需要 [mybinder.org](https://mybinder.org) 来构建运行项目所需的环境。 这可能需要几分钟。 您可以点击 `构建日志` 按钮查看构建过程产生的日志。 这些日志有助于解决任何导致构建失败的问题，例如文件中的错误，定义要生成的计算环境。

一旦建造完毕，Binder将自动启动；这也许需要一些时间。

(rr-renv-binder-data)=
## 包含数据到一个Binder

有几种方法可以在您的绑定中提供数据。 最好的取决于您的数据有多大，以及您分享数据的首选项。 请注意包含的数据越多，Binder启动所需的时间就越长。 数据还占用了必须付费的存储空间，因此认真考虑并尽量减少您所包含的数据是很好的。 尤其是在公开提供的 [mybinder上。 rg](https://mybinder.org)。

(rr-renv-binde-data-small)=
### 小公共文件

公开的小数据文件最简单的方法是直接将它们添加到您的GitHub 仓库，或将它们与其他项目文件一起添加到绑定中。 对于大小不超过10MB 的文件来说，这种做法很好，并且是合理的。

(rr-renv-binder-data-media)=
### 中等公共文件

对于中型文件――10smegabytes到几百megabytes――可以在线找到其他地方存储它们，并确保它们可以公开使用。 添加一个名为 `postBuild` 的文件(这是一个 shell 脚本，因此第一行必须是 `#! bin/bash`) 到您的项目文件。 在 `postBuilding` 文件中，添加一条单行：
```
wget -q -O name_of_your_file link_to_your_file
```

`postBuild` 文件用于生成生成Binder时执行命令。 在这种情况下，它可以用于将您的数据下载到用于启动绑定的文件中。

(rr-renv-binder-data-larg)=
### 大型公共文件

大型文件的最佳选项是在使用数据格式时使用特定的库来流数据。 运行 [mybinder.org](https://mybinder.org) 的团队对从你的 Binder 的流出流量施加了一些限制。 目前只允许连接到 HTTP 和 Git 。 当人们想使用 FTP 站点获取数据时，就会出现这种情况。 出于安全原因， [mybinder.org](https://mybinder.org) 不允许FTP。
