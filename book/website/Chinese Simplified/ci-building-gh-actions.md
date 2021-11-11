(rr-ci-building-gh-actions)=
# 构建一个 Github 操作块

如上文所述，工作流文件使用 YAML 语法, 它有 `.yml` 或 `.yaml` 文件扩展名。 如果您是新的 YAML 并想了解更多信息， {ref}`查看我们有关YMA<rr-renv-yaml>` 的章节。 此工作流文件必须存储在您的资源库的 `.github/workflow` 目录中。

每个工作流都在一个单独的 YAML 定义中。 我们将使用 Hello World 示例介绍工作流程的基础块：

```
名称：
    Hello World package
on:
  push:
    branches: [ main ]
Jobs:
  build:
    runs-on: ubuntu-later
    步骤:
      - 使用: actions/checkout@v2
```

**1. 名称**

这是工作流程的名称并且是可选的。 GitHub 将使用此名称显示在仓库动作页面上。
```
名字：
    Hello World 软件包
```

**2. 在**

</code> 字段上的 `告诉GHA 何时运行。 例如，我们可以随时在 <code>推送` 或 `拉` 在 `主` 分支上运行工作流。
```
于：
  推送：
    分支：[ main ]
  pull_request：
    分支：[ main ]
```
有许多事件可以用来触发工作流。 您可以在这里探索他们 [](https://docs.github.com/en/free-pro-team@latest/actions/reference/workflow-syntax-for-github-actions)。

**3. 任务和步骤**

这个模块定义了行动流程的核心组件。 工作流是由 `个任务` 做的。 每个作业还需要一个特定的主机来运行， `运行：` 字段是我们指定的。 模板工作流程正在运行最新版本的 Ubuntu, 一个 Linux 操作系统的 `构建` 作业。

```
任务:
  构建:
  运行: ubuntu-最新的
```

我们还可以将 `build` 和 `测试` 的函数分隔为一个以上的工作流程，当我们的工作流程触发时会运行。 由 `步进` 做了工作。 这些允许您定义每个作业中要运行的内容。 有三种方法来界定步骤。

- 使用 `使用`
- 使用 `运行`
- 使用 `名称`

```

作业:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
  test:
    steps:
    - name: npm install
      run: |
        npm install
        npm test
```

最基本的操作是 `actions/checkout@v2`。 这使用一个 GitHub 提供的操作 [`签出`](https://github.com/actions/checkout) 以允许工作流访问资源库的内容。 作业的所有步骤依次在与作业相关的运行器上运行。 默认情况下，如果一个步骤失败，任务的后续步骤会被跳过。 每个运行的关键词代表一个新流程和运行器环境中的外壳。 当您提供多行命令时，每一行都会运行在同一外壳中。

提供所有现有备选办法的全面指南超出了本概述的范围。 我们促请您在上一节中研究 [官方参考文档](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions) 和/或CI 配置开源项目引用。
