(rr-reviewing-motives)=
# 重要性和个人福利

*这将如何帮助您/为什么这是有用的*

与 [测试](#Testing)相同， 代码审查的一个关键目标是在更改进入主代码基础之前删除从更改到软件项目中的错误和不良做法。 然而，它也给项目带来其他一些直接和间接的好处。 下文将讨论这些问题。

代码审查是提高软件质量的有效方法。 McConnell (2004年)认为，单元测试发现了大约25%的缺陷，功能 测试35%，整合测试45%，代码检查55-60%。 虽然 意味着所有这些方法本身都不够好。 而且应该将它们 合并，显然代码审查是这方面的一个重要工具。

## 目录

- [抓取错误和基本错误](#catching-bugs-and-elementary-errors)
- [测试的改进](#improvements-to-testing)
- [文件](#documentation)
- [可读性](#readability)
- [样式执行](#style-enforcement)
- [群组知识和内聚力](#group-knowledge-and-cohesion)

(rr-reviewing-motive-bugs)=
## 抓取错误和基本错误

审查过程的一个简单目标是在拟议的更改中发现bug和基本错误，然后将其变成中枢代码。 这样，代码审核将与测试共享。 然而，强有力的测试方案应减少代码审查对查明这类直接错误的重要性， 因为测试应该在代码进入审查阶段之前捕获它们。 因此，原则上说，这种代码审查功能应限于文件打字等微不足道的修改。 但实际上，代码审查确实是防止各种错误和错误的第二道重要防线。

(rr-reviewing-motive-improvements)=
## 测试的改进

正如上文所指出的，在拟议的代码更改中，审查应该而且经常会捕获实际的bug。 这当然是一个迹象，表明拟议的改变从一开始就没有得到充分的考验。 守则审查的一个主要目的是强调守则中现有或新开发的测试程序不足的地方。 这样做， 代码审查有助于确保代码基础的未来健康，提供关于需要何种测试的第二个视角――不仅仅是现在。 但也是在假设情况下，随着守则的演变，今后可能会出现这种情况。

(rr-reviewing-motion-documentation)=
## 文件

<!--SiccarPoint notes a whole section on documentation is justified in the book!-->
彻底文档<!--reference, 一旦存在章节--->是可再生产性和更普遍的可持续软件的一个关键组成部分。 对代码的审查提供了另一种眼睛，以考虑所提供的文件以及拟议的代码修改是否适合目的。 这是双重宝贵的。 因为审查人员从开发进程之外寻找，对于新文件是否为首次进入代码的用户提供足够的信息，可能比编程员有更明确的看法。

这种对文件的反馈同样适用于用户面对的文件和内联评论。

(rr-reviewing-motivity-readability)=
## 可读性

关于文档，代码审查也有助于确保代码可以读取和易懂。 第二对眼睛可能有助于发现守则可能难以遵循的地区。 您的代码越是可读，其他开发者就更容易为自己的目的复制您的代码。

(rr-reviewing-motion-enforcement)=
## 样式执行

许多项目强制执行特定的 {ref}`代码样式准则<rr-code-quality>`, 是广泛采用的标准 (例如，) [PEP8](https://www.python.org/dev/peps/pep-0008/), [Google C++ 风格指南](https://google.github.io/styleguide/cppguide.html)) 或更多针对具体项目的公约。 [自动化服务](../../code_quality/code_quality#online-services-providing-software-quality-checks) 提供了一种方便的方式来执行编码风格并开始讨论代码质量。 守则审查提供了一个机会，以确保所有拟议的修改都符合项目的最低要求。

(rr-reviewing-motion-knowledge)=
## 群组知识和内聚力

## 样式执行

许多项目强制执行某些 [代码样式指南](../../code_quality/code_quality#coding-style)，无论它们是广泛采用的标准 (例如，) [PEP8](https://www.python.org/dev/peps/pep-0008/), [Google C++ 风格指南](https://google.github.io/styleguide/cppguide.html)或更多针对具体项目的公约。 [自动化服务](../../code_quality/code_quality#online-services-providing-software-quality-checks) 提供了一种方便的方式来执行编码风格并开始讨论代码质量。 守则审查提供了一个机会，以确保所有拟议的修改都符合项目的最低标准。


## 知识与聚合

守则审查做法不仅仅是在拟议修改时维护项目干线守则的健康，还提供了很大的优势。 同行间的审查促成了一个团队的所有贡献成员之间网上双向信息交流。 这提供了有效的、有组织的最佳做法转让。

本着正确精神进行的审查(尤其见 [这里](#Be_nice))也有助于使团队成员聚集在一起并建立小组凝聚力的重要目的。 尤其是，由核心小组成员对项目新来者的工作进行良好审查，有助于使这些新来者感到欢迎和受到重视， 并鼓励他们继续参与。
