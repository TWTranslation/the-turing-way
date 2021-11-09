(rr-ci-options)=
# 什么是连续整合？

持续融合是将个人对项目的修改纳入主体的做法。 经常共享版本(通常每天多次)。 CI 软件通常也用于识别因更改而引入的任何冲突和bug。 这样就能及早找到和固定这些武器，最大限度地减少为此所需的努力。 运行测试也经常使人类免于需要手工操作。 尽早让用户了解故障（如果该项目是一个研究项目），并不会浪费可能需要放弃的大量时间， 如果测试不经常进行，结果使用错误代码生成，情况就可能如此。

本章要求对版本控制有强烈的了解。 你们需要回顾的核心概念是：

- 如何能够利用它来使在一个单一项目上协作的人通过合并来合并他们的工作
- 合并的冲突是什么以及它们可能造成的困难
- GitHub 是什么以及如何使用

简单地说，如果一组研究人员正在就一个项目进行合作，他们利用版本控制来跟踪他们在一段时间内的变化是一种良好做法。 并定期合并他们的工作。 如果他们不定期地将他们的工作结合起来(一体化)，那么当他们这样做时，很可能很难做到，因为不同的人可能已经发生了相互矛盾的变化。

持续整合是一种软件开发做法，小组成员经常将其工作整合在一起， 而不是孤立地工作，并在很大程度上每隔很短的间隔时间将工作合并起来。 在慈善社中，每个人通常至少每天都能融入社会。 每个集成都由自动构建(通常包括测试)核查，以尽快发现集成错误。

这样做的目的是尽早考虑合并，尽量减少一体化的成本。 研究人员可以及早发现新的和现有的代码之间的冲突，而这些冲突仍然比较容易调和。 一旦冲突得到解决，就能够有把握地继续工作，使新的守则符合现有代码的要求。 目标是通过以较小的递增方式开发和测试更健康的软件。 许多小组认为，这种做法大大减少了融合问题，使小组能够更快地发展。

集成代码往往本身并不能保证新代码或功能的质量。 这使我们谈到了社区倡议的第二个方面。 当开发者将代码合并到主仓库时，自动化进程构建项目的工作版本。 其后，测试套装将根据新的构建运行，以检查是否引入了任何bug。 如果建筑物或试验阶段失败，将提醒小组，以便它们能够解决这个问题。 修复你几分钟前写过的东西中的错误比你昨天(或上星期)写的东西更容易。 或上个月)。

通过确保你的代码定期构建和测试，CI 可以帮助研究人员展示他们的代码做它声称做的事情。 而且它这样做是正确的。 通常情况下，连续集成服务器也允许在特定时间运行建筑和测试作业。 所以 [cron job](https://en.wikipedia.org/wiki/Cron), 夜间构建和测试可以完成, 建造和测试任务也可以在需要时运行。


## CI 服务提供商有什么选择？

有许多CI服务提供商，如GitHub Actions and Travis CI。 每项服务都有其自身的优势和劣势。 在本节中，我们提供一个简短的概览，提供链接到示例，以帮助您选择最适合您的概述。

 - [GitHub 操作](https://help.github.com/en/actions), 一些示例查看 [语言和框架指南](https://help.github.com/en/actions/language-and-framework-guides) 和 [本教程](https://github.com/NLESC-JCER/ci_for_science#-github-actions)。
 - [Circle CI](https://circleci.com/), 一些例子见 [这里](https://circleci.com/docs/2.0/project-walkthrough/) 和 [这里](https://circleci.com/docs/2.0/hello-world/).
 - [GitLab CI](https://docs.gitlab.com/ee/ci/), 对于一些示例 [GitLab CI 示例](https://docs.gitlab.com/ee/ci/examples/README.html) 和 [本教程](https://github.com/NLESC-JCER/ci_for_science#-gitlab-ci).
 - [Azure Pelines](https://azure.microsoft.com/en-us/services/devops/pipelines/), 一些例子见 [生态系统支持页面](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/?view=azure-devops) 和 [本教程](https://github.com/trallard/ci-research)。
 - [Jenkins](https://www.jenkins.io/), 一些示例见 [本教程](https://www.jenkins.io/doc/tutorials/)
 - [Travis CI](https://travis-ci.com/), 对于一些示例 [Travis教程](https://docs.travis-ci.com/user/tutorial/).

更广泛的 CI 服务提供商列表可以在这里找到 [](https://www.software.ac.uk/resources/guides/hosted-continuous-integration)。
