(rr-vcs-github)=

# Comandos do Git para Trabalho no GitHub

À medida que a investigação se torna cada vez mais colaborativa e múltiplas pessoas trabalham no mesmo projecto, torna-se difícil acompanhar as mudanças feitas por outros, se não feitas de forma sistemática.
Além disso, é moroso incorporar manualmente o trabalho de diferentes participantes num projecto, mesmo quando todas as suas alterações são compatíveis.
Hospedar o projeto em um serviço de hospedagem de repositórios online, como o GitHub, é benéfico para tornar as colaborações abertas e eficazes.
If you are new to collaboration through [GitHub](https://github.com), please follow the comprehensive guide in the previous sections.

Nesta seção, discutiremos como usar comandos Git para trabalhar com um repositório Git online.

Por favor, note que os comandos listados neste capítulo (tanto neste como nos subcapítulos anteriores) NÃO são específicos ao GitHub.
They are used for collaborative work on any Git repositories and to interact with any repository hosting site/servers, which can be [GitHub](https://github.com/), but also [GitLab](https://about.gitlab.com/), [Bitbucket](https://bitbucket.org/) or a [self-set-up bare Git repository on a web server](https://opensource.com/life/16/8/how-construct-your-own-git-server-part-6).

Para simplificar, usaremos o GitHub como um exemplo para explicar os comandos usados para interação com repositórios do Git.

(rr-vcs-github-local)=

## Crie uma cópia local de um repositório online

Até agora, todos os comandos Git introduzidos neste capítulo estão preocupados com repositórios Git locais, não conectados.
In order to collaborate with others, hosting services, such as GitHub, can store a _clone_ (a copy) of your local repository and expose it to others.
Usually, you will have a local repository and a _remote_, web-hosted repository.
Seu repositório local está conectado ao clone baseado na web.
In technical terms, the web-based clone is a `remote` of the local repository. Normalmente, esse controle é chamado de "origem".
Having a web-based remote allows you to _push_ changes to your project online.
It enables others to obtain their own clone of your repository (a copy of your repository to their local computer), make changes, and submit a _pull request_ that allows you to integrate their changes.
Por exemplo, é possível criar uma cópia local independente de um projeto usando o seguinte comando Git :

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

## Vincular um Projeto Local no Seu Computador a um Repositório Online

To link a project on your computer to a new GitHub repository (preferably with the same name), you need to follow the standard workflow for creating a Git repository (described in the {ref}`rr-vcs-workflow` subchapter) by issuing the following set of commands in the terminal, one by one:

```
cd <your project folder>
git init
git add .
git commit
```

Assumindo que você tem um repositório do GitHub que deseja se conectar com este projeto, execute o seguinte comando:

```
git remote add origin <GitHub repository link for your project>
```

Then, _push_ all the files on your computer to the online version so they match:

```
git push -u origin main
```

Em seguida, você pode continuar e fazer mais commits no seu computador.
Quando quiser enviá-los para sua versão on-line, da mesma forma, você fará:

```
git push origin branch_you_want_to_push_to
```

You can also make changes directly on GitHub by editing the online repository, and _pull_ those changes locally by using the `git pull` command.

Outros também podem clonar o repositório para o seu computador usando:

```
git clone git@github.com:your-github-username/repository_name
```

They can make and commit changes to the code without impacting the original, and push their changes to _their_ online GitHub account using:

```
git push -u origin main
```

O mesmo procedimento se aplica a você se você quiser clonar o repositório de outra pessoa.

(rr-vcs-github-online-pull)=

### Pull Requests

If you are working on a personal branch and some other changes were made in the main branch, you can _pull_ those changes down to your branch using the Git command:

```
git pull origin main
```

When everyone has a copy of the project on their own branch (checkout your branch with `git checkout branch-name`), they can _push_ their changes to their branch using the following command:

```
git push origin branch-name
```

However, if you can not directly edit the repository (when you are not an owner or admin of the project), you will be able to share your work with the help of _pull requests_.
Um pull request permite que um colaborador obtenha as alterações propostas de sua branch ou repositório integrado ao ramo principal do projeto.
It is also possible to make pull requests via the command line (see the GitLab documentation [here](https://git-scm.com/docs/git-request-pull)).

(rr-vcs-github-contributing)=

## Contribuindo para outros projetos

Quando você cria uma cópia local de um repositório, você só mantém as versões dos arquivos que estão no repositório no momento de criar essa cópia.
Portanto, ao trabalhar em diferentes filiais ou forks de um repositório, é uma boa prática mantê-los atualizados com o repositório principal e em sincronia com o repositório original.
Se alguma alteração for feita no repositório original, sua cópia ficará dessincronizada.
Isso pode levar a problemas como conteúdo de arquivo conflitante ao fazer um pull request ou fazer merge de alterações do branch para o repositório principal.

(rr-vcs-github-contributing-workflow)=

### A Workflow to Contribute to Others Github Projects via `git`:

Usando o botão de fork no repositório do GitHub para o qual você deseja contribuir, crie uma cópia do repositório em sua conta.
O repositório principal que você bifurcou será referido como repositório "upstream".

Agora você pode trabalhar em sua cópia usando a linha de comando através das seguintes etapas (certifique-se de substituir os nomes do usuário e repositório):

1. Clone-o para a sua máquina local:

   ```
   git clone git@github.com:your-github-username/repository_name
   ```

2. Add the 'upstream' repository to the list of remote repositories using the `git remote` command:

   ```
   git remote add upstream git@github.com:upstream-github-username/repository_name
   ```

3. Verifique o novo repositório 'upstream' remoto:

   ```
   git remote -v
   ```

4. Atualize seu fork com as alterações mais recentes do upstream, buscando primeiro os branches do repositório upstream e os mais recentes commits para trazê-los para seu repositório:

   ```
   git fetch upstream
   ```

5. Ver todas as filiais, incluindo as de upstream:

   ```
   git branch -va
   ```

Make sure that you are on your main branch locally, if not, then checkout your main branch using the command `git checkout main`

6. Mantenha seu fork atualizado fazendo o merge desses commits (buscado do upstream) em seu próprio branch principal local.

   ```
   git merge upstream/main
   ```

Agora, sua agência principal local está atualizada com tudo modificado a montante.
Se não houver nenhum commit exclusivo no branch principal local, o git simplesmente irá executar rapidamente.

_Note: The upstream/main is the original repository's main which you wish to contribute to, whereas origin/main refers to the repository you cloned in your local machine after it was forked on GitHub._

Assim que seu fork estiver sincronizado com o repositório principal do upstream, você sempre pode manter seu repositório clonado local em sincronia com a origem (fork nesse caso) usando:

```
git checkout main
git pull
```

The `git pull` command combines two other commands, `git fetch` and `git merge`.
When using `git fetch`, the resulting commits are stored as the remote branch allows you to review the changes before merging.

Da mesma forma, se você criou mais branches além do principal, você também pode mantê-los em sincronia com o seu main, uma vez que ele esteja em sincronia com o repositório upstream.

```
git checkout my-other-branch
git pull origin main
```

Quando tudo está atualizado, você pode trabalhar em seu branch e fazer commit das alterações.

Quando estiver pronto para fazer push de seus commits locais para seu repositório (origem), use o seguinte comando.

```
git push origin forked_repository
```

Agora você pode fazer um pull request!

(rr-vcs-github-contributing-practice)=

### Boas práticas

Antes de criar uma filial, certifique-se de ter todas as alterações a montante da filial principal.

**A word of caution on the `rebase` command**: While trying to keep your branches in sync, you may come across the `rebase` command.
Tende a reescrever a história e poderia ser problemático se não fosse comunicado com outros que trabalham no mesmo ramo. Try to avoid using the `rebase` command, and instead use `pull` or `fetch`+`merge`, as discussed in this section.
You can find more details about [Merging vs Rebasing](https://www.atlassian.com/git/tutorials/merging-vs-rebasing).

## Leitura adicional

- An [article on syncing a fork of a repository](https://help.github.com/en/articles/syncing-a-fork) to keep it up-to-date with the upstream repository.
- Instructions if you wish to do it all [in the browser itself](https://github.com/KirstieJane/STEMMRoleModels/wiki/Syncing-your-fork-to-the-original-repository-via-the-browser).
