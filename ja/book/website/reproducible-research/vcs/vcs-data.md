```{figure} ../../../figures/data-provenance.jpg
---
name: provenance
alt: Different people work at different stations to enable provenance.
---
Provenance on which data in which version was underlying which computation is crucial for reproducibility. _The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-vcs-data)=

# データのバージョン管理

我々は,進化するプロジェクトの構成要素を制御するバージョンが,作業をより組織化し,効率的で,コラボレーションし,再現できるようにするのに役立つことについて議論した。
Many scientific projects, however, do not only contain code, manuscripts, or other small-sized files, but contain larger files such as large datasets, analysis results, or binary files (presentations, manuscripts, pdfs) which can change or be updated in a project just like other small sized text components.
In this chapter, we discuss why and how to do data versioning, especially why Git is not well suited for data versioning and what we can be done about it.

(rr-vcs-data-importance)=

## バージョン管理データの重要性

分析に使用されるデータが静的であるという概念を保持するべきではありません。 一度獲得すれば、それは変化せず、特定の分析と我々の科学的成果のバックボーンへのインプットとなります
現実には、データが不変であることはほとんどありません。
たとえば、科学プロジェクト全体で、データセットを新しいデータで拡張し、新しい命名方式に適応させることができます。 異なるファイル階層に再編成され、新しいデータポイントで更新されたり、エラーを修正するために修正されます。
Sometimes you might also want to experiment off different versions of the same dataset.

このような動的プロセスは、データが使用可能で最新のものであることを保証するため、科学にとって優れており、有益です。 しかし、彼らが
適切に文書化されていなければ、彼らは混乱する可能性があります。
科学的な結果を計算するための基礎となるデータセットがバージョン管理なしに変更された場合。 再現性を脅かす可能性があります:結果が無効になったり、バージョン間で変更されるファイル名に基づいたスクリプトが壊れる可能性があります。
Especially if original data gets replaced with new data without version control in place, the original results of the analysis may not be reproduced.
Therefore, version controlling data and other large files in a similar way to version controlling code or manuscripts can help ensure the reproducibility of a project and capture the provenance of results;
that is "the precise subset and version of data a set of result originates from".
研究プロジェクトの他のすべてのコンポーネントと一緒に、正確なバージョンで特定されたデータは、研究成果の一部です。
特定の分析または結果が基づいているデータのサブセットまたはバージョンを追跡できる場合、科学プロジェクトの再現性の側面は大きく改善することができます。

(rr-vcs-data-challenges)=

## バージョン管理の課題

As we described earlier, there are  {ref}`limitation to git <rr-vcs-git-limitations>`.
As long as the files to version control are small in size, not too numerous and can be stored in a few `csv` or character separated files, tools such as [Git](https://git-scm.com/) are appropriate.

However, when you work, share, and collaborate on large, potentially [binary](https://en.wikipedia.org/wiki/Binary_file) files (such as many scientific data formats), you need to think about ways to version control this data with specialised tools.
リポジトリをローカルで更新するためにリポジトリまたはフェッチ/プルのクローンを試みた場合。 バージョン管理および修正された大きなファイルが含まれている場合、これを行うには時間がかかります。

Accordingly, repository hosting services usually impose maximum file sizes on users.
たとえば、リポジトリ内の 1 つのファイルが 100MB を超えると、GitHub リポジトリにこのファイルをプッシュすることはできません。
Furthermore, if a large file was accidentally added to a repository, removing the file from the repository can be tedious, as this file needs to be [purged](https://help.github.com/en/github/authenticating-to-github/removing-sensitive-data-from-a-repository).

これらの欠点は、ファイルの管理を面倒で遅く、大きなデータを持つリポジトリのコラボレーションを妨げる可能性があります。 データを含むデータやプロジェクトが GitHub などのプラットフォームで共有されることを防ぎます。

(rr-vcs-data-tools)=

## バージョン管理用のツール

Several tools are available to handle version controlling and sharing large files.
それらのほとんどはGitと非常によく統合され、リポジトリの機能を拡張して大きなファイルのバージョン管理を行います。
これらのツールを使用すると、大きなデータをリポジトリに追加し、バージョン管理、以前の状態に戻すことができます。 GitHub経由で小容量のファイルとして共有することもできます。
これらのツールのいくつかは以下のとおりです:

(rr-vcs-data--tools-dvc)=

### DVC

DVC (open-source Version Control System for Machine Learning Projects) https://dvc.org/.
DVC guarantees reproducibility by consistently maintaining a combination of input data, configuration, and the code that was initially used to run an experiment.

(rr-vcs-data--tools-lfs)=

### Git LFS

[Git LFS](https://git-lfs.github.com/) comes with a command-line extension to Git and allows you to treat files of any size alike, using standard Git commands.
A major shortcoming, however, is that Git LFS is a _centralised_ solution.
大きなファイルは配布されず、リモートサーバに保存されます。
これは通常、サーバーの設定やサービスの支払いを必要とします。これは非常にアクセス不能になります。

(rr-vcs-data-tools-gitannex)=

### `git-annex`

The [`git-annex`](https://git-annex.branchable.com/) tool is a distributed system that can manage and share large files independent from a central service or server.
`git-annex` manages all file _content_ in a separate directory in the repository (`.git/annex/objects`, the so-called _annex_) and only places file _names_ with some metadata into version control by Git.
Annex を含む Git リポジトリが GitHub などの Web ホスティングサービスにプッシュされると、アネックスに保存されているコンテンツはアップロードされません。
Instead, they can be pushed to a storage system (such as a web server, but also third party services such as Dropbox, Google Drive, Amazon S3, box.com, and [many more](https://git-annex.branchable.com/special_remotes/)).
If a repository with an annex is cloned, the clone will not contain the _contents_ of all annexed files by default, but display only file names.
これにより、リポジトリは数百ギガバイトのデータを追跡し、高速に複製しても小さくなります。 ファイルの内容は1つ以上の無料または商業的な外部ストレージソリューションに保存されています。
On-demand, any file content can then be obtained with a `git-annex get` command from the external file storage.

(rr-vcs-data-tools-submodules)=

### git submodules

Submodules allows to split the data in different repositories, while keeping everything under a single "parent" repository.
It is very powerful, but difficult to use.
Especially, using  {ref}`Git Branches<rr-vcs-workflow-branches>` in  submodules make it complex to handle.
However, this is the only tool listed here allowing to work with many files in a Git repository.

(rr-vcs-data-tools-datalad)=

### DataLad

[DataLad](https://www.datalad.org/), builds upon git and git-annex.
Like `git-annex`, it allows you to version control data and share it via third-party providers but simplifies and extends this functionality.
大きなファイルの共有とバージョン管理に加えて、 ソフトウェア環境の記録、共有、使用、コマンドやデータ解析の記録と再実行、リポジトリの階層全体でシームレスに動作することができます。

(rr-vcs-data-inclusivity)=

## Data versioning and inclusivity

Data versioning in Git require the use of more complex tools, and this means that accessibility to the data will be more difficult.
For instance, if you use datalad with Github, newcomers trying to see one of the large file will have difficulties:
they will be able to see that the file exists, but will not be able to download or see it without cloning the repository and running git-annex or datalad commands.

So while using these tools will make Git commands to run faster, one may want to disable them for critical binary files, like presentations or pdfs.
A solution can be to pack them in submodules, so that the repositories are keeping a small size.

As an example, we can take the repository creating the turing book.
The repository is slow to work with, because a lot of binary files were used over the time.
However, it makes the onboarding of new users easier.
