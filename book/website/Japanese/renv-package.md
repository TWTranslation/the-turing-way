(rr-renv-package)=
# パッケージ管理システム

パッケージマネージャーは、環境内で使用するさまざまなソフトウェアパッケージ(およびそのバージョン)をインストールして追跡します。 例えば、Yum、Zypper、dpkgから選択するかなりの数があります。 そしてニックス（ {ref}`rr-renv-binder` セクションで述べます）。 いくつかの有用な機能を持つ [Conda](https://conda.io/en/latest/)に焦点を当てます。

(rr-renv-package-conda)=
## Condaは何をしますか?

Condaにより、ユーザーは任意の数の完全に独立した環境を作成し、迅速にそれらを切り替えることができます。 たとえば、研究者がプロジェクトを持っているとします。 _プロジェクト 1_これは Conda によって定義された独自の環境を持ち、以下のパッケージのセットで構成されています。

| **パッケージ名** | **バージョン** |
| ---------- | --------- |
| `パッケージA`   | `1.5.2`   |
| `パッケージB`   | `2.1.10`  |
| `パッケージ C`  | `0.7.9`   |

その後、研究者は自身の環境で _プロジェクト2_ を開始します。以下のパッケージがあります。

| _パッケージ名_  | _バージョン_  |
| --------- | -------- |
| `パッケージB`  | `2.1.10` |
| `パッケージ C` | `1.2.4`  |
| `パッケージ D` | `1.5.2`  |
| `パッケージ E` | `3.7.1`  |

ここで注意してください。 `プロジェクト 2` で使用されている _パッケージ C_ のバージョンは、 _プロジェクト One_ で使用されているバージョンから更新されています。 これらのプロジェクト環境が分離されていない場合、研究者は次の選択肢を持つでしょう:

- A) 古いバージョンの `パッケージ C` を永久に使用し、それ以降のバージョンでは更新やバグ修正の恩恵を受けません。
- B) 更新されたバージョンのパッケージをインストールし、それが _Project One_ に影響しないことを望む。
- C) Installing the updated version of the package for use in _Project Two_, then uninstalling it and reinstalling the old one whenever they need to do work on _Project One_. これは非常に迷惑であり、リスクが忘れられているステップです。

これらのオプションはすべて非常に貧しく、それゆえ、容易に交換可能な別の環境を作成するためのCondaの有用性があります。

Condaは計算環境を簡単にキャプチャしてエクスポートすることもできます。 逆の方向に進むこともできます。他の人の環境を再現するために使用できる設定ファイルから計算環境を生成できます。

Condaのもう1つの利点は、作業しているマシンの管理者権限を持たないユーザーには、はるかに柔軟性を提供することです(ハイパフォーマンスコンピューティング施設で作業する場合は非常に一般的です)。 Condaがなければ、そのようなマシンに必要なソフトウェアをインストールすることは通常困難です。 However, because Conda creates and changes _new_ environments rather than making changes to a machine's overall system environment, admin privileges are not required.

最後にCondaはPython中心の程度ですが、他の言語で使用するためにも十分に統合されています。 たとえば、基本バージョンの Conda には C++ 標準ライブラリが含まれています。

(rr-renv-package-installing)=
## Condaのインストール

これらのインストール手順は、Linux システムに向けられていることに注意してください。 WindowsまたはMacシステムにCondaをインストールする手順はこちら [](https://docs.conda.io/projects/conda/en/latest/user-guide/install/).

[https://repo.continuum.io/miniconda/](https://repo.continuum.io/miniconda/) に移動し、お使いのシステム用の最新の Miniconda 3 インストーラ(32 ビットまたは 64 ビット)をダウンロードしてください。 `miniconda_version_number.sh` のような名前になります。 以下を使用してインストーラを実行します。

```
bash Miniconda_version_number.sh
```

以下のように入力することで、Condaが正常にインストールされていることを確認できます。

```
conda --version
```

バージョン番号を出力します。

(rr-renv-package-using)=
## 環境の作成と使用

Condaは、一般的に使用されるソフトウェアパッケージを含むベース環境を自動的にインストールします。 この基本環境で作業することは可能ですが、起動するたびに新しい環境を作るのが良い方法です。

環境を作成するには、 `conda create --name your_project_env_name` の後に含めるパッケージのリストを使用します。 `scipy` と `matplotlib` パッケージを含めるには、コマンドの最後に追加します。

```
conda create --name Project_One sciplotlib
```

名前の後ろに `=package_number` を使用することで、特定の(またはすべての)パッケージのバージョンを指定できます。 例えば、上記の環境で `scipy 1.2.1` を指定するとします。

```
conda create --name Project_One scipy=1.2.1 matplotlib
```

環境の作成時には、インストールする言語のバージョンを指定することもできます。 例えば、 `Project_One` 環境で _Python 3.7.1_ を使用するには:

```
conda create --name Project_One python=3.7.1 scipy=1.2.1 matplotlib
```

環境が作成されたので、 `conda activate environment_name` を介してその環境を有効化(使用開始)します。 この例では、

```
Project_One の有効化
```

古いバージョンの Conda を使用している場合は、 `conda` の代わりに `source` を使用する必要があることに注意してください。

環境が有効になると、端末の各プロンプトの前に環境名が表示されます。

```
(Project_One) $ python --version
Python 3.7.1
```

(rr-renv-package-deleting)=
## 環境の無効化と削除

使用している環境を無効にすることができます:

```
コンドミニアム無効
```

そして、ここに示すような環境を削除(削除)します。

```
conda env remove --name Project_One
```

環境が正常に削除されたかどうかを確認するには、システム上のすべての Conda 環境のリストを参照できます。

```
conda envリスト
```

ただし、環境を削除しても、それに関連付けられていたパッケージファイルは削除されないことがあります。 これは、もはや必要とされていないパッケージに多くのメモリを浪費する可能性があります。 どの環境でも参照されなくなったパッケージも、以下を使用して削除できます。

```
きれいなコンダ -pts
```

または、環境 ( _Project_One_など) と関連するパッケージを削除することもできます。

```
conda remove --name Project_One --all
```

(rr-renv-package-removing)=
## 環境内のパッケージのインストールと削除

環境内では、以下を使用してより多くのパッケージをインストールできます。

```
conda install package_name
```

同様にそれらを取り除くこともできます

```
conda remove package_name
```

これは Conda 内からパッケージをインストールする最良の方法です。Conda でカスタマイズされたバージョンのパッケージもインストールされます。 ただし、Conda固有のバージョンのパッケージが利用できない場合は、他のメソッドを使用することができます。 例えば、 `pip` は Python パッケージをインストールするのに一般的に使用されます。 以下のようなコマンドを実行します。

```
pip install scipy
```

は `scipy` パッケージを明示的にインストールします。 `pip` が現在アクティブな Conda 環境にインストールされている限り。 残念ながら、Conda と `pip` が一緒に環境を作成するときに使用されます。 生殖が困難な状態に至ることがあります 具体的には、 `pip` の後に Conda を実行すると、 `pip` を介してインストールされているパッケージを上書きまたは中断する可能性があります。 これを回避する一つの方法は、Condaにできるだけ多くの要件をインストールし、pipを使用することです。 詳細な情報は、記事で読むことができます。 [Conda Environment](https://www.anaconda.com/using-pip-in-a-conda-environment/) でPipを使用する。

Python パッケージは多くの例で使用されていますが、 Conda パッケージは Python パッケージである必要はありません。 例えば、ここではRベース言語がRパッケージ `r-yaml` と共にインストールされます。

```
conda create --name Project_One r-base r-yaml
```

現在の環境でインストールされているすべてのパッケージを表示するには、以下を使用します。

```
コンドミニアムリスト
```

特定のパッケージがインストールされているかどうかを確認するには、例えば、 `scipy` を使用します。

```
conda list scipy
```

Condaチャンネルはパッケージをダウンロードした場所です。 一般的なチャネルには、 `Anaconda` (デフォルトの conda パッケージチャネルを提供する会社) および `conda-forge` (コミュニティ主導のパッケージング努力) があります。 次のように指定することで、特定のチャンネルからパッケージを明示的にインストールすることができます。

```
conda install -c channel_name package_name
```

(rr-renv-package-exporting)=
## 計算環境のエクスポートと再構築

コンダ環境は、YAML 形式で人間が読めるファイルに簡単にエクスポートできます。 YAML ファイルについては、この章で詳細な {ref}`後で <rr-renv-yaml>` で説明します。

conda 環境を `environment.yml`と呼ばれるファイルにエクスポートするには、環境を有効にしてから以下を実行します。

```
conda env エクスポート > environment.yml
```

同様に、YAML ファイルから、Conda 環境を作成することができます。

```
conda env create -f environment.yml
```

これにより、研究者はお互いの計算環境を素早く再現できます。 パッケージのリストは、明示的にインストールされたものだけではないことに注意してください。 OS 固有の依存パッケージを含めることができますので、環境ファイルは異なるオペレーティングシステムへの移植が必要になるかもしれません。

環境はクローンすることもできます。 これは、例えば、研究者が新しいプロジェクトを開始し、それに取り組むために新しい環境を作りたい場合など、望ましいことかもしれません。 新しいプロジェクトの環境(少なくとも最初は)は、以前のプロジェクトの環境と同じパッケージを必要とするかもしれません。

例えば、 _Project_One_ 環境をクローンし、この新しい環境に _Project_Two_ という名前を付けます。

```
conda create --name Project_Two --clone Project_One
```
