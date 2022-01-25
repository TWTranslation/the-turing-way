(rr-code-quality)=
# 代码质量

| 前提条件：                                                               | 重要性 |
| ------------------------------------------------------------------- | --- |
| [命令行的经验](https://programminghistorian.org/en/lessons/intro-to-bash) | 有帮助 |

## Summary

改进软件质量有几种方法需要相对较少的努力。 通过遵循编码风格，代码将更容易让您和其他人理解，因此它包含的漏洞将会减少。 静态代码分析工具可以报告错误以及风格问题，甚至不会运行代码。

## 静态代码分析

静态代码分析是一种方法，在你的代码执行或项目建立和部署之前检查代码和检测软件的脆弱性。 这种分析能够查明质量问题，包括安全方面的弱点和错误。 除了查找bug之外，许多这些工具还可以帮助保持一种前后一致的编码风格。

(rr-code-quality-benefites)=
### 静态代码分析的优势

- 写高质量代码：及早发现可能的编程错误帮助开发人员知道他们在哪里出了错。

- 实现遵守规章制度：实现软件的遵守对于产品的稳定和安全至关重要。 这样，开发者就能够在非运行环境中全面测试他们的代码，确保所有代码标准都得到满足，并实现企业安全。

- 加速软件开发生命周期：静态代码分析确保高质量的代码能够在较少的时间内送达测试者。 这意味着即使是测试者也需要更少的时间来测试产品，从而加快软件开发寿命周期。

下面的表格中提到了一些最广泛使用的 `linters`：

| 语言         | 静态代码分析工具                                                                                                              |
| ---------- | --------------------------------------------------------------------------------------------------------------------- |
| C/C++      | [Cppcheck](http://cppcheck.sourceforge.net/), [cpplint](https://github.com/cpplintcpplint)                            |
| Python     | [Pylint](https://pypi.org/project/pylint/), [prospector](https://prospector.readthedocs.io)                           |
| Javascript | [ESLint](https://eslint.org/), [JSlint](https://jslint.com/), [JSHint](https://jshint.com/)                           |
| Java       | [检查样式](https://checkstyle.sourceforge.io/), [FindBug](http://findbugs.sourceforge.net), [PMD](https://pmd.github.io/) |
| Perl       | [PerlTidy](https://metacpan.org/pod/perltidy)                                                                         |
| R          | [lintr](https://github.com/jimhester/lintr)                                                                           |
| Shell/Bash | [边框检查](https://www.shellcheck.net)                                                                                    |
