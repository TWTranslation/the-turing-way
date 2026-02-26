(cl-github-novice-firsteps)=

# GitHub の最初のステップ

ここでは、GitHubを始めるためのステップバイステップの手順を提供します。

## 1. Create a GitHub account

Go to [https://github.com/](https://github.com/) and create a new account using the sign up to GitHub box.

## 2. リポジトリを作成

新しいアカウントを作成し、ログインしている場合は、新しいリポジトリを作成する必要があります。

リポジトリまたはリポジトリは、プロジェクト用のすべてのドキュメント、データ、その他のファイルを保存するオンラインスペースです。

- 新しいリポジトリを作成するには 右上隅の+記号(ウィンドウの上部にある黒いバンド)をクリックし、新規リポジトリをクリックする必要があります。 フォームのようなページが表示されます。
- アカウント名が表示され、その横にリポジトリ名を入力する必要があります。
- また、「公開」にチェックを入れたままにして（リポジトリはすべて公開されています）、「READMEファイル」を作成するためにチェックを入れてください。
- 次に、下部にある緑色のリポジトリ作成ボタンをクリックします。

これはあなたが今見るべきものです。
リポジトリのランディングページです。
下の図は、すべてのボタン、タブなどが何をするかを説明します。

```{figure} ../../../figures/github-basic-diagram.*
---
name: github-basic-diagram
alt: Annotated diagram of repository after its creation, explaining the main features. The main features are explained in the figure legend.
align: left
---
Annotated diagram of repository after its basic creation, explaining the main features. On the left side of the webpage we have the following features:
- **1. Username:** GitHub user’s name (account). In this example, the username is “EKaroune”.
- **2. Repository:** project directory (also known as repo). In this example, the repository name is “trial-repo”.
- **3. Code:** this tab brings you back to your landing page. It shows you the folders that you have made in the repo.
- **4. Main:** this is your default development branch or active branch of your repository.
- **5. Branch:** parallel version(s) of your repository.
- **6. `README.md` file:** this file contains basic information about your project (in this case it only has the project name: “trial-repo”. When we plan to make a website, this will be rendered as a landing (front) page for your site.

On the right side of the webpage we have the following features:
- **7. Green Code button:** click it to download your repository locally.
- **8. '+' symbol:** where you can create new repository, import repos and create new issues.
- **9. Fork:** create a personal copy of another user’s repo. The number shows how many forks there are of your current repository.
- **10: Add file:** create or upload a file to your repository.
- **11: Commits/clock symbol:** click to see the history of this file as a list of all the edits (commits) saved at different time points.
- **12: Edit/Pencil symbol:** click this pencil symbol to edit your README.md file.
```

## 3. Edit your `README.md` file

他のファイルを追加したり、リポジトリの作成中にライセンスファイルを含めない限り。 今すぐリポジトリに1つのファイルがあるはずです - README.md 。
We'll need to edit this file to add information about the repo.
This file is a {term}`Markdown` file; you can see this because it has “.md” after the name of the file.
This is where you start to use the {term}`Markdown` formatting.
このファイルで書いたものは何でも、GitHubのプロジェクトのランディング(フロント)ページに表示されます。 皆にあなたのプロジェクトについて伝えるために使ってください

### GitHub の編集インターフェイスをナビゲートする

To edit your `README.md` file:

- ランディングページの中央ボックスの右上にある鉛筆記号をクリックすることができます。

**Or**

- Click on the `README.md` file and then click the pencil symbol.

ファイルを編集できるようになりました。
私たちは良いREADMEを書く上でいくつかのポインタの後にあなたの変更を保存する方法について話します。

```{figure} ../../../figures/github-readme-before-edit.*
---
name: github-readme-before-edit
alt: Annotated diagram of README.md file, if you click on the file name on your landing page. The main features are explained in the figure legend.
align: left
---
Annotated diagram of README.md file, if you click on the file name on your landing page.
- **1. Repository and current file:** the repo name and the name of the file you are viewing.
- **2. Main branch:** currently active branch ("main" is the default). Use to change to different branches of your repo (if there are more branches previously created).
- **3. Contributors:** number of contributors (users) to your file.
- **4. README.md file content:** the content of your README.md file appears here. This content will expand once we add more information..
- **5. Raw file:** view the raw {term}`Markdown` text file.
- **6. Blame:** view the last modification made to each line of the file. It can be used to track when and who made changes and go back to older versions of the file to fix bugs.
- **7. Edit file:** click this pencil to edit your README.md file.
- **8. Delete file:** click the bin to delete this file.
```

```{figure} ../../../figures/github-readme-after-edit.*
---
name: github-readme-after-edit
alt: Annotated diagram of README.md file in edit mode – before editing. Explained in the title.
align: left
---
Annotated diagram of README.md file in edit mode – before editing.
- **1. Preview changes:** press to see your text rendered (how it would appear on GitHub or on a web page).
- **2. Edit file:** press this tab to edit the content of your README.md file.
- **3. Add content to README.md:** write the {term}`Markdown` text for your README.md file. You currently only have the repository title in this file.
```

### READMEファイルを書くためのヒント

- シンプルにしておこう！ ソフトウェア工学であろうと天体物理学であろうと、どの分野でも仕事をしているとき。 あなたは専門用語を学び、使用します。あなたのフィールドに特別な意味を持つ用語ですが、そのフィールドに属していない誰にも意味をなさないでしょう。 あまりにも多くの専門用語は新人を混乱させる可能性があるので、単純な言語を使用して、ここで潜在的になじみのないすべての用語を定義します。
- プロジェクトを他の人と共有しましょう - 今何をしているのか、将来何をしたいかを説明しましょう。
- あなたが誰で、どのように連絡することができます人々に伝えます。

**NOTE: If you’re having trouble getting started, it’s a good idea to look at other peoples' `README.md` files.**

If you can’t get your raw {term}`Markdown` content to render in the way you want, it is also a good idea to find a file that has what you want and then look at the raw file.
You can copy and paste other people’s raw file content into your `README.md` file and then edit it.

Here is an example of a really well formatted `README.md` file: [STEMM Role Models App](https://github.com/KirstieJane/STEMMRoleModels/blob/gh-pages/README.md)

If you click the link above, it will take you to their README file. You can use this as a template for your `README.md` file.

- To look at the raw {term}`Markdown` file you need to click on the raw button (top right of the white box).
- This takes you to the {term}`Markdown` raw file that is rendered into a nicely formatted `README.md` file on GitHub.
- Now just copy and paste it into your `README.md` edit tab. これをプロジェクト用に編集できるようになりました。
- プレビューの変更タブをクリックすることで、外観を確認することを忘れないでください。
- 編集が終わったら、ページの下までスクロールして緑色のコミット変更ボタンを押します。

```{figure} ../../../figures/github-edited-readme.*
---
name: /github-edited-readme
alt: Annotated diagram of README.md file in edit mode – with a template added. Features are explained in the figure legend.
align: left
---
Annotated diagram of README.md file in edit mode – with a template added.
- **1. Using {term}`Markdown` to add content to README.md:** the Markdown (denoted by ‘.md’ in the file extension) text for your README.md file. This example shows the template file that has different sections (headers and subheaders are created by using one or more of ‘#’ symbol. See the {ref}`formatting consistency section of the Community Handbook<ch-consistency-formatting-hr-markdown>` for some more information on using Markdown.
```

### コミット - または保存 - 変更点

変更をコミットすることは、ファイルの「保存ボタン」を押すようなものです。
GitHub は自動的に変更を保存しませんので、この手順をスキップしないことが重要です。

ファイル内で行った変更は、リポジトリに入金されます。

commit変更ボックスで何をしたかを説明的なcommitタイトルと簡単な説明を書くことは良い方法です。
So something like - commit title: ‘first edit of the readme file'; description: 'copied template from … and edited it with the details of this project’.
コミットに関するこの情報は「コミットメッセージ」と呼ばれます。 コミットのタイトルは、ファイルの変更履歴をすばやく調べることができます(それが記述的にすることが重要な理由です - それはあなたの将来の自分に役立つメモを残すようなものです)。

ランディングページのクロックシンボルをクリックするか、ファイルごとにページ内でコミットのリスト(またはコミットの履歴)を見ることができます。

## 4. リポジトリにライセンスを追加

すべての作品には、最初からライセンスが付与されているか、誰も再利用できないことが重要です。 ライセンスは、他の研究者に、自分の作品を再利用、修正、リミックスする方法を教えてくれます。
No license implies that others are _not_ allowed to use your work, even with attribution.
だから、人々ができることとできないこととあなたの仕事のための信用を与える方法を知ることができますライセンスを含める方が良いです。

あなたの分野によっては、多くの仕事は、データやコードだけのドキュメントである可能性があります。
The standard licenses offered on GitHub are most appropriate for software and won’t really be the right kind for documents.

[Creative commons](https://creativecommons.org/licenses/) licenses are the best to use for this purpose, and the most open of these is the CC BY 4.0.

To add a license to your repository, the first thing to do is create a `LICENSE.md` file:

- これを行うには、format@@0ボタンをクリックし、format@@1をクリックします。 これは空白のファイルを与えます。
- Then, you need to name the file, so call it `LICENSE.md`. This makes it into a {term}`Markdown` file.
- 上記のリンクにあるすべてのクリエイティブコモンズライセンスを見つけることができますので、必要なライセンスのテキストをコピーし、このファイルに貼り付けます。
- 下部の緑色のコミット新しいファイルボタンを押して、あなたが何をしたかを説明するためにコミットメッセージを書くことを忘れないでください。
- You can also add a link to the license to the bottom of your `README.md` file. Here is a link to a repository that you can copy to add in a [CC BY 4.0 license](https://github.com/santisoler/cc-licenses).
  It has a text file for your `LICENSE.md` file and also a shield (or badge) that you can put at the bottom of your `README.md` file.

You can find more information about licenses in the {ref}`rr-licensing` chapter of The Turing Way.
