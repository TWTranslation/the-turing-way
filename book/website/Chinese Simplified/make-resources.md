(rr-make-resources)=
# "Make"的资源

(rr-make-resource-manual)=
## 手动模式

- [官方参考 手册](https://www.gnu.org/software/make/manual/make.html)。

(rr-make-resource-discussion)=
## 讨论

- [关于编写 HackerNews](https://news.ycombinator.com/item?id=15041986) 的讨论。

- [递归化使 有害](http://aegis.sourceforge.net/auug97.pdf)。 这是一个众所周知的 纸，说明为什么你不应该使用嵌套的 makefile。 概括起来：如果你做 这个让你看不到整个DAG, 这会导致问题。

- [非递归化为 有害](https://www.microsoft.com/en-us/research/wp-content/uploads/2016/03/hadrian.pdf): 这是一份研究论文，描述制造大型和 复杂构建的失败。

(rr-make-resource-blogs)=
## 博文

当然，我们不是第一个建议使用制造实现可再生性的工具！ 下面引用的博客文章是在上面的教程写入后发现的， 但可以添加更多信息和示例。

- [复现性是 硬](https://kbroman.wordpress.com/tag/reproducible-research/)。 讨论 使一个研究项目可以使用 Make 复制。

- [GNU Make for Repuciable Data Analysis](http://zmjones.com/make/). 使用 Make 进行可复制分析的参数 与上面相似.

- [使用 制作](http://byronjsmith.com/make-bml/) 来复现生物信息管道。 一个关于使用 制作数据分析的相当广泛的教程。

- [自动数据分析 管道](http://stat545.com/automation04_make-activity.html)。 一个使用R进行分析的类似的 教程。

- [写入可复制的纸](http://handbook.datalad.org/en/latest/usecases/reproducible-paper.html#automation-with-existing-tools)。 使用 Python 使用变量的类似教程在 手稿中填充表。

(rr-make-resources-tools)=
## 工具

- 用 [makefile2graph 绘制的 Makefile2gra](https://github.com/lindenb/makefile2graph) 的 DAG 文件。

(rr-make-resource-alternatives)=
## 可供选择的替代办法

There are [many alternatives to Make](https://en.wikipedia.org/wiki/List_of_build_automation_software). 在 以下是一些抓住我们眼睛的东西，这可能是值得看起来的。

- [SnakeMake](https://snakemake.readthedocs.io/en/stable/). 基于 Python3 的 替代Make。 Snakemake 支持文件名中的多个通配符， 支持规则中的 Python 代码。 并且可以在工作站、 群集、网格和云端上运行工作流，无需修改。

- [Tup](http://gittup.org/tup/index.html). 快速构建系统处理 从下往上而不是Make自上而下的先决条件。 速度看起来 令人印象深刻，描述它的文件令人感兴趣，但对于小的 项目来说，Make 的速度将不会成为瓶颈。 The Tupfile syntax is not compatible with that of Makefiles.

- [Bazel](https://www.bazel.build). 谷歌的烈焰喷射 构建系统的开源版本。

- [桶](https://buckbuild.com/) . . Facebook的构建系统。


