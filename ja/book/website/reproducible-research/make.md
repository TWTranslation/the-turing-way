(rr-make)=

# メイクでの再現性

(rr-make-requireites)=

## Prerequisites

| Prerequisite                                                               | Importance | Notes                          |
| -------------------------------------------------------------------------- | ---------- | ------------------------------ |
| {ref}`Experience with the command line<rr-overview-resources-commandline>` | 必要な        |                                |
| {ref}`Version Control<rr-vcs>`                                             | Helpful    | git を使用した経験は、例と共にフォローするのに役立ちます |

推奨スキルレベル：中間者

(rr-make-summary)=

## Summary

データサイエンスや研究プロジェクトは、依存関係の木として見ることができます:
レポートは、図と表に依存します。 そして、これらはデータと、このデータを処理するために使用される分析スクリプトによって変わります(下の図
に示されています)。  Makeは、あらかじめ指定されたルールを介して依存関係から出力ファイルを作成するためのツールです。
これら2つのアイデアを組み合わせて
Makeと再現性のあるプロジェクトを作成することは可能です。  この章では、Makeがデータ
分析パイプラインにどのように使用できるかについてのチュートリアルを
紹介します。  私たちはまた、Makeを使用して生の入力データから実験に至るまで、実際の再現性のある研究
プロジェクトについても説明します。
論文のPDFファイルへの道!

```{figure} ../../figures/make-research-dag.*
---
name: make-research-dag
alt: Schematic of a research project.
---
Schematic of a research project.
```

(rr-make-intro)=

## 作り方の紹介

Make はビルド自動化ツールです。 It uses a configuration file called a
Makefile that contains the _rules_ for what to build. Make builds _targets_
using _recipes_.  Targets can optionally have _prerequisites_.  前提条件
は、お使いのコンピュータまたはその他のターゲット上のファイルである可能性があります。 Make determines what to build
based on the dependency tree of the targets and prerequisites (technically,
this is a {ref}`rr-make-resources-tools`). It uses the _modification time_ of
prerequisites to update targets only when needed.

(rr-make-why)=

### 再現性のためにメイクを使用する理由は?

Makeが再現性のために使用するための良いツールである理由はいくつかあります。

1. 簡単に学ぶことができます
2. Makeは多くのプラットフォームで利用可能です
3. メイクは柔軟です
4. 多くの人々はすでにMakeに精通しています
5. Makefiles reduce cognitive load because as long as the common Make targets
   `all` and `clean` are present (explained below), you can be up and
   running without having to read lengthy instructions. This is especially
   useful when you work on someone else's project or on one that you haven't
   used in a long time.
6. Makefileは人間が読める、機械が読めるテキストファイルです。 So instead of
   writing instructions to a human for how to build a report or output, you
   can provide a Makefile with instructions that can be read by a human _and_
   executed by a computer.
7. Because Makefiles are text files they are easy to share and keep in version
   control.
8. Using Make doesn't exclude using other tools such as Docker.

巧妙なMakefileを使用すると、完全な解析(コード、データ)を共有できます。 そして
計算ワークフロー) そして、共同研究者やあなたの論文の読者に
結果を再計算させましょう。
LaTeXのようなツールを使うことで、
は新たに計算された数字と結果を含む完全な原稿を生成することさえできます!
これにより、生成された研究成果に対する信頼性が高まります。 それは
あなたの研究をより使いやすくすることができ、コラボレーションをより容易にすることができます。
この章では、始める方法を説明します。
