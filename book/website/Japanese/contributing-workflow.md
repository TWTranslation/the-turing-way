(ch-contributing-workflow)=
# コントリビューションワークフロー

新しいコンテンツを書く場合でも、既存のコンテンツをレビューする場合でも、 _The Turing Way_ に貢献する場合でも、このセクションで説明されている手順は一般的に含まれます。 レビューに適切に貢献を準備したことを確認するため、こちらの推奨事項を参照してください。 これらの推奨事項の順序は厳密ではありませんので、私たちはあなたに最適なアプローチに従うことをお勧めします。

(ch-contributing-workflow-template)=
## テンプレートを選択

Once you have decided on the type of content you want to contribute to _The Turing Way_, use the relevant [template](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/templates) to prepare your contribution.

```{note}
私たちは新しいテンプレートの貢献を歓迎しています。
チャプターまたはケーススタディテンプレートがニーズに合わない場合は、プルリクエストを開いて改善してください。
対応するテンプレートがないコンテンツに貢献したい場合 不足しているテンプレートを作成し、テンプレートコレクションに追加することもお勧めします。
```

(ch-contributing-workflow-location)=
## 新しいファイルとフォルダを適切な場所に配置します

_チューリングウェイ_の Github リポジトリは、ガイドがフォルダーで、チャプターがその中のサブフォルダーであるという全体的なファイル構造に従います。 同様に、ケーススタディは Guide フォルダ内の `ケーススタディ` サブフォルダ内にあります。 すべてのフォルダは、 [`book/website`](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/website) ディレクトリ内にあります。

新しいコンテンツを書くときは、作成した新しいファイルやフォルダが適切に配置されていることを確認してください _チューリングウェイの_ ファイル構造を保持します。

例えば、再現可能な研究のためのガイドの [Version Control](https://the-turing-way.netlify.app/reproducible-research/vcs.html) の章は以下のように置かれています。

````{admonition} Adding new files and folders
:class: dropdown
```
book\website
│
└───reproducible-research <---- (folder for the Guide to Reproducible Research)
│   │   reproducible-research.md <---- (Guide's Landing Page)
│   │   vcs.md <---- (Landing page for the Version Control chapter)
|   |   new-chapter <---- (Landing page for a new chapter)
│   │
│   └───vcs (chapter folder)
│   |   │   vcs-workflow.md
|   |   |   vcs-git.md
|   |   |   vcs-git-commit.md
|   |   |   ...
|   |   |   vcs-personal-stories.md
│   |   │   vcs-checklist.md
│   |   │   vcs-resources.md
│   |
|   |
|   └───new-chapter (new chapter folder)
|   |   |   ...
|    
└───project-design <----(Project Designのガイド用のフォルダ)
    project-design.md
    // ...
```
````

上記の例では、 `新章` のように、新たに再現可能研究ガイドの新しい章を追加する必要があります。

(ch-contributing-workflow-naming)=
## 適切な名前のファイル/フォルダ

_The Turing Way's_ の命名規則に従ってください。 適切なファイル名を使用すると、他の貢献者は簡単にあなたのファイルの目的と場所を特定し、必要に応じて追加または改善することができます。

(ch-contributing-workflow-guidelines)=
## スタイルと一貫性のガイドラインに従ってください

章を書くときは、 _チューリングウェイの_ [スタイル](https://the-turing-way.netlify.app/community-handbook/style.html) と [一貫性](https://the-turing-way.netlify.app/community-handbook/consistency.html) の勧告を念頭に置いておきましょう。 これにより、新しいコンテンツにアクセスでき、本の全体的なスタイル、構造、書式に適合します。

(ch-contributing-workflow-toc)=
## ブックの目次に新しいファイルを追加

ブックワイドの目次は、 `_toc.yml` [ファイル](https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_toc.yml) に含まれます。 このファイル構造 _チューリングウェイ_ と、チャプターが表示される順序を定義します。 チャプターのファイルは `_toc.yml` に適切に追加する必要があります。

例えば、 [統計的メソッド 原稿](https://the-turing-way.netlify.app/reproducible-research/case-studies/statistical-methods-manuscript.html) のケーススタディは、再現可能な研究のためのガイドに属しているためです。 目次に次のように加えられた。

````{admonition} Updating the book-wide table of contents
:class: dropdown
```

- file: reproducible-research/reproducible-research
  セクション:
...

  - title: ケーススタディ
    file: reproducible-research/case-studies
    sections:
    - title: 統計的メソッド 原稿
      file: reproble-research/case-state-methods-prophoto
```

````

(ch-contributing-workflow-referencing)=
## 外部ソースを適切に参照する

外部ソースが適切に参照されていることを確認し、 __ スタイルガイド [で推奨されるチューリングウェイの](https://the-turing-way.netlify.app/community-handbook/style/style-citing.html) 集中ビブテックスファイルに含まれていることを確認します。

(ch-contributing-workflow-glossary)=
## 本の用語集を更新

_The Turing Way_ は [Afterword](https://the-turing-way.netlify.app/afterword/glossary.html) にある本全体の用語集を維持している。 あなたの章を書くとき、 [本全体の用語集](https://the-turing-way.netlify.app/community-handbook/style/style-more-styling.html) を、読者が覚えておくべき重要な用語で更新してください。

(ch-contributing-workflow-crossschecking)=
## プルリクエストをクロスチェックする

テンプレートの内容は、あなたの執筆をガイドし、構造化するためのものです。 PRをレビューに提出する前に、テンプレートのプレースホルダ、ヒント、提案をすべて章から削除してください。
