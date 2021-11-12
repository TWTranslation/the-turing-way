(rr-vcs-checklist)=
# Checklist

(rr-vcs-checklist-makeuseof)=
## Git の利用

- `git init` を使用して、Gitリポジトリをディレクトリに初期化することで、プロジェクトのバージョンを制御できます。
- `git add を使用してリポジトリにすべてのファイルを追加およびコミットします。` そして `git commit`.
- プロジェクトが進行するにつれて、変更の追加と反映を続行します。 `git add filename`でコミットされる特定のファイルの変更をステージングし、メッセージをコミットに追加します。
  - 各コミットは、単純な変更を行う必要があります。
  - コミットされた生成されたファイルはありません。
  - コミットメッセージは意味があり、上部には約50文字の要約があります。
  - コミットメッセージは現在時制と命令的なものです。
- 独自のブランチで新しい機能を開発する これは `git checkout -b branch_name` で作成し、 `git checkout branch_name` で切り替えることができます。
  - ブランチに有益な名前があることを確認してください。
  - メインブランチがきれいに保たれていることを確認してください。
  - 各ブランチに目的があり、その目的に関連する変更のみが行われることを確認してください。
- フィーチャーブランチに切り替え、 `git merge main` を実行して、フィーチャーブランチにブランチをマージします。
  - 他の変更を頻繁にあなたの仕事にマージします。
  - マージ競合を扱う場合は、両方のバージョンを完全に理解してから、それらを解決しようとしてください。

(rr-vcs-checklist-contribute)=
## 他の人がプロジェクトに貢献する

- GitHub `git clone repository_url` からプロジェクトのリポジトリをクローンします。
- 変更を作成し、コミットします。
- GitHub バージョンのプロジェクトに変更をプッシュします。
- 課題を利用して、プロジェクトへの変更の可能性を議論します。
- あなたの作品を共有するために GitHub でプルリクエストを作成します。
  - プルリクエストで行った変更(およびその理由)を明確に説明してください。

(rr-vcs-checklist-data)=
## データがバージョン管理されていることを確認する

- If your projects involve data, check whether [Git LFS](https://git-lfs.github.com/), [git-annex](https://git-annex.branchable.com/), or [DataLad](https://www.datalad.org/) fits your needs for version-controlling it.
- 他の人が結果を再現できるように、プロジェクトとデータを共有します。
