# データ解析のための高度な構造

## 前提条件/推奨スキルレベル

| 前提条件                          | 重要度    | メモ                      |
| ----------------------------- | ------ | ----------------------- |
| {ref}`バージョン管理<rr-vcs>`  | 役に立つもの | バージョン管理にgit を使用する知識     |
| {ref}`研究を開く<rr-open>`   | 役に立つもの | コンポーネントは大要の一部です         |
| {ref}`再現可能な環境<rr-renv>` | 役に立つもの | 大要素を再現できるようにするために使用できます |

## Summary

研究を計画するとき、重要なことと忘れられることが多いのは、リポジトリをセットアップすることです。 このセクションでは、リポジトリを設計する際の利点と考慮事項について概説します。 あなたのワークフローを導くための構造とさらなるリソースの例と一緒に。

この章の前提条件は、プロジェクトの組織的なニーズによって異なります。 簡単な研究プロジェクトレイアウトでリポジトリを作成するには、最小限の技術的知識(入力データのみを管理し、出力結果を出力するなど)が必要です。 一方、より複雑なプロジェクト(他のプロジェクトに依存するプロジェクトなど)では、高度なリポジトリレイアウトが必要になります。

## 背景

リポジトリ(または「リポジトリ」)は、研究プロジェクトの保存場所です。 リポジトリには、さまざまなデジタルオブジェクトを含めることができ、GitHub などのオンラインプラットフォームを使用してプロジェクトを保存するために使用できます。 リポジトリの目的は、プロジェクトを他の人がアクセスしやすく、効率的に利用できるように整理することです。

これまでのところ、プロジェクトリポジトリを起動またはセットアップする際に追加すべき重要なドキュメントがありました。 プロジェクトには以下のファイルが含まれています:

```
Project Folder/
├── CODE_OF_CONDUCT          <- コミュニティプロジェクトのコード
├── CONTRIBUTING             <- コラボレーターのためのコントリビューションガイドライン
├── LICENSE                  <- ソフトウェアライセンス
├──                      <- プロジェクトに追加した可能性のあるその他のファイル
├── README 。 d                <- リポジトリに関する情報
```

この章では、リポジトリを設計する際のメリットと考慮事項について概説します。また、ワークフローを導くための構造例とリソースについて説明します。

```{note}
ドキュメントを意図的に追加してリポジトリを設計する主な利点 リソースと関連情報は、倫理的でオープンで質の高い研究のためのインフラを作り出すことを可能にします。
```

## 主な考慮事項

リソースをリポジトリ経由で共有する場合は、リサーチの再現性について以下の点を考慮してください。

- 透明性と開放性
- バージョン管理システム (final_v1_FINAL.R, final_v2_FINAL.R, ...)
- 関係者全員の時間を節約できるよう、簡単にナビゲートできます
- {ref}`pd-overview-repro` の側面を考慮する
- 他の人があなたの仕事を構築できるように、あなたが十分な詳細を提供していることを確認してください

## 主な推奨事項

プロジェクトの目標、ビジョン、ロードマップ、貢献、コミュニケーションプロセスを記述する重要なドキュメントを追加することで、共同作業のためのプロジェクトの設計を常に検討してください(以前のサブチャプターで説明されています)。
- {ref}に詳細を含める`README ファイル<pd-project-repo-readme>` _リポジトリの_ 内容と __ ナビゲート方法
- 可能な限りビジョン、目標、ロードマップを提供します（例えば [Kamran Ahmedの開発ロードマップ](https://github.com/kamranahmedse/developer-roadmap) を参照してください）
- 一般的な構造は、入力(データ)、メソッド(スクリプト)と出力(結果、図、原稿) を分離する必要があります
- `.gitignore` ファイルで追跡すべきでないものを指定します。たとえば、機密ファイル/プライベートファイル、大容量データセット、個人的なメモなどです。
- 計算環境に関する情報を含める {ref}`再現可能な環境<rr-renv>` (READMEでも指定可能)

## リポジトリ構造の例

### 研究プロジェクトの例

研究プロジェクトが持っている必要があるファイルとフォルダの提案は次のとおりです。

```
Project Folder/
├── docs                     <- documentation
├── codelist.txt 
├── project_plan.txt
├── ...
│   └── deliverables.txt
├── data
│   └── raw/
│       └── my_data.csv
│   └── clean/
│       └── data_clean.csv
├── analysis                 <- scripts
│   └── my_script.R
├── results                  <- analysis output     
│   └── figures
├── .gitignore               <- files excluded from git version control 
├── install.R                <- environment setup
├── CODE_OF_CONDUCT          <- Code of Conduct for community projects
├── CONTRIBUTING             <- Contribution guideline for collaborators
├── LICENSE                  <- software license
├── README.md                <- information about the repo
└── report.md                <- report of project
```

### 可能なすべてのフォルダの例

この例では、ソフトウェアアプリケーションまたはリサーチエンジニアリングツールをビルドする際にプロジェクトに含めることができるさまざまなファイルとディレクトリを示します。

```
Project Folder/                        
├── analysis                 <- scripts
│   └── my_script.R
├── build                    <- built files, Makefile
|   ├── debug
|   └── release
├── data
│   └── raw/
│       └── my_data.csv
│   └── clean/
│       └── data_clean.csv
├── docs                     <- documentation
│   └── codelist.txt 
├── project-management       <- project management related documents
│   └── communication.md
│   └── people.md
│   └── project-report.md
│   └── tools.md
├── res                      <- static resources (images and audio files)
│   └── figures
├── .gitignore               <- files excluded from git version control 
├── CODE_OF_CONDUCT          <- Code of Conduct for community projects
├── CONTRIBUTING             <- Contribution guideline for collaborators
├── lib                      <- dependencies (shared components that can be used across an application or across projects, code that supports the core application)
├── logs.txt                 <- history of all major updates like feature release, bug fix, updates
├── example                  <- example code application
├── LICENSE                  <- software license
├── environment.yml          <- anaconda environment setup   
├── install.R                <- R environment setup
├── requirements.txt         <- python environment setup
├── runtime.txt              <- R in binder setup
├── report.md                <- report of analysis
├── README.md                <- information about the repo
├── src                      <- source files
└── test                     <- unit tests  
```

## リソース

### R と Python パッケージ

| R                                                                 | Python                                                       |
| ----------------------------------------------------------------- | ------------------------------------------------------------ |
| [rrtools](https://annakrystalli.me/rrresearch/10_compendium.html) | [compendium-dodo](https://pypi.org/project/compendium-dodo/) |
| [テンプレート](https://github.com/Pakillo/template)                     | [css-compendium](https://pypi.org/project/ccs-compendium/)   |
| [rcompendia](https://github.com/FRBCesab/rcompendium)             |                                                              |
| [リメイクする](https://github.com/richfitz/remake)                      |                                                              |

### GitHubリポジトリのキュレーション例

- [_The Turing Way_ project repo](https://github.com/alan-turing-institute/the-turing-way)
- [Jupyter Book プロジェクトリポジトリ](https://github.com/executablebooks/jupyter-book)
- [Pandas Package repo](https://github.com/pandas-dev/pandas)
- [Atom テキストエディタのリポジトリ](https://github.com/atom/atom)

詳細については、 {ref}`project-repo-recommendations-advanced` をご覧ください。
