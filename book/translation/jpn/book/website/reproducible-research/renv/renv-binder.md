(rr-renv-binder)=
# バインダー

(rr-renv-binder-overview)=
## 概要

今では、Python プロジェクトで使用される計算環境を使用してキャプチャする方法を見てきました。 その環境をどのように共有するか考える時が来ました

`environment.yml` ファイル (または代替パッケージ管理システムと同様のファイル) を使用すると、そのファイルで指定された環境を再現することができます。 しかし、これは、新しいユーザが同じパッケージ管理システムをセットアップし、その使用方法を知っていることに依存します。 計算環境を再構築するための自動ソリューションがあれば、はるかに簡単になります - これはBinderが登場する場所です。

Binder は `repo2docker` と呼ばれるツールを使用して、含まれる構成ファイルに基づいてプロジェクトの Docker イメージを作成します。 生成された画像には、元のユーザーが指定したプロジェクトと計算環境が含まれます。 他のユーザーは、クラウドベースのBinderHub経由で画像にアクセスでき、Webブラウザからコードを表示、編集、実行することができます。

Juliette Takaの下記の素晴らしい漫画は、「バインダー化された」プロジェクトの作成と共有のステップを示しています。

**ステップ 1:** プロジェクトを完了し、彼女の研究を誰とでも共有したい研究者から始めます。 計算環境に関わらずです Binderは完成したプロジェクトにだけ適用する必要はありません。 進行中のプロジェクトを共有するのと同じ方法で使用できます。

**ステップ 2:** 研究者のプロジェクトには、さまざまな種類のファイルが多数含まれています。 この場合、研究者はJupyterノートブックで働いています。 ただし、Binderは、他の多くのファイル形式や言語でも同様に効果的に使用できます。

**ステップ 3:** 研究者は、他の人がアクセスできるGitHubなど、公開されているリポジトリホスティングサービスにコードをアップロードします。 プロジェクトを実行するために必要な計算環境を記述するファイルが含まれています。

**ステップ 4:** 彼女は [mybinder.org](https://mybinder.org) BinderHubにリンクを生成します。 このリンクをクリックすると、誰でも彼女のプロジェクトの「バインダー化された」バージョンにアクセスできます。 クリックすると `repo2docker` がトリガーされ、リポジトリとその構成ファイルの内容に基づいてDockerイメージが構築されます。 この画像はクラウド上でホストされます。 リンクをクリックした人は、Webブラウザで彼女のプロジェクトのコピーに移動され、そこで彼らはそれを操作することができます。 このプロジェクトのコピーは、アクセスされる計算環境に関係なく、ステップ3で指定された研究者の環境でホストされます。

```{figure} ../../figures/binder-comic.png
---
name: binder-comic
alt/binder-comic format@@2 : 人がバインダー化されたプロジェクトを作成するために取ることができるステップのイラスト。
---
図のクレジット - [Juliette Taka, Logilab and the OpenDreamKit project](https://opendreamkit.org/2017/11/02/use-case-publishing-reproducible-notebooks/)
```

これがどのように見えるかを知るために、以下に簡単な例のプロジェクトの結合点を示します。 ファイルは一覧表示され、バインダーにアクセスする人によってクリックおよび変更することができます。

```{figure} ../../figures/binder-home.png
---
name: binder-home
alt: サンプルプロジェクトのバインダーのスクリーンショット
---
サンプルプロジェクトのバインダー。
```

ユーザーは、上記のホームバインダー画面の右上にある「新規」と「ターミナル」をクリックして、ファイルを実行したり、ファイルとやり取りしたりするための端末を開くこともできます。 ここでは、いくつかのデータに対して線形回帰を実行するBinderの例で解析スクリプトを実行するために使用されます。

```{figure} ../../figures/binder-terminal.png
---
name: binder-terminal
alt: ユーザーがプロジェクトファイルを実行または操作できる端末のスクリーンショット
---
ユーザーがプロジェクトファイルを実行または操作できる端末のスクリーンショット
```

前述のように、BinderはJupyterノートブックとよく統合されています。 「新規」をクリックし、同じ方法で「ノートブック」を開くことができます。 These may be more convenient for those working with graphical outputs, as shown here where one is used to run `make_plot.py` in the example Binder:

```{figure} ../../figures/binder-notebook.png
---
name: binder-note
alt: バインダーと統合された Jupyter Notebook のスクリーンショット
---
バインダーと統合された Jupyter Notebook のスクリーンショット
```

BinderにRがインストールされている場合、ドロップダウンメニューにR JupyterノートブックとBinderでRStudioセッションを開くオプションが表示されます。

(rr-renv-binder-曖昧さ回避)=
## 曖昧さ

このセクションでは、明確にするためにここに概説するいくつかの関連する用語があります。

- **Binder**: Webブラウザを介して再現可能な計算環境内で閲覧し、対話できるプロジェクトの共有バージョン。
- **BinderHub**: Binderを生成するサービス。 最も広く使用されているのは [mybinder.org](https://mybinder.org)で、Binderチームによって管理されています。 より専門的な構成をサポートできる他のBinderHubを作成することが可能です。 そのような設定の1つには、プライベートリポジトリを密接な共同作業者間で共有できるようにするための認証が含まれる可能性があります。
- **[mybinder.org](https://mybinder.org)**: public and free BinderHub. 公開されているため、個人的または機密情報(パスワードなど)が必要な場合は使用しないでください。
- **バインダー化**: プロジェクトのバインダーを作成する。

(rr-renv-binder-creating)=
## プロジェクトのバインダーの作成

プロジェクトのバインダー化されたバージョンを作成するには、このセクションで説明される3つの重要なステップが必要です:

1. 計算環境を指定します
2. プロジェクトファイルをどこかに公開してください（GitHubでこれを行う方法について説明します）
3. プロジェクトのバインダーへのリンクを生成する

Binder で使用するサンプルリポジトリの一覧については、 [Sample Binder Repositories](https://mybinder.readthedocs.io/en/latest/sample_repos.html) のページを参照してください。

(rr-renv-binder-creating-stepone)=
### ステップ 1: 計算環境を指定する

計算環境を指定するファイルがプロジェクトに含まれていないとします。 Binderが生成されると、環境はBinderデフォルト環境になります(Python 3を含む)。 ) プロジェクトに適していない場合もあります。 ただし、環境設定ファイルが含まれている場合は、指定された環境で Binder が生成されます。 そのようなファイルの完全なリスト Binderは、例と共に受け入れます [](https://mybinder.readthedocs.io/en/latest/config_files.html). 主要なものについては後述しますが、いくつかは言語固有のものです:

- `environment.yml`
  - `environment.yml` ファイルが {ref}`rr-renv-package` セクションで議論されたことを思い出してください。
- Dockerfile
  - Dockerfiles は {ref}`rr-renv-container` で説明されるので、ここでは説明しません。
- `apt.txt`
  - Dependencies that would typically be installed via commands such as `sudo apt-get install package_name` should be listed in an `apt.txt` file, and will be automatically installed in the Binder.
  - たとえば、プロジェクトが Latex を使用している場合、 `apt.txt` ファイルを読み込む必要があります。
    ```
    texlive-latex-base
    ```
    ベースの Latex パッケージをインストールします。
- `default.nix`
  - {ref}`rr-renv-package` Nix a `default.nix` ファイルを使用する場合は、環境をキャプチャするための便利な方法となります。
- `requirements.txt` (Python)
  - Python ユーザの場合、 `requirements.txt` ファイルを使用して依存するパッケージをリストすることができます。
  - たとえば、Binderを `numpy` にインストールしてもらうには、このファイルを読み込むだけで済みます。
    ```
    numpy
    ```
  - 特定のパッケージバージョンは `==` を使用して指定することもできます。 たとえば、Binderのインストールバージョン `1.14.5` を `numpy` に設定すると、ファイルは次のようになります。
    ```
    numpy==1.14.5
    ```
  - `requirement.txt` ファイルは手書きで書かれる必要はありません。 コマンド `pip freeze > requirements.txt` を実行すると、Python 環境を完全に定義する `requirements.txt` ファイルが出力されます。
- `runtime.txt`
  - Binder で使用する Python や R の特定のバージョンを指定するために使用されます。
  - To specify which version of R to use, find the date it was captured on [MRAN](https://mran.microsoft.com/documents/rro/reproducibility) and include it in the `runtime.txt` file as
    ```
    r-<YYYY>-<MM>-<DD>
    ```
  - Pythonのバージョンを指定するには、 `runtime.txt` ファイル内のバージョンを指定します。 例えば、Python 2.7 を使用するには、ファイルを読み込む必要があります。
    ```
    python-2.7
    ```
- `install.R` or `DESCRIPTION` (R/RStudio)
  - `install.R` ファイルにインストールするパッケージがリストされます。 たとえば、Binderにパッケージ `tibble` をインストールするには、次のようにします。
    ```
    install.packages("tibble")
    ```
  - [DESCRIPTION ファイル](https://cran.r-project.org/doc/manuals/r-release/R-exts.html#The-DESCRIPTION-file) は、依存関係管理のためにRコミュニティでより一般的に使用されます。

(rr-renv-binder-creating-steptwo)=
### ステップ 2: あなたのコードを GitHub に置く

GitHub は {ref}`rr-vcs`の章で長く議論されています。 このステップについてもっと理解したいなら参照してください この章では、簡単な説明をします。 GitHub は、"リポジトリ" を作成し、コード、ドキュメント、またはその他のファイルをアップロードできる非常に広く使用されているプラットフォームです。 このステップを完了するには:

1. [GitHub](https://github.com/) でアカウントを作成します。
2. Binderを作成したいプロジェクトのリポジトリを作成します。
3. プロジェクトファイル(計算環境を指定するために作成したファイルを含む)をリポジトリにアップロードし、そこに保存します (「コミット」をGitHubの語彙に保存します)。

これらの手順を完了できない場合は、 {ref}`バージョン管理 <rr-vcs>` の章を参照してください。

(rr-renv-binder-creating-stepthree)=
### ステップ 3: プロジェクトのバインダーへのリンクを生成する

[https://mybinder.org](https://mybinder.org) に進みます。 ビルドする [mybinder.org](https://mybinder.org) のリポジトリを指定するように要求されるフォームが表示されます。 最初のフィールドに、プロジェクトのGitHubリポジトリのURLを貼り付けます。 以下のようになります: `https://github.com/<your-username>/<your-repository>`

```{figure} ../../figures/mybinder-gen-link.png
---
name: mybinder-gen-link
alt: プロジェクト用のバインダーリンクを生成するために使用される Web ページのスクリーンショット
--
プロジェクト用のバインダーリンクを生成するためのインターフェイス
```

ご覧のとおり、このフォームには追加の項目がありますが、これらはオプションであり、ここでは説明しません。

バインダー化されるプロジェクトの URL を指定すると、上記の画面に自動的に2つのフィールドが入力されます。

- `下のURLをコピーし、Binderを他の人と共有します` 。 は、コピーして共有できる Binder へのリンクを提供します。
- `以下のテキストをコピーし、READMEに貼り付けて、バインダーバッジ` フィールドを表示します。 GitHubに含めることで、プロジェクトにアクセスした誰でもBinderを起動できるボタンを作成できます。

最後に、起動ボタンをクリックします。 これにより、 [mybinder.org](https://mybinder.org) にプロジェクトを実行するために必要な環境を構築するよう求められます。 数分かかる場合があります。 `ビルド ログ` ボタンをクリックすると、ビルド プロセスによって生成されたログが表示されます。 これらのログは、生成される計算環境を定義するファイルのエラーなど、ビルドが失敗する問題を解決するのに役立ちます。

ビルドが完了すると、Binderが自動的に起動されます。再度、時間がかかる場合があります。

(rr-renv-binder-data)=
## バインダーにデータを含む

Binderでデータを利用できるようにする方法はいくつかあります。 最良のものは、データの大きさと、データの共有のためのあなたの好みに依存します。 含まれるデータが多いほど、Binderの起動にかかる時間が長くなります。 Data also takes up storage space that must be paid for, so it is good to be considerate and minimise the data you include, especially on the publicly provided [mybinder.org](https://mybinder.org).

(rr-renv-binder-data-small)=
### 小さな公開ファイル

公開されている小さなデータファイルの最も簡単な方法は、GitHubリポジトリに直接追加するか、それらをBinderに残りのプロジェクトファイルと一緒に含めることです。 これはうまく動作し、最大10MBのサイズのファイルに適しています。

(rr-renv-binder-data-medium)=
### 中程度の公開ファイル

中規模のファイルについて - 数百メガバイトへのメガバイトの少数の10 - それらを格納するためにオンラインでいくつかの他の場所を見つけ、それらが公に利用可能であることを確認しなさい。 Add a file named `postBuild` (which is a shell script so the first line must be `#!/bin/bash`) to your project files. `postBuild` ファイルで、1行の読み取り値を追加します。
```
wget -q -O name_of_your_file link_to_your_file
```

`postBuild` ファイルは、バインダーを生成するファイルが生成されるときにコマンドを実行するために使用されます。 この場合、バインダーを起動するために使用されるファイルにデータをダウンロードするために使用できます。

(rr-renv-binder-data-large)=
### 大きな公開ファイル

大容量ファイルの最適な選択肢は、データ形式に固有のライブラリを使用して、使用中のデータをストリーミングすることです。 [mybinder.org](https://mybinder.org) を操作するチームによって課される、Binderからの送信トラフィックにはいくつかの制限があります。 現在 HTTP と Git への接続のみが許可されています。 これは、人々がデータを取得するためにFTPサイトを使用したいときに表示されます。 セキュリティ上の理由から FTP は [mybinder.org](https://mybinder.org) では許可されていません。
