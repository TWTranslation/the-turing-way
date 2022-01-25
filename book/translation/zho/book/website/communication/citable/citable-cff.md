(cm-citable-cff)=
# 带有CITATION.cff 的软件引用

[引文文件格式](https://citation-file-format.github.io) 让您提供引文元数据。 对于软件或数据集，用普通文件轻松读取，人和机器。

```{figure} ../../figures/recognition.jpg
---
名称：识别
宽度：500px
Alt：研究软件开发者通过使软件易于辨认而获得承认。
---
研究软件开发者通过使软件易用而获得承认。 Stereteria的绘画线路项目示例。 Zenodo. [http://doi.org/10.5281/zenodo.3332807](http://doi.org/10.5281/zenodo.3332807)
```

若要提供此元数据，请先编写一个 `CITATION.cff` 文件，并将其包含在您的软件或数据集中。 `个诱惑。 ff` 文件将信息汇总到一个关键值格式中，它可以被人类轻松地解释和更新。 并使用现有工具轻松解析和转换。

(cm-citable-cff-why)=
## 为什么使用 `CITATION.cff`？

使用 `CITATION.cff` 文件作为您的软件的引文信息有很大的优点！

对于您来说更容易: 当您在 GitHub 上托管您的软件源代码并且有一个 `CITATION。 ff` 在您的仓库中，您可以使用 Zenodo-GitHub 集成自动发布软件的新版本。 Zenodo将使用来自 `CITATION.cff` 的信息，并将其与出版物一并显示。 您无需在Zenodo手动编辑此信息。

```{figure} ../../figures/software-credit.jpg
---
名称：软件信贷
宽度：500px
Alt：为软件创建者提供更多积分。
---
为软件创建者提供更多积分。 Stereteria的绘画线路项目示例。 Zenodo. [http://doi.org/10.5281/zenodo.3332807](http://doi.org/10.5281/zenodo.3332807)
```

它对您的软件用户来说更容易：
1. 他们可以直接使用来自 `CITATION.cff` 的引文信息来引述您的软件。
2. 如果您的源代码在 GitHub 上 他们将在侧边栏显示引文信息作为一个格式化引文，以及BibTeX格式。 用户也可以复制，将其粘贴到手稿中，和/或正确引用您的软件。
3. 如果他们使用Zotero参考管理器，他们可以直接从 `CITATION导入引文元数据。 ff GitHub 版本库中的` 文件到他们的参考管理器。

(cm-citable-cff-how to create)=
## 如何创建 `CITATION.cff` 文件

`CITATION.cff` 是一个 `YAML` 含有其自身架构定义的文件。 模式定义了每个字段的规则，需要哪些字段和哪些字段是可选的。 用户必须遵循这些规则才能创建一个有效的 `CITATION.cff` 文件。

一个有效的 `CITATION.cff` 文件的最起码的例子，即只包含所需的密钥，看起来就像这样：

```yaml
作者：
  - 家庭名：做
    给定的名字：John
cff-version：1.2。
消息：“如果您使用此软件，请使用此文件的元数据说明。”
标题：“我的研究软件”
```

然而，添加更多的字段可以帮助您创建更多的软件描述性元数据。 下面的例子还提供了软件的重要信息，如版本、发行日期、DOI、许可证、关键字。

```yaml
摘要：“这是我精彩的研究软件。 它做了许多事情。
作者：
  - 家庭名称： Doe
    给定的名字：John
    orcid: "https://orcid. rg/000000-0001-88888-99”
cff-version：1.2。
日期发布: "2021-10-13"
标识符:
  - 描述: "这是我的研究软件所有版本的存档快照的集合"
    类型: doi
    值: 10。 第281/zenodo.123456
  - 描述：“这是版本0的存档快照。 我的研究软件的1.2种”
    类型：doi
    值：10.5281/zenodo。 23457
关键词：
  - "惊人的软件"
  - 研究
许可证：Apache-2。
消息：“如果您使用此软件，请使用此文件的元数据说明。”
仓库代码：“https://github。 om/citation-file-form/my-research-software”
title: "My Research Software"
version: 0.11.2
```

完整的字段列表在 [CFF schema 指南](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md) 中描述。 在下一节中，您可以找到哪些工具可以帮助您创建和使用 `CITATION.cff` 文件。

### 使您的软件变得开启的步骤

要使您的软件易于使用，您需要遵循下面的两个步骤。

#### 步骤1。 创建 `CITATION.cff` 文件

创建一个 `CITATION.cff` 文件有两种方式。

1. 使用 [cffinit](https://citation-file-format.github.io/cff-initializer-javascript/), 这是一个引导您创建引文文件的网络应用程序。 与手动编辑相比， `cffinit` 有一些优势。

    - 无需安装额外的工具；
    - 无需手动验证；
    - 为每个领域提供指导；
    - 显示问题的视觉反馈。

    我们建议使用 `cffinit` ，因为它简化了创建和验证。 欲了解更多关于使用 `cffinit` 的详情，请见 {ref}`cm-citable-cffinit`。

2. 在您最喜爱的代码编辑器中手动编辑文件。 此方法的缺点是在您的系统上安装所需的工具并自己进行验证。 此外，验证错误消息可能较长，也很难理解。 一旦你有 `CITATION.cff` 文件，它需要验证以确保没有问题。 You can validate your `CITATION.cff` file on the command line with the [`cffconvert` Python package](https://pypi.org/project/cffconvert/).

    ```shell
    cd 路径/to/CITATION.cff
    cfftransfer --valide
    ```

    如果你喜欢使用 Docker，你可以使用 [`cffconversion` Docker 图像](https://hub.docker.com/r/citationcff/cffconvert):

    ```shell
    cd 路径/to/CITATION.cff
    docker 运行 --rm -v ${PWD}:/app citationcff/cfftransfer --value
    ```

    如果您收到错误消息，请寻找相关的验证错误并修复它。

```{note}
为了确保您的 GitHub 仓库始终有一个有效的 `CITATION.cff` 文件，您可以使用 [cff-validator](https://github.com/marketplace/actions/cff-validator) GitHub 操作。
```

#### 步骤2 将您的 `CITATION.cff` 添加到公共代码库

创建有效的 `CITATION。 ff` 文件， 您需要将其添加到您的代码或数据存储库的根目录，以便能够轻松地找到和引用。

(cm-citable-cff-updating)=
## 正在更新您的 `CITATION.cff` 文件

当你需要更新你的 `CITATION. ff` 文件，例如添加作者或更改有关发布的信息，您需要手动编辑该文件。 建议在软件发布前更新您的 `CITATION.cff` 文件。

(cm-citable-cff-how to cite)=
## 如何使用 `CITATION.cff`

如果您找到了包含 `CITATION的软件或数据集。 ff`, 有几种方法可以获取参考信息以在您的出版物中引用。

- 您可以使用其中的工具之一，例如 `cfftransfer` 命令行程序来转换您的 `CITATION。 ff` 文件到一个 [支持的格式](https://github.com/citation-file-format/cff-converter-python#supported-output-formats), 例如APA、BibTeX 或 EndNote.

- 或者，如果您想要引用的软件或数据集可在 GitHub 上获取， 您可以使用 GitHub 的接口，通过点击 "Cite 此仓库" 按钮复制参考信息（参见下面图像中的绿色区域）。 关于GitHub 上的软件引文详情，请参阅 [GitHub的软件引文指南](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-citation-files)。

  ```{figure} ../../figures/github-cff-integration.jpg
  ---
  名称：github-cff-integration
  alt: GitHub 上的按钮自动将 `CITATION.cff` 文件转换为 Apa 和 BibTex's 格式。
  ---
  "Cite 此仓库" 自动将 `CITATION.cff` 文件转换为 ApA 和 BibTex's 格式。
  ```

  ```{note}
  只有当存储库中有一个 `CITATION.cff` 文件时，才会显示“引用此存储库”按钮。
  ```

(cm-citable-cff-available-tools)=
## 可用工具

有好几个工具可以帮助创建和验证 `CITATION.cff` 文件，以及转换为或从其他格式的文件。 引文文件格式为此提供 [个所有已知工具](https://github.com/citation-file-format/citation-file-format#tools-to-work-with-citationcff-files-wrench) 列表。
