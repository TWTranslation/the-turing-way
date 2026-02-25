(rr-renv-package)=

# パッケージ管理システム

パッケージマネージャーは、環境内で使用するさまざまなソフトウェアパッケージ(およびそのバージョン)をインストールして追跡します。
There are quite a few to choose from, for example, Yum, Zypper, dpkg, Nix (which will be mentioned in the {ref}`rr-binderhub` section), and language specific package managers [Python Packages](https://py-pkgs.org/) and [R Packages](https://r-pkgs.org/). We are going to focus on [Conda](https://conda.io/en/latest/), which has several useful functionalities.

(rr-renv-package-conda)=

## Condaは何をしますか?

Condaにより、ユーザーは任意の数の完全に独立した環境を作成し、迅速にそれらを切り替えることができます。
For example, say a researcher has a project, _Project One_, which has its own environment, defined by Conda, that is made up of the following set of packages:

| **Package Name** | **Version** |
| ---------------- | ----------- |
| `Package A`      | `1.5.2`     |
| `Package B`      | `2.1.10`    |
| `Package C`      | `0.7.9`     |

Later, the researcher starts _Project Two_ in its own environment, with the following packages:

| _Package Name_ | _Version_ |
| -------------- | --------- |
| `Package B`    | `2.1.10`  |
| `Package C`    | `1.2.4`   |
| `Package D`    | `1.5.2`   |
| `Package E`    | `3.7.1`   |

Note here that the version of `package C` used in _Project Two_ has been updated from the version used in _Project One_.
これらのプロジェクト環境が分離されていない場合、研究者は次の選択肢を持つでしょう:

- A) Using the older version of `package C` forever and not benefiting from updates and bugfixes in later versions.
- B) Installing the updated version of the package and hoping that it does not impact _Project One_.
- C) Installing the updated version of the package for use in _Project Two_, then uninstalling it and reinstalling the old one whenever they need to do work on _Project One_.
  これは非常に迷惑であり、リスクが忘れられているステップです。

これらのオプションはすべて非常に貧しく、それゆえ、容易に交換可能な別の環境を作成するためのCondaの有用性があります。

Condaは計算環境を簡単にキャプチャしてエクスポートすることもできます。
逆の方向に進むこともできます。他の人の環境を再現するために使用できる設定ファイルから計算環境を生成できます。

Condaのもう1つの利点は、作業しているマシンの管理者権限を持たないユーザーには、はるかに柔軟性を提供することです(ハイパフォーマンスコンピューティング施設で作業する場合は非常に一般的です)。
Condaがなければ、そのようなマシンに必要なソフトウェアをインストールすることは通常困難です。
However, because Conda creates and changes _new_ environments rather than making changes to a machine's overall system environment, admin privileges are not required.

最後にCondaはPython中心の程度ですが、他の言語で使用するためにも十分に統合されています。
たとえば、基本バージョンの Conda には C++ 標準ライブラリが含まれています。

(rr-renv-package-installing)=

## Condaのインストール

これらのインストール手順は、Linux システムに向けられていることに注意してください。
Instructions for installing Conda on Windows or Mac systems can be found [here](https://docs.conda.io/projects/conda/en/latest/user-guide/install/).

Go to [https://repo.continuum.io/miniconda/](https://repo.continuum.io/miniconda/) and download the latest Miniconda 3 installer for your system (32 bit or 64 bit). It will have a name like `miniconda_version_number.sh`.
以下を使用してインストーラを実行します。

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

Condaは、一般的に使用されるソフトウェアパッケージを含むベース環境を自動的にインストールします。
この基本環境で作業することは可能ですが、起動するたびに新しい環境を作るのが良い方法です。

To create an environment, use `conda create --name your_project_env_name` followed by a list of packages to include.
To include the `scipy` and `matplotlib` packages, add them to the end of the command:

```
conda create --name Project_One scipy matplotlib
```

You can specify the versions of certain (or all) packages by using `=package_number` after the name. For example, to specify `scipy 1.2.1` in the above environment:

```
conda create --name Project_One scipy=1.2.1 matplotlib
```

環境の作成時には、インストールする言語のバージョンを指定することもできます。 For example, to use `Python 3.7.1` in the _Project_One_ environment:

```
conda create --name Project_One python=3.7.1 scipy=1.2.1 matplotlib
```

Now that an environment has been created, it is time to activate (start using) it via `conda activate environment_name`.
この例では、

```
conda activate Project_One
```

Note that you may need to use `source` instead of `conda` if you are using an old version of Conda.

環境が有効になると、端末の各プロンプトの前に環境名が表示されます。

```
(Project_One) $ python --version
Python 3.7.1
```

(rr-renv-package-deleting)=

## 環境の無効化と削除

使用している環境を無効にすることができます:

```
conda deactivate
```

そして、ここに示すような環境を削除(削除)します。

```
conda env remove --name Project_One
```

環境が正常に削除されたかどうかを確認するには、システム上のすべての Conda 環境のリストを参照できます。

```
conda env list
```

ただし、環境を削除しても、それに関連付けられていたパッケージファイルは削除されないことがあります。
これは、もはや必要とされていないパッケージに多くのメモリを浪費する可能性があります。
どの環境でも参照されなくなったパッケージも、以下を使用して削除できます。

```
conda clean -pts
```

Alternatively, you can delete an environment (such as _Project_One_) along with its associated packages via:

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

これは Conda 内からパッケージをインストールする最良の方法です。Conda でカスタマイズされたバージョンのパッケージもインストールされます。
ただし、Conda固有のバージョンのパッケージが利用できない場合は、他のメソッドを使用することができます。
For example, `pip` is commonly used to install Python packages.
以下のようなコマンドを実行します。

```
pip install scipy
```

will install the `scipy` package explicitly - as long as `pip` is installed inside the currently active Conda environment.
Unfortunately, when Conda and `pip` are used together to create an environment, it can lead to a state that can be hard to reproduce.
Specifically, running Conda after `pip` may potentially overwrite or break packages installed via `pip`.
これを回避する一つの方法は、Condaにできるだけ多くの要件をインストールし、pipを使用することです。
Detailed information can be read on the post, [Using Pip in a Conda Environment](https://www.anaconda.com/using-pip-in-a-conda-environment/).

Python パッケージは多くの例で使用されていますが、 Conda パッケージは Python パッケージである必要はありません。 For example, here the R base language is installed along with the R package `r-yaml`:

```
conda create --name Project_One r-base r-yaml
```

現在の環境でインストールされているすべてのパッケージを表示するには、以下を使用します。

```
conda list
```

To check if a particular package is installed, for example, `scipy` in this case:

```
conda list scipy
```

Condaチャンネルはパッケージをダウンロードした場所です。
Common channels include `Anaconda` (a company which provides the defaults conda package channel), and `conda-forge` (a community-driven packaging endeavour).
次のように指定することで、特定のチャンネルからパッケージを明示的にインストールすることができます。

```
conda install -c channel_name package_name
```

(rr-renv-package-exporting)=

## 計算環境のエクスポートと再構築

コンダ環境は、YAML 形式で人間が読めるファイルに簡単にエクスポートできます。
YAML files are discussed in more detail {ref}`later <rr-renv-yaml>` in this chapter.

To export a conda environment to a file called `environment.yml`, activate the environment and then run:

```
conda env export > environment.yml
```

同様に、YAML ファイルから、Conda 環境を作成することができます。

```
conda env create -f environment.yml
```

これにより、研究者はお互いの計算環境を素早く再現できます。
パッケージのリストは、明示的にインストールされたものだけではないことに注意してください。
OS 固有の依存パッケージを含めることができますので、環境ファイルは異なるオペレーティングシステムへの移植が必要になるかもしれません。

環境はクローンすることもできます。
これは、例えば、研究者が新しいプロジェクトを開始し、それに取り組むために新しい環境を作りたい場合など、望ましいことかもしれません。 新しいプロジェクトの環境(少なくとも最初は)は、以前のプロジェクトの環境と同じパッケージを必要とするかもしれません。

For example, to clone the _Project_One_ environment, and give this new environment the name _Project_Two_:

```
conda create --name Project_Two --clone Project_One
```
