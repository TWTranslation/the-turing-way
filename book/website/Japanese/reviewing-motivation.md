(rr-reviewing-motivation)=
# 重要性と個人的な利点

*これがあなたを助ける方法/これが有用である理由*

[testing](#Testing)と同様に コードレビューの重要な目的は、それらの変更がメインコードベースに入る前に、ソフトウェアプロジェクトへの変更から間違いと悪い習慣を取り除くことです。 しかし、それはまた、プロジェクトに他の多くの直接的および間接的な利益を持っています。 以下で説明する。

コードレビューは、ソフトウェアの品質を向上させるための効果的な方法です。 McConnell (2004) によると、ユニットテストでは、約25%の欠陥、関数 35%のテスト、45%の積分テスト、およびコードレビュー55-60%が検出されることが示唆されている。 While that means that none of these methods are good enough on their own, and that they should be combined, clearly code review is an essential tool here.

## 目次

- [バグと基本エラーをキャッチしています](#catching-bugs-and-elementary-errors)
- [テストの改善](#improvements-to-testing)
- [ドキュメント](#documentation)
- [読みやすさ](#readability)
- [スタイルの適用](#style-enforcement)
- [グループ知識と統合](#group-knowledge-and-cohesion)

(rr-reviewing-motivation-bugs)=
## バグと基本エラーをキャッチしています

レビュープロセスの簡単な目的は、トランクコードにする前に、提案された変更内容のバグや基本的なエラーを捕捉することです。 このように、コードレビューはテストの側面を共有します。 しかし、堅牢なテストプログラムは、これらの種類の簡単なエラーを特定するためのコードレビューの重要性を減らす必要があります。 コードが段階を見直す前にテストがそれらをキャッチする必要があります。 したがって、原則として、コードレビューのこの機能は、ドキュメンテーションのタイプミスのような些細な変更に限定されるべきです。 しかし、実際には、コードレビューはあらゆる種類のバグやエラーに対する防御の重要な第二行として機能します。

(rr-reviewing-motivation-improvements)=
## テストの改善

上記のように、レビューは頻繁に行うべきであり、提案されたコード変更の実際のバグをキャッチします。 これはもちろん、提案された変更が十分にテストされていなかったという兆候です。 コードレビューの主な目的は、既存または新しく開発されたテストプロセスが不十分であるコード内の場所を強調することです。 この方法で コードレビューは、今だけでなく、どのような種類のテストが必要かについて第二の視点を提供することで、コードベースの将来の健全性を確保するのに役立ちます。 仮説的なシナリオではコードが進化するにつれて生じる可能性があります

(rr-reviewing-motivation-documentation)=
## ドキュメント

<!--SiccarPoint notes a whole section on documentation is justified in the book!-->
徹底的なドキュメント<!--reference はセクションが存在するとここに行きます-->は再現性と持続可能なソフトウェアの重要なコンポーネントです。 コードレビューでは、提案されたコードの変更とともに提供されるドキュメントが目的に合っているかどうかを検討する別の視点を提供します。 これは2倍の価値があります 開発プロセスの外部から検討している査読者は、新しいドキュメントが初めてコードに来るユーザーに十分な情報を提供するかどうかについて、コーダーよりも明確な視点を持っている可能性があります。

ドキュメントに関するこの種のフィードバックは、ユーザー向けのドキュメントやインラインのコメントにも同様に適用されます。

(rr-reviewing-motivation-readability)=
## 読みやすさ

ドキュメントに関連して、コードレビューは、コードが読みやすく理解しやすいことを保証するのに役立ちます。 第二の目を持つことは、コードが従うのが困難な領域を見つけるのに役立ちます。 より読みやすいコードは、他の開発者が自分の目的のためにコードを再現することが容易になります。

(rr-reviewing-motivation-enforcement)=
## スタイルの適用

Many projects enforce certain {ref}`code style guidelines<rr-code-quality>`, be the widely-adopted standards (for example, [PEP8](https://www.python.org/dev/peps/pep-0008/), the [Google C++ style guide](https://google.github.io/styleguide/cppguide.html)) or more project-specific conventions. [自動サービス](../../code_quality/code_quality#online-services-providing-software-quality-checks) は、コーディングスタイルを強制し、コード品質についての議論を開始するための便利な方法を提供します。 コードレビューは、すべての提案された変更がプロジェクトに必要最低基準を満たしていることを確認する機会を提供します。

(rr-reviewing-motivation-knowledge)=
## グループ知識と統合

## スタイルの適用

Many projects enforce certain [code style guidelines](../../code_quality/code_quality#coding-style), be they widely-adopted standards (for example, [PEP8](https://www.python.org/dev/peps/pep-0008/), the [Google C++ style guide](https://google.github.io/styleguide/cppguide.html)) or more project-specific conventions. [自動サービス](../../code_quality/code_quality#online-services-providing-software-quality-checks) は、コーディングスタイルを強制し、コード品質についての議論を開始するための便利な方法を提供します。 コードレビューは、すべての提案された変更がプロジェクトに必要最小限の基準を満たしていることを確認する機会を提供します。


## 知識とコヘシオン

コードレビュープラクティスは、変更が提案されたときにプロジェクトのトランクコードの健全性を単に守るだけでなく、重要な利点を提供します。 ピアツーピアのレビューは、チームのすべての貢献メンバーの間でWeb上で情報の双方向交換を作成します。 これにより、効果的で有機的なベストプラクティスの移転が可能になります。

正しい精神で行われたレビュー(特に [こちら](#Be_nice)を参照)は、チームメンバーを集めてグループの結束を作成する上で重要な役割を果たします。 特に、プロジェクトへの新規参入者の仕事のコアチームのメンバーによる良いレビューは、それらの新人が歓迎と価値を感じさせることができます。 継続的な参加を奨励しています
