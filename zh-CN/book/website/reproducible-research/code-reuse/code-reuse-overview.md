(rr-code-reuse-reuse-recommendation)=

# 代码重复使用概览

This section contains a checklist of recommendations for making your software more reusable.
The {ref}`rr-code-reuse-details` section contains a more in-depth explanation of each of these recommendations.
You can follow the recommendations that are more suitable for your type of software and skip the ones which are not relevant in your case.

## Repeatable Recommendations

1. 请确保您可以找到它(在空间中。 意味着：能够定位仓库/项目)
2. 请确保您可以找到它(时间；含义：能够找到某个特定版本)
3. 3. 请确保您可以执行相同的操作序列
4. 4. 请确保您的环境和操作顺序是稳固的，不需要人来复制已经做过的工作
5. 5. 授权您的代码
   - with a license that allows for reuse;
   - with a license compatible with the dependencies’ licenses
6. Make sure it is citable
7. 7. 包含必要的数据
8. Write useful documentation\*

## 可重新运行的建议

1. 移除硬代码位(例如只存在于运行管道的硬盘上的路径)，并使代码模块
2. 2. 测试你制作的模块可以使用不同类型的输入数据或参数
3. 3. 将模块变成一个包/工具箱
4. Write useful documentation\*

## Portable Recommendations

1. 1. 请确保您可以重新创建它所生活的环境
2. Write useful documentation\*

## 可扩展的建议

1. Write useful documentation\*

## 可修改的建议

1. 1. 请确保你的代码可以被人类读
2. 1. 请确保评论已存在
3. Write useful documentation\*

The observant reader might will notice that `Write useful documentation` is mentioned for every level of reuse.
This is because different levels of documentation are required for different levels of reuse.

## 文档

_Different documentation requirements for different levels of reuse_

Writing useful documentation is an important requirement for all levels of reuse.
However, for the different levels of reuse, there are different documentation requirements:

The documentation:

- explains usage, specifying:
  - what the software does; (required for repeatable)
  - how it can be used; (required for repeatable)
  - what options/parameters are available. (required for repeatable)
- contains examples of how to run it. (required for repeatable)
- has installation instructions, including good descriptions of:
  - the hardware it depends on (for example GPUs); (required for portable)
  - the operating system the software has been tested on; (required for portable)
  - software requirements (such as libraries and shell settings). (required for portable)
