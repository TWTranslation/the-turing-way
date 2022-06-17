(rr-make-examples-learnmake)=
# Learn "Make" by Examples

(rr-make-examples-makefiles)=
## Makefiles

可能阻止他人使用 Make 的事情之一是， 现有的 Makefile 看起来相当复杂。 并且看起来很难让 适合您自己的需要。 在这个手动教程中，我们将从零开始创建一个 Makefile 用于真正的数据分析项目。 The idea is to explain different features of Make by iterating through several versions of a Makefile for this project. 希望您从这个教程中获得的体验 允许您为自己的项目创建 Makefile。 Hopefully the experience that you gain from this tutorial allows you to create Makefiles for your own projects.

We will create a `Makefile` for a data analysis pipeline. 任务为

> **任务：给出一些数据集，创建一个包含 这些数据集的直方图的摘要报告(pdf)。**

(当然，这个数据任务非常简单地集中于如何使用 Make。

*在教程代码块中，以美元标志开头的 (`$`) 是 打算在终端中键入。*

(rr-make-examples-settingup)=
### Setting up

We have created a basic repository for this task, that already contains everything that we need (*except the Makefile of course!*). To start, clone the base repository using git:

```bash
$ git clone https://github.com/alan-turing-institute/IntroToMake
```

我们已经为这项任务创建了一个基本的仓库，它已经包含 个我们需要的一切(*个除了当然的 Makefile 之外!*) 要启动，请使用 git 复制 基础资源库：

```text
.
# 用于分析报告

输出/figure_1.png: data/input_file_1.csv 脚本/generate_histogram.py
    python 脚本/generate_histogram.py -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram。
```

- **data**: directory with two datasets that we're going to analyse
- **report**: the input directory for the report
- **scripts**: directory for the analysis script
- **output**: output directory for the figures and the report

You'll notice that there are two datasets in the **data** directory (`input_file_1.csv` and `input_file_2.csv`) and that there is already a basic Python script in **scripts** and a basic report LaTeX file in **report**.

如果您想要跟进，请确保您已经安装 `matplotlib` and `numpy` 软件包：

```bash
$ pip install matplotlib numpy
```

You will also need a working version of `pdflatex` and, of course, `make`.

For installation instructions for Make, see {ref}`rr-make-appendix-installing`.

(rr-make-examples-makefile1)=
### Makefile no. 1 (The Basics)

Let's create our first Makefile. 在终端中，移动到您刚刚克隆的 `IntroToMake` 仓库：

```bash
$ cd IntroToMake
```

使用您最喜欢的编辑器，创建一个名为 `Makefile` 的文件，其中包含 以下内容：

```makefile
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
每个配方的缩进是 ***标签***, Makefile 不接受 缩进空格。

You should now be able to type:

```bash
$ make output/report.pdf
```

如果一切都能正常工作，将会创建两个数字并生成pdf报告 。

Let's go through the Makefile in a bit more detail. We have three rules, two for the figures and one for the report. 让我们先来看看 `输出/figure_1.png` 的规则。 Let's look at the rule for `output/figure_1.png` first. 此规则有目标 `输出/figure_1.png` 有两个前提： `data/input_file_1.csv` 和 `脚本/generate_histogram.py` 给出输出文件时，这些 前提条件将被更新，如果其中任何一个文件有变动。 By giving the output file these prerequisites it will be updated if either of these files changes. 这是创建 Make 的原因中的 个：当源文件 更改时更新输出文件。

您会注意到，配方行调用 Python 脚本名称并使用 命令行标志(`-i` 和 `-o`标记 脚本的输入和输出。 这不是使用 Make 的要求 但它使我们很容易看到 哪个文件是对脚本的输入，哪个文件是输出。

PDF报告的规则非常相似，但有三个前提条件 (LateX源和两个数字)。 请注意，配方在调用 LaTeX 之前更改 工作目录，同时也将生成的 PDF 移动到 输出目录。 我们这样做是为了在 报表目录中保存LaTeX 中间文件。 然而，必须区分上述规则和 以下：

```makefile
# don't do this
output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd report/
    pdflatex report.tex
    mv report.pdf ../output/report.pdf
```

This rule places the three commands on separate lines. However, **Make executes each line independently** in a separate subshell, so changing the working directory in the first line has no effect on the second, and a failure in the second line won't stop the third line from being executed. 因此， 我们将这三个命令合并在上面的一个配方中。 Therefore, we combine the three commands in a single recipe above.

This is what the dependency tree looks like for this Makefile:

![DAG for Makefile no. 1](../../figures/makefile-no1.png) <small style="margin: 5pt auto; text-align: center; display: block;">我们第一个Makefile的 依赖图，由 [makefile2graph](https://github.com/lindenb/makefile2graph) 创建。 请注意 与图 {ref}“导言<rr-make-summary>”相似！ </small>

(rr-make-examples-makefile2)=
### Makefile no. 2 (all and clean)

In our first Makefile we have the basic rules in place. 如果我们想要，我们可以紧跟 这个问题，但我们可以做一些改进：

1. 如果我们想要 做出报告，我们现在必须明确调用 `做出输出/报告.pdf`

2. We have no way to clean up and start fresh.

Let's remedy this by adding two new targets: `all` and `clean`. 让我们通过添加两个新的目标来补救这个问题： `所有` and `clean` 在您的 编辑器中，更改Makefile 的内容以添加 `所有` 和 `清理` 的规则如下 ：

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

Note that we've added the `all` target to the top of the file. We do this because Make executes the *first* target when no explicit target is given.  所以 您现在可以在命令行上输入 `make` 它将做到与 `做到所有`。  Also, note that we've only added the report as the prerequisite of `all` because that's our desired output and the other rules help to build that output. If you have multiple outputs, you could add these as further prerequisites to the `all` target. 调用主要目标 `所有` 是很多人都遵循的 Makefiles协议。 If you have multiple outputs, you could add these as further prerequisites to the `all` target. Calling the main target `all` is a convention of Makefiles that many people follow.

`净化` 规则通常处于底部，但它的风格超过 要求。 Note that we use the `-f` flag to `rm` to make sure it doesn't complain when there is no file to remove.

You can try out the new Makefile by running:

```bash
$ make clean
$ make
```

应在第一个命令后删除输出和中间文件， 并在第二个命令后再次生成它们。

(rr-make-examples-makefile3)=
### Makefile no. 3 (Phony Targets)

典型的情况是， `所有` and `clear` 都被定义为所谓的 [Phony 目标](https://www.gnu.org/software/make/manual/make.html#Phony-Targets)。 These are targets that don't actually create an output file. If not marked as `.PHONY` these targets would always be run if they come up in a dependency, but will no longer be run if a directory/file is ever created that is called `all` or `clean`. 因此，我们 在 Makefile 的顶部添加一行来定义这两个目标为电话 目标： We therefore add a line at the top of the Makefile to define these two as phony targets:

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

Phony targets are also useful when you want to use Make recursively. 在 的情况下，你会指定子目录为电话目标。 You can read more about [phony targets in the documentation](https://www.gnu.org/software/make/manual/make.html#Phony-Targets), but for now it's enough to know that `all` and `clean` are typically declared as phony.

> Sidenote: 另一个典型的恐惧目标是 **测试**, 如果您 有一个名为 **测试** 的测试目录，想要运行一个目标 它们也叫做 **测试**。

(rr-make-examples-makefile4)=
### Makefile no. 4 (Automatic Variables and Pattern Rules)

我们现在的 Makefile 没有任何错误，但它有些详细的 因为我们已经明确地使用了单独的规则来宣布所有目标。 We can simplify this by using [Automatic Variables](https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html) and [Pattern Rules](https://www.gnu.org/software/make/manual/html_node/Pattern-Rules.html#Pattern-Rules).

(rr-make-examples-automaticvar)=
#### Automatic Variables.

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

(rr-make-examples-patternrules)=
#### Pattern Rules

请注意，数字的配方已经变得相同了 ！  Because we don't like to repeat ourselves, we can combine the two rules into a single rule by using *pattern rules*. Pattern rules allow you to use the `%` symbol as a wildcard and combine the two rules into one: Pattern rules allow you to use the `%` symbol as a wildcard and combine the two rules into one:

```makefile
# Makefile for analysis report

.PHONY: all clean

all: output/report.pdf

output/figure_%.png: data/input_file_%.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i $< -o $@

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf

clean:
    rm -f output/report.pdf
    rm -f output/figure_*.png
```

`%` 个符号现在是一个通配符，它（在我们的情况下）获得的值 `1` 或 `2` 基于 `数据` 目录中的输入文件</code> 您可以通过运行 `来检查
一切仍然能够正常工作的一切。 ` 之后是 `做`

这样做的一个优点是，如果你现在想要添加另一个数据集，那么说 `input_file_3`, 然后您只需要在 报告的规则中添加！

(rr-make-examples-makefile5)=
### Makefile no. 5 (Wildcards and Path Substitution)

当 Makefile 变得更加复杂时， 您可能想要使用更高级的功能 例如为输入目录中的所有文件构建输出。 虽然 模式规则会让你很长的路程， 当图案规则不足时，制作通配符 和字符串或路径操纵的功能。

先前输入的文件已经编号，但我们现在会切换到一个场景 让它们有更有用的名称。 让我们切换到 `big_data` 分支：

```bash
$ git checkout big_data         # checkout the big_data branch
```

The directory structure now looks like this:

```text
├── data/
│   ├── action.csv
│   ├── ...
│   ├── input_file_1.csv
│   ├── input_file_2.csv
│   ├── ...
│   └── western.csv
├── LICENSE
├── output/
├── README.md
├── report/
│   └── report.tex
└── scripts/
    └── generate_histogram.py
```

您会注意到 **数据** 目录 中存在两个数据集(`input_file_1.csv` 和 `input_file_2)。
sv`) 并且已经有一个 基本的 Python 脚本 **脚本** 和 基本报告 LaTeX 文件在 **报告**。

我们将调整我们的 Makefile 以在输出目录中创建一个数字，名为 `histogram_{genre}。 ng` 每个 `{genre}.csv` 文件, 但排除 `input_file_{N}.csv` 文件。

> Sidenote: 如果我们要删除 `input_file_{N}.csv` 文件，模式 规则就足够了。 这突出显示您的 目录结构和 Makefile 有时应该同时开发。

Before changing the Makefile, run

```bash
$ make clean
```
to remove the output files.

我们会先显示完整的 Makefile 文件，然后以 更详细的方式描述不同的行。 The complete file is:

```makefile
# 用于分析报告的 Makefile
#

ALL_CSV = $(wildcard data/*.csv)
INPUT_CSV = $(wildcard data/input_file_*)。 sv)
DATA = $(过滤器输出 $(INPUT_CSV),$(ALL_CSV))
FIGURES = $(patsubst data/% sv,output/figure_%.png,$(DATA))

.PHONY: all clean

all : output/report.pdf

$(FIGURES): output/figure_% ng：data/%.csv 脚本/generate_histogram.py
    python 脚本/generate_histogram.py -i $< -o $@

output/report.pdf：report/report. ex $(FIGURES)
    cd report/ && pdflatex report.tex && mv report. df ../$@

clean:
    rm -f output/report.pdf
    rm -f $(FIGURES)
```

第一： 我们使用 `通配符` 来创建一个变量，在数据目录中列出所有 CSV 文件，并且只列出旧的 `input_file_{N}。 sv` 文件：

```makefile
ALL_CSV = $(wildcard data/*.csv)
INPUT_CSV = $(wildcard data/input_file_*.csv)
```

A code convention for Makefiles is to use all capitals for variable names and define them at the top of the file.

Next, we create a variable to list only the data files that we're interested in by filtering out the `INPUT_CSV` from `ALL_CSV`:

```makefile
DATA = $(过滤器输出 $(INPUT_CSV),$(ALL_CSV))
```

此行使用了 [`过滤器`](https://www.gnu.org/software/make/manual/make.html#index-filter_002dout) 函数去除 `INPUT_CSV` 变量从 `ALL_CSV` 变量。  请注意，我们对函数使用 `$( ... )` 语法和 变量。 最后，我们将使用 `DATA` 变量创建一个 `FIGURES` 变量与所需的输出：

```makefile
FIGURES = $(patsubst data/%.csv,output/figure_%.png,$(DATA))
```

这里我们使用了 [`小贴士`](https://www.gnu.org/software/make/manual/make.html#index-patsubst-1) 函数来转换输入 `数据` 变量(跟随 `数据/{genre})。 sv` 模式) 到所需输出文件名(使用 `输出/figure_{genre}.png` 模式)。 请注意，文件名中输入和输出中相同的部分的 `%` 字符标记

Now we use these variables for the figure generation rule as follows:

```makefile
$(FIGURES): output/figure_%.png: data/%.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i $< -o $@
```

此规则再次应用了一个模式：它需要一个目标列表(`$(FIGURES)`) 所有目标都遵循一个特定模式(`输出/figure_% )。 ng`) 在此基础上 创建一个前提条件`data/%.csv`。 Such a pattern rule is slightly different from the one we saw before because it uses two `:` symbols. 它是 名为 [静态模式 规则](https://www.gnu.org/software/make/manual/make.html#Static-Pattern)。

Of course we have to update the `report.pdf` rule as well:

```makefile
output/report.pdf: report/report.tex $(FIGURES)
    cd report/ && pdflatex report.tex && mv report.pdf ../$@
```

and the `clean` rule:

```makefile
clean:
    rm -f output/report.pdf
    rm -f $(FIGURES)
```

If you run this Makefile, it will need to build 28 figures. 您可能想要 使用 `-j` 标记 `制作` 来同时生成这些目标 **！ **

```bash
$ make -j 4
```

当你的项目有 多个依赖关系时，并行建立目标的能力非常有用！

The resulting PDF file should now look like this:

![Report with all genres](../../figures/make-report-all-genres.png)<small
style="margin: 5pt auto; text-align: center; display: block;">一个压缩的 视图，包含所有流派的直方图。 </small>
