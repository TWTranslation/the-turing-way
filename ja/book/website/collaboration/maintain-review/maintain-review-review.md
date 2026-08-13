(cl-maintain-review-review)=

# 貢献のレビュー

## プロセスを確認中

プロジェクトまたはコードベースでは、メインリポジトリにマージする前に、一連の変更をレビューする必要があります。
If the project is co-owned by many people, the review process handled by [code review assignment](https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/managing-code-review-assignment-for-your-team) in which certain members of the team are assigned this task.
査読者は、プロジェクト内の同じファイルまたは異なるファイル上の他のメンバーによる同様のアクティビティに基づいて、GitHubのプルリクエストに自動的に提案されることがよくあります。
However, often a project manager requests other maintainers for the review of a particular pull request based on their availability, willingness, or expertise.

The assigned or willing maintainers can review the pull request by checking the [changes locally](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/checking-out-pull-requests-locally) or on the online repository and suggest changes required.
When the review process is completed, the reviews can be approved without any change, or [with required changes](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/approving-a-pull-request-with-required-reviews) or [dismissed](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/dismissing-a-pull-request-review) according to the quality of the contribution.

## 審査プロセスとメンテナンスのガイドライン

GitHub のプロジェクトコラボレーションでは、特定のプロジェクトを維持するためのベストプラクティスを備えた定義されたガイドラインに従うことが重要です。
メンテナンスプロセスは、以下の助けを借りてスムーズに実行できます。

1. _Documenting the process_: A comprehensive documentation on how contributors can get started with the project and how they can make meaningful contributions is the first step to be taken while maintaining an open source project.
   These details should throw light on what the project is all about, why was it created in the first place, who maintains the project, what the community culture looks like, and who can provide guidance to new contributors.

これらの3つのドキュメントは、これらのドキュメントを構築するための良いスタートです。

- A project should contain a {ref}`README.md file<pd-project-repo-readme>` that provides the important details and links to resources that one must know to become a member of the project.
- A Code of Conduct (see _The Turing Way_ [Code of Conduct](https://github.com/the-turing-way/the-turing-way/blob/main/CODE_OF_CONDUCT.md)) must be provided in every project to establish that a welcoming and safe environment for community members while collaborating.
- A well-written contribution guideline (see _The Turing Way_ [Contributing file](#ch-contributing)) is extremely important when the collaboration is done remotely on any project to ensure clear communication between contributors and maintainers.

2. _Effective communication_: The conversations regarding any contribution can be made public for others to join for a discussion while working on small features and ideas.
   これには、より多くの人々が関与し、オープンソース作業の透明性を確保します。
   課題やプルリクエストについてのメッセージやコメントを書くことが重要です。 明確で分かりやすい方法でレビューを行いながら、貢献者が要件を理解し、プルリクエストにより良いコミットを行えるようにします。
   必要に応じてメッセージ内の重要なリンクを言及することをお勧めします。

3. _Mentored contributions_: The maintainer's role is to make the contribution a process as easy as possible.
   オープンソースの貢献は、多くの新しい貢献者にとって威圧的なものとなり得ます。
   友好的で勇気ある会話によって人々を導くことは、新しい貢献者のためのオンボーディングプロセスを快適に行うことができます。
   解決するには、記述的な問題を作成する方が良いでしょう。
   重要な貢献をするためには、プルリクエストで解決する前に別の問題を作成する方が良いです。
   課題とプルリクエストのラベル付けは、さまざまなスキル要件を持つさまざまなタスクに関与する貢献者を増やすのに役立ちます。
   Labeling seemingly easy issues as ["good first issue"](https://help.github.com/en/github/building-a-strong-community/encouraging-helpful-contributions-to-your-project-with-labels) will help new contributors to pick up easy tasks like minor changes in code and content, bug and typo fixes and small design issues.

4. _Maintaining the pull requests_: The maintenance of already existing pull requests on a project involves labeling them, reviewing them, changing their stages, merging and closing them.
   プルリクエストのメンテナンスは、適切なタイミングで適切なレビューを行うことができます。
   On GitHub there are various ways to provide feedback while reviewing such as by giving feedback as a comment on the pull request, suggesting changes while reviewing, directly proposing changes in the branch of the contributors or discussing on the pull request how the contributions can be improved (see this [GitHub post for details](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-request-reviews)).
   メンテナは、たとえば1週間のように、アクティブなプロジェクトのプルリクエストをレビューしてマージするタイムスケールを伝えることができます。
   ラベルは、開発中の機能の状態を正しく反映するために、時間と段階を経て変更できます。

5. _Acknowledging other's work and respecting time_: Welcoming people who contribute to a project is one of the keys to make a collaborative project a success.
   有意義な貢献がなされ、PRが統合されるたびに、メンテナはそれを認める必要があります。
   「ありがとう」という小さなメッセージは、特にオープンソース空間の初心者にとっては、しばしば十分です。
   オープンソースの貢献者のリストにそれらを追加することによって信用を与えることは常に良いジェスチャーです。
   そのための最善の方法は、すべての貢献者がプロジェクトで行われた貢献で言及される専用ファイルを作成することです。
   プロジェクト貢献者が世界のさまざまな場所に拠点を置いている場合、メンテナーは自分の時間に敬意を払い、それに応じて作業をスケジュールする必要があります。
   誰かがスケジュールでアイデアを議論できない場合には、メンテナーや貢献者はできるだけ協力していくべきです。
   また、休憩を取り、後で戻ってきたり、現在進行中の貢献を追跡するためにコミュニティから他の人を巻き込んだりするために、非常に忙しい貢献者に積極的に依頼することも良い習慣です。
