(cm-os-comms-issue-tracking)=

# 課題の追跡

ほとんどのソフトウェア開発プロジェクトには、プロジェクトの現在の問題を簡単に追跡するための何らかの問題ボードがあります。 バグ修正や新機能の公開、コミュニティのエンゲージメント計画などです
[GitHub](https://github.com) (a very popular collaboration platform) has a built-in [issue tracker](https://guides.github.com/features/issues/) and [project boards](https://help.github.com/en/github/managing-your-work-on-github/about-project-boards) where issues can be collated together to track progress towards a more specific, higher-level goal.

このセクションでは、なぜ問題追跡が役に立つのか、どこに保存できるのかについて説明します。

(os-comms-issue-tracking-purchase)=

## あなたの問題の目的は何ですか。

プロジェクトに関連する問題を保持/追跡するための多くの異なる理由があります。
問題追跡用のプラットフォームと、それらの問題によって追跡される機能は、コミュニティがプロジェクトとやり取りする方法に影響を与えます。

主に、課題はバグ報告、機能のリクエスト、コミュニティメンバーが関与する機会などを追跡するために使用されます。 それから公共の問題委員会があなたのコミュニティに パイプラインで何が起きているのかを 明確に把握することを可能にします

集中型の分散型/分散型の課題ボードと、それらがあなたのコミュニティにどのように関わっていくのかを見ていきましょう。

(os-comms-issue-tracking-purchase-issues)=

### リポジトリごとの課題 (分散/分散)

プロジェクトが複数のリポジトリに分割されている場合。 そのモジュールに関連する問題をリポジトリ内に保管するのは良い考えです 分散型システムです
これにより、コミュニティが彼らにとって重要なことに集中できるようになります。

このアプローチには、コードベース内のリポジトリ(またはモジュール)ごとにいくつかの小さな課題ボードがあります。
この方法には、以下のような肯定的な結果があります。

- The volume of issues is more manageable
- Most contributors only need to be aware of issues relating to one or two repositories
- Contributors can subscribe to notifications or updates from only the repositories that interest them
- It feels like "divide and conquer", more people are working on more aspects to move the project as a whole forward

(os-comms-issue-tracking-purchase-issues-case-study)=

#### ケーススタディ：mybinder.org

[mybinder.org](https://mybinder.org) is a platform facilitating users to easily share reproducible analyses and computational environments with one another in [Jupyter Notebooks](https://jupyter-notebook.readthedocs.io/en/stable/) via the cloud.
このプロジェクトは、いくつかの異なるリポジトリに分散されており、それぞれが他のリポジトリから分離して使用できる個々のツールです。
これらは次のとおりです。

- [repo2docker](https://github.com/jupyter/repo2docker)
- [JupyterHub for Kubernetes](https://github.com/jupyterhub/zero-to-jupyterhub-k8s)
- [BinderHub](https://github.com/jupyterhub/binderhub)

木星生態系には、バインダーと弱い関係があるだけのいくつかのツールもあります。
プロジェクトバインダーが使用するツールや、Binderに関連する人々は、その他の関連のないコミュニティに貢献します。
Such tools are [JupyterHub](https://github.com/jupyterhub/jupyterhub) and [KubeSpawner](https://github.com/jupyterhub/kubespawner).

これらのリポジトリには、コミュニティによって実行されている進行中の作業を追跡し、各プロジェクトの将来の方向性を把握するための何百もの問題が含まれています。

これらすべての問題を一つの場所にまとめようとすることを想像できますか?
それは非常に困難になりますが、不可能ではありません。 探しているものを見つけるために非常に巧妙なタグ付けスキーマと タグ別フィルタリングの手順が必要になります

Project Binderチームの経験では、ほとんどのコミュニティメンバーがこれらのプロジェクトの1つまたは2つだけに貢献しています。
したがって、すべての作業部品のすべての問題へのアクセスを統合することは、コミュニティにとって優先事項ではありません。

They find that having distributed issue tracking allows those members of the community who may only work with JupyterHub to comfortably contribute without needing to be familiar with everything that goes into running [mybinder.org](https://mybinder.org).

(os-comms-issue-tracking-purchase-issues-case-centralised-issue) =

### 集中化された課題リポジトリ

大きなプロジェクトでは、管理が容易になるために、すべての問題を1つの場所にまとめることができます:一元化されたシステムです。
中央サービスを追跡するために問題を使用している場合は、個人のTo-Doリスト タスクが優先されるか誰かに割り当てられているかのような質問に答えます 集中型システムでの問題追跡は良い選択肢であり広いコミュニティに必ずしも流通させる必要はありません

しかし、あなたのコミュニティに参加するという点で、このような集中型システムは問題を引き起こす可能性があります。
あなたの問題が他の場所にある場合、次のようなコミュニティメンバーへの参加への多くの障壁を作成することができます。

- Issues are more difficult to discover
- If they are hosted on another platform (for example, code is on GitHub but issues are on [Asana](https://asana.com/)), that's another tool community members need to learn how to use
- Issues are separated from the code they are referencing

別の課題ボードを持つコミュニティに非常に大きな影響を与えるのは、人々がコードリポジトリにアクセスしたときです。 コードがホストされている場所で問題や会話が行われていないため、非アクティブなプロジェクトのようです。
これにより、コミュニティメンバーは、コードがもはや積極的に開発/保守/サポートされておらず、他のコードベースやソフトウェアパッケージを使用することを選択する可能性があると考えるかもしれません。

(os-comms-issue-tracking-comparative-table)=

## 比較表

以下の表は、マルチリポジトリプロジェクトの分散型および一元化された課題リポジトリの機能を比較しています。

| Feature             |            集中化された課題リポジトリ           | 分散課題リポジトリ |
| :------------------ | :--------------------------------: | :-------: |
| グローバル課題検索           |                  ✅                 |           |
| コードと同じプラットフォームでホスト  |     ❓(保証なし)     |     ✅     |
| リポジトリでフィルター         | ❓(powerusers\*) |     ✅     |
| 関連する更新を購読する         |    ❓(パワーユーザー)   |     ✅     |
| 簡単に発見               |                                    |     ✅     |
| コードベースに接続しました       |                                    |     ✅     |
| コミュニティにアクティブに表示されます |                                    |     ✅     |
| 管理可能な音量             |                                    |     ✅     |

\*パワーユーザー=経験をより効率的にするgotchasやトリックを知るためのプラットフォームに慣れている人たちです

## Further Reading

- Blog post comparing the convenience and community closeness of Mailing Lists and Forums: <https://psychcentral.com/blog/mailing-lists-versus-forums-community-convenience-closeness/>
- Blog post by [Tim Head](https://github.com/betatim):  <https://betatim.github.io/posts/thoughts-on-collective-thinking/>
