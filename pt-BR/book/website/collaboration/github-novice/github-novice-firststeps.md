(cl-github-novice-firststeps)=

# Primeiros passos no GitHub

Aqui, fornecemos instruções passo a passo para começar com o GitHub.

## 1. Create a GitHub account

Go to [https://github.com/](https://github.com/) and create a new account using the sign up to GitHub box.

## 2. Criar um repositório

Quando você criou uma nova conta e está conectado, você precisa criar um novo repositório.

Um repositório ou repositório é o espaço on-line onde você armazena todos os documentos, dados e outros arquivos do seu projeto.

- Para criar o novo repositório, você precisa clicar no + login no canto superior direito (na banda preta no topo da janela) e, em seguida, clicar em Novo repositório. Isto irá te levar a uma página que se parece com um formulário.
- Você verá o nome da sua conta e precisará preencher um nome de repositório ao lado.
- Além disso, deixe a caixa marcada para "pública" (para que o repositório esteja aberto a todos) e, em seguida, marque a caixa para criar um "arquivo LEIA-ME".
- Em seguida, clique no botão criar repositório verde abaixo.

Isto é o que você deveria ver agora.
É a página inicial do seu repositório.
O diagrama abaixo explica o que todos os botões, abas e outras coisas!

```{figure} ../../../figures/github-basic-diagram.*
---
name: github-basic-diagram
alt: Annotated diagram of repository after its creation, explaining the main features. The main features are explained in the figure legend.
align: left
---
Annotated diagram of repository after its basic creation, explaining the main features. On the left side of the webpage we have the following features:
- **1. Username:** GitHub user’s name (account). In this example, the username is “EKaroune”.
- **2. Repository:** project directory (also known as repo). In this example, the repository name is “trial-repo”.
- **3. Code:** this tab brings you back to your landing page. It shows you the folders that you have made in the repo.
- **4. Main:** this is your default development branch or active branch of your repository.
- **5. Branch:** parallel version(s) of your repository.
- **6. `README.md` file:** this file contains basic information about your project (in this case it only has the project name: “trial-repo”. When we plan to make a website, this will be rendered as a landing (front) page for your site.

On the right side of the webpage we have the following features:
- **7. Green Code button:** click it to download your repository locally.
- **8. '+' symbol:** where you can create new repository, import repos and create new issues.
- **9. Fork:** create a personal copy of another user’s repo. The number shows how many forks there are of your current repository.
- **10: Add file:** create or upload a file to your repository.
- **11: Commits/clock symbol:** click to see the history of this file as a list of all the edits (commits) saved at different time points.
- **12: Edit/Pencil symbol:** click this pencil symbol to edit your README.md file.
```

## 3. Edit your `README.md` file

A menos que você tenha adicionado quaisquer outros arquivos ou incluído um arquivo de licença durante a criação do repositório, você deve ter um arquivo no seu repositório agora - LEIAME.md.
We'll need to edit this file to add information about the repo.
This file is a {term}`Markdown` file; you can see this because it has “.md” after the name of the file.
This is where you start to use the {term}`Markdown` formatting.
O que quer que você escreva neste arquivo será exibido na página inicial do seu projeto no GitHub, então use-o para contar para as pessoas sobre o seu projeto.

### Navegar pela interface de edição do GitHub

To edit your `README.md` file:

- Você pode clicar no símbolo do lápis na parte superior direita da caixa central na sua página inicial.

**Or**

- Click on the `README.md` file and then click the pencil symbol.

Agora você pode editar o arquivo.
Vamos falar sobre como salvar suas mudanças após alguns indicadores ao escrever um bom README.

```{figure} ../../../figures/github-readme-before-edit.*
---
name: github-readme-before-edit
alt: Annotated diagram of README.md file, if you click on the file name on your landing page. The main features are explained in the figure legend.
align: left
---
Annotated diagram of README.md file, if you click on the file name on your landing page.
- **1. Repository and current file:** the repo name and the name of the file you are viewing.
- **2. Main branch:** currently active branch ("main" is the default). Use to change to different branches of your repo (if there are more branches previously created).
- **3. Contributors:** number of contributors (users) to your file.
- **4. README.md file content:** the content of your README.md file appears here. This content will expand once we add more information..
- **5. Raw file:** view the raw {term}`Markdown` text file.
- **6. Blame:** view the last modification made to each line of the file. It can be used to track when and who made changes and go back to older versions of the file to fix bugs.
- **7. Edit file:** click this pencil to edit your README.md file.
- **8. Delete file:** click the bin to delete this file.
```

```{figure} ../../../figures/github-readme-after-edit.*
---
name: github-readme-after-edit
alt: Annotated diagram of README.md file in edit mode – before editing. Explained in the title.
align: left
---
Annotated diagram of README.md file in edit mode – before editing.
- **1. Preview changes:** press to see your text rendered (how it would appear on GitHub or on a web page).
- **2. Edit file:** press this tab to edit the content of your README.md file.
- **3. Add content to README.md:** write the {term}`Markdown` text for your README.md file. You currently only have the repository title in this file.
```

### Dicas para escrever seu arquivo README

- Mantenha-se simples! Quando você está trabalhando em qualquer domínio, seja a engenharia de software ou a astrofísica, você aprenderá e usará jargão – termos que têm um significado especial para o seu campo, mas provavelmente não farão sentido para ninguém que não faz parte desse campo. O jargão demais pode confundir os recém-chegados, então use uma linguagem simples e defina todos os termos potencialmente desconhecidos aqui.
- Compartilhe seu projeto com outros - descreva o que você está fazendo agora e o que você quer fazer no futuro.
- Diga às pessoas quem você é e como pode ser contatado.

**NOTE: If you’re having trouble getting started, it’s a good idea to look at other peoples' `README.md` files.**

If you can’t get your raw {term}`Markdown` content to render in the way you want, it is also a good idea to find a file that has what you want and then look at the raw file.
You can copy and paste other people’s raw file content into your `README.md` file and then edit it.

Here is an example of a really well formatted `README.md` file: [STEMM Role Models App](https://github.com/KirstieJane/STEMMRoleModels/blob/gh-pages/README.md)

If you click the link above, it will take you to their README file. You can use this as a template for your `README.md` file.

- To look at the raw {term}`Markdown` file you need to click on the raw button (top right of the white box).
- This takes you to the {term}`Markdown` raw file that is rendered into a nicely formatted `README.md` file on GitHub.
- Now just copy and paste it into your `README.md` edit tab. Agora você pode editar isso para o seu projeto.
- Lembre-se de verificar a sua aparência clicando na aba de alterações de visualização.
- Quando você terminar de editar, você precisa rolar para baixo até a parte inferior da página e pressionar o botão de alterar o commit verde.

```{figure} ../../../figures/github-edited-readme.*
---
name: /github-edited-readme
alt: Annotated diagram of README.md file in edit mode – with a template added. Features are explained in the figure legend.
align: left
---
Annotated diagram of README.md file in edit mode – with a template added.
- **1. Using {term}`Markdown` to add content to README.md:** the Markdown (denoted by ‘.md’ in the file extension) text for your README.md file. This example shows the template file that has different sections (headers and subheaders are created by using one or more of ‘#’ symbol. See the {ref}`formatting consistency section of the Community Handbook<ch-consistency-formatting-hr-markdown>` for some more information on using Markdown.
```

### Enviando - ou salvar - suas alterações

Submeter as alterações é como apertar o botão "Salvar botão" para um arquivo.
O GitHub não salvará suas alterações automaticamente, por isso é importante não pular esta etapa.

Quaisquer alterações feitas no arquivo serão depositadas no seu repositório.

É uma boa prática escrever um título descritivo do commit e uma breve descrição do que você fez na caixa de alterações do commit.
So something like - commit title: ‘first edit of the readme file'; description: 'copied template from … and edited it with the details of this project’.
Essas informações sobre o commit são chamadas de "mensagem de commit", e o título de commit permitirá que você olhe rapidamente pela história das mudanças para um arquivo (é por isso que torná-los descritivos é tão importante - é como deixar uma nota útil para seu futuro).

Você pode ver uma lista dos seus commits (ou seu "histórico de commit") clicando no símbolo de relógio na sua página inicial ou na página para cada arquivo.

## 4. Adicionar uma licença ao seu repositório

É importante que todo o seu trabalho tenha uma licença desde o início ou que ninguém possa reutilizá-la. As licenças dizem aos outros pesquisadores como eles são capazes de reutilizar, modificar e remixar seu trabalho.
No license implies that others are _not_ allowed to use your work, even with attribution.
Então, é melhor incluir uma licença que permite que as pessoas saibam o que podem e não podem fazer e como lhe dar crédito pelo seu trabalho.

Dependendo do seu campo, grande parte do seu trabalho pode ser documentos com apenas alguns dados ou código.
The standard licenses offered on GitHub are most appropriate for software and won’t really be the right kind for documents.

[Creative commons](https://creativecommons.org/licenses/) licenses are the best to use for this purpose, and the most open of these is the CC BY 4.0.

To add a license to your repository, the first thing to do is create a `LICENSE.md` file:

- Para fazer isso, clique no botão Adicionar Arquivo e clique em criar arquivo. Isso lhe dará um arquivo em branco.
- Then, you need to name the file, so call it `LICENSE.md`. This makes it into a {term}`Markdown` file.
- Você pode encontrar todas as licenças comuns criativas no link acima, então copie o texto da licença que você deseja e cole-o neste arquivo.
- Não se esqueça de pressionar o botão verde do novo arquivo do commit no final e escrever uma mensagem de commit para descrever o que você fez.
- You can also add a link to the license to the bottom of your `README.md` file. Here is a link to a repository that you can copy to add in a [CC BY 4.0 license](https://github.com/santisoler/cc-licenses).
  It has a text file for your `LICENSE.md` file and also a shield (or badge) that you can put at the bottom of your `README.md` file.

You can find more information about licenses in the {ref}`rr-licensing` chapter of The Turing Way.
