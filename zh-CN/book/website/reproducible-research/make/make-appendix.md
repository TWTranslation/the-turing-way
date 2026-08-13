(rr-make-appendix)=

# 附录

(rr-make-appendix-dag)=

## 有向无环图

A Directed Acyclic Graph (DAG) is a _graph_ of nodes and edges that is:

1. _directed_: edges have a direction and you can only walk the graph in that
   direction
2. _acyclic_: does not contain cycles: A can't depend on B when B depends on A.

The latter property is of course quite handy for a build system. More
information on DAGs can be found on
[Wikipedia](https://en.wikipedia.org/wiki/Directed_acyclic_graph).

(rr-make-appendix-installing)=

## 安装 Make

首先，检查您是否已安装 GNU 在终端类型中： In a terminal type:

```bash
make
```

If you get `make: command not found` (or similar), you don't have Make. If
you get `make: *** No targets specified and no makefile found.  Stop.` you
do have Make.

We'll be using **GNU Make** in this tutorial. 通过输入您 所拥有的东西来验证：

```bash
make --version
```

如果您没有 GNU Make 但有 BSD 版本，一些东西可能无法正常工作 ，我们建议安装 GNU Make 。

To install GNU Make, please follow these instructions:

- **Linux**: Use your package manager to install Make. For instance on Arch
  Linux:

  ```bash
  $ sudo pacman -S make
  ```

  Ubuntu:

  ```bash
  $ sudo apt-get install build-essential
  ```

- **MacOS**: If you have [Homebrew](https://brew.sh/) installed, it's simply:

  ```bash
  $ brew install make
  ```

  If you have a builtin Make implementation, please ensure that it's GNU Make
  by checking `make --version`.

(rr-make-appendix-advancedgr)=

## 高级：使用Call生成规则

_This section continues the tutorial above and demonstrates a feature of Make
for automatic generation of rules._

In a data science pipeline, it may be quite common to apply multiple scripts
to the same data (for instance when you're comparing methods or testing
different parameters). In that case, it can become tedious to write a separate
rule for each script when only the script name changes. To simplify this
process, we can let Make expand a so-called .

To follow along, switch to the `canned` branch:

```bash
make clean
git stash --all        # note the '--all' flag so we also stash the Makefile
git checkout canned
```

On this branch you'll notice that there is a new script in the **scripts**
directory called `generate_qqplot.py`. This script works similarly to the
`generate_histogram.py` script (it has the same command line syntax), but it
generates a [QQ-plot](https://en.wikipedia.org/wiki/Q%E2%80%93Q_plot). The
**report.tex** file has also been updated to incorporate these plots.

After switching to the `canned` branch there will be a Makefile in the
repository that contains a separate rule for generating the QQ-plots. This
Makefile looks like this:

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

You'll notice that the rules for histograms and QQ-plots are very similar.

In a data science pipeline, it may be quite common to apply multiple scripts to the same data (for instance when you're comparing methods or testing different parameters). 在这种情况下，在只有脚本名称更改时为每个脚本单独写一个 规则可能变得很费解。 We can simplify this by creating a 
that takes both the name of the script and the name of the genre as input:

```makefile
define run-script-on-data
output/$(1)_$(2).png: data/$(2).csv scripts/generate_$(1).py
	python scripts/generate_$(1).py -i $$< -o $$@
endef
```

Note that in this recipe we use `$(1)` for either `histogram` or
`qqplot` and `$(2)` for the genre. These correspond to the expected
function arguments to the `run-script-on-data` canned recipe. Also, notice
that we use `$$<` and `$$@` in the actual recipe, with two `$` symbols
for escaping. 要真正创建所有目标，我们需要一个调用 这种预设配方的线。  在我们的情况下，我们使用双倍来循环流派和 脚本：

```makefile
$(foreach genre,$(GENRES),\
	$(foreach script,$(SCRIPTS),\
		$(eval $(call run-script-on-data,$(script),$(genre))) \
	) \
)
```

In these lines the `\` character is used for continuing long lines.

The full Makefile then becomes:

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

Note that we've added a `SCRIPTS` variable with the `histogram` and
`qqplot` names. If we were to add another script that follows the same
pattern as these two, we would only need to add it to the `SCRIPTS`
variable.

To build all of this, run

```bash
make -j 4
```
