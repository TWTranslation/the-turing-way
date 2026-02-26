(rr-code-reuse-details)=

# 代码重用的详细建议

Make sure you (or somebody else) can reuse your code to do the same exact thing you did.
本节载有使您的软件更易重新使用的建议清单。
In this section contains a more in-depth explanation of each of these recommendations, with pointers to other relevant parts of this guide.

## 可重复的建议

At this stage, you might not even need to be able to open the code and read it, you just want to make sure you can re-run all the needed steps and obtain the same results you had.

### 1. 1. 请确保您可以找到它(在空格中)

Your code must be stored publicly and shared with collaborators. It has an unique persistent identifier, so that everyone can find it and access it.

**See also**: {ref}`rr-vcs`

### 2. 在 2. 请确保您可以找到它(在时间上)

Ideally the temporal evolution of the code is documented with version control. This allows you to retrieve a specific version from the past.

**See also**: {ref}`rr-vcs`

### 3. 3. 请确保您可以执行相同的操作序列

Often the human who set up the environment is also the one who wrote the code and the one who knows the exact order of steps needed to be able to re-run the code and reproduce the results.
This could surely be carefully documented for another human to re-do it.

**See also**: [CodeRefinery lesson on Reproducible Research](https://coderefinery.github.io/reproducible-research/)

### 4. 加密 4. 请确保您的环境和操作顺序是稳固的，不需要人来复制已经做过的工作

You do not want to depend on humans.
They tend to make errors even if they do not have bad intentions.
So you want your environment to be scripted and be re-created when needed and you want your sequence of operations to be run by a pipeline script that glues together all the sequence of steps.
操作序列的一个好副作用是，这常常可以作为步骤的文件记录。

**See also**: {ref}`rr-renv-options`

### 5. 5. 授权您的代码

Make sure you attach a license to your code and specify how you want to be cited when people reuse it.
Consider using a permissive license that allows for reuse.
Also, you should choose a license which is compatible with the licenses of libraries or packages your software depends on.

**See also**: {ref}`rr-licensing`, {ref}`rr-licensing-floss`, {ref}`rr-licensing-compatibility`

### 6. Make sure it is citable

Make sure to specify how you want to be cited when people reuse it.

**See also**: {ref}`cm-citable-cite-software`

### 7. 7. 包含必要的数据

If the software depends on any sort of data, the data should be available

**See also**: {ref}`rr-rdm-data`

## Re-runnable recommendations

Make sure you (or others) can reuse it to do the thing you did, but with different data/different parameters

### 1. 1. 移除硬代码位并使代码模块化

You do not want to have details specific to your data or analysis parameters hardcoded into the code.
If something can become a reusable function, separate it from the hardcoded parameters and turn it into something (re)usable on its own.
Make the modules pure: given the same input, a pure function always returns the same value.
不是在脚本中指定文件路径，而是考虑传递它们作为命令行参数，用于更易移植、更通用和可复用的脚本。

**See also**: [CodeRefinery Modular Code Development lesson](https://cicero.xyz/v3/remark/0.14.0/github.com/coderefinery/modular-code-development/master/talk.md/#1)

### 2. 在 2. 测试你制作的模块可以使用不同类型的输入数据或参数

You might not know yet how your code will be re-used in the future, but you can prevent how it should not be used if you can test which parameters are allowed.

**See also**: [CodeRefinery lesson on Automated testing](https://coderefinery.github.io/testing/motivation/)

### 3. 3. 将模块变成一个包/工具箱

Separate even more the specifics of your project with the bits that can be reused in other of your projects or by other people.

**See also**: {ref}`rr-renv-package`, [Packaging software](https://scicomp.aalto.fi/scicomp/packaging-software/), [Software packaging in Python](https://aaltoscicomp.github.io/python-for-scicomp/packaging/)

## 便携式建议

Portability refers to the ability to transfer software to a new environment.
This could refer to an identical (but not the same) machine, but it can also refer to a new hardware architecture, operating system and such.
Both of these are important for software reuse.

### 1. 1. 请确保您可以重新创建它所生活的环境

The environment is a fragile snapshot in time which silently accompanies the code.
It can include the human who operated the software, the steps the human did to prepare the data, the hardware, the OS, the libraries, external packages/toolboxes/dependencies.
All this can be carefully documented for another human to re-do all the same exact steps.

**See also**: {ref}`rr-renv`

## 可延长和可修改的建议

Make sure others can build on your code to extend it and improve it.

### 1. 2. 请确保你的代码可以被人类读

It often pays more to write code for other humans so they can read it (including your future self).
A cryptic oneliner with obscure variable names is not any faster or more efficient than splitting the one liner into multiple steps with readable variable names that make sense.
Furthermore, using coding conventions will help other readers.

**See also**: {ref}`rr-code-style-and-formatting`, {ref}`rr-code-quality-advantages`

### 2. 在 3. 请确保评论已存在

Write comments before writing the actual code. Imagine that somebody could just read the comments and skip all the code bits between comments and get a full picture of what is going on as if they read the whole code.
