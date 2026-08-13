(rr-vcs-workflow-branches)=

# Desenvolvimento não-linear de seu projeto com "filiais"

> This chapter is for more advanced users.
> It allows you to work on the code, while allowing other users to see the stable version of your data first.
> ranches are also a way to make changes that can be easily trashed.

Então você tem o seu projeto e quer adicionar algo novo ou tentar algo antes de refletir as alterações na pasta principal do projeto.
Para adicionar algo novo, você pode continuar editando seus arquivos e salvá-los com as alterações propostas.
Suponha que você queira tentar algo sem refletir as alterações no repositório central.
Nesse caso, você pode usar o recurso "branching" de sistemas de controle de versão mais avançados como Git.
Uma branch cria uma cópia local do repositório principal, onde você pode trabalhar e tentar novas alterações.
Qualquer trabalho que você fizer em seu branch não refletirá no seu projeto principal (conhecido como seu ramo principal) para que ele permaneça seguro e sem erros.
Ao mesmo tempo, você pode testar suas idéias e problemas em uma filial local.

Quando você estiver satisfeito com as novas alterações, você pode apresentá-las ao projeto principal.
O recurso de mesclagem no Git permite que linhas de desenvolvimento independentes em um branch local sejam integradas no ramo principal.

```{figure} ../../../figures/one-branch.*
---
name: one-branch
alt: >
 A row of nine grey dots is labelled 'Main', representing the main branch. 
 Each of these dots is connected to the two neighbouring dots with an arrow pointing to the right.
 On top of the main branch is a line of four blue dots, that are also connected by arrows.
 These blue dots are labelled 'Feature A' and represent the development branch. 
 The development branch is connected to the main branch through the same arrows that connect the dots within a branch:
 An arrow points from grey dot number 3 to blue dot number 1, and in the same fashion an arrow points from blue dot number 4 to grey dot number 8.
---
The development and main branch in Git.
```

Você pode ter mais de um ramo da sua cópia principal.
Se uma de suas ramificações acabar não funcionando, você poderá abandoná-la ou excluí-la sem afetar o principal ramo do seu projeto.

```{figure} ../../../figures/two-branches.*
---
name: two-branches
alt: >
 In the same way as in the previous figure, a line of nine connected grey dots represents the main branch.
 On top of the main branch a line of four connected blue dots represents development branch one (named 'Feature A').
 Additionally, below the main branch a line of two connected orange dots, representing development branch two (named 'Feature B'), is shown.
 The two development branches connect to the main branch at different positions. 
---
Two development branches and one main branch in Git.
```

Se você quiser, pode criar ramos a partir de ramos (e ramos fora desses ramos e assim por diante).

```{figure} ../../../figures/sub-branch.*
---
name: sub-branch1
alt: >
 In the same way as in the previous figure, a line of nine connected grey dots represents the main branch.
 On top of the main branch a line of four connected blue dots, representing the 'Feature A' development branch, and below the main branch line of two connected orange dots, representing the 'Feature B' development branch, are shown.
 Additionally, a line of two connected green dots shows another development branch (named 'Feature A-1') on top of the 'Feature A' development branch. 
 The Feature A-1 development branch only connects to the Feature A development branch, and not the main branch. 
---
Several development branches in Git.
```

Não importa quantas filiais você tem, você pode acessar as versões anteriores feitas em qualquer uma delas.
Se você estiver curioso para saber como usar esse recurso na prática, você encontrará mais detalhes adiante algumas seções.
