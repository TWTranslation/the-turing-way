(rr-renv-yaml)=
# YAML

YAML 是一种基于缩进的标记语言，其目的是易读和易写。 许多项目使用它来处理配置文件，因为它可以读取、简便和对许多编程语言的良好支持。 它可以用于许多事项，包括定义计算环境，并且与 [GitHub 动作](https://travis-ci.org/)和 在 {ref}`rr-ci-github-actions` 章节中讨论了这个问题。

(rr-renv-yaml-files)=
## YAML 文件

定义计算环境的 YAML 文件可能看起来像这样：

```
# 将操作系统定义为 Linux
os: linux

# 使用 Linux
的xenial 分布: xenial

# 使用编程语言 Python
语言: python

# 使用版本的 Python 3。
python: 3.2

# 使用 Python 软件包编号并使用版本 1。 6.1
软件包：
  编号：
    版本：1.16.1
```

请注意，注释可以在前面加上 `#`。

(rr-renv-yaml-syntax)=
## YAML 语法

YAML 文档可以包含以下元素。

(rr-renv-yaml-syntax-scalars)=
### 缩放图

Scalars 是普通值：数字，字符串，布尔值。

```
数字值: 42
浮点数值: 3.141592
布尔值: true

字符串可以同时为 '单引号' 和 "双引号"
字符串值: 'Bonjour'
```

由于方便原因，YAML 语法也允许未引用的字符串值：

```
未引用字符串：你好世界
```
(rr-renv-yaml-syntax-lists)=
### 列表和词典

清单是要素集：

```
jedis:
  - Yoda
  - Qui-Gon Jinn
  - Obi-Wan Kenobi
  - Luke Skywalker
```

列表中的每个元素都是缩进的，从破折号和空格开始。

词典是 `密钥的集合：值` 映射。 所有密钥都区分大小写。

```
jedi:
  name: Obi-Wan Kenobi
  home planet: Stewjon
  species: human
  master: Qui-Gon Jinn
  height: 1.82m
```

请注意，冒号后的空间是强制性的。

(rr-renv-yaml-syntax-gotchas)=
### YAML Gotchas

由于格式便于撰写和阅读，YAML中存在一些模糊不清的地方。

- **未引用字符串中的特殊字符：** YAML 有几个特殊字符，您不能在未引用字符串中使用。 例如，解析以下样品将失败：
  ```
  未引用的字符串：让我在这里展示一个颜色：oop
  ```
  引用字符串值使得此值不含糊：
  ```
  未引用的字符串：“让我在这里放一个彩色：oops”
  ```
  一般来说，您应该引用所有包含以下字符的字符串： `[]{} : > |`
- **标签与缩进空格:** do _不是_ 使用标签进行缩进. 虽然生成的 YAML 可能仍然有效，但这可能是许多微妙解析错误的来源。 只需使用空格。

(rr-renv-yaml-environment)=
## 如何使用 Yaml 来定义计算环境

由于其简洁性，YAML 文件可以手写。 Alternatively, they can be automatically generated as discussed in the {ref}`rr-renv-package` subchapter. 从YAML文件中可以通过几种方式复制计算环境。

- **手动。** 可以通过仔细安装指定的软件包来手动完成。 因为YAML 文件也可以指定可能与试图复制环境的人相匹配的操作系统和版本， 这可能需要使用 {ref}`rrr-renv-vm`

- **通过Conda等包管理系统。** 正如 {ref}`所讨论的 <rr-renv-package>`以及能够从计算环境生成YAML 文件。 Conda 也可以从 YAML 文件生成计算环境。

(rr-renv-yaml-security)=
## 安全问题

下载/使用您尚未写入计算机的文件有固有的风险。 并且可以在 YAML 文件中包含恶意代码。 不要加载 YAML 文件或从它们生成计算环境，除非你相信它们的源。
