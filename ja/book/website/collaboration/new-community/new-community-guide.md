(cl-new-community-guide)=

# コミュニティ企画ガイド

「この公開データを試してみたいという素晴らしいアイデアがあります！」のような考えでプロジェクトを開始した場合はどうなりますか？
あなたがそれに取り組んでいる唯一の人であるかどうかについて心配する必要はありません。
ただし、このプロジェクトを開発したい場合は、プロジェクトに含まれる人々を感じさせる責任を負います。

「プロジェクトリード」として。 あなたは歓迎された包括的な環境を設定し、共同作業者のための最初のビジョンと目標のセットを作成したいです。
あなたとコラボレーションする全員が、あなたのプロジェクトで他の人と協力し始めたときに何が期待されるかを知っていると仮定することはできません。
Therefore, it’s important to set the right expectations from the beginning for your community, even though you might not have planned on having one (see more details: {cite:ps}`Sharan2020Apr`).

(cl-new-community-guide-checklist)=

## プロジェクトにおける計画コラボレーションのチェックリスト

以下のチェックリストは、あなたの研究プロジェクトでの協力を構築するプロセスを構造化された方法で行うのに役立ちます。

The practices listed here are derived from and limited by the experiences of the authors who participate in several successful Open Research communities and lead community-driven projects such as [The Carpentries](https://carpentries.org), [Mozilla Open Leaders](https://mozilla.github.io/open-leadership-training-series/), [Open Life Science](https://openlifesci.org/) and _The Turing Way_.
この章を読んでいる間は、本質的に大きく異なる可能性のあるプロジェクトを調整する必要があることに注意してください(例えば、 完全にオープンソースとは限らない

(cl-new-community-guide-checklist-coms-platform)=

### 1. 通信プラットフォームを選択

- When leading an open project, use collaborative and open platforms such as [GitHub](http://github.com/) or [GitLab](https://about.gitlab.com/).
- Evaluate the need for any real-time communications, such as if a text chat system like [Slack](https://slack.com) or [Element/Matrix](https://element.io/get-started) will be useful or if a mailing list will be sufficient (read details {ref}`Communication Channels <cm-os-comms-channels>`).
  - あなたのコミュニティメンバーのための別の内部コミュニケーションプラットフォームと、あなたが世界中に何をしたかを示すための外部プラットフォームを検討してください。
- An [X account](https://x.com) (formerly Twitter) or a simple website (such as on [GitHub pages](https://pages.github.com/)) can be useful external platforms.
- これらのプラットフォームの選択肢が、それらに参加するための低い障壁があることを確認してください。

(cl-new-community-guide-checklist-proj-summary)=

### 2. プロジェクト概要ファイルを提供:

- The first document in your project should be a project summary file, which in a GitHub repository will be a [README.md file](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/about-readmes).
- これにより、プロジェクトが興味深い理由を人々が評価できるように、プロジェクトに関する基本的な情報が提供されます。
  - Here is [a template](https://github.com/PurpleBooth/a-good-readme-template) by the GitHub user [PurpleBooth](https://github.com/PurpleBooth).
- このファイルには、プロジェクトのビジョンと目標が何であるか、なぜプロジェクトが役に立つのか、プロジェクト内の可能性のあるマイルストーンが含まれています。 どのように貢献者やユーザーが始められるか、誰が助けを求められるのか そして現在プロジェクトに欠けているものは ステークホルダーやスキルやスコープなどです
- 絵文字、GIF、ビデオ、または個人のストーリーを使用して、プロジェクトを関連付けられるようにできます。
  - See [The Atom project](https://github.com/atom/atom) for example.

(cl-new-community-guide-checklist-code-conduct)=

### 3. 行動規範の選択:

- Add an Open Source Project [Codes of Conduct](https://opensourceconduct.com/) to your project.
- この文書はトークンとして使用すべきではありません。意図的な努力をすることは非常に重要です。
- GitHub を使用する場合は、GitHub リポジトリに "CODE_OF_CONDUCT.md" ファイルを追加できます。
- List the expected and unacceptable behaviors, describe the reporting and enforcement process, explicitly define the scope, and use an inclusive tone  (see [GitHub instructions here](https://help.github.com/en/github/building-a-strong-community/adding-a-code-of-conduct-to-your-project)).
- 行動規範を更新するたびに、メンバーからコメントを招待して、それらの懸念が確実に解決されます。
  - This can be done on [GitHub issues](https://help.github.com/en/github/managing-your-work-on-github/about-issues), or [Pull Requests](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests).

(cl-new-community-contrib-guidelines)=

### 4. コントリビューションガイドラインとインタラクションパスの提供:

- 思慮深いガイドラインは、プロジェクトに貢献できる道を人々が決めるのに役立ちます。 彼らがあなたのコミュニティに行きたければ
- コミュニティとの相互作用と貢献するさまざまな経路がオープンで包括的で明確に述べられていることを確認してください。
  - 人々が貢献する方法を理解できない場合は、彼らは助けなしでドロップオフします。
- 貢献の価値の異なる種類 - コーディングプロジェクトは、コードだけでなく、したがって、ドキュメントやその他の管理スキルもリストされています。
- You can use the {ref}`Persona Creation Tool<pd-persona-creation>` or the [Personas and Pathways exercise](https://mozillascience.github.io/working-open-workshop/personas_pathways/) to brainstorm who could be your possible community members.
- Here is a [template of community guideline](https://gist.github.com/PurpleBooth/b24679402957c63ec426) provided by the GitHub user [PurpleBooth](https://gist.github.com/PurpleBooth).
  - See [_The Turing Way_'s contributing file](#ch-contributing) for reference.

(cl-new-community-leadership)=

### 5. 基本的なマネジメント/リーダーシップ構造の作成:

- 開かれたプロジェクトにおけるリーダーシップ体制は、他者に力を与え、あなたのコミュニティにおける代理店と説明責任を発展させることを目指すべきです。
- プロジェクト内のさまざまなタスクをリストし、メンバーにそれらのタスクをリードするよう招待することから始めることができます。
- コミュニティメンバーが行った貢献に対して、適切なインセンティブと承認を提供します。
- メンバーがプロジェクトであなたとリーダーシップの責任を共有する機会を作りましょう。
- コミュニティから提案やアイデアを招待する場合は、コミュニティが開発できる最初の計画を提供します。
- See this document from [Open Source Guides](https://opensource.guide/leadership-and-governance/) for reference.

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
  - [The agile concept fail fast gets bad press but is misunderstood](https://www.information-age.com/agile-concept-fail-fast-gets-bad-press-misunderstood-123460434/)
  - [The Beginner’s Guide To Scrum And Agile Project Management](https://blog.trello.com/beginners-guide-scrum-and-agile-project-management)

(cl-new-community-documentation)=

### 8. プロジェクトのドキュメントと普及計画があります:

- 新しいメンバーがプロジェクトに参加すると、彼らはあなたに尋ねることなく必要な情報を見つけることができなければなりません。
- ドキュメンテーションプランに投資することで、過去の決定やプロジェクトが使用する意思決定プロセスに関する一般的な情報を共有することで、多くのコミュニケーション関連の課題から解放されます。
- A good place to store the documentation is [wiki](https://en.wikipedia.org/wiki/Wiki) or similar platforms (like GitHub) where information can be shared transparently and updated by your community members democratically.
- To disseminate outputs of your project, you should use persistent identifiers that can be shared and cited, for example, [digital object identifier (DOI)](https://www.doi.org/).
  - [Figshare](https://figshare.com/) and [Zenodo](http://zenodo.org) are good examples of platforms that can provide you with DOI for all your shareable data.

技術的な問題への対処とチーム構築における多様性の重要性を評価するという共同プロジェクトの有効性を確保するためには、さらに2つの点が重要です。

We have explained them in the next subchapters on {ref}`Addressing Technical Issues<cm-new-community-techissue>` and {ref}`Valuing Diversity and Differences<cl-new-community-differences>`.
