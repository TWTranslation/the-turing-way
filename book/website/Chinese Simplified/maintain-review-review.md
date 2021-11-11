(cl-defin-review-review)=
# 审查捐款

## 审查进程
在一个项目或codebase中，必须先审查一组更改，然后将其合并到主存储库。 如果该项目由许多人共同拥有， 由 [代码审核作业](https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/managing-code-review-assignment-for-your-team) 处理的审核过程，团队中的某些成员被分配到此任务。 基于其他成员在项目相同或不同文件上的类似活动，GitHub 常常会自动建议审核者。 然而，项目管理人员常常要求其他维护者根据其是否具备、意愿或专门知识，审查某项吸引请求。

The assigned or willing maintainers can review the pull request by checking the [changes locally](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/checking-out-pull-requests-locally) or on the online repository and suggest changes required. 审查进程完成后，可不作任何改动核准审查结果。 或 [需要更改](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/approving-a-pull-request-with-required-reviews) 或 [根据提交的质量拒绝](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/dismissing-a-pull-request-review)。

## 审查程序和维护准则
关于GitHub 的项目合作，重要的是遵循一套明确的准则，为维持某一特定项目提供最佳做法。 维护过程可以在下列帮助下顺利执行：

1. *记录进程*: 关于贡献者如何开始项目以及他们如何做出有意义的贡献的全面文件是在保持开放源码项目的同时需要采取的第一步。 这些细节应能说明项目是什么，为什么首先是创立的。 谁负责项目的维持、社区文化的表面，以及谁能够向新的捐助方提供指导。

这三份文件是编制这些文件的良好开端：
- 一个项目应该包含一个 {ref}`README。 d 文件<pd-project-repo-readme>` 提供重要的细节和资源链接，必须知道它们才能成为项目成员。
- 每个项目都必须提供一份行为守则(见 _《诱惑方式_ [行为守则](https://github.com/alan-turing-institute/the-turing-way/blob/main/CODE_OF_CONDUCT.md))，以确定社区成员在协作时有一个欢迎和安全的环境。
- 精心编写的报告指南(见 _Ting Way_ [Contribuing fil](https://github.com/alan-turing-institute/the-turing-way/blob/main/CONTRIBUTING.md)) 极为重要，因为在任何项目上进行远程合作是为了确保贡献者和维护者之间的明确沟通。

2. *有效的交流*: 关于任何贡献的对话可以公开让他人参加讨论，同时处理小的功能和想法。 这将涉及更多的人，并确保开放源码工作的透明度。 重要的是要就这个问题撰写消息和评论并拉取请求。 在进行审查以帮助贡献者了解要求的同时，以明确和容易理解的方式使他们能够更好地致力于他们的拉请求。 如有必要，最好在信息中提及重要的链接。

3. *引导报告*: 维护者的角色是尽可能轻松地使贡献成为一个过程。 对许多新的贡献者来说，开放源码的贡献可能是恐吓性的。 通过友好和令人鼓舞的对话来指导人们，可以使新贡献者的登临过程舒适。 最好是创造描述性的问题来解决。 为了作出重要贡献，最好在解决问题之前先提出不同的问题，然后再提出合并请求。 标记问题和拉取请求将有助于让更多的贡献者参与各种具有不同技能要求的任务。 将看起来容易的问题标记为 ["好的第一个问题"](https://help.github.com/en/github/building-a-strong-community/encouraging-helpful-contributions-to-your-project-with-labels) 将有助于新的贡献者完成简单的任务，例如代码和内容的小改动。 bug 和 typo 修复和小设计问题。

4. *保持合并请求*: 维护项目上已存在的合并请求需要给它们贴上标签。 审查它们，改变它们的阶段，合并和结清。 可以通过在适当的时间进行正确的审查来维持合并请求。 在 GitHub 上，在审查时有各种方式提供反馈，例如作为对拉取请求的评论提供反馈。 建议在审查时作出更改， 直接提议对贡献者分支的更改，或讨论拉取请求如何改进贡献(详情请参阅 [GitHub 帖子](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-request-reviews))。 维护者可以交流一个时间标，审查并合并一个有效项目的合并请求，例如一个星期。 标签可以随着时间和阶段的推移而更改，以正确反映开发中某个特性的状态。

5. *承认他人的工作并尊重时间*: 欢迎为某个项目作出贡献的人是使一个合作项目取得成功的关键之一。 每当做出了有意义的贡献并且合并了一个PR 时，维护者应该承认它。 一个叫做“谢谢你”的小信息常常就够了，特别是对于开源空间中的新人。 将贡献者添加到贡献者名单中，这始终是一个很好的姿态，给予开放源码的贡献者优惠。 做到这一点的最好办法是建立一个专门的档案，提到所有捐助者在项目中的贡献。 如果项目贡献者设在世界不同地区，维护者应尊重他们的时间和相应的工作安排。 如果某人因为日程安排而无法讨论意见，维护者和贡献者应尽量给予合作。 积极要求非常忙碌的捐助国休息，稍后再回来，或让社区其他方面参与进来，跟踪它们正在作出的贡献，这也是一种良好做法。
