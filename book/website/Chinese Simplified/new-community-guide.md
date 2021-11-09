(cl-new-community guide)=
# 社区规划指南

如果你以一种思路开始一个项目，“我有这个伟大的想法，我想尝试这个公开数据！” 怎么办？ 如果你是唯一的工作者，没有什么可担心的。 然而，如果你想要开发这个项目 - 你有责任让人们感觉被纳入你的项目。

作为“项目线索”， 你想要建立一个欢迎和包容的环境，并为你的合作者创建第一套远景和目标。 你不能假定与你合作的每一个人都知道当他们开始与你的项目上的其他人合作时对他们有什么期望。 因此，重要的是从一开始就为你的社区设定正确的期望。 即使您可能还没有计划要有一个(见更多细节： {cite:ps}`Sharan2020Apr`)。

(cl-new-community guide-checklist)=
## 您项目中规划协作的清单

下面的清单将有助于以有条理的方式审慎建立研究项目中的协作关系。

本文所列的做法源于参加一些成功的开放研究社区和牵头社区驱动项目如 [Carpentes](https://carpentries.org)的作者的经验，并且受到这些经验的限制。 [Mozilla 开放领袖](https://mozilla.github.io/open-leadership-training-series/), [开放生命科学](https://openlifesci.org/) 和 _“正在进行的方法_ 阅读本章时，请注意您可能需要对性质可能非常不同的项目进行调整(例如)。 资料来源不完全公开）。

(cl-new-community-guide-checklist-comms-platform)=
### 1. 选择一个通信平台

- 当领导一个开放项目时，使用协作和开放的平台，如 [GitHub](http://github.com/) 或 [GitLab](https://about.gitlab.com/)。
- 评价对任何实时通信的需要 比如，如果文本聊天系统，例如 [Slack](https://slack.com) 或 [Element/Matrix](https://element.io/get-started) 会有用，或者邮件列表是否足够(阅读详细信息 {ref}`通信频道 <cm-os-comms-channels>`)。
  - 考虑为您的社区成员单独建立一个内部通信平台，为您展示您在世界其他地方做了些什么。
- [Twitter 帐户](https://twitter.com) 或一个简单的网站 (例如在 [GitHub 页面](https://pages.github.com/)) 可以是有用的外部平台。
- 确保这些平台的选择是为了确保加入这些平台的障碍较小。

(cl-new-community guide-checklist-proj-summary)=
### 2. 提供一个项目摘要文件：

- 您的项目中的第一个文档应该是一个项目摘要文件，它在 GitHub 仓库中将是一个 [README.md文件](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/about-readmes)。
- 这将提供有关您的项目的基本信息，以便人们能够评估为什么您的项目会对他们有兴趣。
  - Here is [a template](https://github.com/PurpleBooth/a-good-readme-template) by the GitHub user [PurpleBooth](https://github.com/PurpleBooth).
- 在这个文件中，包括你的项目愿景和目标是什么，为什么项目是有用的，项目中可能的里程碑是什么。 贡献者或用户如何开始工作，他们可以联系寻求帮助。 以及目前在利害关系方、技能或范围方面缺少的内容。
- 您可以使用表情符号、GIF、视频或您的个人描述使您的项目可以重启。
  - 例如见 [Atom project](https://github.com/atom/atom)。

(cl-new-community-guide-checklist-code-conduct)=
### 3. 选择一个行为守则：

- 在您的项目中添加一个开源项目 [行为准则](https://opensourceconduct.com/)。
- 这份文件不应被用作象征，非常重要的是要有意识地作出努力。
- 当使用 GitHub 时，您可以在 GitHub 仓库中添加 “CODE_OF_CONDUCT.md” 文件。
- 列出预期和不可接受的行为，描述报告和执行过程。 明确定义范围，并使用包容性语音(见 [GitHub 指令在这里](https://help.github.com/en/github/building-a-strong-community/adding-a-code-of-conduct-to-your-project))。
- 每当你更新你的行为守则，邀请你的成员发表评论，以确保他们的关切得到解决。
  - 这可以在 [GitHub 问题](https://help.github.com/en/github/managing-your-work-on-github/about-issues)或 [拉取请求](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests) 上完成。

(cl-new-community contribut-guidelines)=
### 4. 提供贡献指南和交互路径：

- 深思熟虑的指导方针帮助人们决定他们可以选择哪种途径为你的项目做出贡献。 或者如果他们想要加入您的社区。
- 确保您的社区互动和不同的贡献途径是公开、包容和明确的。
  - 如果人们无法确定如何作出贡献，他们就会在没有帮助的情况下消失。
- 不同类型的贡献――编码项目不仅涉及代码，因此列出文件和其他管理技能。
- 您可以使用 {ref}`Persona 创建工具<pd-persona-creation>` 或 [Personas 和 Pathways 练习](https://mozillascience.github.io/working-open-workshop/personas_pathways/) 来集思广益，谁可以是您可能的社区成员。
- Here is a [template of community guideline](https://gist.github.com/PurpleBooth/b24679402957c63ec426) provided by the GitHub user [PurpleBooth](https://gist.github.com/PurpleBooth).
  - 请参阅 [_Ting Way_的提交文件](https://github.com/alan-turing-institute/the-turing-way/blob/main/CONTRIBUTING.md) 以供参考。

（cl-new-community）=
### 5. 创建基本管理/领导结构：

- 公开项目中的领导结构应旨在赋予他人权力，发展你们社区的机构和问责制。
- 您可以先列出您的项目中的不同任务，并邀请您的成员领导这些任务。
- 为您的社区成员做出的贡献提供适当的激励和肯定。
- 创建机会，让成员在项目中与您分享一些领导责任。
- 当邀请社区提出建议和意见时，提供你的社区可以从中发展的第一套计划。
- 请从 [开放源码指南](https://opensource.guide/leadership-and-governance/) 查看此文档以获取参考。

(cl-new-community)=
### 6. 随时随地提供联系人详细信息：

- 澄清不同成员的责任将使人们能够在任何查询的情况下与正确的人接触。
- 增加指定负责技术问题、领导问题的联系人的详细资料，或关于《行为守则》的任何报告。
- 如果需要立即解决一些问题，这将是特别有益的。

(cl-new-community approach)=
### 7. 识别失败的方法并停止主题：

- 因此，发展以反复的方式进行，定期重新审视你们的计划和想法，并让你们的成员参与这一进程。
- 检查是否存在应合并或更改的并行动态或多个方法。
- 失败，失败，信息失败 - 认识到什么不是为您的项目工作，并阻止它继续。
- 记录并分享您为什么失败以及如何改变您的项目或方法向前推进。
- 对于开放的研究社区，你可以在讨论失败和成功时保持透明度，但避免挑选或指责他人。
- 这种反复的方法来自于灵活的做法，见这些简短的文章供参考：
  - [灵活的概念失败的速度会被坏按，但是被误解。](https://www.information-age.com/agile-concept-fail-fast-gets-bad-press-misunderstood-123460434/)
  - [初学者关于Scrum and Agile Project Management的指南](https://blog.trello.com/beginners-guide-scrum-and-agile-project-management)

(cl-new-community)=
### 8. 您的项目文件和传播计划：

- 当新成员加入你的项目时，他们必须能够找到他们所需要的信息，而不必询问你。
- 着力制定文件计划，将通过分享关于过去决定或项目用途的决策过程的一般信息，使您摆脱许多与通信有关的挑战。
- 存储文档的一个很好的地方是 [wiki](https://en.wikipedia.org/wiki/Wiki) 或类似的平台(如GitHub)，在那里信息可以由您的社区成员以民主方式共享和更新。
- 要传播您项目的输出信息，您应该使用能够共享和引用的持久性标识符， 例如， [数字对象标识符 (DOI)](https://www.doi.org/)。
  - [Figshare](https://figshare.com/) and [Zenodo](http://zenodo.org) 是能够为您所有共享数据提供DOI的平台的好例子。

另外两点对于确保协作项目的有效性至关重要：解决技术问题和重视团队建设中多样性的重要性。

We have explained them in the next subchapters on {ref}`Addressing Technical Issues<cm-new-community-techissue>` and {ref}`Valuing Diversity and Differences<cl-new-community-differences>`.
