(rrr-binderhub-compute)=

# リソースを計算

BinderHubはクラウドニュートラルで、任意のクラウドプラットフォームにデプロイできます。
したがって、最小要件は、選択したクラウドプラットフォームへのサブスクリプションです。

実際、BinderHubはクラウドホスティングにまったく依存しておらず、オンプレミスのコンピューティングシステムに展開することができます。

## Kubernetes

[Kubernetes](https://kubernetes.io/) is a system for automating deployment, scaling (making more or fewer copies), and management of containers across a compute cluster (it doesn't have to be cloud-based).
BinderHubはKubernetesを使用して、Binderサービスのユーザーから要求されたリソースを管理し、環境を構築するツールをサポートします。

## ヘルム

[Helm](https://helm.sh/) is a package manager for Kubernetes.
Packages come in the form of _Charts_ which are a set of instructions to deploy, upgrade and manage applications running on a Kubernetes cluster.
Kubernetesアプリケーションのインストールと管理をはるかに容易にし、プロジェクトの特定のチャートをオンラインで公開することができます。
For example, the Helm Chart for BinderHub is available [here](https://jupyterhub.github.io/helm-chart/#development-releases-binderhub).

## repo2docker

[repo2docker](https://repo2docker.readthedocs.io/en/latest/?badge=latest) is a tool that automatically builds a Docker image from a code repository given a configuration file.
この Docker イメージには、リポジトリにリストされているすべてのコード、データ、リソースが含まれます。
コードを実行するために必要なすべてのソフトウェアは、設定ファイルからプリインストールされます。

## JupyterHub

[JupyterHub](https://jupyter.org/hub) is a multi-user server for Jupyter Notebooks and containers alike.
Binderのコンテキストでは、JupyterHubの主な役割は、ユーザのブラウザをKubernetesクラスタ上で実行されているBinderHubインスタンスに接続することです。
ただし、JupyterHub は、BinderHub の操作をより詳細に制御するために、さらにカスタマイズすることができます。

BinderHub は、repo2docker と JupyterHub の上に位置する薄いレイヤーと考えられており、相互作用をオーケストレーションし、URL を解決します。

## バインダーのリンクがクリックされたときはどうなりますか?

1. リポジトリへのリンクは BinderHub によって解決されます。
2. BinderHub は、指定された参照に関連する Docker イメージを検索します (git commit hash, Branch or tag)。
3. **If a Docker image is not found**, BinderHub requests resources from the Kubernetes cluster to run repo2docker to do the following:
   - リポジトリを取得します
   - 構成ファイルに要求されるソフトウェアを含むDockerイメージを構築する
   - そのイメージを Docker レジストリにプッシュします。
4. BinderHub は Docker イメージを JupyterHub に送信します。
5. JupyterHub は、Kubernetes クラスターから Docker イメージを提供するリソースを要求します。
6. JupyterHub は、実行中の Docker 環境にユーザーのブラウザーを接続します。
7. JupyterHub はコンテナのアクティビティを監視し、非アクティブ期間の後にそれを破壊します。
