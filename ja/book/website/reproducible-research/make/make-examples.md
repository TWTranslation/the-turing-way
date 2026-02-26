(rr-make-examples-learnmake)=

# 例で「メイク」を学ぶ

(rr-make-examples-makefiles)=

## Makefile

One of the things that might discourage someone from using Make is that
existing Makefiles can look quite complex, and it might seem difficult to
tailor one to your own needs. この実践的なチュートリアルでは、実際のデータ解析プロジェクトのために
Makefileを最初から作成します。 このアイデアは、
Makefile
のいくつかのバージョンを繰り返すことによって、Makeのさまざまな機能を説明することです。 うまくいけば、このチュートリアル
で得られる経験により、自分のプロジェクト用にMakefileを作成することができます。

We will create a `Makefile` for a data analysis pipeline. タスクは以下のようになります:

> **Task: Given some datasets, create a summary report (in pdf) that contains
> the histograms of these datasets.**

(もちろん、このデータタスクはMakeの使い方に焦点を当てるのは非常に簡単です。

_Throughout the tutorial code blocks that start with a dollar sign (`$`) are
intended to be typed in the terminal._

(rr-make-examples-settingup)=

### 設定

We have created a basic repository for this task, that already contains
everything that we need (_except the Makefile of course!_). 開始するには、gitを使用してベースリポジトリを
クローンします。

```bash
git clone https://github.com/alan-turing-institute/IntroToMake
```

この基本的なリポジトリには、このチュートリアルで必要なすべてのコードが含まれており、
この内容を持つ必要があります。

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

- **data**: directory with two datasets that we're going to analyse
- **report**: the input directory for the report
- **scripts**: directory for the analysis script
- **output**: output directory for the figures and the report

You'll notice that there are two datasets in the **data** directory
(`input_file_1.csv` and `input_file_2.csv`) and that there is already a
basic Python script in **scripts** and a basic report LaTeX file in
**report**.

If you want to follow along, ensure that you have the `matplotlib` and
`numpy` packages installed:

```bash
pip install matplotlib numpy
```

You will also need a working version of `pdflatex` and, of course, `make`.

For installation instructions for Make, see {ref}`rr-make-appendix-installing`.

(rr-make-examples-makefile1)=

### Makefile no.1 (基本)

最初の Makefile を作成しましょう。 In the terminal, move into the
`IntroToMake` repository that you just cloned:

```bash
cd IntroToMake
```

Using your favourite editor, create a file called `Makefile` with the
following contents:

```makefile
# Makefile for analysis report

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
	cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf
```

The indentation in each of the recipes are _**tabs**_, Makefiles do not accept
indentation with spaces.

入力できるようになりました:

```bash
make output/report.pdf
```

すべてが正しく動作した場合、2つの図が作成され、PDFレポート
が作成されます。

Makefileをもう少し詳しく見てみましょう。 数字には3つのルール、レポートには2つの
があります。 Let's look at the rule for
`output/figure_1.png` first. This rule has the target
`output/figure_1.png` that has two prerequisites: `data/input_file_1.csv`
and `scripts/generate_histogram.py`. 出力ファイルにこれらの
前提条件を与えることで、いずれかのファイルが変更された場合に更新されます。 This is one
of the reasons why Make was created: to update output files when source files
change.

You'll notice that the recipe line calls Python with the script name and uses
command line flags (`-i` and `-o`) to mark the input and output of the
script. This isn't a requirement for using Make, but it makes it easy to see
which file is an input to the script and which is an output.

PDFレポートのルールは非常によく似ていますが、3つの前提条件があります
(LaTeXソースと両方の数字)。 レシピは LaTeX を呼び出す前に
作業ディレクトリを変更し、生成された PDF を
出力ディレクトリに移動することに注意してください。 これは LaTeX の中間ファイルを
report ディレクトリに保持するために行います。 ただし、上記のルールを
と区別することは重要です。

```makefile
# don't do this
output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
	cd report/
	pdflatex report.tex
	mv report.pdf ../output/report.pdf
```

このルールでは、3 つのコマンドを別々の行に配置します。 However, **Make
executes each line independently** in a separate subshell, so changing the
working directory in the first line has no effect on the second, and a failure
in the second line won't stop the third line from being executed. したがって、
では、上記の3つのコマンドを一つのレシピで組み合わせます。

このMakefileの依存関係ツリーは次のようになります。

![DAG for Makefile no. 1](../../../figures/makefile-no1.png) <small style="margin: 5pt auto; text-align: center; display: block;">The
dependency graph for our first Makefile, created using
[makefile2graph](https://github.com/lindenb/makefile2graph). Notice the
similarity to the figure {ref}`in the introduction<rr-make-summary>`!</small>

(rr-make-examples-makefile2)=

### Makefile no.2（すべてクリーンアップ）

最初のMakefileでは基本的なルールが用意されています。 これは
に固執することができますが、いくつか改善点があります。

1. We now have to explicitly call `make output/report.pdf` if we want to
   make the report.

2. きれいにして新鮮に始める方法はありません。

Let's remedy this by adding two new targets: `all` and `clean`. In your
editor, change the Makefile contents to add the `all` and `clean` rules as
follows:

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

Note that we've added the `all` target to the top of the file. We do this
because Make executes the _first_ target when no explicit target is given.  So
you can now type `make` on the command line and it would do the same as
`make all`.  Also, note that we've only added the report as the prerequisite
of `all` because that's our desired output and the other rules help to build
that output. If you have multiple outputs, you could add these as further
prerequisites to the `all` target. Calling the main target `all` is a
convention of Makefiles that many people follow.

The `clean` rule is typically at the bottom, but that's more style than
requirement. Note that we use the `-f` flag to `rm` to make sure it
doesn't complain when there is no file to remove.

新しいMakefileを試すには、以下を実行します。

```bash
make clean
make
```

Make は最初のコマンド
の後に出力ファイルと中間ファイルを削除し、2 番目の後に再び生成する必要があります。

(rr-make-examples-makefile3)=

### Makefile no.3 (Phony Targets)

Typically, `all` and `clean` are defined as so-called Phony
Targets.
これらは実際に出力ファイルを作成しないターゲットです。 If not marked as `.PHONY` these targets would
always be run if they come up in a dependency, but will no longer be run if a
directory/file is ever created that is called `all` or `clean`. そのため、Makefile の一番上に
行を追加し、これら2行を偽の
ターゲットとして定義します。

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

使用したい場合には、Phonyのターゲットも役立ちます 再帰的に作る。 In that
case you would specify the subdirectories as phony targets. You can read more
about phony targets in the
documentation,
but for now it's enough to know that `all` and `clean` are typically
declared as phony.

> Sidenote: another target that's typically phony is **test**, in case you
> have a directory of tests called **test** and want to have a target to run
> them that's also called **test**.

(rr-make-examples-makefile4)=

### Makefile no.4 (自動変数とパターンルール)

現在のMakefileには何の問題もありませんが、すべてのターゲットを別々のルールを使って明示的に宣言しているので、それは多少冗長です
。 We can
simplify this by using Automatic
Variables
and Pattern
Rules.

(rr-make-examples-automaticvar)=

#### 自動変数。

自動変数を使用すると、レシピの
前提条件とターゲットの名前を使用できます。 以下は
図規則に対して行う方法です。

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

We've replaced the input and output filenames in the recipes respectively by
`$<`, which denotes the _first_ prerequisite and `$@` which denotes the
_target_. You can remember `$<` because it's like an arrow that points to
the beginning (_first_ prerequisite), and you can remember `$@` (dollar
_at_) as the target you're aiming
.

There are more automatic variables that you could use, see the
documentation.

(rr-make-examples-patternrules)=

#### パターンルール

数字のレシピが
同じになっていることに注意してください!  Because we don't like to repeat ourselves, we can combine the two
rules into a single rule by using _pattern rules_. Pattern rules allow you to
use the `%` symbol as a wildcard and combine the two rules into one:

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

The `%` symbol is now a wildcard that (in our case) takes the value `1` or
`2` based on the input files in the `data` directory. You can check that
everything still works by running `make clean` followed by `make`.

An advantage of this is that if you now want to add another dataset, say
`input_file_3`, then you would only need to add that to the rule for the
report!

(rr-make-examples-makefile5)=

### Makefile no.5 (ワイルドカードとパス置換)

Makefileがより複雑になったとき。 入力ディレクトリ内のすべてのファイルに対して出力を構築するなど、より高度な機能
を使用することができます。 While
pattern rules will get you a long way, Make also has features for wildcards
and string or path manipulation for when pattern rules are insufficient.

以前は入力ファイルに番号が付けられていましたが、より有意義な名前を持つシナリオ
に切り替えます。 Let's switch over to the `big_data`
branch:

```bash
git checkout big_data         # checkout the big_data branch
```

ディレクトリ構造は以下のようになります:

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

As you can see, the **data** directory now contains additional input files
that are named more meaningfully (the data are IMBD movie ratings by genre).
Also, the **report.tex** file has been updated to work with the expected
figures.

We'll adapt our Makefile to create a figure in the output directory called
`histogram_{genre}.png` for each `{genre}.csv` file, while excluding the
`input_file_{N}.csv` files.

> Sidenote: if we were to remove the `input_file_{N}.csv` files, pattern
> rules would be sufficient here. This highlights that sometimes your
> directory structure and Makefile should be developed hand in hand.

Makefile を変更する前に実行してください

```bash
make clean
```

をクリックして出力ファイルを削除します。

最初にMakefileの全文を表示し、それから、
で異なる行を詳しく説明します。 完全なファイルは:

```makefile
# Makefile for analysis report
#

ALL_CSV = $(wildcard data/*.csv)
INPUT_CSV = $(wildcard data/input_file_*.csv)
DATA = $(filter-out $(INPUT_CSV),$(ALL_CSV))
FIGURES = $(patsubst data/%.csv,output/figure_%.png,$(DATA))

.PHONY: all clean

all: output/report.pdf

$(FIGURES): output/figure_%.png: data/%.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i $< -o $@

output/report.pdf: report/report.tex $(FIGURES)
	cd report/ && pdflatex report.tex && mv report.pdf ../$@

clean:
	rm -f output/report.pdf
	rm -f $(FIGURES)
```

First, we use the `wildcard` function to create a variable that lists all
the CSV files in the data directory and one that lists only the old
`input_file_{N}.csv` files:

```makefile
ALL_CSV = $(wildcard data/*.csv)
INPUT_CSV = $(wildcard data/input_file_*.csv)
```

Makefileのコード規約は、変数名にすべての大文字を使用し、
ファイルの先頭に定義することです。

Next, we create a variable to list only the data files that we're interested
in by filtering out the `INPUT_CSV` from `ALL_CSV`:

```makefile
DATA = $(filter-out $(INPUT_CSV),$(ALL_CSV))
```

This line uses the
[`filter-out`](https://www.gnu.org/software/make/manual/make.html#index-filter_002dout)
function to remove items in the `INPUT_CSV` variable from the `ALL_CSV`
variable.  Note that we use both the `$( ... )` syntax for functions and
variables. Finally, we'll use the `DATA` variable to create a `FIGURES`
variable with the desired output:

```makefile
FIGURES = $(patsubst data/%.csv,output/figure_%.png,$(DATA))
```

Here we've used the
[`patsubst`](https://www.gnu.org/software/make/manual/make.html#index-patsubst-1)
function to transform the input in the `DATA` variable (that follows the
`data/{genre}.csv` pattern) to the desired output filenames (using the
`output/figure_{genre}.png` pattern). Notice that the `%` character marks
the part of the filename that will be the same in both the input and output.

次のように、これらの変数を図の生成ルールに使用します。

```makefile
$(FIGURES): output/figure_%.png: data/%.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i $< -o $@
```

This rule again applies a pattern: it takes a list of targets (`$(FIGURES)`)
that all follow a given pattern (`output/figure_%.png`) and based on that
creates a prerequisite (`data/%.csv`). Such a pattern rule is slightly
different from the one we saw before because it uses two `:` symbols. It is
called a static pattern
rule.

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

このMakefileを実行する場合、28個の図をビルドする必要があります。 You may want to
use the `-j` flag to `make` to build these targets **in parallel!**

```bash
make -j 4
```

ターゲットを並列に構築する能力は、プロジェクトに
の依存関係がある場合に非常に役立ちます。

結果の PDF ファイルは次のようになります。

![Report with all genres](../../../figures/make-report-all-genres.png)<small
style="margin: 5pt auto; text-align: center; display: block;">A compressed
view of the report with histograms for all genres.</small>
