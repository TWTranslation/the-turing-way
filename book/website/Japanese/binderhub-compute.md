(rrr-binderhub-compute)=
# リソースを計算

BinderHubはクラウドニュートラルで、任意のクラウドプラットフォームにデプロイできます。 したがって、最小要件は、選択したクラウドプラットフォームへのサブスクリプションです。

実際、BinderHubはクラウドホスティングにまったく依存しておらず、オンプレミスのコンピューティングシステムに展開することができます。

## Kubernetes

[Kubernetes](https://kubernetes.io/) は、デプロイメントの自動化、スケーリング(多かれ少なかれコピーの作成)のためのシステムです。 そして、コンピューティングクラスタ全体のコンテナの管理(クラウドベースである必要はありません)を行います。 BinderHubはKubernetesを使用して、Binderサービスのユーザーから要求されたリソースを管理し、環境を構築するツールをサポートします。

## ヘルム

[Helm](https://helm.sh/) は Kubernetes のパッケージマネージャです。 パッケージは *チャート* の形で展開する手順のセットです。 Kubernetes クラスター上で実行されているアプリケーションのアップグレードと管理。 Kubernetesアプリケーションのインストールと管理をはるかに容易にし、プロジェクトの特定のチャートをオンラインで公開することができます。 たとえば、BinderHub の Helm チャートは [こちら](https://jupyterhub.github.io/helm-chart/#development-releases-binderhub) から利用できます。

## repo2docker

[repo2docker](https://repo2docker.readthedocs.io/en/latest/?badge=latest) は、設定ファイルを与えられたコードリポジトリから Docker イメージを自動的にビルドするツールです。 この Docker イメージには、リポジトリにリストされているすべてのコード、データ、リソースが含まれます。 コードを実行するために必要なすべてのソフトウェアは、設定ファイルからプリインストールされます。

## JupyterHub

[JupyterHub](https://jupyter.org/hub) は、Jupyter Notebooks とコンテナ用のマルチユーザサーバです。 Binderのコンテキストでは、JupyterHubの主な役割は、ユーザのブラウザをKubernetesクラスタ上で実行されているBinderHubインスタンスに接続することです。 ただし、JupyterHub は、BinderHub の操作をより詳細に制御するために、さらにカスタマイズすることができます。

BinderHub は、repo2docker と JupyterHub の上に位置する薄いレイヤーと考えられており、相互作用をオーケストレーションし、URL を解決します。

## バインダーのリンクがクリックされたときはどうなりますか?

1. リポジトリへのリンクは BinderHub によって解決されます。
2. BinderHub は、指定された参照に関連する Docker イメージを検索します (git commit hash, Branch or tag)。
3. **Docker イメージが見つからない場合**, BinderHub は Kubernetes クラスターからリソースを要求して、repo2docker を実行します。
   - リポジトリを取得します
   - 構成ファイルに要求されるソフトウェアを含むDockerイメージを構築する
   - そのイメージを Docker レジストリにプッシュします。
4. BinderHub は Docker イメージを JupyterHub に送信します。
5. JupyterHub は、Kubernetes クラスターから Docker イメージを提供するリソースを要求します。
6. JupyterHub は、実行中の Docker 環境にユーザーのブラウザーを接続します。
7. JupyterHub はコンテナのアクティビティを監視し、非アクティブ期間の後にそれを破壊します。
