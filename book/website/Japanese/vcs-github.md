(rr-vcs-github)=
# GitHub上で動作するGitコマンド

研究がますますコラボレーションし、複数の人が同じプロジェクトに取り組むようになります。 体系的に行わなければ他者の変化を把握するのは難しくなります さらに、すべての変更が互換性がある場合でも、手動でプロジェクトに異なる参加者の作業を組み込むには時間がかかります。 GitHubのようなオンラインリポジトリホスティングサービスでプロジェクトをホスティングすることは、コラボレーションをオープンで効果的にするのに有益です。 [GitHub](https://github.com)を通じてコラボレーションを始める方は、前のセクションの包括的なガイドに従ってください。

このセクションでは、オンラインの Git リポジトリを使用するために Git コマンドを使用する方法について説明します。

この章に記載されているコマンド(この章と以前の章の両方)は GitHub に固有のものではないことに注意してください。 They are used for collaborative work on any Git repositories and to interact with any repository hosting site/servers, which can be [GitHub](https://github.com/), but also [GitLab](https://about.gitlab.com/), [Bitbucket](https://bitbucket.org/) or a [self-set-up bare Git repository on a web server](https://opensource.com/life/16/8/how-construct-your-own-git-server-part-6).

簡単にするために、Gitリポジトリとやり取りするために使用されるコマンドを説明するための例としてGitHubを使用します。

(rr-vcs-github-local)=
## オンラインリポジトリのローカルコピーを作成

これまでのところ、この章で導入された Git コマンドはすべて、ローカルの接続されていない Git リポジトリに関係しています。 GitHubのような他のホスティングサービスとコラボレーションするために。 ローカルリポジトリの *クローン* （コピー）を保存し、他のリポジトリに公開できます。 通常、ローカルリポジトリと *リモート*、ウェブホストのリポジトリがあります。 ローカルリポジトリはウェブベースのクローンに接続されています。 専門的に言うと、Web ベースのクローンはローカルリポジトリの `リモート` です。 通常、このリモートは "origin" と呼ばれます。 Web ベースのリモートを使用すると、プロジェクトの *変更を* オンラインでプッシュできます。 他のユーザーがリポジトリのクローン(あなたのリポジトリのローカルコンピュータへのコピー)を取得することができます。 変更を加え、変更内容を統合できる *プルリクエスト* を送信します。 たとえば、次の Git コマンドを使用して、プロジェクトの独立したローカルコピーを作成できます。

```
git clone <insert GitHub link of the repository here>
```

コラボレーターは、オンラインリポジトリのローカルバージョンを更新するか、 *コマンドを使用して他の* 人の作業をコピーに取り込むことができます。
```
git pull
```
Similarly, they can edit files locally and stage their updates (`git add .`), commit changes to a new version (`git commit`) and *push* changes to the remote online repository using the Git command:
```
git push
```
(rr-vcs-github-online)=
## コンピュータ上のローカルプロジェクトをオンラインリポジトリにリンク

コンピュータ上のプロジェクトを新しい GitHub リポジトリにリンクするには (同じ名前が望ましいです) Git リポジトリを作成するための標準的なワークフローに従う必要があります (以下の {ref}`rrr-vcs-workflow` サブチャプターで説明されています) ターミナルで次のコマンドセットを発行することによって。 一つずつです

```
cd <your project folder>
git init
git add .
git commit
```
このプロジェクトに接続する GitHub リポジトリがあると仮定して、次のコマンドを実行します。

```
git remote add origin <GitHub repository link for your project>
```

次に、 *コンピュータ上のすべてのファイルをオンライン版に* 押して一致するようにします。

```
git push -u origin main
```

その後、コンピュータ上でより多くのコミットを行うことができます。 オンライン版にプッシュしたい場合は、次のようにします。

```
git push origin branch_you_want_to_push_to
```

You can also make changes directly on GitHub by editing the online repository, and *pull* those changes locally by using the `git pull` command.

また、以下を使用してリポジトリをコンピュータにクローンできます。

```
git clone git@github.com:your-github-username/repository_name
```

元のコードに影響を与えることなく、コードに変更を加えたり反映したりすることができ、変更内容を ** オンラインの GitHub アカウントにプッシュすることができます。

```
git push -u origin main
```

他人のリポジトリをクローンしたい場合も同じ手順が適用されます。

(rr-vcs-github-online-pull)=
### 取得リクエスト

個人ブランチに取り組んでいて、他の変更がメインブランチに加えられている場合。 Git コマンドを使用して、これらの変更をブランチに *プル* できます。
```
git pull origin main
```

When everyone has a copy of the project on their own branch (checkout your branch with `git checkout branch-name`), they can *push* their changes to their branch using the following command:

```
git push origin branch-name
```

ただし、リポジトリを直接編集できない場合(プロジェクトのオーナーまたは管理者でない場合) *プルリクエスト* の助けを借りて、あなたの作品を共有することができます。 プルリクエストにより、コントリビューターはブランチまたはリポジトリから提案された変更をプロジェクトのメインブランチに統合することができます。 コマンドラインを介してプルリクエストを行うことも可能です (GitLab ドキュメント [を参照してください](https://git-scm.com/docs/git-request-pull))。

(rr-vcs-github-contributoring)=
## 他のプロジェクトへの貢献

リポジトリのローカルコピーを作成する場合 コピーの作成時にリポジトリにあるファイルのバージョンのみを保持します。 後で元のリポジトリに変更が加えられた場合、コピーは同期を解除します。 これにより、プルリクエストを行ったり、ブランチからメインリポジトリに変更をマージしたりする際に、ファイルの内容が競合するなどの問題が発生する可能性があります。 したがって、リポジトリの異なるブランチやフォークで作業する場合。 元のリポジトリと同期させておくのが良い方法です

(rr-vcs-github-contributing-workflow)=
### `git` を通じて他の Github プロジェクトに貢献するワークフロー :

貢献したいGitHubリポジトリのフォークボタンを使用して、アカウントにリポジトリのコピーを作成します。 フォークしたメインリポジトリは、"upstream" リポジトリと呼ばれます。

以下の手順により、コマンド ラインを使用してコピーを作業できます(プレースホルダー ユーザーとリポジトリ名を置き換えることを確認してください)。

1. ローカルマシンにクローンします。

    ```
    git clone git@github.com:your-github-username/repository_name
    ```

2. 'upstream' リポジトリを `git remote` コマンドを使用して、リモートリポジトリのリストに追加します。

    ```
    git remote add upstream git@github.com:upstream-github-username/repository_name
    ```

3. 新しいリモート 'upstream' リポジトリを確認してください:

    ```
    git remote -v
    ```

4. 最新の上流の変更でフォークを更新します。最初にアップストリームリポジトリのブランチと最新のコミットをフェッチし、リポジトリにそれらをもたらします。

    ```
    git fetch upstream
    ```

5. 上流からのものを含むすべてのブランチを表示:

    ```
    git branch -va
    ```

ローカルでメインブランチにいることを確認し、そうでない場合は、コマンド `git checkout main を使用してメインブランチをチェックアウトしてください`

6. それらのコミット(上流から取得される)を自分のローカルメインブランチにマージすることで、フォークを更新してください。

    ```
    git merge upstream/main
    ```

今、あなたのローカルメインブランチは、上流に変更されたすべてで最新です。 ローカルのメインブランチに一意のコミットがない場合、git は単に早送りを実行します。

*注: upstream/main は、貢献したい元のリポジトリのメインです。 一方、origin/main は、GitHub 上でフォークされた後にローカルマシンでクローンしたリポジトリを指します。*

上流のメインリポジトリとフォークが同期したら。 以下を使用することで、ローカルでクローンされたリポジトリをオリジンと同期させることができます(この場合フォーク)。

```
git checkout main
git pull
```

`git pull` コマンドは、 `git fetch` と `git merge` という他の2つのコマンドを組み合わせています。 `git fetch`を使用すると、結果のコミットはリモートブランチとして保存され、マージ前に変更を確認できます。

同様に、main以外のブランチを作成した場合 上流リポジトリと同期したら、メインと同期させることもできます。

```
git checkout my-other-branch
git pull origin main
```

すべてが最新の状態であれば、ブランチで作業し、変更をコミットできます。

フォークされたリポジトリ(origin)にローカルコミットをプッシュする準備ができたら、次のコマンドを使用します。

```
git push origin forked_repository
```

これでプルリクエストができます！

(rr-vcs-github-contributing-practice)=
### 良い練習

ブランチを作成する前に、origin/main ブランチからのすべてのアップストリームの変更があることを確認します。


**A word of caution on the `rebase` command**: While trying to keep your branches in sync, you may come across the `rebase` command. それは歴史を書き換える傾向があり、同じ支店で働いている他の人と連絡を取らなければ面倒なことになる。 Try to avoid using the `rebase` command, and instead use `pull` or `fetch`+`merge`, as discussed in this section. [マージとリベース](https://www.atlassian.com/git/tutorials/merging-vs-rebasing)の詳細を確認できます。


## 詳細を読む
- リポジトリのフォークの同期に関する [記事](https://help.github.com/en/articles/syncing-a-fork) 上流リポジトリと最新の状態に保つ。
- ブラウザ自体で [すべてを実行したい場合の手順](https://github.com/KirstieJane/STEMMRoleModels/wiki/Syncing-your-fork-to-the-original-repository-via-the-browser)。
