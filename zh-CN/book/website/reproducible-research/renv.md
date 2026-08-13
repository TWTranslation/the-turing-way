(rr-renv)=

# Reproducible Environments

(rr-renv-prerequisites)=

## 先决条件

| Prerequisite                                                               | Importance | Notes                                                                            |
| -------------------------------------------------------------------------- | ---------- | -------------------------------------------------------------------------------- |
| {ref}`Experience with the command line<rr-overview-resources-commandline>` | Necessary  | Experience with downloading software via the command line is particularly useful |
| {ref}`Version Control<rr-vcs>`                                             | Helpful    | Experience using git and GitHub are helpful                                      |

**Recommended Skill Level**: _Intermediate-Advanced_

(rr-renv-summary)=

## 摘要

Every computer has its unique computational environment [{term}`def<Computational Environment>`] consisting of its operating system, installed software, versions of installed software packages, and other features that we will describe later.
Suppose a research project is carried out on one computer but transferred to a different computer.
There is no guarantee that the analysis will be able to run or generate the same results if the analysis is dependent on any of the considerations listed above.

In order for research to be reproducible, the computational environment that it was conducted in must be captured in such a way that others can replicate it.
This chapter describes a variety of methods for capturing computational environments and gives guidance on their strengths and weaknesses.

### 什么是计算环境？

In broad terms, a computational environment is the system where a program is run.
This includes features of hardware (such as the numbers of cores in any CPUs) and features of software (such as the operating system, programming languages, supporting packages, other pieces of installed software, along with their versions and configurations).

Software versions are often defined via [semantic versioning](https://semver.org).
In this system, three numbers - for example, 2.12.4 - are used to define each version of a piece of software.
When a change is made to the software, its version is incremented.
These three numbers follow the pattern _MAJOR.MINOR.PATCH_, and are incremented as follows:

- _MAJOR_: significant changes
- _MINOR_: to add functionality
- _PATCH_: for bug fixes

(rr-renv-useful)=

## Motivation and Background

Let us go through an example of why computational environments are important.
Say I have a very simple Python script:

```
a = 1
b = 5
print(a/b)
```

One divided by five is `0.2`, and this is what is printed if the script is run using Python 3.
However, if a slightly older version of Python, such as Python 2, is used, the result printed is `0`.
这是因为整数除法适用于Python 2中的 整数 但是(正常)除法适用于包括整数在内的所有类型的 Python 3。

Therefore this simple script returns _different_ answers depending on the computational environment in which it is run.
Using the wrong version of Python is easy to do, and demonstrates how a perfectly valid piece of code can give different results depending on its environment. 如果这些问题会影响到像这样的简单脚本， 想象有多少人可能出现在一个复杂的分析程序中，这个程序可能涉及数千行代码和几十个依赖包。
If such issues can impact a simple script like this, imagine how many could appear in a complex analysis procedure which may involve thousands of lines of code and dozens of dependent packages.

Researchers need to understand and capture the computational environments in which they are conducting their work, as it has the potential to impact three parties:

### 研究人员

Researchers' working environments evolve as they update software, install new software, and move to different computers.
If the project environment is not captured and the researchers need to return to their project after months or years (as is common in research), they will be unable to do so confidently.
他们将无法知道特定研究环境发生了什么变化，以及这些变化可能对其运行守则的能力产生什么影响。

### 协作者

Much research is now collaborative, and researching multiple different computational environments opens up a minefield of potential bugs.
试图解决这类问题往往是耗费时间和令人沮丧的，因为研究人员必须弄清计算环境之间的差异。
三、结论和建议的执行情况 更糟糕的是，有些缺陷可能仍然未被察觉，可能影响结果。

### 科学

Scholarly research has evolved significantly over the past decade, but the same cannot be said for the methods by which research processes are captured and disseminated.
The primary method for dissemination - the scholarly publication - is largely unchanged since the advent of the scientific journal in the 1660s.
This is no longer sufficient to verify, reproduce, and extend scientific results.
Despite the increasing recognition of the need to share all aspects of the research process, scholarly publications today are often disconnected from the underlying analysis and, crucially, the computational environment that produced the findings.
For research to be reproducible, researchers must publish and distribute the entire contained analysis, not just its results.
The analysis should be _mobile_.
Mobility of Compute is defined as the ability to define, create, and maintain a workflow locally while remaining confident that the workflow can be executed elsewhere.
In essence, mobility of compute means being able to contain the entire software stack, from data files up through the library stack, and reliably move it from system to system.
Any research that is limited to where it can be deployed is instantly limited in the extent that it can be reproduced.

This chapter will describe how to capture, preserve and share computational environments and code to ensure research is reproducible.
