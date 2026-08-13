(rr-renv-options)=

# 計算環境の取得

計算環境のキャプチャにはいくつかの方法があります。
この章で取り上げられる主なものは、パッケージ管理システム、バインダー、仮想マシン、およびコンテナです。
それぞれに長所と短所があり、プロジェクトの性質に応じて最適な選択肢があります。

それらは大きく2つのカテゴリに分けられます:ソフトウェアと環境で使用されるそのバージョンのみをキャプチャするもの(Package Management Systems) そして、オペレーティングシステムやカスタマイズされた設定(仮想マシンとコンテナ)を含む計算環境全体を複製するもの。

もう一つの方法は、再現された研究がどのように再現子に提示されるかです。
Binderまたは仮想マシンを使用すると、よりグラフィカルなGUIタイプの結果が生成されます。
これとは対照的に、コンテナとパッケージ管理システムの出力はコマンドラインを介してより簡単に操作できます。

```{figure} ../../../figures/computational-environments.*
---
name: computational-environments
alt: A depiction of the various tools used to capture computational environments
---
Ways of capturing computational environments
```

それぞれのツールの簡単な説明は以下の通りです

(rr-renv-options-pms)=

## パッケージ管理システム

Package Management Systems [{term}`def<Package Management System>`] are tools used to install and keep track of the software (and critically versions of software) used on a system and can export files specifying these required software packages/versions.
ファイルを使用して、手動またはパッケージ管理システム経由で環境を複製することができます。

(rr-renv-options-binder)=

## Binder

Binder [{term}`def<Binder>`] is a service which generates fully-functioning versions of projects from a git repository and serves them on the cloud.
これらの「binderized」プロジェクトは、Webブラウザを介して他の人とアクセスし、対話することができます。
これを行うには、Binderはプロジェクトを実行するために必要なソフトウェア(および、オプションとして、バージョン)を指定する必要があります。
Users can make use of Package Management Systems or Dockerfiles (discussed in the {ref}`rr-renv-options-containers` sections) to do this if they so desire.

(rr-renv-options-vm)=

## 仮想マシン

Virtual Machines [{term}`def<Virtual machine>`] are simulated computers.
ユーザーは、「仮想」コンピュータを非常に簡単に作ることができ、必要なオペレーティングシステムを指定します。
他のアプリと同じように動作させることができます アプリ内には、デスクトップ、ファイルシステム、デフォルトのソフトウェアライブラリ、および指定されたマシンのその他の機能があります。
これらは実際のコンピュータであるかのように相互作用することができます。
仮想マシンは簡単に複製して共有することができます。
これにより、研究者は仮想マシンを作成し、自分の研究を実行し、ファイル、設定、出力とともに状態を保存することができます。
これらを完全に機能するプロジェクトとして配布することができます。

(rr-renv-options-containers)=

## Containers

Containers [{term}`def<Container>`] offer many of the same benefits as Virtual Machines.
それらは基本的に、独自のファイル、ソフトウェア、および設定を含むことができる完全に別個のマシンとして機能します。

違いは、仮想マシンには、プロジェクトがその関連するソフトウェアを使用しているかどうかに関係なく、通常はパッケージ化されたすべての関連するソフトウェアとともに、オペレーティングシステム全体が含まれていることです。
コンテナーには、その中で明示的に定義されたソフトウェアとファイルのみが含まれており、プロジェクトを実行することができます。
これにより、仮想マシンよりもはるかに軽量になります。

コンテナは、高性能コンピューティング環境でプロジェクトを実行する必要がある場合に特に便利です。
Since they already _contain_ all the necessary software, they save having to install anything on an unfamiliar system where the researcher may not have the required permissions to do so.
