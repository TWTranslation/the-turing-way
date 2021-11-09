(rr-rdm-personal)=

## 个人数据管理
本节概述在处理个人数据时应考虑的事项。 欲了解更多实用的工具和实践，请参阅 {ref}`敏感数据项目<pd-sdp>` 章节。

### 个人资料

个人数据是关于 **个活人** 的信息，他们可以使用您正在处理的数据进行识别。 直接或间接（例如一个人的姓名、地址或其他独特的身份识别特征，例如他们的社会保障号码）。 [与死者有关的数据在大多数情况下不被视为GDRPR](https://gdpr.eu/eu-gdpr-personal-data/) 之下的个人数据。" 间接识别资料包括健康、经济、文化或社会特征。 特别是当这些识别特征可以用来识别某人时，必须注意适当地管理数据。 特别敏感的数据包括与某人有关的数据：
* 种族/族裔特性
* A. 政治意见
* 宗教/哲学观念
* 工会会员资格
* 遗传和生物测定数据
* 身心健康
* 性倾向：

### 个人数据政策
不同国家制定了各种政策来保护个人对其个人资料的权利。 例如，在澳大利亚，个人数据受 [《澳大利亚隐私法》](https://www.oaic.gov.au/privacy/the-privacy-act/) 管理。 在欧洲联盟， **GDRPR** (一般数据保护条例)适用于个人数据的处理，并可能要求你进行数据保护影响评估([DPIA](https://youtu.be/YRiCb3unz3g?t=988))。 处理意味着对某人的信息采取任何行动，包括收集、储存、分析、分享、删除和销毁。 为了确保您符合管理敏感数据的要求，请检查适用于您的研究的国家/机构政策。 关于共享临床试验数据的推荐做法，请参阅 {cite}`Smith2015参与者数据`


(rr-rdm-informed-consent)=

### 知情同意

对任何涉及人类参与者的研究项目来说，知情、自愿和公平同意参加一项研究非常重要。 正是通过这种同意过程，研究参与者才能理解参加一项具体研究对他们意味着什么。 然后每个人都可以选择是否使用同意书参加会议。 另见 {ref}`伦理研究指南<er>`。

请注意，知情同意表格被视为个人数据，因此应与其他个人数据一样谨慎处理。 不要存储您收集到的其余数据的同意表； 例如使用单独锁定的柜台或加密文件夹。

如果您不能使用书面同意表，请尝试录制口头同意书。

**同意书应包括：**

* a 参与者信息表和

* a 与会者签署的同意表。

**个参与者信息表** 用于向参与者通报该项研究。 资料应清晰易懂，并应包括以下内容：
* 该项目的意义。
* 他们的参与将涉及什么。
* 参与者所面临的任何风险以及尽量减少这些风险的保障措施。
* 关于数据安全和参与者保密的保证。
   * 提到谁可以获取数据
* 如何在研究中使用这些数据（发表文章、报告和介绍）。
* 拟议的在研究结束时将数据存档的计划以及今后可能对数据进行二级再利用。
    * 此处可以通过允许参与者选择公开分享哪类信息来解决这个问题
* 监督研究的组织的详细情况。
* 谁可以联系更多有关该研究的信息。

**同意表格** 用于验证研究参与者是否理解并同意参与研究。 2. 同意表格应至少涵盖下列各点：
* 参与者
    * 阅读并理解参与者信息表
    * 已经有机会提问了
    * 理解参与是自愿的
    * 他们的理解是，他们可随时退出研究，不说明理由，不受惩罚。
    * 了解如何管理、分享和归档数据（详见资料表）
       * 增加您的数据被重新使用的概率， 不承诺删除数据，而是要求同意保留和共享数据(见 {cite}`Meyer2018个人数据`)
* 参与者和研究者的签名以及签署日期

提前思考并计划您将如何：

* 收集、存储和管理数据(见 {ref}`数据存储和组织<rr-rdm-storage>`)

* 控制访问权限

* 如果可能，准备项目结束时存档/共享数据(见 {ref}`共享和存档数据<rr-rdm-sharing>`)


(rr-rdm-privacy)=

There are a number of strategies that you can adopt to **safeguard the privacy** of your research subjects:

**1. 最大限度地减少数据**

* 如果不需要个人信息，请不要收集。
* 定期审查您是否保留不必要的识别信息。
* 当识别信息不再需要时，安全移除、删除或销毁它。

**2. 数据保留限制**
* 决定在删除直接标识符、应用更复杂的地名化技术或完全删除数据之前保留可识别数据的时间。
* 当删除敏感数据时，您需要意识到删除文件的标准方法(例如将文件移动到回收站和清空文件) 并不安全。 这些已删除的文件可能已恢复。 使用 BleachBit 等软件安全地删除数据。

**3. 安全数据传输**
* 在决定传输个人数据之前，您应该考虑是否有必要传输可识别的数据。 例如，数据是否可以去除识别或匿名？
* 如果数据不能被无法识别，那么您必须确保您有权传输个人数据。 而且有适当的保障措施来保护过境之前、过境期间和过境之后的数据。
* 您的大学或研究所往往会提供安全文件传输的解决方案。 联系您的研究数据、隐私或IT支持团队以获取指导。

**4. 加密**
* 加密提供保护，确保只有拥有相关加密密钥(或密码)的人才能访问内容。
    * 在磁盘上保护：Windows的Bitlocker，MacOS 的 FileVault
    * “容器”级别上的保护(包含多个文件的文件夹)：Veracrypt (或MacOS存档)
    * 可移植存储: Bitlocker
    * 文件级别/交换信息：
      * 简单方法：使用 7zip，带密码包
      * 更复杂的设置：使用 PGP 配刀(也可以用于安全发送电子邮件)
    * 请参阅 [Ghent大学加密研究人员手册](https://osf.io/nx8km/) 了解更多细节和分步指南

**5. 访问权限**
* 共享文件夹权限的管理。
* 密码保护。


**6. Anonymisation**

Anonymisation 是一种去除数据集中的识别信息的过程。 它主要用于在不泄露数据所含机密信息的情况下分享或公布数据，同时限制信息的流失。
* 在可能的情况下，直接识别符（如姓名、地址、地址） 一旦不再需要识别资料，就应删除电话号码和帐号。 您可以删除数据或替换为假名。 对于定性数据，您应在记录面谈时替换或概括识别特性。
* 可通过链接文件重新确定身份的未识别数据（例如，将数据主体与可识别的个人联系起来的信息）被称为假名数据。 注：在这种情况下，链接文件应加密并安全地储存，与去标明的研究数据分开。
  * 使用间接识别符号(例如年龄)的组合，仍然可以用假名或去名的数据来识别个人。 教育、就业、地理区域和医疗条件）。 此外，含有小细胞数的数据和产出可能会有潜在的消毒作用。 尤其是从少量样品中提取的样品或包括价值极高或特性相对稀少的样品。
   * 因此，当打算分享可能可识别的数据或数据产生的产出时， 您可能需要考虑更先进的匿名技术，例如统计披露控制(SDC，参见 [本手册](https://securedatagroup.org/sdc-handbook/) 了解更多信息)。
* 欲了解更多有关匿名的信息，您可以观看 [这次由Enrico Glerean](https://www.youtube.com/watch?v=ILXeA4fx3cI) 举办的研讨会。

**7. 共享敏感数据**

如果您打算分享或发布您的数据，您必须确保您的数据是适当和安全的共享。 例如，你应考虑数据是否能够适当地使用地名， 以及是否仍然有效地使用偏离地名的数据(另见 {ref}`数据共享障碍<rr-rdm-sharing>`开放的研究章节)。 在应用方法去除识别和匿名敏感数据之后，仍然可能存在重新识别的风险(见 {cite}`Meyer2018个人数据`)。

另一项安全措施或替代脱离接触的措施正在实施出入控制，以确保数据得到适当和安全的分享。 This may involve finding a data repository which can provide suitable access controls (see [here](https://osf.io/tvyxz/wiki/8.%20Approved%20Protected%20Access%20Repositories/) for a list of protected Access Repositories). 这些仓库可以提供对项目元数据的访问，这些元数据允许他人查找， {ref}`引述数据<cm-citable-cite>` 限制访问/条件访问还为潜在的重新用户提供他们访问数据所需的信息，使数据 {ref}`FAIR <rr-rdm-fair>` 例如，获取数据的条件可能要求潜在数据重新使用者：
  * 登记和/或提供联系人详细信息，以确保重新使用者真正了解自己的责任
  * 提供关于如何使用数据的信息
  * 同意条件（数据安全、隐私、同意书中包含的限制）

**资源**
* [保护敏感数据课程](https://mantra.edina.ac.uk/protectionrightsandaccess) 由 [MANTRA](https://mantra.edina.ac.uk)
* {cite}`Meyer2018personaldata`.
* [由 [Zosia Beckles 介绍](https://youtu.be/J9kWkzK83i4)](https://www.youtube.com/watch?v=J9kWkzK83i4&list=PLyeHH3bEQqIbgbw75gheV27nFF2ctPPpR&index=1), [Michele Voznick](https://youtu.be/w5v5d6r6irs) and [Tessa Darbyshire](https://youtu.be/jEFu1ykVI_I) on Responsible Data Management: Legal & Ethical Aspects as part of the [Fail it session](https://www.youtube.com/c/AI4ScientificDiscovery).
* [Presentation](https://www.youtube.com/watch?v=H2mv6q4WwOU&) by Rob Gommans on GDPR and the Processing of (Identifiable) Image, Audio, and Video Data for Scientific Research Purposes.
* [Presentation](https://youtu.be/_3bufely0c0) by Stephan Heunis on Brain research data and personal data privacy: practical tips to share and protect.
* [Presentation](https://youtu.be/eAKhI0qde2w?t=1104) by Walter Scholger on the GDPR with resources such as informed consent templates (18:30 - 38:50).
* [介绍](https://www.youtube.com/watch?v=PSe2V1KTQ8w&) 如何处理艾尔托大学Enrico Glerean和PaIndependent ivi Lindstrom的个人数据。 查看 [这里](https://www.aalto.fi/en/services/rdm-training) 查看整个课程。
* [由Rosalie Salameh 在GDRPR上演示](https://www.youtube.com/watch?v=J457qBdQ3xo)
* [通过设计展示](https://vimeo.com/362161972) 和 [文章](https://www.smashingmagazine.com/2017/07/privacy-by-design-framework/) **的隐私**
* [关于Hina Zahid分享数据中的伦理和法律问题的介绍](https://www.youtube.com/watch?v=2WebuDlzEIw&list=PLG87Imnep1Sln3F69_kBROUrIbT5iderf&index=2)
* [由Hanne Elsen在研究生命周期中幻灯片](https://osf.io/5xhya/) 关于隐私和GDPR 。
* [关于数据共享数据去鉴别程序的讲习班材料](https://osf.io/em3da/)。
