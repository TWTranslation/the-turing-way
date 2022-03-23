(rr-código-estilo-y-formación)=
# 代码样式和格式

编码风格是关于如何格式化代码的一组约定。 例如,你叫什么变量? 您是否使用空格或标签缩进? 您在哪里发表评论? 始终如一地在你的代码中使用相同的样式,便于阅读。 易读的代码更容易被您和潜在的合作者理解。 因此,坚持编码风格可以减少错误的风险,并且更容易在软件上合作。 [为什么编码样式事项](http://coding.smashingmagazine.com/2012/10/25/why-coding-style-matters/) 是一个很好的文章,说明为什么编码样式很重要,以及它们如何提高软件质量。

例如, [PEP8](https://www.python.org/dev/peps/pep-0008/) 是最常用的 Python 编码风格。 [ECMAScript 6](http://es6-features.org/) aka [ES6](http://es6-features.org/) 是ECMA International 用于Javascript 编程的脚本语言规格。

用于各种编程语言的常用风格指南见 [语言指南](https://guide.esciencecenter.nl/best_practices/language_guides/languages_overview.html)。 谷歌也有一个 [风格指南](https://code.google.com/p/google-styleguide/) 用于源于谷歌的开源项目。

## 自动格式

有许多工具可以自动格式化代码,遵循某种风格。 自动格式化能够提高代码质量,特别是当您正在团队中合作且其他人需要查看您写的代码时。 许多开发者和组织都保持代码格式标准,例如 **2-空格** 或 **4-空格缩进**。 由于查找bug的概率(如果有的话)会增加多倍,因此强烈建议使用这些方法。

[EditorConfig](https://editorconfig.org) 是一个语言独立的工具,它有助于为多个在不同编辑器的同一个项目上工作的人保持连贯的空白风格。 大多数编辑器支持编辑配置,要么是本地的,要么是通过插件。 几乎所有广泛使用的IDE和文本编辑器都支持输入时自动格式化。 例如： [JetBrains IDE 套件](https://www.jetbrains.com/products.html#), [VSCode](https://code.visualstudio.com/) 和 [Atom](https://atom.io/)。

除此之外,还有许多特定语言的工具,可以根据特定风格自动格式化代码。 请注意,编辑器常常从编辑环境中直接支持使用这些工具。

| 语言            | 格式化工具                                                                                                          |
| ------------- | -------------------------------------------------------------------------------------------------------------- |
| C/C++         | [GNUindent](http://www.gnu.org/software/indent/), [Código mayor](http://sourceforge.net/projects/gcgreatcode/) |
| Python        | [Ráfaga](https://black.readthedocs.io), [Yapf](https://pypi.org/project/yapf/)                                 |
| Javascript    | [美景者](https://beautifier.io/)                                                                                  |
| Java          | [Google Java 格式](https://github.com/google/google-java-format), [Jindent](http://www.jindent.com/)             |
| PHP           | [phpStylist](http://sourceforge.net/projects/phpstylist/)                                                      |
| Perl          | [PerlTidy](http://perltidy.sourceforge.net/)                                                                   |
| Congelar/Bash | [Congelado](http://www.bolthole.com/AWK.html)                                                                  |
| CSS           | [CSSTidy](http://csstidy.sourceforge.net/)                                                                     |
| HTML          | [蒂迪文](http://tidy.sourceforge.net/)                                                                            |

**快速提示**: 如果您使用 VS 代码作为您的主文本编辑器,您可以启用自动代码格式化到您的浏览器。 在 JSON 模式下打开您的首选项页面并添加以下行：

```
"Editor.► OnSave"：verdadero,
```

## 提供软件质量检查的在线服务

有几个网络服务分析代码并使代码质量可见化。 这些服务通常运行一个或多个静态代码分析工具,这些工具也可以从命令行中使用,或者在您自己的计算机上整合到您的编辑器。 强烈建议使用与GitHub/GitLab 版本库整合的代码质量服务,因为它可以在拉取请求中检测和交流质量问题。

代码质量分析服务是常常提供以下功能的网站：

- 将代码推送到 GitHub/GitLab 后自动分析您的代码
- 开放源码项目通常免费使用
- 支持多个编程语言,但不是每个语言都有相同的功能
- 存储库中所有代码的质量等级或分数
- 按严重程度分类的代码问题列表
- 下拉到问题位置
- 服务供应商找到最佳做法的默认检查列表
- 可以配置成更严格或轻松的检查列表
- 可以配置为忽略文件或扩展名
- 可以从仓库读取配置文件
- 随着时间的推移追踪问题并在质量恶化时发出提醒
- CI 构建生成的代码覆盖率可选报告
- 自动部署仓库并生成预览构建以便在最终发布之前进行审查。

选择列表见 [shields.io](https://shields.io/category/analysis) or [这个免费的服务列表用于开源项目](https://github.com/ripienaar/free-for-dev#code-quality)。
