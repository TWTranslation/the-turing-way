(rr-vcs-git-commit)=
# O `git commit` Comando

Toda vez que você 'adicionar' alterações (novos arquivos ou arquivos existentes com algumas alterações) e 'commit' aqueles do seu repositório Git, você cria uma versão do seu projeto que é armazenada no seu histórico do projeto e pode ser acessada a qualquer momento.

Para efetivar alterações com significado de declaração sobre alterações feitas em uma versão, use `git commit` com um `-m` (m for message) flag:

```
git commit -m 'declaração útil sobre a mudança aqui'
```

Você pode ver um log dos seus commits anteriores usando

```
git log
```

No relatório do seu terminal, você verá que cada versão é automaticamente marcada com uma sequência única de números e letras, chamada SHA. Você pode identificar, acessar e comparar versões diferentes usando o SHA correspondente. Aqui está um exemplo de um commit no log do Git: O SHA está na primeira linha, e além deste SHA, o log também contém informações sobre a data, a hora e o autor da alteração, bem como a mensagem de commit ("erro de digitação menor corrigido").

```
commit 0346c937d0c451f6c622c5800a46f9e9e1c2b035
Autor: Malvika Sharan <some@email.com>
Data: 6 de maio de 18 de 22:40 2020 +0100

    pequeno erro de digitação

```

(rr-vcs-commit-messages)=
## Mais sobre as mensagens de commit

À medida que você trabalha em seu projeto, você vai assumir cada vez mais compromissos. Sem quaisquer outras informações, pode ser difícil lembrar em qual versão do seu projeto está em qual. Armazenar versões anteriores é inútil se você não consegue entendê-las e descobrir o que eles contêm inspecionando o código é frustrante e leva um tempo valioso.

Quando você se compromete, você tem a chance de escrever uma mensagem de commit descrevendo o que é o commit e o que ele faz, e você sempre, *sempre,* **_sempre_** deve fazer isso. Uma mensagem de commit é anexada ao commit, portanto, se você olhar para ele (por exemplo, através de `git log`), será exibido. Criar mensagens de confirmação detalhadas e descritivas é uma das melhores coisas que você pode fazer para obter o máximo de controle de versão. Ele permite que as pessoas (e seu futuro você já esqueceu o que estava fazendo e o porquê) entendam rapidamente quais atualizações um commit contém sem ter que ler cuidadosamente o código e perder tempo descobrindo. As boas mensagens de commit melhoram a qualidade do seu código reduzindo drasticamente as suposições erradas das pessoas sobre o porquê de certas mudanças serem feitas.

Quando você fizer commit via `git commit` sem a opção `-m` ou `--message` , um campo aparece (dentro do terminal ou em um editor de texto) onde uma mensagem de commit pode ser escrita. Você pode escrever uma declaração significativa e salvar (e fechar se escrever a mensagem via editor de texto). Você pode definir seu editor preferido como padrão executando um comando como este:

```
git config --global core.editor "seu_preferred_editor"
```

Para evitar escrever essa mensagem de commit em um editor, você pode usar o comando `git commit -m "sua mensagem aqui"`, como discutido anteriormente.

(rr-vcs-commit-messages-practice)=
### Boa prática

A regra número um é: **torna-a significativa**. Uma mensagem de commit como "Corrigido um bug" deixa inteiramente a pessoa para entender o que isso significa (novamente, esta pessoa pode muito bem ser você alguns meses no futuro, quando você se esqueceu do que estava a fazer). Isso pode acabar desperdiçando seu ou outros para descobrir o que era o bug, que mudanças foram realmente feitas e como um bug foi corrigido. Como tal, uma boa mensagem de commit deve *explicar o que você fez, por que você fez e o que é impactado pelas mudanças*. Tal como nos comentários, você deve descrever o que o código está fazendo e não o código em si. Por exemplo, não é óbvio o que "Alterar N_sim para 10" realmente faz, mas "Alterar o número de simulações executadas pelo programa para 10" está claro.

**Resumir as alterações que seu commit contém**. Isto deve ser escrito na primeira linha (no máximo de 50 caracteres), então deixe uma linha em branco antes de continuar com a descrição ou o corpo da mensagem. A primeira linha é a versão encurtada que aparece como um resumo quando você usa o comando:

```
git log
```

Isto torna muito mais fácil procurar rapidamente através de um grande número de compromissos. Também é uma boa prática **usar o imperativo apresentar o tenso** nestas mensagens. Por exemplo, em vez de "Acrescentar testes para" ou "Adicionar testes em", use "Adicionar testes em".

Aqui está um bom exemplo de uma estrutura de mensagens de commit:

```
Curto (50 caracteres. ou menos) resumo das alterações

Texto explicativo mais detalhado, se necessário. Envolva-o a
cerca de 72 caracteres. Em alguns contextos, a primeira linha
é tratada como o assunto de um e-mail e o resto de
o texto como o corpo. A linha em branco que separa o resumo
do corpo é crítica (a menos que você omita o corpo
completamente); ferramentas como o rebase podem ficar confusas se você rodar
as duas juntas.

Outros parágrafos vêm depois de linhas em branco.

  - Pontos de bala também estão corretos

  - Normalmente, um hífen ou um asterisco é usado para a bala,
    precedido por um único espaço, com linhas em branco em
    meio, mas as convenções variam aqui
```
(rr-vcs-commit-summary)=
## Git commit: Resumo

Ao realizar as suas alterações ao longo do desenvolvimento do seu projeto em unidades significativas com mensagens de commit descritivas e claras, é possível criar um histórico facilmente compreensível. Isso ajudará você e outros a compreender o progresso do seu trabalho. Além disso, como a próxima secção irá demonstrar, também tornará mais fácil ver versões anteriores do seu histórico ou reverter as alterações que você fez.
