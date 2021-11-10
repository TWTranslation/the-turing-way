(rr-vcs-git-branches)=
# Branches Git

Ao trabalhar em um projeto, individual ou colaborativamente, você poderá encontrar os seguintes cenários:

- Se você adicionar um novo recurso ao seu projeto, você executa o risco de quebrar seu código de trabalho acidentalmente à medida que testar o recurso. Isso causaria problemas inesperados para usuários ativos de seu projeto, mesmo que o único usuário ativo seja você.
- Quando se colabora com outros e todos trabalham simultaneamente no ramo principal, pode haver muita confusão e mudanças conflitantes.
- Algum código/funcionalidade pode não ser interessante para todos. Poderá ser necessário que haja uma forma de permitir que se faça um novo trabalho num projecto, protegendo simultaneamente o trabalho que já foi feito.

Os ramos Git são extremamente valiosos ao lidar com qualquer uma destas questões. Para cada projeto do Git, por padrão, você tem um branch chamado 'main' onde todos os commits são gravados. A funcionalidade de ramificação do Git nos permite criar uma cópia de um projeto no qual podemos trabalhar e continuar a fazer commits sem integrá-los imediatamente ao ramo principal. Enquanto isso, uma pessoa pode continuar a se comprometer no ramo principal, que é intocado pelas alterações feitas em outros ramos. Uma vez que estiver feliz com tudo o que estava trabalhando em uma filial, você pode mesclá-lo em seu branch principal (ou em qualquer outro branch). A mesclagem será coberta no subcapítulo {ref}`rr-vcs-git-merge`.

Se você testar um recurso em um branch que não funciona, você pode excluir ou abandoná-lo (por exemplo, Recurso B no diagrama abaixo) em vez de passar o tempo desfazer suas mudanças se você estivesse fazendo todo o seu trabalho na filial principal. Você pode ter quantos ramos fora dos branches desejados (por exemplo, Recurso A-1).

O uso de branches continua funcionando com código seguro, especialmente em colaborações. Cada colaborador pode ter seus próprios branches ou branches que só são mesclados no projeto principal quando eles estiverem prontos.

```{figure} ../../figures/sub-branch.png
---
nome: sub-branch
alt: uma ilustração de ramificação no Git. Há quatro ramos mostrados nomeados principal, Recurso A, Recurso B e Recurso A-1. Recurso A e B são ramos do ramo principal, enquanto Feature A-1 é um ramo feito do Feature A.
---
Uma ilustração de ramificação no Git
```

Você pode criar um branch e alternar para ele usando:
```
git checkout -b nome_do_seu_novo_branch
```

Para mudar entre os branches, use o seguinte comando:
```
git checkout name_do_branch
```

Você deve confirmar qualquer trabalho que tiver em andamento antes de poder mudar para outra filial.

Você pode ver todos os ramos do seu projeto usando:

```
giro do git
```
Isto mostra a saída como uma lista com um asterisco ao lado do branch que você está. Você também pode usar o `git status` se você esqueceu em qual branch você está.

Se você decidir se livrar de um branch, pode excluí-lo com:

```
git branch -D name_do_branch
```
(rr-vcs-branches-practice)=
## Boa prática

Os branches devem ser usados para **manter o branch principal limpo**. Ou seja, o principal deve conter apenas trabalhos completos, testados e que se enquadram correctamente na versão principal do projecto. Da mesma forma, você deve tentar manter os branches individuais tão limpos quanto possível **adicionando apenas um novo recurso por branch**. Isto é porque se você está trabalhando em vários recursos, alguns podem estar acabados e prontos para se fundir no principal, enquanto outros ainda estão em desenvolvimento. Manter suas ramificações limpas significa apenas fazer alterações relacionadas ao recurso no ramo do recurso. Dê suas ramificações **nomes sensíveis**, "new_feature" está tudo bem e bem até que você comece a desenvolver um recurso mais novo em outro branch.

## Tutorial interativo

[Aprenda Git Branching](https://learngitbranching.js.org/) é um projeto para fornecer uma maneira interativa de aprender Git. O uso de em seus tutoriais fornecerá uma experiência substancial com os comandos do git mais frequentemente utilizados e técnicas de manipulação de ramificações.
