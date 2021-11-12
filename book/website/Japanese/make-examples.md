(rr-make-examples-learnmake)=
# 例で「メイク」を学ぶ

(rr-make-examples-makefiles)=
## Makefile

One of the things that might discourage someone from using Make is that existing Makefiles can look quite complex, and it might seem difficult to tailor one to your own needs. この実践的なチュートリアルでは、実際のデータ解析プロジェクトのために Makefileを最初から作成します。 このアイデアは、 Makefile のいくつかのバージョンを繰り返すことによって、Makeのさまざまな機能を説明することです。 うまくいけば、このチュートリアル で得られる経験により、自分のプロジェクト用にMakefileを作成することができます。

データ解析パイプラインの `Makefile` を作成します。 タスクは以下のようになります:

> **Task: Given some datasets, create a summary report (in pdf) that contains the histograms of these datasets.**

(もちろん、このデータタスクはMakeの使い方に焦点を当てるのは非常に簡単です。

*チュートリアルのコードブロックを通して、ドル記号 (`$`) から始まるものは ターミナルで入力されることを意図しています。*

(rr-make-examples-settingup)=
### 設定

We have created a basic repository for this task, that already contains everything that we need (*except the Makefile of course!*). 開始するには、gitを使用してベースリポジトリを クローンします。

```bash
$ git clone https://github.com/alan-turing-institute/IntroToMake
```

この基本的なリポジトリには、このチュートリアルで必要なすべてのコードが含まれており、 この内容を持つ必要があります。

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

- **data**: 2つのデータセットを解析するディレクトリ
- **report**: レポートの入力ディレクトリ
- **スクリプト**: 解析スクリプトのディレクトリ
- **output**: 図とレポートの出力ディレクトリ

You'll notice that there are two datasets in the **data** directory (`input_file_1.csv` and `input_file_2.csv`) and that there is already a basic Python script in **scripts** and a basic report LaTeX file in **report**.

フォローしたい場合は、 `matplotlib` と `numpy` パッケージがインストールされていることを確認してください:

```bash
$ pip install matplotlib numpy
```

また、 `pdflatex` の動作バージョンと、もちろん `make` が必要になります。

Makeのインストール手順については、 {ref}`rr-make-appendix-installing` を参照してください。

(rr-make-examples-makefile1)=
### Makefile no.1 (基本)

最初の Makefile を作成しましょう。 ターミナル内で、クローンした `IntroToMake` リポジトリに移動します。

```bash
$ cd IntroToMake
```

お気に入りのエディタを使用して、 `Makefile` と呼ばれるファイルを 以下の内容で作成します。

```makefile
# Makefile for analysis report

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf
```
各レシピのインデントは ***タブ***で、Makefiles は 空白のインデントを受け付けません。

入力できるようになりました:

```bash
$ make output/report.pdf
```

すべてが正しく動作した場合、2つの図が作成され、PDFレポート が作成されます。

Makefileをもう少し詳しく見てみましょう。 数字には3つのルール、レポートには2つの があります。 まず、 `output/figure_1.png` のルールを見てみましょう。 このルールは2つの前提条件を持つターゲット `output/figure_1.png` を持っています: `data/input_file_1.csv` と `scripts/generate_histogram.py`. 出力ファイルにこれらの 前提条件を与えることで、いずれかのファイルが変更された場合に更新されます。 This is one of the reasons why Make was created: to update output files when source files change.

You'll notice that the recipe line calls Python with the script name and uses command line flags (`-i` and `-o`) to mark the input and output of the script. This isn't a requirement for using Make, but it makes it easy to see which file is an input to the script and which is an output.

PDFレポートのルールは非常によく似ていますが、3つの前提条件があります (LaTeXソースと両方の数字)。 レシピは LaTeX を呼び出す前に 作業ディレクトリを変更し、生成された PDF を 出力ディレクトリに移動することに注意してください。 これは LaTeX の中間ファイルを report ディレクトリに保持するために行います。 ただし、上記のルールを と区別することは重要です。

```makefile
# don't do this
output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
    cd report/
    pdflatex report.tex
    mv report.pdf ../output/report.pdf
```

このルールでは、3 つのコマンドを別々の行に配置します。 However, **Make executes each line independently** in a separate subshell, so changing the working directory in the first line has no effect on the second, and a failure in the second line won't stop the third line from being executed. したがって、 では、上記の3つのコマンドを一つのレシピで組み合わせます。

このMakefileの依存関係ツリーは次のようになります。

![Makefile no.1 用の DAG](../../figures/makefile-no1.png) <small style="margin: 5pt auto; text-align: center; display: block;">最初の Makefile の 依存関係グラフ。 [makefile2graph](https://github.com/lindenb/makefile2graph) を使用して作成されました。 Notice the similarity to the figure {ref}`in the introduction<rr-make-summary>`!</small>

(rr-make-examples-makefile2)=
### Makefile no.2（すべてクリーンアップ）

最初のMakefileでは基本的なルールが用意されています。 これは に固執することができますが、いくつか改善点があります。

1. `レポートを作成するには` を明示的に output/report.pdf を呼び出す必要があります。

2. きれいにして新鮮に始める方法はありません。

2つの新しいターゲットを追加することで、これを改善しましょう: `すべて` と `クリーン`。 エディタでMakefileの内容を変更し、 `すべての` と `クリーン` ルールを 以下のように追加します。

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

ファイルの先頭に `すべての` ターゲットを追加しました。 明示的なターゲットが指定されていない場合、Makeは最初の ** ターゲットを実行するためにこれを行います。  ですから、 コマンドラインで `make` と入力し、 `make all` と同じことを行うことができます。  また、レポートを の `の前提条件として` だけ追加しました。これは望ましい出力であり、他のルールは その出力を構築するのに役立つからです。 複数の出力がある場合は、 すべての `ターゲットにさらに` 前提条件としてこれらを追加できます。 メイン ターゲット `を呼び出すと、多くの人が従うMakefiles の` がすべて 慣習になります。

`clean` のルールは通常下部にありますが、それは の要件よりもスタイルが多いです。 `-f` フラグを `rm` に指定し、削除するファイルがない場合は 不平を言わないようにします。

新しいMakefileを試すには、以下を実行します。

```bash
$ make clean
$ make
```

Make は最初のコマンド の後に出力ファイルと中間ファイルを削除し、2 番目の後に再び生成する必要があります。

(rr-make-examples-makefile3)=
### Makefile no.3 (Phony Targets)

通常、 `すべての` と `クリーン` は、 [Phony ターゲット](https://www.gnu.org/software/make/manual/make.html#Phony-Targets) として定義されます。 これらは実際に出力ファイルを作成しないターゲットです。 If not marked as `.PHONY` these targets would always be run if they come up in a dependency, but will no longer be run if a directory/file is ever created that is called `all` or `clean`. そのため、Makefile の一番上に 行を追加し、これら2行を偽の ターゲットとして定義します。

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

使用したい場合には、Phonyのターゲットも役立ちます 再帰的に作る。 In that case you would specify the subdirectories as phony targets. You can read more about [phony targets in the documentation](https://www.gnu.org/software/make/manual/make.html#Phony-Targets), but for now it's enough to know that `all` and `clean` are typically declared as phony.

> Sidenote: another target that's typically phony is **test**, in case you have a directory of tests called **test** and want to have a target to run them that's also called **test**.

(rr-make-examples-makefile4)=
### Makefile no.4 (自動変数とパターンルール)

現在のMakefileには何の問題もありませんが、すべてのターゲットを別々のルールを使って明示的に宣言しているので、それは多少冗長です 。 自動 [ 変数](https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html) と [パターン ルール](https://www.gnu.org/software/make/manual/html_node/Pattern-Rules.html#Pattern-Rules) を使用することで、これを簡素化できます。

(rr-make-examples-automaticvar)=
#### 自動変数。

自動変数を使用すると、レシピの 前提条件とターゲットの名前を使用できます。 以下は 図規則に対して行う方法です。

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

We've replaced the input and output filenames in the recipes respectively by `$<`, which denotes the *first* prerequisite and `$@` which denotes the *target*. You can remember `$<` because it's like an arrow that points to the beginning (*first* prerequisite), and you can remember `$@` (dollar *at*) [as the target you're aiming *at*](https://jameshfisher.com/2016/12/07/makefile-automatic-variables/).

より多くの自動変数が使用できます。 [ ドキュメント](https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html) を参照してください。

(rr-make-examples-patternrules)=
#### パターンルール

数字のレシピが 同じになっていることに注意してください!  繰り返したくないので、2つの ルールを *パターンルール*を使うことで、1つのルールに組み合わせることができます。 パターンルールを使用すると、ワイルドカードとして % `` シンボルを使用し、2つのルールを1つにまとめることができます。

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

The `%` symbol is now a wildcard that (in our case) takes the value `1` or `2` based on the input files in the `data` directory. すべてが動作するかどうかは、 `make clean` の後に `make` を実行することで確認できます。

An advantage of this is that if you now want to add another dataset, say `input_file_3`, then you would only need to add that to the rule for the report!

(rr-make-examples-makefile5)=
### Makefile no.5 (ワイルドカードとパス置換)

Makefileがより複雑になったとき。 入力ディレクトリ内のすべてのファイルに対して出力を構築するなど、より高度な機能 を使用することができます。 While pattern rules will get you a long way, Make also has features for wildcards and string or path manipulation for when pattern rules are insufficient.

以前は入力ファイルに番号が付けられていましたが、より有意義な名前を持つシナリオ に切り替えます。 `big_data` ブランチに切り替えてみましょう。

```bash
$ git checkout big_data # big_data ブランチをチェックアウトする
```

ディレクトリ構造は以下のようになります:

```text
├── data/
├── action.csv
├── ...
│   ├── input_file_1.csv
│   ├── input_file_2.csv
│   ├── ...
web+graphie://ka-perseus-graphie.s3.amazonaws.com/web+graphie://ka-perseus-graphie.s3.amazonaws.com/ja-perseus-graphie.s3.amazonaws.com/ja-JP.westn.csv
├── LICENSE
├── output/
├── README.md
├── report/
├── report.tex
├── scripts/
    ├── generate_histogram.py
```

ご覧の通りです **data** ディレクトリに、追加の入力ファイル が含まれるようになりました。 また、 **report.tex** ファイルが更新され、期待されている 図が動作するようになりました。

We'll adapt our Makefile to create a figure in the output directory called `histogram_{genre}.png` for each `{genre}.csv` file, while excluding the `input_file_{N}.csv` files.

> 補足: もし `input_file_{N}.csv` ファイルを削除するなら、パターン のルールで十分です。 このハイライトは、時々あなたの ディレクトリ構造と Makefile が手元に開発されるべきであることです。

Makefile を変更する前に実行してください

```bash
$ make clean
```
をクリックして出力ファイルを削除します。

最初にMakefileの全文を表示し、それから、 で異なる行を詳しく説明します。 完全なファイルは:

```makefile
# Makefile for analysis report
#

ALL_CSV = $(wildcard data/*.csv)
INPUT_CSV = $(wildcard data/input_file_*.csv)
DATA = $(filter $(INPUT_CSV),$(ALL_CSV))
FIGURES = $(patsubst data/input_file_%.csv,output/figure_%.png,$(DATA))

.PHONY: all clean

all: output/report.pdf

$(FIGURES): output/figure_%.png: data/input_file_%.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i $< -o $@

output/report.pdf: report/report.tex $(FIGURES)
    cd report/ && pdflatex report.tex && mv report.pdf ../$@

clean:
    rm -f output/report.pdf
    rm -f $(FIGURES)
```

First, we use the `wildcard` function to create a variable that lists all the CSV files in the data directory and one that lists only the old `input_file_{N}.csv` files:

```makefile
ALL_CSV = $(ワイルドカードデータ/*.csv)
INPUT_CSV = $(ワイルドカードデータ/input_file_*.csv)
```

Makefileのコード規約は、変数名にすべての大文字を使用し、 ファイルの先頭に定義することです。

次に、 ALL_CSV `から` INPUT_CSV `を除外することで、` 関心のあるデータファイルのみをリストする変数を作成します:

```makefile
DATA = $(フィルター $(INPUT_CSV),$(ALL_CSV))
```

この行は、 [`フィルター`](https://www.gnu.org/software/make/manual/make.html#index-filter) 関数を使用して、 `INPUT_CSV` 変数と一致しないアイテムを `ALL_CSV` 変数から削除します。  関数と `変数に` $( ... ) の両方の構文を使うことに注意してください。 最後に、 `DATA` 変数を使用して、目的の出力を持つ `FIGURES`変数 を作成します。

```makefile
FIGURE = $(patsubst data/%.csv,output/figure_%.png,$(DATA))
```

Here we've used the [`patsubst`](https://www.gnu.org/software/make/manual/make.html#index-patsubst-1) function to transform the input in the `DATA` variable (that follows the `data/{genre}.csv` pattern) to the desired output filenames (using the `output/figure_{genre}.png` pattern). `%` 文字は、入力と出力の両方で同じ部分を と表します。

次のように、これらの変数を図の生成ルールに使用します。

```makefile
$(FIGURES): output/figure_%.png: data/%.csv scripts/generate_histogram.py
    python scripts/generate_histogram.py -i $< -o $@
```

This rule again applies a pattern: it takes a list of targets (`$(FIGURES)`) that all follow a given pattern (`output/figure_%.png`) and based on that creates a prerequisite (`data/%.csv`). このようなパターンルールは `:` という2つのシンボルを使用しているため、以前見たものとはわずかに異なります。 は [静的パターン ルール](https://www.gnu.org/software/make/manual/make.html#Static-Pattern) と呼ばれます。

もちろん、 `report.pdf` ルールも更新する必要があります。

```makefile
output/report.pdf: report/report.tex $(FIGURES)
    cd report/ && pdflatex report.tex && mv report.pdf ../$@
```

そして `クリーンな` ルール：

```makefile
clean:
    rm -f output/report.pdf
    rm -f $(FIGURES)
```

このMakefileを実行する場合、28個の図をビルドする必要があります。 -j `フラグを使って` これらのターゲットを `並列に` 作る **を使用してください。**

```bash
$ make -j 4
```

ターゲットを並列に構築する能力は、プロジェクトに の依存関係がある場合に非常に役立ちます。

結果の PDF ファイルは次のようになります。

![すべてのジャンルで報告](../../figures/make-report-all-genres.png)<small
style="margin: 5pt auto; text-align: center; display: block;">すべてのジャンルのヒストグラムを含むレポートの を圧縮したビュー。</small>
