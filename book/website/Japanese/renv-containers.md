(rr-renv-containers)=
# コンテナ

(rr-renv-containers-why)=
## なぜ容器なのか？

適度に複雑なプロジェクトでも、ソフトウェア依存性スタックのサイズは大きくなります。 たとえば、 `Rmarkdown`を使用してスクリプト化された解析用のPDFレポートを作成する簡単なパイプラインを使用します。 この再現性を可能にするために。 (i) 対応する R パッケージをインストールする必要があり、(ii) R バージョンが同じである必要があります。 しかし、(ii) `pandoc` と `LaTeX` のバージョンは実行時と同じである必要があります。

パッケージマネージャ(condaなど)を介してこれらの依存関係を解決しようとする代わりに、単一のパッケージマネージャーで利用可能なすべての必要なソフトウェアにも依存します。すべての依存関係を含むコンピューティング環境全体のスナップショットを作成する方が簡単かもしれません。 これらのコンピューティング環境は自己完結しているため、「コンテナ」という名前になります。

(rr-renv-containers-what)=
## コンテナとは何ですか?

コンテナを使用すると、研究者が必要なすべての部品(ライブラリなど)を含むプロジェクトをパッケージ化できます。 依存関係とシステムの設定 - そしてそれをすべて一つのパッケージとして出荷します。 誰でも容器を開けてその中で働くことができます プロジェクトを表示し、相互作用するマシンは、それらの計算環境 _が実際に_ であるかにかかわらず、コンテナ内で指定されたマシンと同一であるかのように。 彼らは、非常に異なる環境間でプロジェクトを 転送しやすくするように設計されています。

ある意味、コンテナは仮想マシンのように動作します。 外の世界では、彼らは自分の完全なシステムのように見えます。 しかし、仮想マシンとは異なり、仮想オペレーティングシステム全体を作成するのではなく、一般的に1つのパッケージ化されたすべてのソフトウェアとツールを作成します。 コンテナには必要な個々の部品のみが含まれています これにより、パフォーマンスが大幅に向上し、アプリケーションのサイズが小さくなります。

コンテナは、特定の方法で構成されるソフトウェアに依存する研究を再現するための特に有用な方法です。 または、異なるシステム間で変化する(または存在しない)ライブラリを使用する。 まとめると コンテナは、研究に使用されるシステム全体を再現するため、パッケージ管理システムやBinderよりも再現性のある研究を共有するより堅牢な方法です。 明示的に使われているパッケージだけではありません 彼らの主な欠点は、彼らのより大きな深さに起因することです 他の多くの計算環境を再現する手法よりも概念的に把握・生成が困難です

Ben Corrieは、 ['コンテナとは何か?'](https://www.youtube.com/watch?v=EnJ7qX9fkcU) で、コアコンセプトの合理的にアクセス可能な概念を説明します。

(rr-renv-containers-images)=
## 画像とは？

イメージは、コンテナを生成するために使用されるファイルです。 人間はイメージを作るのではなくレシピを書いてイメージを作るのです コンテナーはイメージからインスタンス化された同一のコピーです。

次のように考えてみてください。

- 人が書くレシピファイルには、プロジェクトの動作バージョンとその計算環境を生成するすべてのステップが含まれています。 しかし実際の素材はありません これを設計図だと考えてください
- イメージを構築するには、そのレシピを使用して、すべてのパッケージ、ソフトウェアライブラリを組み立てます。 完全なプロジェクトと環境を作るために構成する必要がありました 凝縮した塊にまとめます 設計図を使って作られたフラットパックの家具のような画像を考えてみてください。
- コンテナーはそのイメージを取り、プロジェクトの完全に動作するバージョンと、実行に必要な環境を組み立てます。 これをフラットパックの家具の組み立てだと考えてください。

研究者が自分の仕事を再現することを他の人に許可する場合 レシピファイルを書いてプロジェクトのイメージを作る必要があります その後、彼らは自分の仕事を複製したい誰とでもこの画像ファイルを共有することができます。 その人は、イメージを使用して、プロジェクトの動作バージョンを含むコンテナを生成できます。

(rr-renv-containers-docker)=
## Dockerとは?

コンテナを作成し、操作するための多くのツールがあります。 広く使われているDockerに焦点を当てますが、Singularityのような他の人も存在することに注意してください。 Dockerは実行するために `sudo` 権限を必要としないため、高性能コンピューティングシステムでの使用には、ときどき好まれます。

Dockerでは、イメージを生成するために使用されるレシピファイルはDockerfilesとして知られており、 `Dockerfile` と命名する必要があります。

[Docker Hub](https://hub.docker.com/) hosts a great many pre-made images, such as [images](https://hub.docker.com/_/ubuntu) of Ubuntu machines, which can be downloaded and build upon. これにより、Dockerfiles を書くプロセスが比較的簡単になります。ユーザーはほとんどゼロから始める必要がないため、既存のイメージをカスタマイズすることができます。 However, this leaves a user vulnerable to similar security issues as described in the {ref}`rr-renv-yaml-security` of the {ref}`rr-renv-yaml` sub-chapter:

- Dockerイメージに悪意のあるコードを含めることが可能です
- 画像を制作する人は、セキュリティ上の脆弱性を持つソフトウェアを無意識に含めることができます。

[この](https://opensource.com/business/14/7/docker-security-selinux) 記事はコンテナの潜在的なセキュリティ脆弱性について深く掘り下げており、Docker内にあるセキュリティ機能の [詳細な内訳](https://opensource.com/business/14/9/security-for-docker) を紹介します。 どのように機能しているかを示しています 他の人が作成した画像を使用するための最良のアドバイスは、いつものようにです。 信頼できる情報源からのみダウンロードして実行してください Docker Hub には、一般的に使用される画像の「公式イメージ」バッジがあります。

```{figure} ../../figures/docker-official-image.png
---
name: docker-official-image
alt: 公式画像バッジのスクリーンショット
---
```

(rr-renv-containers-installdocker)=
## Docker のインストール

さまざまなシステムで Docker 用のインストーラが利用可能です [こちら](https://docs.docker.com/install/). Detailed installation instructions are also available for a variety of operating systems such as [Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/), [Debian](https://docs.docker.com/install/linux/docker-ce/debian/), [Macs](https://docs.docker.com/docker-for-mac/install/), and [Windows](https://docs.docker.com/docker-for-windows/install/).

(rr-renv-containers-commands)=
## キーコマンド

コンテナを作成し、操作するためのいくつかの重要なコマンドは次のとおりです。

- Dockerfileからイメージをビルドするには、Dockerfileがあるディレクトリに移動して実行します。
  ```
  sudo docker build --tag image_name .
  ```
- システム上の画像を一覧表示するには、以下を使用します。
  ```
  sudo docker image ls
  ```
- 画像を削除するには、以下を実行してください:
  ```
  sudo docker rmi image_name
  ```
- イメージからコンテナを開くには、以下を実行します。
  ```
  sudo docker run -i -t image_name
  ```
  `-i -t` フラグは自動的にコンテナ内のインタラクティブ端子を開き、プロジェクトファイルを表示して操作できます。
- 対話型端末を終了するには、以下を使用します。
  ```
  exit
  ```
- IDを持つアクティブなコンテナのリストを取得するには、次を実行します。
  ```
  sudo docker container ls
  ```
- コンテナの状態を変更するために使用される3つの主要なコマンドもあります:
  - 一時停止すると、コンテナを実行しているプロセスが一時停止されます。
    ```
    sudo docker pause container_ID
    ```
    コンテナは `pause` を `unpause` に置き換えることで一時停止を解除することができます。
  - コンテナを停止すると、実行中のプロセスが終了します。 コンテナを削除するには、コンテナを停止する必要があります。
    ```
    sudo docker stop container_ID
    ```
    停止したコンテナは、 `stop` を `restart` に置き換えることで再起動できます。
  - `stop` がコンテナを動作させない場合は、
    ```
    sudo docker kill container_ID
    ```
- コンテナを削除するには、以下を実行します。
  ```
  sudo docker rm container_ID
  ```
(rr-renv-containers-dockerfiles)=
## Dockerfilesの書き込み

簡単なDockerfileの解剖図を見てみましょう。

```
# Step 1: Set up the computational environment

# Set the base image
FROM ubuntu:18.04

# Install packages needed to run the project
RUN apt-get update && \
    apt-get install -y --no-install-recommends python3.7 python3-pip && \
    rm -rf /var/lib/apt/lists/*
RUN python3 -m pip install numpy

#-----------------------

# Step 2: Include the project files in the image

# Copy files from the `project_files` directory on the machine building the image
# into the `project` folder in the container. This folder and any missing
# directories in its path are created automatically.
COPY project_files/ project/
```

これは複雑に見えますが、この例のほとんどの行はコメントです (これは `#`'sの前にあります)。 実際のコードは6行しかありません。 これらの1つ目は、 `FROM` ステートメントで、ベース画像を指定します。 Dockerfiles は、たとえそれが `FROM SCRATCH` であっても、FROMを必要とします。 Dockerfile 内の以下のコマンドはすべて、研究者のプロジェクトの機能バージョンを作成するためのベースイメージをビルドします。 画像のバージョン(この場合は`18.04` )を指定することは任意です。 However, it is best practice as it ensures that our Dockerfile remains valid after new releases of Ubuntu, which may not include packages (or specific versions thereof) that we require later (for example `python3.7`).

適切なベースイメージを選択するのに時間を費やす価値があります。 Dockerfile を書く作業量を劇的に削減できます。 例えば、それらに含まれるRプログラミング言語を持つ画像のコレクションは、 [こちら](https://github.com/rocker-org/rocker-versioned) で見つけることができます。 プロジェクトがRを利用する場合 Dockerfile で R をインストールするのに時間を費やすのではなく、ベースイメージとしてこれらのいずれかを使用すると便利です。

線の最大のブロックが次に来ます。 これは一連の `RUN` 文で、イメージを構築するときにシェルコマンドを実行します。 このブロックでは、プロジェクトを実行するために必要なソフトウェアをインストールするために使用されます。 最初の `RUN` ブロックは、このフォームの 連続コマンドです。

```
RUN command_to_do_thing_1 \
   && command_to_do_thing_2 \
   && command_to_do_thing_3 \
   && command_to_do_thing_4
```

It is good practice to group related commands into a single `RUN` block to reduce the final size of your image by [avoiding the creation of unnecessary layers](https://docs.docker.com/develop/develop-images/#minimize-the-number-of-layers). `--no-install-recommends` を使用して、 [不要なパッケージのインストールを避けるために](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#dont-install-unnecessary-packages) と [ `apt-cache のクリーンアップ`](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#run)を使用してベストプラクティスに従います。 どちらもDebianやUbuntuイメージのサイズをさらに小さくします。

Pythonをインストールした後、コードに必要なライブラリをインストールするために、もう1つのRUNステートメントを使用します。

最後に、 `COPY` コマンドを使用して、イメージを構築するマシンからプロジェクトファイルをイメージにコピーします。 このコマンドの構文は `COPY file_to_copy location_in_container_to_copy_to` です。 この例では、 `project_files` ディレクトリ内のすべてのファイルは、コンテナ内の `プロジェクト` ファイルに含まれています。 Dockerfileがあるディレクトリからのみファイルをコピーできます。 またはその中のサブディレクトリ (この例では、 `project_files` サブディレクトリ) です。

`ADD` コマンドは `COPY`と同じ機能を持っています。 画像を作成するマシンではなくファイルを追加するのにも使えます 例えば、オンラインでホストされているファイルを含めるために使用することができます `ADD` とファイルへのURLが付いています。 It is good practice to use `COPY`, except where `ADD` is specifically required, as the term `COPY` is more explicit about what is being done.

上記の例から構築された `book_example`と呼ばれるイメージからコンテナが開かれると、次のようになります。

```{figure} ../../figures/container-example.png
---
name: container-example
alt: イメージからコンテナが開かれたときに何が起こるかのスクリーンショット
---
```

As you can see, the directory `project` has been created, and inside the project files, `analysis.py` and `data.csv` have been copied into it. Dockerfileにはプロジェクトに必要なソフトウェアがすでに含まれているため、画像では、 `analysis.py` スクリプトはソフトウェアをインストールせずに実行されます。

(rr-renv-containers-dockerfiles-workdir)=
### `ワークディレクトリ`

このコマンドはDockerfilesで現在の作業ディレクトリを変更するために使用できます。 Dockerfileでこれに続くコマンドは、別の `WORKDIR` が作業ディレクトリを変更するまで、新しい作業ディレクトリ内に適用されます。 コンテナがインタラクティブ端子で開かれると、ターミナルは最後の作業ディレクトリに開きます。 ここでは、 `WORKDIR`と、生成されたコンテナを使用する Dockerfile の簡単な例を示します。

```
# Basic setup
FROM ubuntu
RUN apt-get update

# Make a directory called A
RUN mkdir A

# Make the working directory A
WORKDIR A

# Make two directories, one called B_1 and one called B_2
RUN mkdir B_1
RUN mkdir B_2
```

```{figure} ../../figures/workdir-example.png
---
name: workdir-example
alt: WORKDIRコマンドで生成されたコンテナのスクリーンショット
---
```

ディレクトリ `B_1` と `B_2` は、ディレクトリ `A` 内に作成されています。

`画像の作成中にディレクトリの変更が必要な場合は、WORKDIR` を使用する必要があります。 It may be tempting to use `RUN cd directory_name` instead, as this syntax will be more familiar to those that commonly work via the command line, but this can lead to errors. Dockerfile 内の `RUN` ステートメントごとにイメージが保存され、以下のコマンドがイメージに新たに適用されます。 一例として 上記の例では、 `WORKDIR A` 行が に `RUN cd A` にスワップされた場合に起こることを示します。

```{figure} ../../figures/cd-example.png
---
name: cd-example
alt: WORKDIRコマンドがRUN cd
---
```

すべてのディレクトリは、この場合のトップレベルにあります。 `B_1` と `B_2` は `A` の中にある。 This is because the image was restarted after the `RUN cd A` command and opened at the top (root) level by default, so that is where the `mkdir B_1` and `mkdir B_2` commands took effect.

(rr-renv-containers-dockerfiles-commands)=
### その他のコマンド

Dockerfiles で時々使用される他のコマンドは次のとおりです。

- `CMD`: コンテナが開くとすぐにコマンドを実行するために使用されます。 コンテナを _設定する_ の一部として実行されるコマンドであるRUNコマンドとは異なります。 例えば、イメージからコンテナーが開かれたときにウェルカムメッセージを表示するには、 `CMD` を以下のように使用できます。
  ```
  CMD ["echo","ようこそ! あなたはこのコンテナを開いたばかりです！"]
  ```
  誰かがコンテナ内で作業を開始する前に必要なコマンドに対して、ユーザー自身で実行することを強制せず (そして必要なことを知っていると信じて) CMDを使用することをお勧めします。
- `ボリューム`: これらは {ref}`後に <rr-renv-containers-volumes>` で説明されます。
- `MAINTAINER`: Dockerfile を書いた人に関する情報を含む。 通常はDockerfileの上部に含まれています。
- `エクスポート`: これには公開すべきポートが含まれます。 Web アプリを共有するために Docker を使用している人により関連性があります。
- `USER`: コマンドを実行するユーザーを変更する (特権を削除するのに役立ちます)。

(rr-renv-containers-dockerignore)=
## 画像の作成と `.dockerignore` ファイル

As mentioned in the {ref}`key commands <rr-renv-containers-commands>` section, to build an image open a terminal in the same directory as the Dockerfile to be used and run:

```
sudo docker build --tag name_to_give_image .
```

イメージがビルドされると、Dockerfileのディレクトリ以下(これを「コンテキスト」と呼びます)にすべてがDockerデーモンに送信され、イメージをビルドします。 デーモンは、Dockerfile とそのコンテキストを使用してイメージをビルドします。 コンテキストに多くの大きなファイルが含まれている場合、イメージを構築するために必要ではありません。 (古いデータファイル、例えば)それからそれらをデーモンに送る時間の無駄です。 そうすることで、イメージを構築するプロセスを遅くすることができます。 `.dockerignore` と呼ばれるテキストファイルにファイルをリストすることで、ファイルをコンテキストから除外することができます。 そうするのは良い習慣です。

ファイルは `.dockerignore` ファイルに個別にリストされる必要はありません。 `.dockerignore` ファイルの内容の例を以下に示します:

```
*.jpg
**/*.png
data_files/*
file_to_exclude.txt
```

これはコンテキストから除外されます：

- Dockerfile と同じディレクトリにある `.jpg` ファイル
- Dockerfile ファイル `と同じディレクトリにある` すべての _またはその中にあるサブディレクトリ_
- `data_files` ディレクトリ内のすべてのファイル
- `file_to_exclude.txt` という名前のファイル

(rr-renv-containers-sharing)=
## 画像の共有

Docker イメージは、アカウントが必要な [Docker Hub](https://hub.docker.com/)を介して最も簡単に共有できます。 AliceとBobの2人の研究者がプロジェクトに協力しており、Aliceは彼女の作品の一部をBobと共有したいと考えています。

これを行うには、アリスが必要です:

- Dockerfile を書いて彼女の作品のイメージを生成します。
- 画像を作成します。 彼女（発明家）はそれを image_name と呼んでいます
- DockerHub に移動し、アカウントにサインアップします。 Alice (再び発明家であること) がユーザー名 `username_Alice` を選択すると言います。
- マシン上の端末からDockerHubにログインします。
  ```
  sudo docker login
  ```
- イメージの名前を入力し、パターン `username/image_name:version` を使用して、彼女のプロジェクトのイメージをコマンドラインでタグ付けします。 アリスは次のコマンドを実行します。
  ```
  sudo docker tag image_name username_Alice/image_name:version_1
  ```
- イメージを Docker Hub アカウントにプッシュします。
  ```
  sudo docker tag push username_Alice/image_name:version_1
  ```
- アリスの画像はオンラインになり、ダウンロードできます。 ボブに向かって...

Bob (Docker が既にインストールされていると仮定する) を実行するだけで Alice のイメージからコンテナを開くことができます

```
sudo docker run -i -t username_Alice/image_name:version_1
```

最初は、Docker は、Bob のマシンでこのイメージを検索します。 見つからない場合は、DockerHubを _自動的に_ 検索します。 Alice の画像をダウンロードし、Bob のマシン上で Alice の作業と環境を含むコンテナーを開きます。

(rr-renv-containers-copying)=
## コンテナへと、コンテナからファイルをコピーする

コンテナは仮想マシンによく似ています 結果としてファイルをコピーするのは 同じコンピュータ内の別の場所に ファイルをコピーするのは

コンテナを実行しているマシンから、以下を使用してファイルをコピーできます。

```
sudo docker cp file_name container_ID:path_to_where_put_file/file_name
```

`sudo docker container ls` を使ってコンテナーIDを取得できることを思い出してください。

コンテナを実行しているマシン上で次のコマンドを実行することで、コンテナ内からコンテナを実行しているマシンにファイルをコピーできます:

```
sudo docker cp container_ID:path_to_file/file_name path_to_where_put_file/file_name
```

If the second part (the `path_to_where_to_put_file/file_name`) is substituted for a `.`, then the file will be copied to whatever directory the terminal running the command is in.

(rr-renv-containers-volumes)=
## ボリューム

イメージからコンテナを開くたびに、そのコンテナはまったく新しいものになります。 コンテナが開かれ、その中で作業が行われるとします。 コンテナが開かれ、その中で作業が行われるとします。 そのコンテナが閉じられていて、そこから来たイメージが、もう一度別のコンテナを起動するために使用されます。 その仕事は新しいものには入らない これは、単純に画像の開始状態を記述します。

研究者が時間の経過とともに容器の中で仕事をしたい場合、これは問題になることがあります。 幸いなことに、ボリュームを使用してこれを回避する方法があります。 ボリュームは閉じた後でもコンテナ内で行われた作業を保存し、将来のコンテナにその作業をロードするために使用することができます。

ボリュームを作成/使用するには、以下を実行してください:

```
sudo docker run -i -t -mount source=volume_name,target=/target_directory image_name
```

ボリュームには、 `volume_name` より詳細な名前を付ける必要があります。 `ターゲット` ディレクトリが必要です。このディレクトリ内のみが保存されます。 研究者が完了すると、通常通り容器を閉じることができます。 プロジェクトに戻って作業を継続したい場合は、上記と同じコマンドを使用するだけです。 そして、 `volume_name` に含まれる作業を新しいコンテナにロードします。 それはそこにも新しい仕事を保存します。

以下はボリューム関連コマンドの一覧です。

- ボリュームを一覧表示するには: `sudo docker volume ls`
- ボリュームを削除するには: `sudo docker volume rm volume_name`
- 添付されていないすべてのボリュームを削除するには: `sudo docker volume prune`

コンテナを削除した場合、 `-v` は `sudo docker rm container_ID` の `rm`の後に含まれています コンテナに関連付けられているボリュームも削除されます。

(rr-renv-containers-singularity)=
## 特異度


> **前提条件**: 現時点では、Singularity は Linux システム(例えば、Ubuntu)でのみ動作します。 macOS を使用している場合、 [Singularity Desktop for macOS](https://www.sylabs.io/singularity-desktop-macos/) は "Beta" リリース段階にあります。

再現性のある研究に Docker を使用することの大きな欠点は、ユーザー空間アプリケーションとしてではなく、サーバー管理者のためのツールとして意図されていることです。 そのため、操作にはルートアクセスが必要です。 ただし、解析の実行にユーザーにrootアクセスが必要な理由はありません。 これは、ユーザーが決してrootアクセスを持たないHPCシステムのような共有リソースで計算が行われる場合に特に重要です。

この問題に対処するために、 [特異点](https://www.sylabs.io/) コンテナソフトウェアが導入されました。 特異性はHPCシステムと再現性のある研究を念頭に置いて作成されました( \[this\](https://www.youtube.com/watch?v=DA87Ba2dpNMビデオを参照)。 実行にはルートアクセスは必要ありません(コンテナー _イメージをビルドするためのみ)_! このため、HPCユーザーは、たとえば高性能クラスタで分析を実行する前にコンテナイメージをローカルに構築することができます。 追加の利点として これにより、管理者スタッフにインストールを煩わせることなく、HPCシステム上でほぼすべてのソフトウェアを使用することが可能になります。

さらに、Dockerは _で最もよく知られている_ コンテナ化アプローチなので、特異性はdockerコンテナとの互換性を維持することを目指しています。 つまり、(root アクセスを必要とせずに!)シンギュラリティを使用して通常のドッカーコンテナを実行することができます。

Singularity は、Dockerコンテナをベースにした新しいイメージをベースレイヤーとして構築することで、Dockerイメージの実行や拡張に使用できます。 例えば、シンギュラリティを使用して、ubuntuドッカーイメージを使用してシェルを使用してバニラのubuntuコンテナを作成することができます。

```
singularity shell docker://ubuntu
```

> ( `exit` とタイプして、再び対話型シェルを離れます)。

docker イメージが `Dockerfile` ファイルを使用してビルドされるように、特異性コンテナは特異性定義ファイルからビルドされます。 プロセスと構文はdockerファイルに似ていますが、微妙な違いがあります。 最小限の動作例として、公式の ubuntu docker container イメージに基づいて `lolcw` コンテナを構築できます。 `lolcow.def` ファイルに以下を入れてください( [Singularity documentation](https://www.sylabs.io/guides/3.2/user-guide/build_a_container.html) に基づいて):
```
Bootstrap: docker
From: ubuntu

%post
    apt-get -y update
    apt-get -y install fortune cowsay lolcat

%environment
    export LC_ALL=C
    export PATH=/usr/games:$PATH

%runscript
    fortune | cowsay | lolcat
```

This 'recipe' uses a docker image as a basis (`ubuntu`), installs a few `apt` packages, modifies a few environment variables, and specifies the `runscript` (which is executed using the `singularity run` command). 特異性定義ファイル形式の詳細は、公式の [ドキュメント](https://www.sylabs.io/docs/) を参照してください。

コンテナイメージは、次のように構築することができます (rootを必要とします)。

```
sudo singularity build lolcow.simg lolcow.def
```

This will pull the ubuntu image from DockerHub, run the steps of the recipe in the definition file and produce a single output image file (`lolcow.simg`). 最後に `runscript` が次のように実行されます。

```
singularity run lolcow.simg
```

理想的には、素敵なASCIIの牛と知恵のいくつかの単語を見る必要があります:

```
___________________________________
/ \
\の友達が困っているのを助けるために呼び出されます。                /
-----------------------------------
       \   ^__^
        \  (oo)\_______
           (__)\       )\/\
               ||----w |
               ||     ||
```

HPC互換であるため、シンギュラリティコンテナは幅広いワークフロー管理ツールでもサポートされています。 例えば、 [snakemake](https://snakemake.readthedocs.io/en/stable/) と [nextflow](https://www.nextflow.io/docs/latest/singularity.html) の両方が、ジョブ固有の特異性コンテナをサポートしています。 これにより、特異性コンテナは広く使用されている [スラム](https://slurm.schedmd.com/documentation.html) ワークロードマネージャを使用して、HPCシステムのワークフローを並列化するのに非常に適しています。 シンギュラリティ、コンテナ、ヘビメイク/nextflow を使用することは、大規模なスケールに再現性を拡張する方法です。 さらに、追加の利点として、デスクトップマシンからHPCシステムにワークフローをもたらすには、カスタムジョブ送信スクリプトを作成する必要がなくなりました。

(rr-renv-containers-singularity-storage)=
### コンテナーイメージの長期保存

ビルドプロセスはさまざまな(オンライン)ソースに依存するため、単なるコンテナレシピファイルはそれ自体では再現できないことに注意することが重要です。 したがって、元のソースが更新された場合、同じレシピファイルが異なる画像につながる可能性があります。

真の再現性を達成するためには、実際のコンテナ _画像_ を保存することが重要です。 特異点画像の場合、画像は単に大きなファイルであるため、これは特に簡単です。 These can vary in size, from a few tens of megabytes (micro-containers) to several gigabytes, and are therefore not suited for being stored in a git repository themselves A free, citable, and long-term solution to storing container images is [zenodo.org](https://zenodo.org/) which allows up to 50 Gb per repository. zenodoミントDOIはすべてのコンテンツがアップロードされたため、画像はすぐに引用されます。 In contrast to [Docker Hub](https://hub.docker.com/) (which also only accepts docker images), zenodo is also clearly geared towards long-term storage and discoverability via a sophisticated metadata system. したがって、特定の分析に関連する科学的なコンテナを保存するのに理想的です。これらは時間とともに変化しない傾向があります。

(rr-renv-containers-warning)=
## 警告の言葉

特異点とドッカーは似ているかもしれませんが、概念的には全く異なっています。 シンギュラリティがコンテナを実行するためにルートアクセスを必要としないという明白な事実のほかに。 ホストとコンテナファイルシステムの区別も異なります 例えば、デフォルトでは、singularity はコンテナ内のいくつかのバインドポイントを含みます。具体的には以下のようになります:

- `$HOME`
- `/sys:/sys`
- `/proc:/proc`
- `/tmp:/tmp`
- `/var/tmp:/var/tmp`
- `/etc/resolv.conf:/etc/resolv.conf`
- `/etc/passwd:/etc/passwd`
- `$PWD`

作業ディレクトリ内のすべてのファイルがコンテナ内に表示されることを意味するため、 `$PWD` が便利です。 Binding `$HOME` by default, however, also implies that software using configuration files from `$HOME` might behave unexpectedly since the image specific configuration files are overwritten with the current users settings in `$HOME`. この挙動はHPCシナリオでは便利ですが、再現性のある研究には潜在的に危険です。 潜在的な問題を避けるために、特異性コンテナにインストールされているソフトウェアは、グローバルでユーザーに依存しない設定ファイルを指す必要があります。
