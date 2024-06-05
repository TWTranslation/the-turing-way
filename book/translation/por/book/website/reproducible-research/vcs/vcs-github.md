(rr-vcs-github)=
# Comandos do Git para Trabalho no GitHub

À medida que a investigação se torna cada vez mais colaborativa e múltiplas pessoas trabalham no mesmo projecto, torna-se difícil acompanhar as mudanças feitas por outros, se não feitas de forma sistemática. Além disso, é moroso incorporar manualmente o trabalho de diferentes participantes num projecto, mesmo quando todas as suas alterações são compatíveis. Hospedar o projeto em um serviço de hospedagem de repositórios online, como o GitHub, é benéfico para tornar as colaborações abertas e eficazes. Se você é novo na colaboração através do [GitHub](https://github.com), siga o guia abrangente nas seções anteriores.

Nesta seção, discutiremos como usar comandos Git para trabalhar com um repositório Git online.

Por favor, note que os comandos listados neste capítulo (tanto neste como nos subcapítulos anteriores) NÃO são específicos ao GitHub. Eles são usados para trabalho colaborativo em qualquer repositório Git e para interagir com qualquer site de hospedagem de repositórios/servidores, que pode ser o [GitHub](https://github.com/), mas também [GitLab](https://about.gitlab.com/), [Bitbucket](https://bitbucket.org/) ou um [auto-set bare Git repositório em um servidor web](https://opensource.com/life/16/8/how-construct-your-own-git-server-part-6).

Para simplificar, usaremos o GitHub como um exemplo para explicar os comandos usados para interação com repositórios do Git.

(rr-vcs-github-local)=
## Crie uma cópia local de um repositório online

Até agora, todos os comandos Git introduzidos neste capítulo estão preocupados com repositórios Git locais, não conectados. Para colaborar com outros, hospedando serviços, como o GitHub, pode armazenar um *clone* (uma cópia) do repositório local e expô-lo a outros. Normalmente, você terá um repositório local e um *repositório remoto*, hospedado na Web. Seu repositório local está conectado ao clone baseado na web. Em termos técnicos, o clone baseado na web é um `remoto` do repositório local. Normalmente, esse controle é chamado de "origem". Ter um controle remoto baseado na web permite que você *faça push* de alterações no seu projeto online. Isto permite que outros obtenham seus próprios clone do repositório (uma cópia do repositório para seu computador local), fazer alterações e enviar um *pull request* que lhe permite integrar suas alterações. Por exemplo, é possível criar uma cópia local independente de um projeto usando o seguinte comando Git :

```
git clone <insert GitHub link of the repository here>
```

Os colaboradores podem atualizar sua versão local de um repositório on-line ou *puxar* o trabalho dos outros para sua cópia usando o comando:
```
git pull
```
Da mesma forma, eles podem editar arquivos localmente e estágiar suas atualizações (`git add .`), fazer commit de alterações em uma nova versão (`git commit`) e *push* altera para o repositório online remoto usando o comando Git :
```
git push
```
(rr-vcs-github-online)=
## Vincular um Projeto Local no Seu Computador a um Repositório Online

Para vincular um projeto no seu computador a um novo repositório GitHub (preferencialmente com o mesmo nome), você precisa seguir o fluxo de trabalho padrão para criar um repositório Git (descrito no subcapítulo {ref}`rr-vcs-workflow` ) emitindo o seguinte conjunto de comandos no terminal, um por um:

```
cd <your project folder>
git init
git add .
commit no git
```
Assumindo que você tem um repositório do GitHub que deseja se conectar com este projeto, execute o seguinte comando:

```
adicione origem <GitHub repository link for your project> do git remote
```

Então, *empurre* todos os arquivos no seu computador para a versão online para que correspondam a:

```
git push -u origem principal
```

Em seguida, você pode continuar e fazer mais commits no seu computador. Quando quiser enviá-los para sua versão on-line, da mesma forma, você fará:

```
git push origin branch_que_deseja_fazer push
```

Você também pode fazer alterações diretamente no GitHub editando o repositório online, e *puxe* essas mudanças localmente usando o comando `git pull`.

Outros também podem clonar o repositório para o seu computador usando:

```
git clone git@github.com:your-github-username/repository_name
```

Eles podem fazer e fazer commit das alterações no código sem afetar o original e podem fazer push das suas alterações no *sua* conta do GitHub on-line:

```
git push -u origem principal
```

O mesmo procedimento se aplica a você se você quiser clonar o repositório de outra pessoa.

(rr-vcs-github-online-pull)=
### Pull Requests

Se você está trabalhando em um branch pessoal e algumas outras alterações foram feitas no ramo principal, você pode *puxar* as alterações para baixo no seu branch usando o comando Git :
```
git pull origin principal
```

Quando todos têm uma cópia do projeto em sua própria branch (check-out sua branch com `git checkout branch-name`), eles podem *empurrar* suas alterações para seu branch usando o seguinte comando:

```
git push origin branch name
```

No entanto, se você não puder editar o repositório diretamente (quando você não for proprietário ou administrador do projeto), você será capaz de compartilhar seu trabalho com a ajuda de *pull requests*. Um pull request permite que um colaborador obtenha as alterações propostas de sua branch ou repositório integrado ao ramo principal do projeto. Também é possível fazer pull requests pela linha de comando (consulte a documentação do GitLab [aqui](https://git-scm.com/docs/git-request-pull)).

(rr-vcs-github-contributing)=
## Contribuindo para outros projetos

Quando você cria uma cópia local de um repositório, você só mantém as versões dos arquivos que estão no repositório no momento de criar essa cópia. Portanto, ao trabalhar em diferentes filiais ou forks de um repositório, é uma boa prática mantê-los atualizados com o repositório principal e em sincronia com o repositório original. Se alguma alteração for feita no repositório original, sua cópia ficará dessincronizada. Isso pode levar a problemas como conteúdo de arquivo conflitante ao fazer um pull request ou fazer merge de alterações do branch para o repositório principal.

(rr-vcs-github-contributing-workflow)=
### Um Fluxo de Trabalho para Contribuir com Outros projetos Github via `git`:

Usando o botão de fork no repositório do GitHub para o qual você deseja contribuir, crie uma cópia do repositório em sua conta. O repositório principal que você bifurcou será referido como repositório "upstream".

Agora você pode trabalhar em sua cópia usando a linha de comando através das seguintes etapas (certifique-se de substituir os nomes do usuário e repositório):

1. Clone-o para a sua máquina local:

    ```
    git clone git@github.com:your-github-username/repository_name
    ```

2. Adicione o repositório 'upstream' à lista de repositórios remotos usando o comando `git remoto`:

    ```
    git remote add upstream git@github.com:upstream-github-username/repository_name
    ```

3. Verifique o novo repositório 'upstream' remoto:

    ```
    git remoto -v
    ```

4. Atualize seu fork com as alterações mais recentes do upstream, buscando primeiro os branches do repositório upstream e os mais recentes commits para trazê-los para seu repositório:

    ```
    git buscar upstream
    ```

5. Ver todas as filiais, incluindo as de upstream:

    ```
    git branch -va
    ```

Certifique-se de estar no seu ramo principal localmente, se não, então verifique seu ramo principal usando o comando `git checkout main`

6. Mantenha seu fork atualizado fazendo o merge desses commits (buscado do upstream) em seu próprio branch principal local.

    ```
    git merge upstream/principal
    ```

Agora, sua agência principal local está atualizada com tudo modificado a montante. Se não houver nenhum commit exclusivo no branch principal local, o git simplesmente irá executar rapidamente.

*Nota: O upstream/main é o principal do repositório original para o qual você deseja contribuir, enquanto a origem/principal se refere ao repositório que você clonou na sua máquina local depois que ele foi bifurcado no GitHub.*

Assim que seu fork estiver sincronizado com o repositório principal do upstream, você sempre pode manter seu repositório clonado local em sincronia com a origem (fork nesse caso) usando:

```
Git checkout principal
git pull
```

O comando `git pull` combina dois outros comandos, `git fetch` e `git merge`. Ao usar o `git fetch`, os commits resultantes são armazenados como o branch remoto permite que você revise as alterações antes de fazer o merge.

Da mesma forma, se você criou mais branches além do principal, você também pode mantê-los em sincronia com o seu main, uma vez que ele esteja em sincronia com o repositório upstream.

```
git checkout meu-outro-ramificação
git pull origin main
```

Quando tudo está atualizado, você pode trabalhar em seu branch e fazer commit das alterações.

Quando estiver pronto para fazer push de seus commits locais para seu repositório (origem), use o seguinte comando.

```
git push origin forked_repository
```

Agora você pode fazer um pull request!

(rr-vcs-github-contributing-practice)=
### Bom treino

Antes de criar uma filial, certifique-se de ter todas as alterações a montante da filial principal.


**Uma palavra de cuidado no `comando` rebase**: Ao tentar manter seus branches sincronizados, você pode encontrar o comando `rebase`. Tende a reescrever a história e poderia ser problemático se não fosse comunicado com outros que trabalham no mesmo ramo. Tente evitar usar o comando `rebase` , e, em vez disso, use `pull` ou `fetch`+`merge`, como discutido nesta seção. Você pode encontrar mais detalhes sobre [Mesclagem vs Rebase](https://www.atlassian.com/git/tutorials/merging-vs-rebasing).


## Leitura adicional
- Um artigo [sobre como sincronizar um fork de um repositório](https://help.github.com/en/articles/syncing-a-fork) para mantê-lo atualizado com o repositório upstream.
- Instruções se você deseja fazer tudo o que é [no próprio navegador](https://github.com/KirstieJane/STEMMRoleModels/wiki/Syncing-your-fork-to-the-original-repository-via-the-browser).
