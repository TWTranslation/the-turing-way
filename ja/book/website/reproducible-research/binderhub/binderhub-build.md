(rr-binderhub-build)=

# 独自のBinderHubを構築する

[mybinder.org](https://mybinder.org/) is the free, public BinderHub that hosts almost 100k Binder launches per week.
なぜ自分のものを作りたいと思うのでしょうか？

Binder [{term}`def<Binder>`] is an open source project maintained by volunteers and as such they ask that users stay within certain computational limitations in order to keep running costs as low as possible whilst still providing a usable service.
独自のBinderHubをホスティングすることで、ユーザーにはるかに柔軟でカスタマイズされたリソースを提供できます。

これらのカスタマイズには以下のものがあります:

- 認証
- 1ユーザーあたりのより大きな計算リソース
- 特注のライブラリのスタックとパッケージ、
- プライベートリポジトリへのアクセスを許可しています
- ユーザーの永続的なストレージ
- 特定の教育機関またはチーム内の共有を制限します。

## BinderHub を展開するときに直面する可能性のある問題

BinderHubsは、大学や研究機関の間でますます人気が高まっています。
これは、同じセットのノートブックの複数のインスタンスをチュートリアルやワークショップの設定で使用することができるためです。

組織に代わってクラウドホストの BinderHub をデプロイする場合は、組織のクラウド プラットフォームサブスクリプションに特定の権限が必要になる場合があります。
必要な権限は、アクセス可能なクラウドプラットフォームとITサービスポリシーによって異なります。
At minimum, you'll need to be able to assign [Role Based Access Control (RBAC)](https://docs.microsoft.com/en-us/azure/role-based-access-control/overview) to your resources so they can act autonomously in order to manage user traffic.
