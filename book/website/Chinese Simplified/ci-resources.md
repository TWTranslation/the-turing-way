(rr-ci-resources)=
# 清单和资源

## Checklist

- 有一个你至少与另外一个人合作的项目
- 将项目放入GitHub
- 让项目成员定期将其工作提交到这个中央仓库
- 该项目至少应该有一些测试
- 写入 `ci.yml` 文件，其中：
  - 必须在 `.github/workflow` 内
  - Define the name of the GitHub event that triggers the workflow using `on` key on the YMAL.
  - 定义用于运行任务的特定主机机器使用 `任务` 和 `运行`.
  - 包括要安装任何需要先运行项目的依赖关系的代码，然后安装步骤
  - 包含一个运行项目测试的脚本
- 将 `ci.yml` 文件提交给项目的 GitHub 仓库
- 每次推送新的提交时，Travis将运行测试并返回结果。 如果这些报告导致测试/测试失败，请尽快找到并解决问题

## 下一步学习什么

如果您尚未阅读过测试章，建议您这样做，以便更多地了解不同类型的测试及其好处，以便最大限度地利用CI。

## 定义/术语表

**持续整合：** 定期将项目成员的工作合并为集中版本。 又称CI。 CI 软件通常在一个项目的综合版本上进行测试，以查明集成引入的冲突和漏洞。

**构建：** 任务组。 例如，建筑物可能有两项工作，每项工作都测试不同版本的编程语言项目。 当它的所有任务完成后，建筑就会完成。

**计算环境：** 一个项目运行的环境，包括操作系统、安装在它上的软件以及这两个版本的版本。

**GitHub:** 一个广泛使用的版本控制平台。

**GitHub 操作：** 它是在 GitHub reposit上运行的 CI/CD 服务。

**Workflow** 他们是 YAML 文件存储在 _.github/workflow_ 仓库目录。

**动作** 这是一个您可以导入和使用在您 **工作流** 中的包裹。 GitHub 提供一个 **[动作市场](https://github.com/marketplace?type=actions)** 用于在工作流中找到动作。

**作业** 这是一个虚拟机器，运行一系列 **步骤**。 **作业** 默认情况下并行，但 **步骤** 默认情况下是顺序的。

## 实用教程

- 为了让您使用 GitHub 动作，Padok 提供 [个手动教程](https://github.com/padok-team/github-actions-tutorial) 来构建一个自动测试的工作流。 建造、释放和部署一个简单的微型服务。
- GitHub 学习实验室也为 [实用项目提供了互动指南，学习GitHub 操作](https://lab.github.com/githubtraining/github-actions:-continuous-integration)。

## 参考

- [什么是 CI](https://github.com/travis-ci/docs-travis-ci-com/blob/master/user/for-beginners.md) **MIT**
- [SSI 博客](https://software.ac.uk/using-continuous-integration-build-and-test-your-software?_ga=2.231776223.1391442519.1547641475-1644026160.1541158284) **知识共享属性分配，非商业2.5许可**
- [持续整合、持续部署和连续投递之间的差异](https://www.digitalocean.com/community/tutorials/an-introduction-to-continuous-integration-delivery-and-deployment) **知识共享署名-非商业用途-相同方式4.0国际许可。**
- [CI 与 python](https://docs.python-guide.org/scenarios/ci/) **Attributtion-NonCommercial-ShareAlis 3.0 取消**
- [开始使用 GitHub 行动：概念和教程](https://www.padok.fr/en/blog/github-actions)
- [使用 GitHub 操作的 CI/CD 教程](https://dev.to/michaelcurrin/intro-tutorial-to-ci-cd-with-github-actions-2ba8)
- [创建停靠容器动作](https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action)

### 使用的材料：Github 的行动是什么？

- [GitHub 行动作弊模式表](https://resources.github.com/whitepapers/GitHub-Actions-Cheat-sheet/)
- [GitHub 文档：操作 - 核心概念](https://docs.github.com/en/actions/getting-started-with-github-actions/core-concepts-for-github-actions)
- [GitHub 文档：动作 - 配置和管理 Workflow](https://docs.github.com/en/actions/configuring-and-managing-workflows)

## 鸣谢

感谢谢菲尔德大学RSE小组的David Jones进行了有益的讨论。
