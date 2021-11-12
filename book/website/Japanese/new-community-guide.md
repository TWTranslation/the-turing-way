(cl-new-community-guide)=
# コミュニティ企画ガイド

「この公開データを試してみたいという素晴らしいアイデアがあります！」のような考えでプロジェクトを開始した場合はどうなりますか？ あなたがそれに取り組んでいる唯一の人であるかどうかについて心配する必要はありません。 ただし、このプロジェクトを開発したい場合は、プロジェクトに含まれる人々を感じさせる責任を負います。

「プロジェクトリード」として。 あなたは歓迎された包括的な環境を設定し、共同作業者のための最初のビジョンと目標のセットを作成したいです。 あなたとコラボレーションする全員が、あなたのプロジェクトで他の人と協力し始めたときに何が期待されるかを知っていると仮定することはできません。 したがって、あなたのコミュニティの最初から正しい期待を設定することが重要です。 あなたは 1 つを持つことを計画していない可能性があります (詳細: {cite:ps}`Sharan2020Apr` を参照してください)。

(cl-new-community-guide-checklist)=
## プロジェクトにおける計画コラボレーションのチェックリスト

以下のチェックリストは、あなたの研究プロジェクトでの協力を構築するプロセスを構造化された方法で行うのに役立ちます。

The practices listed here are derived from and limited by the experiences of the authors who participate in several successful Open Research communities and lead community-driven projects such as [The Carpentries](https://carpentries.org), [Mozilla Open Leaders](https://mozilla.github.io/open-leadership-training-series/), [Open Life Science](https://openlifesci.org/) and _The Turing Way_. この章を読んでいる間は、本質的に大きく異なる可能性のあるプロジェクトを調整する必要があることに注意してください(例えば、 完全にオープンソースとは限らない

(cl-new-community-guide-checklist-coms-platform)=
### 1. 通信プラットフォームを選択

- オープンプロジェクトをリードする場合は、 [GitHub](http://github.com/) や [GitLab](https://about.gitlab.com/) などの共同およびオープンプラットフォームを使用してください。
- リアルタイム通信の必要性を評価する 例えば、 [Slack](https://slack.com) や [Element/Matrix](https://element.io/get-started) のようなテキストチャットシステムが役に立つ場合や、メーリングリストで十分な場合などです(詳細は {ref}`コミュニケーションチャンネル <cm-os-comms-channels>` をご覧ください)。
  - あなたのコミュニティメンバーのための別の内部コミュニケーションプラットフォームと、あなたが世界中に何をしたかを示すための外部プラットフォームを検討してください。
- [Twitter アカウント](https://twitter.com) またはシンプルなウェブサイト ( [GitHub ページ](https://pages.github.com/)など) が便利な外部プラットフォームです。
- これらのプラットフォームの選択肢が、それらに参加するための低い障壁があることを確認してください。

(cl-new-community-guide-checklist-proj-summary)=
### 2. プロジェクト概要ファイルを提供:

- プロジェクトの最初のドキュメントは、GitHub リポジトリ内の [README.md ファイル](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/about-readmes) になるプロジェクトサマリファイルである必要があります。
- これにより、プロジェクトが興味深い理由を人々が評価できるように、プロジェクトに関する基本的な情報が提供されます。
  - GitHub ユーザの [PurpleBooth](https://github.com/PurpleBooth/a-good-readme-template) による [テンプレート](https://github.com/PurpleBooth) です。
- このファイルには、プロジェクトのビジョンと目標が何であるか、なぜプロジェクトが役に立つのか、プロジェクト内の可能性のあるマイルストーンが含まれています。 どのように貢献者やユーザーが始められるか、誰が助けを求められるのか そして現在プロジェクトに欠けているものは ステークホルダーやスキルやスコープなどです
- 絵文字、GIF、ビデオ、または個人のストーリーを使用して、プロジェクトを関連付けられるようにできます。
  - 例えば、 [Atom プロジェクト](https://github.com/atom/atom) を参照してください。

(cl-new-community-guide-checklist-code-conduct)=
### 3. 行動規範の選択:

- オープンソース プロジェクト [行動コード](https://opensourceconduct.com/) をプロジェクトに追加します。
- この文書はトークンとして使用すべきではありません。意図的な努力をすることは非常に重要です。
- GitHub を使用する場合は、GitHub リポジトリに "CODE_OF_CONDUCT.md" ファイルを追加できます。
- 予想される、受け入れられない行動をリストし、報告と執行プロセスを説明します。 スコープを明示的に定義し、インクルーシブなトーンを使用します ( [GitHub の説明](https://help.github.com/en/github/building-a-strong-community/adding-a-code-of-conduct-to-your-project) を参照してください)。
- 行動規範を更新するたびに、メンバーからコメントを招待して、それらの懸念が確実に解決されます。
  - これは、 [GitHub Issue](https://help.github.com/en/github/managing-your-work-on-github/about-issues)、または [Pull Requests](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests) で実行できます。

(cl-new-community-contrib-guidelines)=
### 4. コントリビューションガイドラインとインタラクションパスの提供:

- 思慮深いガイドラインは、プロジェクトに貢献できる道を人々が決めるのに役立ちます。 彼らがあなたのコミュニティに行きたければ
- コミュニティとの相互作用と貢献するさまざまな経路がオープンで包括的で明確に述べられていることを確認してください。
  - 人々が貢献する方法を理解できない場合は、彼らは助けなしでドロップオフします。
- 貢献の価値の異なる種類 - コーディングプロジェクトは、コードだけでなく、したがって、ドキュメントやその他の管理スキルもリストされています。
- {ref}`Persona Creation Tool<pd-persona-creation>` または [Personas and Pathways を使って](https://mozillascience.github.io/working-open-workshop/personas_pathways/) コミュニティメンバーになることができる人をブレインストーミングすることができます。
- Here is a [template of community guideline](https://gist.github.com/PurpleBooth/b24679402957c63ec426) provided by the GitHub user [PurpleBooth](https://gist.github.com/PurpleBooth).
  - 参考については [_Turing Way_の貢献ファイル](https://github.com/alan-turing-institute/the-turing-way/blob/main/CONTRIBUTING.md) を参照してください。

(cl-new-community-leadership)=
### 5. 基本的なマネジメント/リーダーシップ構造の作成:

- 開かれたプロジェクトにおけるリーダーシップ体制は、他者に力を与え、あなたのコミュニティにおける代理店と説明責任を発展させることを目指すべきです。
- プロジェクト内のさまざまなタスクをリストし、メンバーにそれらのタスクをリードするよう招待することから始めることができます。
- コミュニティメンバーが行った貢献に対して、適切なインセンティブと承認を提供します。
- メンバーがプロジェクトであなたとリーダーシップの責任を共有する機会を作りましょう。
- コミュニティから提案やアイデアを招待する場合は、コミュニティが開発できる最初の計画を提供します。
- 参考のため、 [オープンソース・ガイド](https://opensource.guide/leadership-and-governance/) のこのドキュメントを参照してください。

(cl-new-community-contact)=
### 6. どこでも連絡先の詳細を提供:

- 異なるメンバーに対する責任を明確にすることで、人々はどんなクエリでも適切な人に手を差し伸べることができます。
- 技術的な問題、リーダーシップに関する質問、行動規範に関する報告については、指定された連絡先の詳細を追加してください。
- これは、すぐに解決が必要な場合に特に便利です。

(cl-new-community-approaches)=
### 7. 失敗したアプローチを特定し、それらを停止します:

- 開発は、したがって、繰り返し行われます, 定期的にあなたの計画やアイデアを再訪し、プロセスにあなたのメンバーを巻き込む.
- マージまたは変更すべき並列展開または複数のアプローチがあるかどうかを確認します。
- 速く失敗し、有益に失敗します。プロジェクトで何が動作していないのかを認識し、継続を停止します。
- それらを記録し、失敗した理由と、今後のプロジェクトやアプローチをどのように変更するかを共有します。
- Open Researchコミュニティでは、失敗や成功を議論する際に透明性を維持することができますが、他の人を選んだり非難したりすることは控えることができます。
- この反復アプローチはアジャイルプラクティスから来ています。参照のためにこれらの短い投稿を参照してください。
  - [アジャイルの概念が失敗すると速く悪いプレスを取得しますが、誤解されています](https://www.information-age.com/agile-concept-fail-fast-gets-bad-press-misunderstood-123460434/)
  - [スクラムとアジャイルプロジェクト管理の初心者ガイド](https://blog.trello.com/beginners-guide-scrum-and-agile-project-management)

(cl-new-community-documentation)=
### 8. プロジェクトのドキュメントと普及計画があります:

- 新しいメンバーがプロジェクトに参加すると、彼らはあなたに尋ねることなく必要な情報を見つけることができなければなりません。
- ドキュメンテーションプランに投資することで、過去の決定やプロジェクトが使用する意思決定プロセスに関する一般的な情報を共有することで、多くのコミュニケーション関連の課題から解放されます。
- ドキュメントを保存するには、 [wiki](https://en.wikipedia.org/wiki/Wiki) もしくは同様のプラットフォーム(GitHub のような)が適しています。そこでは、情報を民主的に共有し、コミュニティメンバーによって更新することができます。
- プロジェクトの出力を広めるには、共有および引用できる永続的な識別子を使用する必要があります。 例: [デジタルオブジェクト識別子 (DOI)](https://www.doi.org/).
  - [Figshare](https://figshare.com/) と [Zenodo](http://zenodo.org) は、すべての共有可能なデータに対してDOIを提供できるプラットフォームの良い例です。

技術的な問題への対処とチーム構築における多様性の重要性を評価するという共同プロジェクトの有効性を確保するためには、さらに2つの点が重要です。

{ref}`技術的な問題に対処する<cm-new-community-techissue>` と {ref}`多様性と相違点を評価する<cl-new-community-differences>`.
