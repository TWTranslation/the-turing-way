(rr-make-appendix)=
# 付録

(rr-make-appendix-dag)=
## 指示非巡回グラフ

指示非巡回グラフ (DAG) は、 *グラフ* であり、次のようなノードとエッジを示します:

1. *指定*: エッジは方向を持っており、グラフを 方向にのみ歩くことができます
2. *非巡回*: 周期が含まれていない: AはBがAに依存するときBに依存できない。

後者のプロパティはもちろんビルドシステムにとって非常に便利です。 詳細は [Wikipedia](https://en.wikipedia.org/wiki/Directed_acyclic_graph) に記載されています。

(rr-make-appendix-installing)=
## Make をインストール中

まず、GNU Make が既にインストールされているかどうかを確認します。 端末タイプで:

```bash
$ make
```

`make: command not found` (または同様)を取得した場合、Makeはありません。 を `作る場合: *** ターゲットが指定されておらず、makefile が見つかりません。  停止します。` にはメイクがあります。

このチュートリアルでは **GNU Make** を使用します。 以下のように入力して あなたが持っているものであることを確認してください：

```bash
$ make --version
```

もしあなたが GNU Make を持っていないけれども、 BSD バージョンを持っていれば、 期待どおりに動作しないかもしれませんし、 GNU make をインストールすることをお勧めします。

GNU Makeをインストールするには、以下の手順に従ってください:

- **Linux**: Makeをインストールするにはパッケージマネージャを使用してください。 例えば Arch Linux:

  ```bash
  $ sudo pacman -S make
  ```

  Ubuntu:
  ```bash
  $ sudo apt-get install build-essential
  ```

- **MacOS**: [Homebrew](https://brew.sh/) がインストールされている場合は、次のようにします。

  ```bash
  $ brew install make
  ```

  組み込みの Make 実装がある場合は、それが GNU Make であることを確認してください。 `make --version`。

(rr-make-appendix-advancedgr)=
## 高度: 通話を使用してルールを生成

*このセクションでは、上記のチュートリアルを続け、ルールを自動生成するための Make の機能を説明します。*

データサイエンスのパイプラインで 同じデータに複数のスクリプト を適用するのはかなり一般的かもしれません (例えば、メソッドを比較したり、 異なるパラメータをテストしたりするときなど)。 その場合、スクリプト名のみが変更された場合、個別の ルールを各スクリプトに記述するのは面倒になることがあります。 この プロセスを簡素化するために、いわゆる [*缶詰* レシピ](https://www.gnu.org/software/make/manual/make.html#Canned-Recipes) を拡張させることができます。

従うには、 `缶詰の` ブランチに切り替えます。

```bash
$ make clean
$ git stash --all # '--all' フラグをメモするので、Makefile
$ git checkout canned
```

このブランチには、 **スクリプト** ディレクトリの `generate_qqplot.py` に新しいスクリプトがあることがわかります。 This script works similarly to the `generate_histogram.py` script (it has the same command line syntax), but it generates a [QQ-plot](https://en.wikipedia.org/wiki/Q%E2%80%93Q_plot). **report.tex** ファイルもこれらのプロットを組み込むように更新されました。

`缶詰の` ブランチに切り替えると、QQプロットを生成するための別のルールを含む リポジトリにMakefileがあります。 この Makefile は のようになります。

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

ヒストグラムとQQプロットのルールは非常によく似ています。

データ上で実行したいスクリプトの数が増えるにつれて、 これは とほぼ同じ の Makefile 中の多数のルールにつながる可能性があります。 スクリプト名とジャンル名の両方を入力とする [* レシピ*](https://www.gnu.org/software/make/manual/html_node/Canned-Recipes.html) を作成することで、これを簡素化できます。

```makefile
define run-script-on-data
output/$(1)_$(2).png: data/$(2).csv scripts/generate_$(1).py
    python scripts/generate_$(1).py -i $$< -o $$@
endef
```

このレシピでは、 `$(1)` を `ヒストグラム` または `qqplot` と `$(2)` のいずれかに使用することに注意してください。 これらは期待されている 関数引数が `run-script-on-data` のレシピに対応します。 Also, notice that we use `$$<` and `$$@` in the actual recipe, with two `$` symbols for escaping. 実際にすべてのターゲットを作成するには、この缶詰レシピ を呼び出す行が必要です。  今回のケースでは、ジャンルの上で double for ループを使用し、 スクリプトを使用します。

```makefile
$(foreach gener,$(GENRES),\
    $(foreach script,$(SCRIPTS),\
        $(eval $(run-script-on-data,$(script),$(genre))) \
    ) \
)
```

これらの行では、 `\` 文字は長い行を継続するために使用されます。

その後、Makefile 全体が次のようになります。

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

`SCRIPTS` 変数に `ヒストグラム` および `qqplot` の名前を追加しました。 これらの2つと同じ パターンに続く別のスクリプトを追加する場合。 SCRIPTS `` 変数に追加するだけです。

これをすべてビルドするには、実行してください

```bash
$ make -j 4
```
