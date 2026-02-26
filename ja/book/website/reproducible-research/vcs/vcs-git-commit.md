(rr-vcs-git-commit)=

# The `git commit` Command

Gitリポジトリ内の変更（新しいファイルまたはいくつかの変更を含む既存のファイル）と「コミット」を追加するたびに、 プロジェクトのバージョンを作成し、プロジェクト履歴に保存され、いつでもアクセスできます。

To commit changes with a meaning statement about changes made in a version, use `git commit` with a `-m` (m for message) flag:

```
git commit -m 'helpful statement about the change here'
```

以前のコミットのログは

```
git log
```

端末のログレポートに記録してください 各バージョンには、SHAと呼ばれる固有の数字と文字列が自動的にタグ付けされています。
対応する SHA を使用して、異なるバージョンを特定、アクセス、および比較できます。
Git ログ内のコミットの例を次に示します。
SHAはまさに最初の行であり、このSHAとは別に。 ログには、変更の日付、時刻、および作成者に関する情報、およびコミット メッセージ(「マイナーなタイプミックスフィックス」)も含まれます。

```
commit 0346c937d0c451f6c622c5800a46f9e9e1c2b035
Author: Malvika Sharan <some@email.com>
Date:   Wed May 6 18:22:40 2020 +0100

    minor typo fix

```

(rr-vcs-commit-messages)=

## コミットメッセージの詳細

プロジェクトに取り組むにつれて、ますますコミットするようになります。
他の情報がなければ、プロジェクトのどのバージョンがどのバージョンにあるかを覚えることは困難です。
過去のバージョンを保存することはそれらを理解できない場合は役に立ちません コードを調べることによって何が含まれているかを調べるのはイライラするし、貴重な時間がかかる。

When you commit, you have the chance to write a commit message describing what the commit is and what it does, and you should always, _always,_ **_always_** do so.
A commit message gets attached to the commit, so if you look back at it (for example, via `git log`), it will show up.
インサイトに満ちた説明的なコミットメッセージを作成することは、バージョン管理を最大限に活用するためにできる最善の方法の1つです。
コードを注意深く読み、時間を無駄にすることなくコミットの更新内容をすぐに理解することができます(そして、あなたが何をしていたのかを忘れてしまってから、あなたの未来の自分もそうです)。
良いコミットメッセージは、特定の変更が行われた理由について、人々による誤った仮定を大幅に減らすことによって、コードの品質を向上させます。

When you commit via `git commit` without the `-m` or `--message` option, a field appears (either within the terminal or in a text editor) where a commit message can be written.
意味のあるステートメントを書いたり、保存したり(テキストエディタでメッセージを書いたりする場合は閉じたり)することができます。
以下のような文を実行することで、お好みのエディタをデフォルトとして設定できます。

```
git config --global core.editor "your_preferred_editor"
```

To avoid writing this commit message in an editor, you can use the command `git commit -m "your message here"`, as discussed earlier.

(rr-vcs-commit-messages-practice)=

### 良い練習

The number one rule is: **make it meaningful**.
「バグを修正」のようなコミットメッセージは、その意味を理解するために完全に個人に委ねられます (再び)。 この人はあなたが何をしているのか忘れてしまった時 数ヶ月後にはあなたなのかもしれません
これはバグが何であるかを把握する時間を無駄にすることができます。 どのように変更が加えられたのか、そしてバグが修正されたのか。
As such, a good commit message should _explain what you did, why you did it, and what is impacted by the changes_.
コメントと同様に、コード自体ではなく、コードが何をしているのかを記述する必要があります。 例えば、"Change N_sim" to 10" が実際に行っていることは明らかではありません。 しかし、「プログラムで実行されるシミュレーションの数を10に変更する」ことは明らかです。

**Summarise the changes your commit contains**.
これは最初の行に記述する必要があります（最大50文字） 次にメッセージの説明や本文を続ける前に空白の行を残してください
最初の行は、コマンドの使用時に要約として表示される短縮バージョンです。

```
git log
```

これにより、多数のコミットをすばやく検索できるようになります。
It is also a good practice to **use the imperative present tense** in these messages.
例えば、「私はテストを追加しました」または「テストを追加する」の代わりに、「テストを追加する」を使用します。

以下にコミットメッセージ構造の良い例を示します。

```
Short (50 chars. or less) summary of changes

More detailed explanatory text, if necessary. Wrap it to
about 72 characters or so. In some contexts, the first
line is treated as the subject of an email and the rest of
the text as the body. The blank line separating the
summary from the body is critical (unless you omit the body
entirely); tools like rebase can get confused if you run
the two together.

Further paragraphs come after blank lines.

  - Bullet points are okay, too

  - Typically, a hyphen or asterisk is used for the bullet,
    preceded by a single space, with blank lines in
    between, but conventions vary here
```

(rr-vcs-commit-summary)=

## Git コミット: 概要

プロジェクトの開発を通じて、説明的かつ明確なコミットメッセージを含む有意義な単位で変更をコミットすることにより、 理解しやすい歴史を作ることができます
これはあなたの仕事の進歩を理解するのに役立ちます。
さらに、次のセクションで説明するように。 過去のバージョンを簡単に閲覧したり変更を元に戻したりすることもできます
