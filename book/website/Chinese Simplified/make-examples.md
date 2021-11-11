(rr-make-exampes-learnmake)=
# 通过示例学习“Make”

(rr-make-exampes-makefiles)=
## Makefile

可能阻止他人使用 Make 的事情之一是， 现有的 Makefile 看起来相当复杂。 并且看起来很难让 适合您自己的需要。 在这个手动教程中，我们将从零开始创建一个 Makefile 用于真正的数据分析项目。 The idea is to explain different features of Make by iterating through several versions of a Makefile for this project. 希望您从这个教程中获得的体验 允许您为自己的项目创建 Makefile。

我们将为数据分析管道创建一个 `Makefile`。 任务为

> **任务：给出一些数据集，创建一个包含 这些数据集的直方图的摘要报告(pdf)。**

(当然，这个数据任务非常简单地集中于如何使用 Make。)

*在教程代码块中，以美元标志开头的 (`$`) 是 打算在终端中键入。*

(rr-make-exampes-settingup)=
### 设置

我们已经为这项任务创建了一个基本的仓库，它已经包含 个我们需要的一切(*个除了当然的 Makefile 之外!*) 要启动，请使用 git 复制 基础资源库：

```bash
$ git clone https://github.com/alan-turing-institute/IntroToMake
```

这个基础版本库包含我们在这个教程中需要的所有代码。 应该有这个内容：

```text
.
├── data/
│   ├── input_file_1.csv
│   └── input_file_2.csv
├── LICENSE
├── output/
├── README.md
├── report/
│   └── report.tex
└── scripts/
    └── generate_histogram.py
```

- **数据**: 我们要分析的两个数据集目录
- **报告**: 报告的输入目录
- **脚本**: 分析脚本目录
- **输出**：数据和报告的输出目录

您会注意到 **数据** 目录 中存在两个数据集(`input_file_1.csv` 和 `input_file_2)。 sv`) 并且已经有一个 基本的 Python 脚本 **脚本** 和 基本报告 LaTeX 文件在 **报告**。

如果您想要跟进，请确保您已经安装 `matplotlib` and `numpy` 软件包：

```bash
$ pip install matplotlib numpy
```

您还需要一个 `pdflatex` 的工作版本，当然还有 `做`。

Make的安装说明，请参阅 {ref}`rr-make-appendix-installing`

(rr-make-examples-makefile1)=
### Makefile no. 1 (基本文件)

让我们创建我们的第一个Make文件。 在终端中，移动到您刚刚克隆的 `IntroToMake` 仓库：

```bash
$ cd IntroToMake
```

使用您最喜欢的编辑器，创建一个名为 `Makefile` 的文件，其中包含 以下内容：

```makefile
# 用于分析报告

输出/figure_1.png: data/input_file_1.csv 脚本/generate_histogram.py
    python 脚本/generate_histogram.py -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram。 y
    python 脚本/generate_histogram.py -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report. ex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf
```
每个配方的缩进是 ***标签***, Makefile 不接受 缩进空格。

您现在应该能够输入：

```bash
$ make output/report.pdf
```

如果一切都能正常工作，将会创建两个数字并生成pdf报告 。

让我们更详细地穿过Makefile。 We have three rules, two for the figures and one for the report. 让我们先来看看 `输出/figure_1.png` 的规则。 此规则有目标 `输出/figure_1.png` 有两个前提： `data/input_file_1.csv` 和 `脚本/generate_histogram.py` 给出输出文件时，这些 前提条件将被更新，如果其中任何一个文件有变动。 这是创建 Make 的原因中的 个：当源文件 更改时更新输出文件。

您会注意到，配方行调用 Python 脚本名称并使用 命令行标志(`-i` 和 `-o`标记 脚本的输入和输出。 这不是使用 Make 的要求 但它使我们很容易看到 哪个文件是对脚本的输入，哪个文件是输出。

PDF报告的规则非常相似，但有三个前提条件 (LateX源和两个数字)。 请注意，配方在调用 LaTeX 之前更改 工作目录，同时也将生成的 PDF 移动到 输出目录。 我们这样做是为了在 报表目录中保存LaTeX 中间文件。 然而，必须区分上述规则和 以下：

```makefile
# 不要执行
output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd report/
    pdflatex report.tex
    mv report.pdf ../output/report.pdf
```

这条规则将这三条命令置于单独的线上。 However, **Make executes each line independently** in a separate subshell, so changing the working directory in the first line has no effect on the second, and a failure in the second line won't stop the third line from being executed. 因此， 我们将这三个命令合并在上面的一个配方中。

这是这个Makefile的依赖树的样式：

![DAG for Makefile no. 1](../../figures/makefile-no1.png) <small style="margin: 5pt auto; text-align: center; display: block;">我们第一个Makefile的 依赖图，由 [makefile2graph](https://github.com/lindenb/makefile2graph) 创建。 请注意 与图 {ref}“导言<rr-make-summary>”相似！</small>

(rr-make-examples-makefile2)=
### Makefile No. 2 (全部和清理)

在我们的第一个Makefile中，我们制定了基本规则。 如果我们想要，我们可以紧跟 这个问题，但我们可以做一些改进：

1. 如果我们想要 做出报告，我们现在必须明确调用 `做出输出/报告.pdf`

2. 我们没有办法进行清理，重新开始。

让我们通过添加两个新的目标来补救这个问题： `所有` and `clean` 在您的 编辑器中，更改Makefile 的内容以添加 `所有` 和 `清理` 的规则如下 ：

```makefile
# Makefile for analysis report

all: output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf

clean:
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

请注意，我们已经将 `所有` 个目标添加到文件的顶部。 我们这样做 是因为当没有给出明确的目标时，请先执行 ** 目标。  所以 您现在可以在命令行上输入 `make` 它将做到与 `做到所有`。  Also, note that we've only added the report as the prerequisite of `all` because that's our desired output and the other rules help to build that output. If you have multiple outputs, you could add these as further prerequisites to the `all` target. 调用主要目标 `所有` 是很多人都遵循的 Makefiles协议。

`净化` 规则通常处于底部，但它的风格超过 要求。 Note that we use the `-f` flag to `rm` to make sure it doesn't complain when there is no file to remove.

您可以通过运行以下运行来尝试新的 Makefile：

```bash
美元做清洁
美元
```

应在第一个命令后删除输出和中间文件， 并在第二个命令后再次生成它们。

(rr-make-examples-makefile3)=
### Makefile no. 3 (Phony Targets)

典型的情况是， `所有` and `clear` 都被定义为所谓的 [Phony 目标](https://www.gnu.org/software/make/manual/make.html#Phony-Targets)。 这些目标实际上没有创建输出文件。 If not marked as `.PHONY` these targets would always be run if they come up in a dependency, but will no longer be run if a directory/file is ever created that is called `all` or `clean`. 因此，我们 在 Makefile 的顶部添加一行来定义这两个目标为电话 目标：

```makefile
# Makefile for analysis report

.PHONY: all clean

all: output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf

clean:
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

Phony 目标在您想要递归使用时也很有用。 在 的情况下，你会指定子目录为电话目标。 You can read more about [phony targets in the documentation](https://www.gnu.org/software/make/manual/make.html#Phony-Targets), but for now it's enough to know that `all` and `clean` are typically declared as phony.

> Sidenote: 另一个典型的恐惧目标是 **测试**, 如果您 有一个名为 **测试** 的测试目录，想要运行一个目标 它们也叫做 **测试**。

(rr-make-examples-makefile4)=
### Makefile No. 4 (自动变量和模式规则)

我们现在的 Makefile 没有任何错误，但它有些详细的 因为我们已经明确地使用了单独的规则来宣布所有目标。 We can simplify this by using [Automatic Variables](https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html) and [Pattern Rules](https://www.gnu.org/software/make/manual/html_node/Pattern-Rules.html#Pattern-Rules).

(rr-make-exampes-automaticvar)=
#### 自动变量。

通过自动变量，我们可以在配方中使用 前提和目标的名称。 下面我们将如何为 数字规则做这件事：

```makefile
# Makefile for analysis report

.PHONY: all clean

all: output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i $< -o $@

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i $< -o $@

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf

clean:
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

我们已分别用 `<`取代了在配方中的输入文件名和输出文件名。 表示 *第一个* 前提条件和 `$@` 表示目标 **。 您可以记住 `<` 美元，因为它像指向 起始点的箭头(*第一个* 前提)， 您可以记住 `$@` (ollar *at*) [作为您的目标 *at*](https://jameshfisher.com/2016/12/07/makefile-automatic-variables/)。

您可以使用更多的自动变量，查看 [ 文档](https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html)。

(rr-make-exampes-patternrules)=
#### 模式规则

请注意，数字的配方已经变得相同了 ！  Because we don't like to repeat ourselves, we can combine the two rules into a single rule by using *pattern rules*. Pattern rules allow you to use the `%` symbol as a wildcard and combine the two rules into one:

```makefile
# 用于分析报告的 Makefile

.PHONY: 所有清理

: 输出/报告.pdf

output/figure_%.png: data/input_file_% sv 脚本/generate_histogram.py
    python 脚本/generate_histogram.py -i $< -o $@

output/report. df: report/report.tex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex report.tex && mv report. df ../output/report.pdf

clean:
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

`%` 个符号现在是一个通配符，它（在我们的情况下）获得的值 `1` 或 `2` 基于 `数据` 目录中的输入文件</code> 您可以通过运行 `来检查
一切仍然能够正常工作的一切。` 之后是 `做`

这样做的一个优点是，如果你现在想要添加另一个数据集，那么说 `input_file_3`, 然后您只需要在 报告的规则中添加！

(rr-make-examples-makefile5)=
### Makefile no. 5 (wildcard和路径替代)

当 Makefile 变得更加复杂时， 您可能想要使用更高级的功能 例如为输入目录中的所有文件构建输出。 虽然 模式规则会让你很长的路程， 当图案规则不足时，制作通配符 和字符串或路径操纵的功能。

先前输入的文件已经编号，但我们现在会切换到一个场景 让它们有更有用的名称。 让我们切换到 `big_data` 分支：

```bash
$ git 签出大数据# 签出大数据分支
```

目录结构现在看起来像这样：

```text
├── data/
│   ├── action.csv
│   ├── ...
│   ├── input_file_1.csv
│   ├── input_file_2.csv
│   ├── ...
csidentified - - western.csv
-- -- -- LICENSE
-- -- -- output/
-- -- -- -- -- README.md
-- -- -- report/
cin：-- report.tex
integrated - -- - scripts/
    --generate_histogram.py
```

你们可以看到的。 **数据** 目录现在包含了额外的输入文件 ，这些文件被更加有意义地命名(数据是IMBD 电影按基因评分)。 另外， **report.tex** 文件已被更新，以适用于预期的 数字。

我们将调整我们的 Makefile 以在输出目录中创建一个数字，名为 `histogram_{genre}。 ng` 每个 `{genre}.csv` 文件, 但排除 `input_file_{N}.csv` 文件。

> Sidenote: 如果我们要删除 `input_file_{N}.csv` 文件，模式 规则就足够了。 这突出显示您的 目录结构和 Makefile 有时应该同时开发。

在更改 Makefile 之前，运行

```bash
美元做清洁了
```
删除输出文件。

我们会先显示完整的 Makefile 文件，然后以 更详细的方式描述不同的行。 完整文件是：

```makefile
# 用于分析报告的 Makefile
#

ALL_CSV = $(wildcard data/*.csv)
INPUT_CSV = $(wildcard data/input_file_*)。 sv)
DATA = $(过滤器 $(INPUT_CSV),$(ALL_CSV))
FIGURES = $(patsubst data/input_file_% sv,output/figure_%.png,$(DATA))

.PHONY: all clean

all : output/report.pdf

$(FIGURES): output/figure_% ng: data/input_file_%.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i $< -o $@

output/report.pdf: report/report. ex $(FIGURES)
    cd report/ && pdflatex report.tex && mv report. df ../$@

clean:
    rm -f output/report.pdf
    rm -f $(FIGURES)
```

第一： 我们使用 `通配符` 来创建一个变量，在数据目录中列出所有 CSV 文件，并且只列出旧的 `input_file_{N}。 sv` 文件：

```makefile
ALL_CSV = $(通配符数据/*.csv)
INPUT_CSV = $(通配符数据/input_file_*.csv)
```

A code convention for Makefiles is to use all capitals for variable names and define them at the top of the file.

Next, we create a variable to list only the data files that we're interested in by filtering out the `INPUT_CSV` from `ALL_CSV`:

```makefile
DATA = $(过滤器 $(INPUT_CSV),$(ALL_CSV))
```

此行使用 [`过滤`](https://www.gnu.org/software/make/manual/make.html#index-filter) 函数删除不匹配 `INPUT_CSV` 变量从 `ALL_CSV` 变量。  请注意，我们对函数使用 `$( ... )` 语法和 变量。 最后，我们将使用 `DATA` 变量创建一个 `FIGURES` 变量与所需的输出：

```makefile
FIGURES = $(patsubst data/%.csv,output/figure_%.png,$(DATA))
```

这里我们使用了 [`小贴士`](https://www.gnu.org/software/make/manual/make.html#index-patsubst-1) 函数来转换输入 `数据` 变量(跟随 `数据/{genre})。 sv` 模式) 到所需输出文件名(使用 `输出/figure_{genre}.png` 模式)。 请注意，文件名中输入和输出中相同的部分的 `%` 字符标记

现在我们使用这些变量来生成数字规则，如下所示：

```makefile
$(FIGURES): output/figure_%.png: data/%.csv 脚本/generate_histogram.py
    python 脚本/generate_histogram.py -i $< -o $@
```

此规则再次应用了一个模式：它需要一个目标列表(`$(FIGURES)`) 所有目标都遵循一个特定模式(`输出/figure_% )。 ng`) 在此基础上 创建一个前提条件`data/%.csv`。 Such a pattern rule is slightly different from the one we saw before because it uses two `:` symbols. 它是 名为 [静态模式 规则](https://www.gnu.org/software/make/manual/make.html#Static-Pattern)。

当然，我们必须更新 `报告` 规则：

```makefile
output/report.pdf: report/report.tex $(FIGURES)
    cd report/ && pdflatex report.tex && mv report.pdf ../$@
```

和 `清理` 规则：

```makefile
clean:
    rm -f output/report.pdf
    rm -f $(FIGURES)
```

如果你运行这个Makefile，它需要构建28个数字。 您可能想要 使用 `-j` 标记 `制作` 来同时生成这些目标 **！**

```bash
美元制作-j 4
```

当你的项目有 多个依赖关系时，并行建立目标的能力非常有用！

生成的 PDF 文件现在看起来像这样：

![使用所有流派报告](../../figures/make-report-all-genres.png)<small
style="margin: 5pt auto; text-align: center; display: block;">一个压缩的 视图，包含所有流派的直方图。</small>
