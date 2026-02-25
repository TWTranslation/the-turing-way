(rr-reviewing)=

# コードレビュープロセス

(rr-reviewing-requireites)=

## Prerequisites

| Prerequisite                   | Importance | Notes                                                                                                                                                  |
| ------------------------------ | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| {ref}`Version Control<rr-vcs>` | 必要な        | Understanding the way that [GitHub](https://github.com) arranges its branches, forks, and pull requests within repositories is needed. |

```{figure} ../../figures/bug-catching.*
---
height: 500px
name: bug-catching
alt: People catching different insects in different ways - representing bugs in our code or project.
---
Catching bugs. _The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-reviewing-summary)=

## Summary

コードレビューは、コードの品質をテストする追加の方法を提供します。
Instead of relying simply on {ref}`tests<rr-testing>` which the original author puts together themselves, code review gets another programmer to look over the new code and assess it. The goal is to point out strengths and also potential areas of improvement.

多くの場合、コードレビューはペアで行われ、各レビュー担当者はパートナーによってレビューされたコードの一部を持っています。
これを行うことは、プログラマーが課題や代替のアプローチを見て議論し、新しいヒントやコツを学ぶのに役立ちます。
これは、コードレビューの実践が、複数の貢献者が変更を加えるプロジェクトに特に適していることを意味します。
それぞれがコードの異なる部分に取り組んでいます それにもかかわらず、小さな規模のプロジェクトでさえ、これらのアプローチをクリエイティブなプロジェクト管理で活用できます。

それらの性質のために、コードレビューは定量的なテストというよりも質的なものとして機能しますが、それほど価値のあるものではありません。

このセクションでは、合理性、ベストプラクティス、およびコードレビューのワークフローの概要を説明します。
Some details refer specifically to GitHub's code review functionality as a powerful and widely-used example of a formal code review system; however, equivalent and very similar systems are available elsewhere (for example, [GitLab](https://about.gitlab.com)), and even informal code review practices can also be very beneficial to a project.
