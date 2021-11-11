(rr-overview-barriers)=
# 可再生产的障碍

迄今为止，我们已经通过可复制的研究来解释了 {ref}`我们的含义是<rr-overview-definitions>` 的内容，并解释了一些 {ref}`额外的效益<rr-overview-benefits>`

在本节中，我们涵盖了您在使您的工作可以复现时可能面临的一些(实际和感知的)障碍。

```{figure} ../../figures/barriers-reproducibility.png
---
宽度：500px
名称：复位障碍
Alt：从演示文稿中滑动，显示不同的障碍以实现可还原性。 中心的文字是“可再生产的研究障碍”，下面的障碍是顺时针围绕幻灯片安排的――不考虑推销的。 按比其他人更高的标准，出版偏向于新的发现、绘制第5页，花费时间，支持额外用户，需要额外的技能。
---
一张幻灯片概述了Kirstie Whitaker研究的一些障碍[谈论_The Ting Way_](https://youtu.be/wZeoZaIV0VE?t=312)，于2019年5月在[csv,conf,v4](https://csvconf.com/2019)。
在 CC-BY 4.0 许可下使用。
DOI：[10.5281/zenodo.2669547](https://doi.org/10.5281/zenodo.2669547)。
```

本章概述了其中一些障碍，并提出了一些克服这些障碍的建议。 可再生产研究的障碍可分为三大类。 第一个， 最难克服的是那些与学术研究中目前的奖励结构有关的奖励办法: {ref}`提供不利于自己的证据的有限奖励办法<rr-overview-barriers-incentives>` (或“牵头第五个”), 已知的 {ref}`发布偏向于新的结果<rr-overview-barriers-publication>`, 可复制或开放的研究可能是 {ref}`被认为比其他人更高的标准<rr-overview-barriers-standards>`并且所有这一切都是 {ref}`没有被考虑升级<rr-overview-barriers-promotion>` 然后还有一些技术和理论上的挑战，即如何使用 {ref}`大数据和复杂的计算基础结构<rr-overview-barriers-infrastructure>` 并牢记 {ref}`可重现并不意味着答案是正确的<rr-overview-barriers-notright>` 考虑到个别数据科学家面临的压力，我们以三个障碍完成：这项工作可以被认为为 {ref}`需要额外时间<rr-overview-barriers-time>`您可能被要求 {ref}`支持更多用户<rr-overview-barriers-support>` (破坏者：你是！ ，您和您的团队成员可能需要 {ref}`额外技能<rr-overview-barriers-skills>` 好消息是，帮助你学习这些技能正是 _这条美丽的路_ 所为的！

(rr-overview-barriers-encourages)=
## 提供不利于自己的证据的有限鼓励措施

《美国宪法》 [第五修正案](https://en.wikipedia.org/wiki/Fifth_Amendment_to_the_United_States_Constitution) 中有一条规定“任何人在任何刑事案件中不得被迫作为反对 [them]el[ves] 的证人”。 （使用不分性别的语言） “为五个国家辩护”意味着有人选择不提供证据证明他们过去的行为可能有些错误。 他们有权保持沉默。

我们知道，没有人想要自证其罪，而且没有人是不适当的。 将您的代码和数据联机上网可能会非常暴露和恐吓， 而且受到他人的判断是人类状况的一部分。 Although there is no _law_ governing the communication of reproducible research - unless you commit explicit fraud in your work - sharing errors that you find in your work is heavily disincentivised.

```{figure} ../../figures/make-ok-to-be-human.jpg
---
高度: 500px
name: make-oke-to-be-human
alt: A cartoon of a women's holding a flow of files and searche. 思考气泡说。如果我分享我的数据，人们可能会发现错误。 图像上的标题读取了需要让它成为人类。
---
是我们当前文化抑制承认和纠正错误的“第五”障碍的一个示例。
Ludic Group LLP从Kirstie Whitaker2017年科学数据的主旨发言中可以看出。
在 CC-BY 4.0 许可下使用。
DOI: [10.6084/m9.figshare.5577340.v1](https://doi.org/10.6084/m9.figshar.5577340.v1)。
```

提供不利于自己的证据，特别是如果你在所发表的材料中发现错误，是困难和紧张的。 但我们需要平衡这种单独的成本与这样一个事实，即释放代码可以帮助其他研究人员提供反馈。 她们可以学习并帮助她们进行研究。 事实上，您几乎肯定会发现发布您的代码和数据文档促使您进行更高标准的分析。 注意你写下什么和记录你的决定，也可以帮助为你自己和他人产生新的想法。

最重要的是，我们需要摆脱一种文化，在这种文化中，出版不会比出版 _个东西_ 更安全。 _此处的诱惑方式_ 是为了帮助您采取少量步骤，随着您的职业发展而变得更加可再生。 我们不希望任何人在开始和继续其开放的研究旅程时感到孤独，或“不够好”。

(rr-overview-barriers-publication)=
## 出版物偏向于新的结果

新成果不一定准确，也不一定令人感兴趣，但在学术界得到奖励！ 找不到具有统计意义的关系的文件很难发布，尤其是如果结果 *不能* 复制以前发布的结果。 （这包括与已经公布的工作相反的具有统计意义的调查结果。） 与此相类似， 如果某一文章成功地转载已经发表的结果而不是产生新的集合，它可能不太可能被某一期刊或某一会议所接受。 审查人员很有可能说“我们已经知道了这一点”并拒绝提交。

数据科学偏向于新颖，意味着许多研究人员不愿从事记录、测试和分享其代码和数据的工作。 2005年，John Ioannidis发表了一份有影响力的论文，题目是“为什么大多数已发表的研究结论都是False” {cite:ps}`Ioannidis2005False` 其中讨论了导致出版偏见的许多因素。 鉴于这些偏见，很可能在数据科学方面有大量重复工作。 太多不同的研究人员提出同样的问题。 没有得到他们所期望或想要的答案，然后又不告诉任何人他们发现了什么。

这个障碍并不是我们在 _诱惑路径_ 中定义的计算可重复性。 然而，它是阻碍 {ref}`透明通信<cm>`的主要文化障碍，影响了 {ref}`项目设计<pd>`。 _社区正在我们能够做到的所有地方提倡美味之路_ 为了消除目前的出版物和学术信用偏见，必须进行系统的文化变革，而不是僵硬。

(rr-overview-barriers-standards)=
## 达到比其他标准更高的标准

通过分享其代码和数据使其工作可重复的研究人员可能被认为比其他研究人员更高的标准。 如果作者没有分享，那么手稿或会议文件的所有读者都可以相信（或不信任）结果。

如果有代码和数据，同行审查人员可以寻找执行方面的差异。 他们可能会就如何分析数据提出新的想法，因为他们已经能够试验这项工作。 这样他们就有可能需要提交草稿的作者作更多的改动，然后才能被接受同行审查。

正如我们在 {ref}中描述的那样`"牵引第五"<rr-overview-barriers-incentives>` 上面的部分， 解决这一挑战的办法是调整职业奖励，以便最好地为 _科学_ 做出贡献也使所涉个人受益。

(rr-overview-promotion)=
## 未考虑促销活动

在目前的学术体系中，晋升的首要考虑是证明有能力获得助学金和招收学生。 供资机构和未来的学生都珍视新鲜事物，这种行为反映在奖励优秀的文章中，具有很高的 [期刊影响因子](https://en.wikipedia.org/wiki/Impact_factor)。 可能是人类状况的一部分，是出于新的或令人吃惊的动因， 但正如上文&lt;rr-overview-barriers-publication&gt;</code>上面讨论过的 {ref}`那样，这种向新颖的偏向造成了系统的发布偏见。</p>

<p spaces-before="0">更广泛地说，学术界的提升制度往往奖励那些表现出与本领域其他人不同的人。
这意味着分享代码和数据，使“竞争者”能够方便地从事同样的工作，最终被晋升和供资选择小组所阻止。
这种偏见的一个很好的例子是每年只有少数研究人员获得诺贝尔奖。 并且就这样 <a href="https://www.theatlantic.com/science/archive/2017/10/the-absurdity-of-the-nobel-prizes-in-science/541863/">"忽略其许多重要贡献者"</a> (Ed Yong, The Atlantic, 2017)。
<em x-id="4">诱惑方式</em> 的目标之一是提请注意使用权和促进过程与协作和可再利用的数据科学之间的不一致之处。</p>

<p spaces-before="0">(rr-overview-frastructure)=</p>

<h2 spaces-before="0">大型数据和复杂的计算基础设施</h2>

<p spaces-before="0">大型数据由不同的研究人员以不同的方式构思。
“大量”数据可能是复杂的，来自各种数据来源，储存量庞大和/或以极高的时间分辨率流入。
虽然有办法在特定时间设置随机种子并拍摄数据集的快照， 在分析管道的不同运行过程中可能很难有相同的数据。
这在平行计算工具方面尤其重要。
例如， 某些数据，如飞行跟踪或因特网流量太大，无法储存，必须按实时流量处理。</p>

<p spaces-before="0">“大数据”研究人员面临的一个更普遍的挑战是不同操作系统的软件性能变化以及这些工具随时间变化的速度。
目前已有几乎不断变化的数据科学技术生态系统。 这意味着今后复制结果的变化很大，取决于在开发过程中使用完美的后向兼容工具。
统计测试的结果常常因每项试验所使用的基础设施的配置而有所变化。 使独立复制结果变得非常困难。
实验往往依赖随机初始化的迭代算法，而不是所有软件都能够修复伪随机数字，而不限制平行化能力（例如在田间流中）。
这些工具可能需要数据科学家无法广泛获得的深度技术技能。
例如， <a href="https://hadoop.apache.org/">Apache Hadoop</a> 框架非常复杂，在没有强大的软件和硬件工程知识的情况下部署数据科学实验。</p>

<p spaces-before="0">甚至“标准”高性能计算也很难设置为完全可复制，尤其是在不同的云计算提供商或机构结构中。
<em x-id="4">诱惑路径</em> 含有帮助数据科学家在 {ref}学习技能的章节<code>可复制的计算环境<rr-renv>` 包括 {ref}`容器<rr-renv-containers>` 例如码头和 {ref}的方式`版本控制你的软件库<rr-renv-package>` 我们总是 [可以提供更多的贡献](https://github.com/alan-turing-institute/the-turing-way/blob/main/CONTRIBUTING.md) ，因为支持大型数据集或复杂建模研究的技术正在演变。

(rr-overview-barriers-notright)=
## 重现并不意味着答案是正确的

将用于产生结果的代码和数据公开提供给他人， 我们的结果可能是 **转载了** 但最初作者犯下的错误可以传递。 每次获得相同的错误答案是正确方向的一步，但仍然是 **错误的** 答案！

This barrier isn't really a _barrier_ to reproducible research as much as a caveat that investing time in reproducibility doesn't necessarily mean that you're doing better science. 您可以认为计算重生产是必要的，但不足以进行高质量的研究。 需要一种关键的方法，而不是天真地使用现有的软件或采用统计方法，而不了解它们做什么。 例如，见下列国家的加入： [于2019年8月讨论了](https://ryxcommar.com/2019/08/30/scikit-learns-defaults-are-wrong) 关于Scikit-learn实施物流回归的默认设置是否会误导新用户。 解释性和互操作性是适当评价原始研究和加强研究结果所必需的。

(rr-overview-barriers-time)=
## 占用时间

进行可复制的分析需要时间和精力，特别是在项目开始时。 这可能包括商定一个 {ref}`测试框架<rr-testing>`, 设置 {ref}`版本控制<rr-vcs>` 例如一个 Github 仓库和 {ref}`连续集成<rr-ci>`和 {ref}`管理数据<rr-rdm>` 在整个项目期间，可能需要时间来维持可再生产的管道。

还可以花时间与合作者沟通，商定项目的哪些部分可以是开放源码，何时和如何共享这些产出。 研究人员可能会发现，他们需要“提高”他们的同事，以便使小组能够受益于git和GitHub等可再生产工具， 容器、Jupyter 笔记本或数据库。

```{figure} ../../figures/help-you-of-the-future.jpg
---
宽度：500px
name: help-yous of future
alt: A cartoon of a women's translation of documents return to hower how. 语音泡沫说您将来主要保存您的记录。
---
虽然清晰的文件可能会觉得目前需要很多时间。 你正在帮助你和你的合作者记住你已经做了什么，这样做很容易重新使用你的工作或在未来进行修改。
Ludic Group LLP从Kirstie Whitaker2017年科学数据的主旨发言中可以看出。
在 CC-BY 4.0 许可下使用。
DOI: [10.6084/m9.figshare.5577340.v1](https://doi.org/10.6084/m9.figshar.5577340.v1)。
```

然而， _Ting Way_ 社区主张，这次超过了项目结束时的补足。 以一种思维为主的实验，当该出版物被提交给某一期刊时，审查人员要求“再作一次分析”。 在许多情况下，这项要求将在研究小组处理原始数据后6至12个月内提出。 很难及时找到审核者要求你改变的管道的一部分。 如果该工作是完全可复制的，包括版本控制的数据和数字生成代码， 这种分析将很快运行并纳入最终研究产出。 根据共同撰写人和审评员的要求，在需要时可以很容易地对分析编审中的管道进行调整。 它也可以很容易地重新用于今后的研究项目。

(rr-overview-barriers-support)=
## 支持其他用户

许多人担心，如果他们的分析可以复制，他们就必须回答他们的代码未来用户提出的大量问题。 这些问题可能涉及不同操作系统之间的软件不兼容以及随着时间的推移而变化的依赖关系(见 {ref}`大数据和复杂的计算基础设施<rr-overview-barriers-infrastructure>` 上文的屏障)。 它们还可以包括如何为不同目的调整该代码的问题。

这种屏障的部分基础是将“可复现的”研究与“开放的”研究混为一谈。 _诱惑路径_ {ref}`“可复现”的定义<rr-overview-definitions>` 不要求作者支持扩展和重新使用数据和代码，只要在所附的手稿中运行生成已发布结果的准确分析。

在几乎所有情况下，提供代码和数据公开源所需要的文件比研究人员为自己撰写的文件要好。 这可能就像是一个额外的障碍， 尽管正如前面关于可再生产的研究 {ref}的章节所讨论的那样，`需要额外时间<rr-overview-barriers-time>` 经过精心评论和测试并附有详细文件的代码的主要受益者很可能是研究小组，尤其是项目的主要调查员。

(rr-overview-barriers-skill)=
## 需要额外技能

正如你可以从 _Ting Way_中越来越多的章节中讲到的那样， 在培训方案中并不总是能够教授各种技能。 您——或者您的团队中的某个——可能需要开发数据工程方面的专门知识。 GitHub 上的研究软件工程、文件技术写作或项目管理。 当当前的奖励结构与学习这些技能不一致时，这是一个主要障碍(见 {ref}的障碍`恳求第五<rr-overview-barriers-incentives>` {ref}`发布偏向于新的结果<rr-overview-barriers-publication>`, {ref}`被认为高于其他人的标准<rr-overview-barriers-standards>`和 {ref}`未被考虑促销<rr-overview-barriers-promotion>`!) 然而，这是我们在 _的主要障碍。正在与您一起努力拆除的诱惑路径_。 我们希望你与我们一起学习这些技能，并且你会帮助我们像你一样改进这本书。

> “千英里之旅始于一个步骤”(中国哲学家 [Lao Tzu](https://en.wikipedia.org/wiki/A_journey_of_a_thousand_miles_begins_with_a_single_step))。

我们希望，通过努力帮助你学习其中一些宝贵的技能，我们还消除了一些可再循环研究的结构性障碍。

## 进一步阅读和增拨资源

您可以观看Kirstie Whitaker在 [她关于 _Ting ways_](https://youtu.be/wZeoZaIV0VE?t=312) at [csv中描述其中一些障碍。 2019年5月的一次,v4](https://csvconf.com/2019)。 您可以通过 Zenodo 在 CC-BY 许可证下使用并重新使用她的幻灯片(doi: [10.5281/zenodo.2669547](https://doi.org/10.5281/zenodo.2669547))。 描述下面幻灯片的部分大约会在5分钟后进入视频。
