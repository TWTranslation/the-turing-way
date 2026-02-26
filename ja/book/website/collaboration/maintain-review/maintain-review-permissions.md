(cl-maintain-review-permissions)=

# 所有権と権限

チームまたは組織が所有するプロジェクトには、さまざまな貢献者がいます。

プロジェクトのオーナーは、一般的にプロジェクトを開始する個人またはチームです。 定義されたビジョンと目標を持ってプロジェクトを作成する時に参加することもできます
The owners have the right to give different [levels of permission](https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/repository-permission-levels-for-an-organization#permission-levels-for-repositories-owned-by-an-organization) to outside contributors.

Githubには、読み取り、トリアージ、書き込み、メンテナンス、adminという5つの権限レベルがあります。

- 読者はコードではないコントリビューターで、GitHubの課題でコンテンツを読んだりディスカッションに参加したりします。
- トリアージ権限を持つことで、コントリビューターは書き込み権限なしに課題やプルリクエストを管理できます。
- 書き込み権限を使用すると、コントリビューターはプロジェクトに変更をプッシュできます。
- 権限の維持はプロジェクトマネージャーに対して行われますが、機密性の高いアクションや破壊的なアクション(プロジェクトの削除など)にはアクセスできません。
- 管理者は、敏感で破壊的な行動を含むプロジェクトに完全にアクセスでき、他の貢献者を作成する権限を与える責任があります。

These roles are often defined in a project file such as a [CODEOWNERS file](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/about-code-owners) or a governance file (for example, {ref}`fw-governance-roles` as an example).
これらのファイルは、コアプロジェクトチームとプロジェクトのメンテナンスの役割を担当するメンバーへの洞察を提供します。

この章では、トリアージを持つ人は誰でも、権限を書き、維持することをメンテナと呼びます。
メンテナーは、必要に応じて課題の作成やプルリクエストの作成に携わっています。
彼らはコードベースまたはプロジェクトを更新し、貢献を見直すのに役立ちます。
彼らはしばしばプルリクエストを承認しマージすることができます。
彼らはまた、他の誰かにレビューを要求することができます。

_For more information on permission level, please see this [documentation on GitHub](https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/repository-permission-levels-for-an-organization)._
