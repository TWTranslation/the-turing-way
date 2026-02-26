(rr-vcs-github)=

# GitHub上で動作するGitコマンド

研究がますますコラボレーションし、複数の人が同じプロジェクトに取り組むようになります。 体系的に行わなければ他者の変化を把握するのは難しくなります
さらに、すべての変更が互換性がある場合でも、手動でプロジェクトに異なる参加者の作業を組み込むには時間がかかります。
GitHubのようなオンラインリポジトリホスティングサービスでプロジェクトをホスティングすることは、コラボレーションをオープンで効果的にするのに有益です。
If you are new to collaboration through [GitHub](https://github.com), please follow the comprehensive guide in the previous sections.

このセクションでは、オンラインの Git リポジトリを使用するために Git コマンドを使用する方法について説明します。

この章に記載されているコマンド(この章と以前の章の両方)は GitHub に固有のものではないことに注意してください。
They are used for collaborative work on any Git repositories and to interact with any repository hosting site/servers, which can be [GitHub](https://github.com/), but also [GitLab](https://about.gitlab.com/), [Bitbucket](https://bitbucket.org/) or a [self-set-up bare Git repository on a web server](https://opensource.com/life/16/8/how-construct-your-own-git-server-part-6).

簡単にするために、Gitリポジトリとやり取りするために使用されるコマンドを説明するための例としてGitHubを使用します。

(rr-vcs-github-local)=

## オンラインリポジトリのローカルコピーを作成

これまでのところ、この章で導入された Git コマンドはすべて、ローカルの接続されていない Git リポジトリに関係しています。
In order to collaborate with others, hosting services, such as GitHub, can store a _clone_ (a copy) of your local repository and expose it to others.
Usually, you will have a local repository and a _remote_, web-hosted repository.
ローカルリポジトリはウェブベースのクローンに接続されています。
In technical terms, the web-based clone is a `remote` of the local repository. 通常、このリモートは "origin" と呼ばれます。
Having a web-based remote allows you to _push_ changes to your project online.
It enables others to obtain their own clone of your repository (a copy of your repository to their local computer), make changes, and submit a _pull request_ that allows you to integrate their changes.
たとえば、次の Git コマンドを使用して、プロジェクトの独立したローカルコピーを作成できます。

```
git clone <insert GitHub link of the repository here>
```

Collaborators can update their local version of an online repository or _pull_ other's work into their copy using the command:

```
git pull
```

Similarly, they can edit files locally and stage their updates (`git add .`), commit changes to a new version (`git commit`) and _push_ changes to the remote online repository using the Git command:

```
git push
```

(rr-vcs-github-online)=

## コンピュータ上のローカルプロジェクトをオンラインリポジトリにリンク

To link a project on your computer to a new GitHub repository (preferably with the same name), you need to follow the standard workflow for creating a Git repository (described in the {ref}`rr-vcs-workflow` subchapter) by issuing the following set of commands in the terminal, one by one:

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

Then, _push_ all the files on your computer to the online version so they match:

```
git push -u origin main
```

その後、コンピュータ上でより多くのコミットを行うことができます。
オンライン版にプッシュしたい場合は、次のようにします。

```
git push origin branch_you_want_to_push_to
```

You can also make changes directly on GitHub by editing the online repository, and _pull_ those changes locally by using the `git pull` command.

また、以下を使用してリポジトリをコンピュータにクローンできます。

```
git clone git@github.com:your-github-username/repository_name
```

They can make and commit changes to the code without impacting the original, and push their changes to _their_ online GitHub account using:

```
git push -u origin main
```

他人のリポジトリをクローンしたい場合も同じ手順が適用されます。

(rr-vcs-github-online-pull)=

### 取得リクエスト

If you are working on a personal branch and some other changes were made in the main branch, you can _pull_ those changes down to your branch using the Git command:

```
git pull origin main
```

When everyone has a copy of the project on their own branch (checkout your branch with `git checkout branch-name`), they can _push_ their changes to their branch using the following command:

```
git push origin branch-name
```

However, if you can not directly edit the repository (when you are not an owner or admin of the project), you will be able to share your work with the help of _pull requests_.
プルリクエストにより、コントリビューターはブランチまたはリポジトリから提案された変更をプロジェクトのメインブランチに統合することができます。
It is also possible to make pull requests via the command line (see the GitLab documentation [here](https://git-scm.com/docs/git-request-pull)).

(rr-vcs-github-contributoring)=

## 他のプロジェクトへの貢献

リポジトリのローカルコピーを作成する場合 コピーの作成時にリポジトリにあるファイルのバージョンのみを保持します。
If any changes are made in the original repository afterwards, your copy will get out of sync.
これにより、プルリクエストを行ったり、ブランチからメインリポジトリに変更をマージしたりする際に、ファイルの内容が競合するなどの問題が発生する可能性があります。
したがって、リポジトリの異なるブランチやフォークで作業する場合。 元のリポジトリと同期させておくのが良い方法です

(rr-vcs-github-contributing-workflow)=

### A Workflow to Contribute to Others Github Projects via `git`:

貢献したいGitHubリポジトリのフォークボタンを使用して、アカウントにリポジトリのコピーを作成します。
フォークしたメインリポジトリは、"upstream" リポジトリと呼ばれます。

以下の手順により、コマンド ラインを使用してコピーを作業できます(プレースホルダー ユーザーとリポジトリ名を置き換えることを確認してください)。

1. ローカルマシンにクローンします。

   ```
   git clone git@github.com:your-github-username/repository_name
   ```

2. Add the 'upstream' repository to the list of remote repositories using the `git remote` command:

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

Make sure that you are on your main branch locally, if not, then checkout your main branch using the command `git checkout main`

6. それらのコミット(上流から取得される)を自分のローカルメインブランチにマージすることで、フォークを更新してください。

   ```
   git merge upstream/main
   ```

今、あなたのローカルメインブランチは、上流に変更されたすべてで最新です。
ローカルのメインブランチに一意のコミットがない場合、git は単に早送りを実行します。

_Note: The upstream/main is the original repository's main which you wish to contribute to, whereas origin/main refers to the repository you cloned in your local machine after it was forked on GitHub._

上流のメインリポジトリとフォークが同期したら。 以下を使用することで、ローカルでクローンされたリポジトリをオリジンと同期させることができます(この場合フォーク)。

```
git checkout main
git pull
```

The `git pull` command combines two other commands, `git fetch` and `git merge`.
When using `git fetch`, the resulting commits are stored as the remote branch allows you to review the changes before merging.

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

### Good Practice

ブランチを作成する前に、origin/main ブランチからのすべてのアップストリームの変更があることを確認します。

**A word of caution on the `rebase` command**: While trying to keep your branches in sync, you may come across the `rebase` command.
それは歴史を書き換える傾向があり、同じ支店で働いている他の人と連絡を取らなければ面倒なことになる。 Try to avoid using the `rebase` command, and instead use `pull` or `fetch`+`merge`, as discussed in this section.
You can find more details about [Merging vs Rebasing](https://www.atlassian.com/git/tutorials/merging-vs-rebasing).

## Further reading

- An [article on syncing a fork of a repository](https://help.github.com/en/articles/syncing-a-fork) to keep it up-to-date with the upstream repository.
- Instructions if you wish to do it all [in the browser itself](https://github.com/KirstieJane/STEMMRoleModels/wiki/Syncing-your-fork-to-the-original-repository-via-the-browser).
