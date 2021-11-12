(rr-make)=
# メイクでの再現性

(rr-make-requireites)=
## 前提条件

| 前提条件                                                                     | 重要度    | メモ                             |
| ------------------------------------------------------------------------ | ------ | ------------------------------ |
| [コマンドラインでの経験](https://programminghistorian.org/en/lessons/intro-to-bash) | 必要な    |                                |
| {ref}`バージョン管理<rr-vcs>`                                             | 役に立つもの | git を使用した経験は、例と共にフォローするのに役立ちます |

推奨スキルレベル：中間者

(rr-make-summary)=
## Summary

データサイエンスや研究プロジェクトは、依存関係の木として見ることができます: レポートは、図と表に依存します。 そして、これらはデータ と、このデータを処理するために使用される分析スクリプトによって変わります(下の図 に示されています)。  Makeは、あらかじめ指定されたルールを介して依存関係から出力ファイルを作成するためのツールです。 これら2つのアイデアを組み合わせて Makeと再現性のあるプロジェクトを作成することは可能です。  この章では、Makeがデータ 分析パイプラインにどのように使用できるかについてのチュートリアルを 紹介します。  私たちはまた、Makeを使用して生の入力データから実験に至るまで、実際の再現性のある研究 プロジェクトについても説明します。 論文のPDFファイルへの道!

```{figure} ../figures/make-research-dag.png
---
name: make-research-dag
alt: 研究プロジェクトの模式。
---
研究プロジェクトの模式。
```

(rr-make-intro)=
## 作り方の紹介

Make はビルド自動化ツールです。 ビルドするための ルール *を含む* Makefileと呼ばれる設定ファイルを使用します。 *レシピ*を使用して ターゲット *を*作成する  ターゲットは必要に応じて *前提条件*を持つことができます。  前提条件 は、お使いのコンピュータまたはその他のターゲット上のファイルである可能性があります。 Make determines what to build based on the dependency tree of the targets and prerequisites (technically, this is a {ref}`rr-make-resources-tools`). It uses the *modification time* of prerequisites to update targets only when needed.

(rr-make-why)=
### 再現性のためにメイクを使用する理由は?

Makeが再現性のために使用するための良いツールである理由はいくつかあります。

1. 簡単に学ぶことができます
1. Makeは多くのプラットフォームで利用可能です
1. メイクは柔軟です
1. 多くの人々はすでにMakeに精通しています
1. Makefiles reduce cognitive load because as long as the common Make targets `all` and `clean` are present (explained below), you can be up and running without having to read lengthy instructions. これは特に 他の人のプロジェクトや、 長い間使っていないプロジェクトで作業するときに便利です。
1. Makefileは人間が読める、機械が読めるテキストファイルです。 そのため、レポートや出力の作成方法について人間に指示を書く代わりに では、人間の と ** がコンピュータで実行される命令を含む Makefile を提供することができます。
1. Makefileはテキストファイルなので、共有しやすく、バージョン コントロールを保持することができます。
1. Make の使用 Travis、Docker などの他のツールを使用して除外することはありません。

巧妙なMakefileを使用すると、完全な解析(コード、データ)を共有できます。 そして 計算ワークフロー) そして、共同研究者やあなたの論文の読者に 結果を再計算させましょう。 LaTeXのようなツールを使うことで、 は新たに計算された数字と結果を含む完全な原稿を生成することさえできます! これにより、生成された研究成果に対する信頼性が高まります。 それは あなたの研究をより使いやすくすることができ、コラボレーションをより容易にすることができます。 この章では、始める方法を説明します。
