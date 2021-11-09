(rr-make-appendix)=
# 附 录

(rr-make-appendix-dag)=
## 定向Accyclic Graphs

定向Accyclic Graph(DAG) 是节点和边缘的 *图* ，其内容是：

1. *directed*: 边缘有一个方向，您只能在那个 方向上走图
2. *自行车*: 不包含自行车: B 依赖A时不能依赖B.

后一种财产当然对建筑系统很方便。 更多关于 DAGs 的 信息可在 [维基百科](https://en.wikipedia.org/wiki/Directed_acyclic_graph) 上找到。

(rr-make-appendix-installing)=
## 安装 Make

首先，检查您是否已安装 GNU 在终端类型中：

```bash
$ make
```

如果你得到 `make：命令找不到` (或类似的)，你没有Make。 如果 你得到 `make：*** 没有指定目标和找不到makefile。  Stop.` 你的 确实有Make。

我们将在此教程中使用 **GNU Make**。 通过输入您 所拥有的东西来验证：

```bash
$ make --version
```

如果您没有 GNU Make 但有 BSD 版本，一些东西可能无法正常工作 ，我们建议安装 GNU Make 。

要安装 GNU Make, 请按照以下说明:

- **Linux**: 使用您的软件包管理器安装 Make 例如在Arch Linux上：

  ```bash
  $ sudo pacman -S make
  ```

  Ubuntu:
  ```bash
  $ sudo apt-get install build-essential
  ```

- **MacOS**: 如果您已经安装 [Homebrew](https://brew.sh/) 它很简单：

  ```bash
  $酿造厂安装
  ```

  If you have a builtin Make implementation, please ensure that it's GNU Make by checking `make --version`.

(rr-make-appendix-advancedgr)=
## 高级：使用通话生成规则

*本节将继续上面的教程，并展示Make 的功能，用于自动生成规则。*

In a data science pipeline, it may be quite common to apply multiple scripts to the same data (for instance when you're comparing methods or testing different parameters). 在这种情况下，在只有脚本名称更改时为每个脚本单独写一个 规则可能变得很费解。 为了简化这个 进程，我们可以让创建一个所谓的 [*预设* 配方](https://www.gnu.org/software/make/manual/make.html#Canned-Recipes)

要跟随，切换到 `预设的` 分支：

```bash
美元清理
美元git stash --all # 注明'--all' 标志，所以我们也保存Makefile
美元结帐罐头了
```

在这个分支上，你会注意到 **脚本** 目录中有一个新脚本，名为 `Generate_qqplot.py`。 此脚本的工作类似于 `Generate_histogram。 y` 脚本 (它有相同的命令行语法)，但它 生成一个 [QQ-绘图](https://en.wikipedia.org/wiki/Q%E2%80%93Q_plot)。 **report.tex** 文件也已更新，以纳入这些绘图。

After switching to the `canned` branch there will be a Makefile in the repository that contains a separate rule for generating the QQ-plots. 此 Makefile 看起来像这样：

```makefile
# Makefile for analysis report
#

ALL_CSV = $(wildcard data/*.csv)
DATA = $(filter-out $(wildcard data/input_file_*.csv),$(ALL_CSV))
HISTOGRAMS = $(patsubst data/%.csv,output/figure_%.png,$(DATA))
QQPLOTS = $(patsubst data/%.csv,output/qqplot_%.png,$(DATA))

.PHONY: all clean

all: output/report.pdf

$(HISTOGRAMS): output/histogram_%.png: data/%.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i $< -o $@

$(QQPLOTS): output/qqplot_%.png: data/%.csv scripts/generate_qqplot.py
    python scripts/generate_qqplot.py -i $< -o $@

output/report.pdf: report/report.tex $(FIGURES)
    cd report/ && pdflatex report.tex && mv report.pdf ../$@

clean:
    rm -f output/report.pdf
    rm -f $(HISTOGRAMS) $(QQPLOTS)
```

您会注意到，直方图和QQ-绘图的规则非常相似。

As the number of scripts that you want to run on your data grows, this may lead to a large number of rules in the Makefile that are almost exactly the same. 我们可以通过创建一个 [*罐头 配方*](https://www.gnu.org/software/make/manual/html_node/Canned-Recipes.html) 将脚本名称和流派名称作为输入来简化这一点：

```makefile
定义运行脚本至数据
输出$(1)_$(2).png: data/$(2).csv 脚本/生成_$(1). y
    python 脚本/生成_$(1).py -i $$< -o $@
结束
```

请注意，在这个配方中，我们要么使用 `$(1)` 直方图 `直方图` 要么 `qplot` 和 `$(2)` 用于基因。 这些与预期的 函数参数对应于 `run-script-on-data` 罐头配方。 另外，注意 我们在实际配方中使用 `$<` 和 `$@` 两个 `美元` 符号 用于越狱。 要真正创建所有目标，我们需要一个调用 这种预设配方的线。  在我们的情况下，我们使用双倍来循环流派和 脚本：

```makefile
$(foreach genre,$(GENRES), \
    $(foreach script,$(SCRIPTS), \
        $(eval $(all run-script-on-data,$(script),$(genre)) ))
    (
)
```

在这些行中， `` 字符用于继续长线。

完整的 Makefile 后来变成：

```makefile
# Makefile for analysis report
#

ALL_CSV = $(wildcard data/*.csv)
DATA = $(filter-out $(wildcard data/input_file_*.csv),$(ALL_CSV))
HISTOGRAMS = $(patsubst %,output/histogram_%.png,$(GENRES))
QQPLOTS = $(patsubst %,output/qqplot_%.png,$(GENRES))

GENRES = $(patsubst data/%.csv,%,$(DATA))
SCRIPTS = histogram qqplot

.PHONY: all clean

all: output/report.pdf

define run-script-on-data
output/$(1)_$(2).png: data/$(2).csv scripts/generate_$(1).py
    python scripts/generate_$(1).py -i $$< -o $$@
endef

$(foreach genre,$(GENRES),\
    $(foreach script,$(SCRIPTS),\
        $(eval $(call run-script-on-data,$(script),$(genre)))\
    )\
)

output/report.pdf: report/report.tex $(HISTOGRAMS) $(QQPLOTS)
    cd report/ && pdflatex report.tex && mv report.pdf ../$@

clean:
    rm -f output/report.pdf
    rm -f $(HISTOGRAMS) $(QQPLOTS)
```

请注意，我们已经添加了一个 `SCRIPTS` 变量，带有 `直方图` 和 `qplot` 名称。 如果我们要添加另一个脚本，跟这两个脚本相同的 模式。 我们只需要将其添加到 `SCRIPTS` 变量。

要构建所有这一切，请运行

```bash
美元制作-j 4
```
