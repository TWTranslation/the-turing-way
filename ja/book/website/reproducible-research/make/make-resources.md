(rr-make-resources)=

# "Make"のリソース

(rr-make-resources-manual)=

## マニュアル

- The Official Make Reference
  manual.

(rr-make-resources-discussions)=

## ディスカッション

- Discussion on Make on
  HackerNews.

- Recursive Make Considered
  Harmful. This is a well-known
  paper on why you shouldn't use nested makefiles. To summarise: if you do
  this Make can't see the entire DAG and that leads to problems.

- Non-Recursive Make Considered
  Harmful:
  This is a research paper describing the failings of Make for large and
  complex builds.

(rr-make-resources-blogs)=

## Blogs

もちろん、再現性のためにMakeを使用することを提案したのは私たちが最初ではありません!
以下で引用されたブログ記事は、上記のチュートリアルが書かれた後に見つかりました。
しかし、さらに詳しい情報と例を追加することができます。

- Reproducibility is
  hard. Discusses
  making a research project reproducible using Make.

- [GNU Make for Reproducible Data Analysis](http://zmjones.com/make/). Argues
  for using Make for reproducible analysis in a similar vein as we do above.

- Reproducible Bioinformatics Pipelines using
  Make. A quite extensive tutorial on using
  Make for data analysis.

- Automatic Data-analysis
  Pipelines. A similar
  tutorial that uses R for the analysis.

- [Writing a reproducible Paper](http://handbook.datalad.org/en/latest/usecases/reproducible-paper.html#automation-with-existing-tools).
  A similar tutorial with Python using variables to populate tables in the
  manuscript.

(rr-make-resources-tools)=

## ツール

- Plot the DAG of the Makefile with
  [makefile2graph](https://github.com/lindenb/makefile2graph).

(rr-make-resources-alternatives)=

## 作成する代替

There are many alternatives to
Make.
の下には、私たちの目をとらえたものがあり、それは一見の価値があるかもしれません。

- [SnakeMake](https://snakemake.readthedocs.io/en/stable/). A Python3-based
  alternative to Make. Snakemake supports multiple wildcards in filenames,
  supports Python code in rules, and can run workflows on workstations,
  clusters, the grid, and in the cloud without modification.

- [Tup](http://gittup.org/tup/index.html). A fast build system that processes
  prerequisites bottom-up instead of Make's top-down. The speed looks
  impressive and the paper describing it is interesting, but for small
  projects Make's speed will not be a bottleneck. The Tupfile syntax is not
  compatible with that of Makefiles.

- [Bazel](https://www.bazel.build). An open-source version of Google's Blaze
  build system.

- [Buck](https://buckbuild.com/). Facebookのビルドシステム。


