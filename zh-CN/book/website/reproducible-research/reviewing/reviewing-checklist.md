(rr-checklist-for-code-review)=

# 代码评审流程的清单

This section presents some checklists for both the coder and the reviewer, as part of a formal review process.
The reviewer checklists are split into two categories: one for the whole program, and one for individual files or proposed changes.

The lists are created with a focus on good software engineering practice and are intended to be a source of inspiration.
When assessing the checklists, it is recommended to consider to what extent the item mentioned is implemented.
Some items on the lists may not apply to your project or programming language, in which case they should be disregarded.

In all cases, the goal is to use your programming experience to figure out how to make the code better.

## 对开发者

- Does the new code meet the required standards of the project?
  The standards are typically written under `contributing guidelines` by the project you are contributing to.
- Is there [documentation](#rr-checklist-for-code-review:documentation) that meets the required standards of the project?
- Are you following any declared {ref}`style guide<rr-code-quality>` for the project?
- Are there new [tests](#rr-checklist-for-code-review:tests) for the new material, based on the required standards of the project?
  - Do these tests pass locally?
  - Are the tests in the rest of the code base still passing locally?
- Create the pull request.
- Many {ref}`continuous integration (CI)<rr-ci>` systems will check if the tests in the main project pass automatically once you create a pull request.
  If the repository is using a CI, make sure all builds and tests complete.
  Consult the CI reports to see if your code is causing the tests in the main project to fail.
- If necessary, now formally request a review.

## 对评审者

- Check the required standards of the project. The standards are typically written under
  `contributing guidelines` by the project you are contributing to.
- Check the code meets basic project {ref}`style guide<rr-code-quality>`, if this is not automatically checked by {ref}`continuous integration (CI)<rr-ci>`.
- Do the [tests](#rr-checklist-for-code-review:tests) and [documentation](#rr-checklist-for-code-review:documentation) conform to the standards?
- Is all the code easily understood? Depending on the language, files may contain interfaces, classes or other type definitions, and functions (see [Architecture](#rr-checklist-for-code-review:architecture)).
  The essential architectural concepts can be reviewed as follows:
  - Check the [interfaces](#rr-checklist-for-code-review:interfaces) lists.
  - Check the [classes and types](#rr-checklist-for-code-review:classes-and-types) lists.
  - Check the [function/method declarations](#functionmethod-declarations) lists.
  - Check the [function/method definitions](#functionmethod-definitions) lists.
- Do the [tests](#rr-checklist-for-code-review:tests) actually ensure the code is robust in its intended use?
  - Are there any bugs or other defects?
- Are [security](#rr-checklist-for-code-review:security) issues handled correctly?
  - Check the [security of new code](#rr-checklist-for-code-review:security-new-code).
- Does the new code meet the [legal requirements](#rr-checklist-for-code-review:legal)?

## 程序级清单

下面是一个在查看整个程序时要考虑的事项列表。 而不是在查看单个文件或更改时。

(rr-checklist-for-code-review:documentation)=

### 文档

Documentation is a prerequisite for using, developing, and reviewing the program.
没有参与您的项目的人应该了解您的代码做了什么， 以及您采取了什么方法。 Here are some things to check for.

- Is there a description of the purpose of the program or library?
- Are detailed requirements listed?
- Are requirements ranked according to [MoSCoW](https://en.wikipedia.org/wiki/MoSCoW_method)?
- Is the use and function of third-party libraries documented?
- Is the structure/architecture of the program documented? (see below)
- Is there an installation manual?
- Is there a user manual?
- Is there documentation on how to contribute?
  - Including how to submit changes
  - Including how to document your changes

(rr-checklist-for-code-review:architecture)=

### 架构

这些项目主要对较大的程序很重要，但也许还是很好的 来考虑小的项目。

- Is the program split up into clearly separated modules?
- Are these modules as small as they can be?
- Is there a clear, hierarchical or layered, dependency structure between
  these modules?
  - If not, the functionality should be rearranged, or perhaps heavily
    interdependent modules should be combined.
- Can the design be simplified?

(rr-checklist-for-code-review:security)=

### 安全

如果你制作的软件可供外部世界访问(例如一个 web 应用程序)，安全就变得重要。 安全问题是缺陷， 但并非所有缺陷都是安全问题。 有安全意识的设计可以帮助 减轻缺陷对安全的影响。

- Which modules deal with user input?
- Which modules generate output?
- Are input and output compartmentalized?
  - If not, consider making separate modules that manage all input
    and output, so validation can happen in one place.
- In which modules is untrusted data present?
  - The fewer the better.
- Is untrusted data compartmentalized?
  - Ideally, validate in the input module and pass only
    validated data to other parts.

(rr-checklist-for-code-review:legal)=

### 法律

作为开发者，你应该关注你使用的代码的 创作者的合法权利。 Here are some things to check. 在 怀疑时，向有许可证经验的人询问咨询意见。

- Are the licenses of all modules/libraries that are used documented?
- Are the requirements set by those licenses fulfilled?
  - Are the licenses included where needed?
  - Are copyright statements included in the code where needed?
  - Are copyright statements included in the documentation where needed?
- Are the licenses of all the parts compatible with each other?
- Is the project license compatible with all libraries?

## 文件/变更级别的清单

当您检查一个拉取请求中的个别更改或文件时， 代码本身就成为受检查的对象。 根据语言，文件 可能包含接口、类或其他类型的定义和函数。 所有 都应该被检查。

(rr-checklist-for-code-review:interfaces)=

### 接口

- Is the interface documented?
- Does the concept it models make sense?
- Can it be split up further? (Interfaces should be as small as possible)

请注意，以下大多数项目都假定了一个面向对象的编程 风格，这可能与你正在查看的代码无关。

(rr-checklist-for-code-review:classes-and-types)=

### 类和类型

- Is the class documented?
  - Are external programs needed by the class documented?
- Does it have a single responsibility? Can it be split?
- If it's designed to be extended, can it be?
- If it's not designed to be extended, is it protected against that?
- If it's derived from another class, can you substitute an object of this class for one of its parent class(es)?
- Is the class testable?
  - Are the dependencies clear and explicit?
  - Does it have a small number of dependencies?
  - Does it depend on interfaces, rather than on classes?

(functionmethod-declarations)=

### 函数/方法声明

- Are there comments that describe the intent of the function or method?
- Are input and output documented? Including units?
- Are pre- and postconditions documented?
- Are edge cases and unusual things commented?

(functionmethod-definitions)=

### 函数/方法定义

- Are edge cases and unusual things commented?
- Is there any incomplete code?
- Could this function be split up (is it not too long)?
- Does it work? Perform intended function, logic correct, ...
- Is it easy to understand?
- Is there redundant or duplicate code? (DRY)
- Do loops have a set length and do they terminate correctly?
- Can debugging or logging code be removed?
- Can any of the code be replaced by library functions?

(rr-checklist-for-code-review:security-new-code)=

### 新代码的安全性

- If you're using a library, do you check errors it returns?
- Are all data inputs checked?
- Are output values checked and encoded properly?
- Are invalid parameters handled correctly?

(rr-checklist-for-code-review:tests)=

### 测试

- Do unit tests actually test what they are supposed to?
- Is bounds checking being done?
- Is a test framework and/or library used?
