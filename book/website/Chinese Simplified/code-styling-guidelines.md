(pd-code-styling-guidelines)=
# 代码样式的准则

样式指南在不同的组织、语言和时间上有所不同。 甚至，Python风格指南Python Improvement Propose 8(PEP 8)自2001年发布以来有许多修订。 您必须选择一个最适合您的目的的框架：无论是为了您的利益，还是为了他人的利益。 同样重要的是保持前后一致（而且并非始终不一致）！

样式准则包括关于文件命名、变量命名、评论使用以及空白和括号的建议。

以下是在决定如何格式化您的代码时可能有用的现有风格指南的链接：

* [Python的 PEP8](https://www.python.org/dev/peps/pep-0008/)。
* [Hadley Wickham's](http://adv-r.had.co.nz/Style.html) style guide for R.
* [谷歌的](https://google.github.io/styleguide/Rguide.xml) 样式指南 R. 。
* [Microsoft 的](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/inside-a-program/coding-conventions) 样式指南 C#。
* [针对C的 PEP7](https://www.python.org/dev/peps/pep-0007/)

然而，为了快速启动，以下部分提供了一些代码风格建议。

## 文件名称

[开放科学中心](http://help.osf.io/m/bestpractices/l/609932-file-naming) 有一些关于文件命名的有用建议， 尤其要确保它们能够为人类和机器读取。 这包括避免使用通配符字符(@英镑$%)，并使用下划线("\_") 来划分信息和划线("\-") 来将信息或空格合并。 他们还建议将文件日期或编号，并避免使用像最后文本（或最后文本）这样的字句。 日期建议是长格式 `YYYYY-MM-DD`, 然后是文件名称和版本号。 这导致自动按时间顺序排列。 例如：

```r
data <- read.csv("2019-05-17_Turing-Way_Book-Dash.csv")

```
R样式指南建议保留文件名的基本名称。 这也许适合于小型紧凑型项目，但对于大型项目来说，有大量类似的文档。 或者如果您没有使用版本控制(见第/章)？ 使用二氧化碳捕获和封存准则可能更为合适。 欲了解更多详情，请查看关于 {ref}`文件命名<pd-filenaming>` 的章节。

### Versioning

对文件命名的额外考虑是对您的软件的版本。 使用版本指南将有助于避免使用类似于 `_FINAL.R` 的单词。 一个典型的公约是MajorMinority Patch（或MajorMinority Revision）办法。 在这种情况下，你第一次尝试一个包或库可能看起来像这样：
```
my-package_1_0_0.py
```
这表明软件处于第一个主要版本的未修订/补丁的 Alpha 阶段(0)。

## 变量名称

在学校数学项目中，变量常常被难以想象地称为“x”、“y”和“z”。 这种短暂可能是因为老师（可以理解）不想在板上反复写长变量名称。 然而，在代码中，你可以自由地命名你喜欢的变量。 这可以代表你的脚本的流量。

做创意！

### 命名协议

为了清晰和可读性，为您的变量选择一组命名协议是有用的。 有一种很大的品种，一些人可以相当大地说出哪种品种是正确的(对你来说是正确的！)。 这些措施包括：

- 迷彩案件
- 小CamelCase
- Underscore_Methods
- 混合大小写下数
- 小写

例如：

```r
raw_data <- read.csv("data.csv") # 不是非常有创造性的
rawData <- read.csv("data.csv") #lowerCamelCase
```

好的， `raw_data` 不很有创意， 但如果你的脚本有意义，它很容易是 `垃圾邮件` 或 `鸡蛋`。 您还有一个函数可以恢复一个变量：

```r
rawDat <- recode(rawDat)
```

重用变量名称没有提供关于rawDat已经通过的过程的信息。 将其作为一个单独的变量存储使我们能够看到对原始变量进行了哪些转换：

```
rawDat_receded <- Recorde(rawDat)
```

如果您喜欢，可以使用上面的移除清除旧变量。

```
remove(rawDat) #In R
del(rawDat) # In Python
```

重要的是选择一种风格和粘贴：

```
ThisIs Because_Switchingbetween Differentforms 是难以读取的。
```

```
如果你置顶一种风格，你的代码会更容易跟随你！
```
