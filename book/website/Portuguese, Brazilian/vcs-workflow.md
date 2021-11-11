(rr-vcs-workflow)=
# Workflow Geral

O controle de versão é uma abordagem sistemática para gravar alterações feitas em um arquivo, ou conjunto de arquivos, ao longo do tempo. Isso permite que você e seus colaboradores acompanhem o histórico, veja o que mudou e lembre versões específicas mais tarde, quando necessário. Um procedimento típico para usar o controle de versão é o seguinte:

1. Criar arquivos - estes podem conter texto, código ou ambos.
2. Trabalhe nesses arquivos, alterando, excluindo ou adicionando novo conteúdo.
3. Criar um snapshot do status do arquivo (também conhecido como versão) neste momento.

Este processo de criação de um snapshot é descrito de forma diferente em um software diferente de controle de versão. Por exemplo, o Git descreve isso como "um commit". Alguns sistemas chamam de "ponto horário" ou "ponto de verificação"; e isso é referido como "salvar o seu trabalho" em outros casos, como na [Google docs](https://docs.google.com/) ou [HackMD](http://hackmd.io/).

À medida que você continua salvando seu trabalho adicionando alterações, você faz cada vez mais snapshots. Você pode pensar nisso como salvando versões desses arquivos enquanto documenta o seu histórico. Se você precisar voltar para uma versão anterior de um arquivo por causa de um erro, ou se você mudou de ideia sobre uma atualização anterior, você pode acessar o arquivo na sua versão preferida, ou retornar todo o seu projeto a um estado passado.

Um exemplo disso é mostrado abaixo.

```{figure} ../../figures/main-branch.png
---
nome: main-branch
alt: Uma ilustração de um branch principal
---
Uma ilustração de um branch principal
```

Em vários sistemas de controle de versão, você poderá adicionar um comentário toda vez que salvar uma nova versão. Estes comentários devem ser claros e concisos para que seja fácil compreender que alterações foram propostas e que atualizações foram feitas numa versão. Isso garante que é fácil encontrar o que você está procurando quando precisa voltar para uma versão passada. Seus colaboradores lhe agradecerão, mas também as futuras versões de si mesmo.

(rr-vcs-workflow-branches)=
## Desenvolvimento não-linear de seu projeto com "filiais"

Então você tem o seu projeto e quer adicionar algo novo ou tentar algo antes de refletir as alterações na pasta principal do projeto. Para adicionar algo novo, você pode continuar editando seus arquivos e salvá-los com as alterações propostas. Suponha que você queira tentar algo sem refletir as alterações no repositório central. Nesse caso, você pode usar o recurso "branching" de sistemas de controle de versão mais avançados como Git. Uma branch cria uma cópia local do repositório principal, onde você pode trabalhar e tentar novas alterações. Qualquer trabalho que você fizer em seu branch não refletirá no seu projeto principal (conhecido como seu ramo principal) para que ele permaneça seguro e sem erros. Ao mesmo tempo, você pode testar suas idéias e problemas em uma filial local.

Quando você estiver satisfeito com as novas alterações, você pode apresentá-las ao projeto principal. O recurso de mesclagem no Git permite que linhas de desenvolvimento independentes em um branch local sejam integradas no ramo principal.

```{figure} ../../figures/one-branch.png
---
nome: um branch
alt: uma ilustração de um desenvolvimento e um ramo principal no git
---
Uma ilustração de um desenvolvimento e um ramo principal no git.
```

Você pode ter mais de um ramo da sua cópia principal. Se uma de suas ramificações acabar não funcionando, você poderá abandoná-la ou excluí-la sem afetar o principal ramo do seu projeto.

```{figure} ../../figures/two-branches.png
---
nome: dois ramos
alt: Uma ilustração de dois ramos de desenvolvimento e um principal ramo no git
---
Dois ramos de desenvolvimento e um principal git.
```

Se você quiser, pode criar ramos a partir de ramos (e ramos fora desses ramos e assim por diante).

```{figure} ../../figures/sub-branch.png
---
nome: subbranch1
alt: uma ilustração de um ramo de desenvolvimento no git.
---
Um ramo de desenvolvimento no git.
```

Não importa quantas filiais você tem, você pode acessar as versões anteriores feitas em qualquer uma delas. Se você estiver curioso para saber como usar esse recurso na prática, você encontrará mais detalhes adiante algumas seções.
