(pd-code-styling-tools)=
# 代码样式工具

如前所述，有一些自动工具您可以用来将您的代码链接到现有的指南。 这些范围从插件的 IDEs 插件“拼写检查”您的样式，和自动为您连接的脚本。

## lintr

[lintr](https://cran.r-project.org/web/packages/lintr/lintr.pdf) 是一个 R 包，用各种风格准则拼写检查你的代码。  它可以从 CRAN安装。 函数 `lint` 需要一个文件名作为参数和一个“linters”列表来检查你的代码。 这些内容从空白协议到检查粗括号中是否没有条目不等。 输出提供了一个标记列表，并建议更改你的代码行的格式。 意思是最好在你的项目中早期使用并且经常使用。

```{figure} ../../figures/lintr-output.png
---
高度： 500px
name: lintr_output
alt: lintr 输出显示要添加空格的建议 移除评论代码，移除训练空白，输入代码中每行字符大小小于80。
---
是一个 lintr 输出看起来像是带有R 代码的输入文件的样板。
```

欲了解更多详情，请访问 [GitHub 仓库](https://github.com/jimhester/lintr)。

## Autopep8

[Autopep8](https://pypi.org/project/autopep8/) 是一个 Python 模块，可以从终端运行，并自动格式化一个文件到 [pycodestyle](https://github.com/PyCQA/pycodestyle) (先前称为pep8) 指南。  
它在 [pypy](https://pypi.org) 上可用，可以使用管道安装。

```
# Install autopep8
$ pip install --upgrade autopep8
```

您可以通过运行以下命令修改一个文件:

```
$ autopep8 --in place --侵略性--侵略性-- <filename>
```

在某种程度上，模块也可以在 R 脚本中使用！

## 由黑方自动形成的

[黑色](https://black.readthedocs.io/en/stable/) 是 Python 的一个自动形成的包。 这意味着它将自动更改您的代码以遵守某些准则，例如操作者周围的空格和删除不必要的空格。 它也是一致的，所以你和你的合作者正在使用的代码会看起来是相同的，只需要黑色格式。 它没有改变代码的行为。 这可以减少对代码进行上述更改的时间。
