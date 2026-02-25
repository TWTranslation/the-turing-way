(rr-vcs-git-commit)=

# The `git commit` Command

Toda vez que você 'adicionar' alterações (novos arquivos ou arquivos existentes com algumas alterações) e 'commit' aqueles do seu repositório Git, você cria uma versão do seu projeto que é armazenada no seu histórico do projeto e pode ser acessada a qualquer momento.

To commit changes with a meaning statement about changes made in a version, use `git commit` with a `-m` (m for message) flag:

```
git commit -m 'helpful statement about the change here'
```

Você pode ver um log dos seus commits anteriores usando

```
git log
```

No relatório do seu terminal, você verá que cada versão é automaticamente marcada com uma sequência única de números e letras, chamada SHA. Você pode identificar, acessar e comparar versões diferentes usando o SHA correspondente.
Você pode identificar, acessar e comparar versões diferentes usando o SHA correspondente.
Aqui está um exemplo de um commit no log do Git: O SHA está na primeira linha, e além deste SHA, o log também contém informações sobre a data, a hora e o autor da alteração, bem como a mensagem de commit ("erro de digitação menor corrigido").

```
commit 0346c937d0c451f6c622c5800a46f9e9e1c2b035
Author: Malvika Sharan <some@email.com>
Date:   Wed May 6 18:22:40 2020 +0100

    minor typo fix

```

(rr-vcs-commit-messages)=

## Mais sobre as mensagens de commit

À medida que você trabalha em seu projeto, você vai assumir cada vez mais compromissos.
Sem quaisquer outras informações, pode ser difícil lembrar em qual versão do seu projeto está em qual.
Armazenar versões anteriores é inútil se você não consegue entendê-las e descobrir o que eles contêm inspecionando o código é frustrante e leva um tempo valioso.

When you commit, you have the chance to write a commit message describing what the commit is and what it does, and you should always, _always,_ **_always_** do so.
A commit message gets attached to the commit, so if you look back at it (for example, via `git log`), it will show up.
Criar mensagens de confirmação detalhadas e descritivas é uma das melhores coisas que você pode fazer para obter o máximo de controle de versão.
Ele permite que as pessoas (e seu futuro você já esqueceu o que estava fazendo e o porquê) entendam rapidamente quais atualizações um commit contém sem ter que ler cuidadosamente o código e perder tempo descobrindo.
As boas mensagens de commit melhoram a qualidade do seu código reduzindo drasticamente as suposições erradas das pessoas sobre o porquê de certas mudanças serem feitas.

When you commit via `git commit` without the `-m` or `--message` option, a field appears (either within the terminal or in a text editor) where a commit message can be written.
Você pode escrever uma declaração significativa e salvar (e fechar se escrever a mensagem via editor de texto).
Você pode definir seu editor preferido como padrão executando um comando como este:

```
git config --global core.editor "your_preferred_editor"
```

To avoid writing this commit message in an editor, you can use the command `git commit -m "your message here"`, as discussed earlier.

(rr-vcs-commit-messages-practice)=

### Boa prática

The number one rule is: **make it meaningful**.
Uma mensagem de commit como "Corrigido um bug" deixa inteiramente a pessoa para entender o que isso significa (novamente, esta pessoa pode muito bem ser você alguns meses no futuro, quando você se esqueceu do que estava a fazer).
Isso pode acabar desperdiçando seu ou outros para descobrir o que era o bug, que mudanças foram realmente feitas e como um bug foi corrigido.
As such, a good commit message should _explain what you did, why you did it, and what is impacted by the changes_.
Tal como nos comentários, você deve descrever o que o código está fazendo e não o código em si. Por exemplo, não é óbvio o que "Alterar N_sim para 10" realmente faz, mas "Alterar o número de simulações executadas pelo programa para 10" está claro.

**Summarise the changes your commit contains**.
Isto deve ser escrito na primeira linha (no máximo de 50 caracteres), então deixe uma linha em branco antes de continuar com a descrição ou o corpo da mensagem.
A primeira linha é a versão encurtada que aparece como um resumo quando você usa o comando:

```
git log
```

Isto torna muito mais fácil procurar rapidamente através de um grande número de compromissos.
It is also a good practice to **use the imperative present tense** in these messages.
Por exemplo, em vez de "Acrescentar testes para" ou "Adicionar testes em", use "Adicionar testes em".

Aqui está um bom exemplo de uma estrutura de mensagens de commit:

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

## Git commit: Resumo

Ao realizar as suas alterações ao longo do desenvolvimento do seu projeto em unidades significativas com mensagens de commit descritivas e claras, é possível criar um histórico facilmente compreensível.
Isso ajudará você e outros a compreender o progresso do seu trabalho.
Além disso, como a próxima secção irá demonstrar, também tornará mais fácil ver versões anteriores do seu histórico ou reverter as alterações que você fez.
