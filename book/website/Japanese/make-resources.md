(rr-make-resources)=
# "Make"のリソース

(rr-make-resources-manual)=
## マニュアル

- [公式メイクリファレンス マニュアル](https://www.gnu.org/software/make/manual/make.html).

(rr-make-resources-discussions)=
## ディスカッション

- [HackerNews でのディスカッション](https://news.ycombinator.com/item?id=15041986).

- [ 有害](http://aegis.sourceforge.net/auug97.pdf) を考慮再帰メイク。 これは、ネストされた makefile を使用すべきではない理由についてのよく知られている 論文です。 要約すると、 これを行うと、 MakeはDAG全体を見ることができず、それが問題につながります。

- [再帰的でないものを考慮する 有害な](https://www.microsoft.com/en-us/research/wp-content/uploads/2016/03/hadrian.pdf): 本論文は、Make の大きな複雑なビルドと の障害を記述した研究論文である。

(rr-make-resources-blogs)=
## ブログ

もちろん、再現性のためにMakeを使用することを提案したのは私たちが最初ではありません! 以下で引用されたブログ記事は、上記のチュートリアルが書かれた後に見つかりました。 しかし、さらに詳しい情報と例を追加することができます。

- [再現性は 難しい](https://kbroman.wordpress.com/tag/reproducible-research/) です。 Makeを使って研究プロジェクトを再現できるようにする について議論する。

- [再現可能なデータ解析のための GNU Make](http://zmjones.com/make/). 上記と同様の静脈で再現性のある解析のためにMakeを使用するためのArgues .

- [ Make](http://byronjsmith.com/make-bml/) を使用して再現可能なバイオインフォマティクスパイプライン の使用に関する非常に広範なチュートリアル データ解析のために作成します。

- [自動データ解析 パイプライン](http://stat545.com/automation04_make-activity.html). 解析にRを使用する同様の チュートリアル。

- [再現性のある論文を書く](http://handbook.datalad.org/en/latest/usecases/reproducible-paper.html#automation-with-existing-tools). 変数を使用して 原稿にテーブルを作成するPythonと同様のチュートリアルです。

(rr-make-resources-tools)=
## ツール

- [makefile2graph](https://github.com/lindenb/makefile2graph) で Makefile の DAG をプロットします。

(rr-make-resources-alternatives)=
## 作成する代替

[ Make](https://en.wikipedia.org/wiki/List_of_build_automation_software) には多くの選択肢があります。 の下には、私たちの目をとらえたものがあり、それは一見の価値があるかもしれません。

- [SnakeMake](https://snakemake.readthedocs.io/en/stable/). Makeに代わるPython3ベースの 。 Snakemake supports multiple wildcards in filenames, supports Python code in rules, and can run workflows on workstations, clusters, the grid, and in the cloud without modification.

- [Tup](http://gittup.org/tup/index.html). Makeのトップダウンではなく、ボトムアップの前提条件を 処理する高速ビルドシステム。 速度は 印象的で、それを説明する論文は興味深いが、小さい プロジェクトではMakeの速度はボトルネックにはならない。 Tupfile 構文は Makefile と 互換性がありません。

- [Bazel](https://www.bazel.build). GoogleのBlaze ビルドシステムのオープンソース版。

- [Buck](https://buckbuild.com/). Facebookのビルドシステム。


