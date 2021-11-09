(rr-rdm-dmp)=
# 数据管理计划

数据管理计划或产出管理计划 这是一个描述如何在您的项目中生成、存储、使用和共享您的研究输出的文档。 目的地管理方案是一份活的文件，可在整个研究项目中根据需要加以更新。

数据管理计划是你有效和安全地管理数据的路线图。 这可以防止数据丢失或违约。 今后规划如何连贯地管理您的数据可以稍后节省您的时间！ 它也可以使它更容易于 {ref}`分享<rr-rdm-sharing>` 您的数据与他人分享，因此使数据更多 {ref}`FAIR<rr-rdm-fair>`

## 数据管理计划应就以下五个主题提供资料：

### 1. 作用和责任
* 必须讨论研究项目生命周期期间由谁负责不同的任务。 界定谁负责管理数据和代码可以防止项目稍后出现混乱/沟通错误。
* 您应该检查DMP的建议和您的机构的要求和资金。 您的研究所的图书馆研究支助小组和您的脂肪的网站通常是寻找信息和帮助的好地方。 一些供资者需要您使用他们的DMP模板。 您可以检查您的脂肪或机构是否使用 [DMPline](https://dmponline.dcc.ac.uk/) 的DMPP。

### 2. 收集的数据和生成的文件/元数据的类型和大小
* 在这里，您可以列出您将用来收集、处理和提交数据的文件格式。 如果您想稍后分享您的研究输出 最好在没有特定软件程序许可的情况下公开使用标准文件格式。 为了确保这一点，您应该调整您的文件或尽早开始使用这些格式。
* 可以区分计划中分别描述的不同类型的数据：
    * Raw/主数据：从源收集到的数据 (总是保留一个只读的原始数据版本，这样你可以稍后再回来！)
    * 处理过的数据：为分析或可视化而修改过的数据版本
    * 最后数据：准备好在发布或数据存储库中共享的数据(详情请参阅 {ref}`共享和存档数据部分 <rr-rdm-sharing>`)。 一些数据仓库，如 [Zenodo](https://zenodo.org/), 允许数据集的版本控制，以便您可以更新您的最终数据集，如果您想要发布另一个版本。
* 所有这些类型的数据都必须通过使用元数据(见 {ref}`文档和元数据部分<rr-rdm-metadata>`)和适当的文档来放置在上下文，以便您将来能够使用。 和您团队中的任何人来解释数据。
* 了解大致大小（在MB、GB的范围内）很有帮助。 在这些不同阶段数据的 TB 或 PB，因为这将影响到您可用的存储解决方案(下一点讨论)。

### 3. 所使用的数据储存类型和备份已有的程序
* 检查 {ref}`数据存储和组织部分<rr-rdm-storage>` 存储和备份解决方案以及如何组织您的文件
* 检查您的项目是否有任何 **费用**
    * 首选存储解决方案(项目期间和之后, 见下文)
    * 人事费(如果您需要数据管理器来管理更敏感或大量的数据)
    * 软件许可证(例如电子实验室笔记本，见 {ref}`打开笔记本部分<rr-open-notebooks>`
    * 您可以使用此 [核对表来支付费用](https://www.ukdataservice.ac.uk/media/622368/costingtool.pdf) 作为指南
* 追踪谁对您的数据/代码作了具体更改将是很重要的，特别是对代码而言。 欲了解更多信息，请访问 {ref}`版本控制章节<rr-vcs>`
* 确定谁可以访问数据，谁可以访问数据。 至少还有一个人可以访问您的数据，例如您的主管/司长。 如果您管理个人/商业敏感数据，则只能访问那些必须处理数据的个人。

### 4. 项目结束后保留研究产出
* 考虑您的研究产出是否可以公开提供。 申请专利所需的个人数据或研究产出不能公开分享。 查看 {ref}`打开数据部分<rr-open-data>` 如果数据不能公开，您仍然必须保存几年。 取决于贵国的政策、机构和供资者。
* 您可以将数据的长期保存外包到数据存储库。 您可以找到更多信息，了解如何在 {ref}中选择一个合适的存储库`共享和存档数据<rr-rdm-sharing>` 部分
    * 选择仓库，例如使用 [FAIRsharing](https://fairsharing.org/) 或 [自然推荐的仓库列表](https://www.springernature.com/gp/authors/research-data-policy/repositories/12327124), 为您的研究输出提供一个持久的标识符，例如一个 DOI 。 仓库应该有一个保护政策，具体规定您的输出将被管理多长时间。 如果有疑问，请联系您的资料库研究数据支持团队了解更多数据存储库。

### 5. 他人重新使用您的研究输出
* 当您在资源库中提供输出时选择一个许可证(详情请参阅许可证子章节关于 {ref}`数据<rr-licensing-data>` 和 {ref}`软件<rr-licensing-software>`)。 通过选择许可，您告诉他人如何重新使用您的数据。 如果您不选择许可证，其他人将无法在没有请求您的权限的情况下重新使用您的数据。
* 您可以使用和介绍文本，例如README.txt 文件，将您的研究输出放入上下文中
    * 查看 {ref}`文档和元数据部分<rr-rdm-metadata>`

您可以使用此 [清单](https://ukdataservice.ac.uk/learning-hub/research-data-management/plan-to-share/checklist/) 查看您的数据管理计划是否涵盖了所有内容。

## 进一步阅读建议

- [DataOne 教育单元](https://www.dataone.org/education-modules)
- [联合王国数据服务数据管理信息](https://ukdataservice.ac.uk/learning-hub/research-data-management/)
- [TU Delft 研究数据管理门户网站](https://www.tudelft.nl/en/library/research-data-management)
- [Kristin Briney 数据管理视频 (3-7分钟)](https://www.youtube.com/watch?v=K5_ocBG5xek&list=PLEor4jq8YPgK_sgEiAcpHZLw-62mufXus)
- 布里尼，克里斯廷。 研究人员数据管理：组织、维护和分享你的数据以促进研究成功，Pelagic 出版，2015年。
- Briney, K.A., Coates, H. and Goben, A., 2020年研究数据管理基本做法。 研究设想和结果6：e56508。 [https://doi.org/10.3897/rio.6.e56508](https://doi.org/10.3897/rio.6.e56508)
- Hart EM, Barmby P, LeBauer D, Michonneau F, Mount S, Mulrooney P, et al. (2016) 10 Simple Rules for Digital Data Storage. PLoS Comput Biol 12(10): e1005097. [https://doi.org/10.1371/journal.pcbi.1005097](https://doi.org/10.1371/journal.pcbi.1005097)
