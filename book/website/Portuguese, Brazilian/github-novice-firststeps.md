(cl-github-novice-firststeps)=
# Primeiros passos no GitHub

Aqui, fornecemos instruções passo a passo para começar com o GitHub.

## 1. Create a GitHub account

Acesse [https://github.com/](https://github.com/) e crie uma nova conta usando o cadastro no GitHub.

## 2. Criar um repositório

Quando você criou uma nova conta e está conectado, você precisa criar um novo repositório.

Um repositório ou repositório é o espaço on-line onde você armazena todos os documentos, dados e outros arquivos do seu projeto.

* Para criar o novo repositório, você precisa clicar no + login no canto superior direito (na banda preta no topo da janela) e, em seguida, clicar em Novo repositório. Isto irá te levar a uma página que se parece com um formulário.
* Você verá o nome da sua conta e precisará preencher um nome de repositório ao lado.
* Além disso, deixe a caixa marcada para "pública" (para que o repositório esteja aberto a todos) e, em seguida, marque a caixa para criar um "arquivo LEIA-ME".
* Em seguida, clique no botão criar repositório verde abaixo.

Isto é o que você deveria ver agora. É a página inicial do seu repositório. O diagrama abaixo explica o que todos os botões, abas e outras coisas!

```{figure} ../../figures/github-basic-diagram.jpg
---
nome: github-basic-diagram
alt: Diagrama anotado do repositório após a sua criação, explicando os recursos principais. Os principais recursos são explicados na lenda da figura.
alinhamento: esquerda
---
Diagrama anotado do repositório após sua criação básica, explicando os recursos principais. No lado esquerdo da página, temos os seguintes recursos:
- **1. Usuário:** Nome de usuário do GitHub (conta). Neste exemplo, o nome de usuário é “EKaroune”.
- **2. Repositório:** diretório do projeto (também conhecido como repo). Neste exemplo, o nome do repositório é "teste repo".
- **3. Código:** esta aba leva você de volta à sua página inicial. Isto mostra as pastas que você fez no repositório.
- **4. Principal:** este é seu ramo de desenvolvimento padrão ou ramo ativo do seu repositório.
- **5. Filial:** versão(ões) paralela(s) do seu repositório.
- **6. Arquivo LEIAME.md:** este arquivo contém informações básicas sobre o seu projeto (neste caso, tem apenas o nome do projeto: "repositório trial". Quando nós planejamos criar um site, esta será renderizada como uma página de destino (front) para o seu site.

No lado direito da página da Web temos os seguintes recursos:
- **7. Botão de Código Verde:** clique nele para baixar seu repositório localmente.
- **8. Símbolo '+':** onde você pode criar um novo repositório, importar repositórios e criar novas issues.
- **9. Fork:** crie uma cópia pessoal do repositório de outro usuário. O número mostra quantos forks existem no seu repositório atual.
- **10: Adicionar arquivo:** criar ou enviar um arquivo para o seu repositório.
- **11: Símbolo de commits/relógio:** clique para ver o histórico deste arquivo como uma lista de todas as edições (commits) salvas em pontos diferentes.
- **12: Símbolo Editar/lápis:** clique neste símbolo lápis para editar seu arquivo LEIAME.md.
```

## 3. Editar seu arquivo LEIAME.md

A menos que você tenha adicionado quaisquer outros arquivos ou incluído um arquivo de licença durante a criação do repositório, você deve ter um arquivo no seu repositório agora - LEIAME.md. Vamos precisar editar esse arquivo para adicionar informações sobre o repositório. Este arquivo é um arquivo Markdown; você pode ver isso porque tem ".md" após o nome do arquivo. Aqui é onde você começa a usar a formatação Markdown. O que quer que você escreva neste arquivo será exibido na página inicial do seu projeto no GitHub, então use-o para contar para as pessoas sobre o seu projeto.

### Navegar pela interface de edição do GitHub
Para editar seu arquivo LEIAME.md:

* Você pode clicar no símbolo do lápis na parte superior direita da caixa central na sua página inicial.

**ou**

* Clique no arquivo LEIAME.md e então clique no símbolo do lápis.

Agora você pode editar o arquivo. Vamos falar sobre como salvar suas mudanças após alguns indicadores ao escrever um bom README.

```{figure} ../../figures/github-readme-before-edit.jpg
---
nome: github-readme-before-edit
alt: Diagrama anotado do arquivo README.md, se você clicar no nome do arquivo na sua página inicial. Os principais recursos são explicados na lenda da figura.
alinhamento: esquerda
---
Diagrama anotado do arquivo LEIAME.md se você clicar no nome do arquivo na sua página inicial.
- **1. Arquivo do repositório e atual:** o nome do repositório e o nome do arquivo que você está visualizando.
- **2. Ramo principal:** ramo ativo ("main" é o padrão). Use para mudar para diferentes ramos do seu repositório (se houver mais ramos criados anteriormente).
- **3. Contribuidores:** número de contribuidores (usuários) para o seu arquivo.
- **4. Conteúdo do arquivo LEIAME.md:** o conteúdo do seu arquivo LEIAME.md aparece aqui. Este conteúdo será expandido uma vez que adicionarmos mais informações..
- **5. Arquivo RA:** veja o arquivo de texto markdown bruto.
- **6. culpa:** veja a última modificação feita em cada linha do arquivo. Pode ser usado para rastrear quando e quem fez alterações e voltar para versões mais antigas do arquivo para corrigir bugs.
- **7. Edite o arquivo:** clique neste lápis para editar seu arquivo LEIAME.md.
- **8. Apagar arquivo:** clique na lixeira para excluir este arquivo.
```

```{figure} ../../figures/github-readme-after-edit.jpg
---
nome: github-readme-after-edit
alt: Diagrama anotado do README.md no modo de edição – antes de editar. Explicado no título.
alinhamento: esquerda
---
Diagrama anotado do README.md no modo de edição – antes de editar.
- **1. Pré-visualizar as alterações:** pressione para ver seu texto renderizado (como ele aparecerá no GitHub ou em uma página da web).
- **2. Arquivo de edição:** Pressione esta guia para editar o conteúdo do seu arquivo LEIAME.md.
- **3. Adicione conteúdo ao LEIAME.md:** escreva o texto Markdown para o seu arquivo LEIAME.md. Atualmente, você só tem o título do repositório nesse arquivo.
```

### Dicas para escrever seu arquivo README

* Mantenha-se simples! Quando você está trabalhando em qualquer domínio, seja a engenharia de software ou a astrofísica, você aprenderá e usará jargão – termos que têm um significado especial para o seu campo, mas provavelmente não farão sentido para ninguém que não faz parte desse campo. O jargão demais pode confundir os recém-chegados, então use uma linguagem simples e defina todos os termos potencialmente desconhecidos aqui.
* Compartilhe seu projeto com outros - descreva o que você está fazendo agora e o que você quer fazer no futuro.
* Diga às pessoas quem você é e como pode ser contatado.


**NOTA: Se você está tendo problemas para começar, é uma boa ideia ver os arquivos README.md de outras pessoas.**

Se você não conseguir obter seu conteúdo bruto em markdown da maneira que você quiser, também é uma boa idéia encontrar um arquivo que tenha o que você quer e, em seguida, olhar para o arquivo bruto. Você pode copiar e colar conteúdo bruto do arquivo de outras pessoas em seu arquivo LEIAME.md e, em seguida, editá-lo.

Aqui está um exemplo de um arquivo README.md muito bem formatado: [Modelos de Função STEMM App](https://github.com/KirstieJane/STEMMRoleModels/blob/gh-pages/README.md)

Se você clicar no link acima, ele levará ao arquivo LEIAME.arquivo. Você pode usar isso como um modelo para o arquivo LEIAME.md.

* Para ver o arquivo markdown bruto, você precisa clicar no botão raw (superior direito da caixa branca).
* Isto leva você ao arquivo raw markdown que é renderizado em um arquivo README.md bem formatado no GitHub.
* Agora basta copiar e colá-lo na sua aba de edição LEIAME.md. Agora você pode editar isso para o seu projeto.
* Lembre-se de verificar a sua aparência clicando na aba de alterações de visualização.
* Quando você terminar de editar, você precisa rolar para baixo até a parte inferior da página e pressionar o botão de alterar o commit verde.

```{figure} ../../figures/github-edited-readme.jpg
---
nome: /github-edited-readme
alt: Diagrama anotado do README.md no modo de edição – com um template adicionado. Os recursos são explicados na lenda da figura.
alinhamento: esquerda
---
Diagrama anotado do README.md no modo de edição – com um modelo adicionado.
- **1. Usando MarkDown para adicionar conteúdo para LEIAME.md:** o texto Markdown (denotado por '.md' na extensão do arquivo) para o seu arquivo LEIAME.md. Este exemplo mostra o arquivo de template que tem seções diferentes (cabeçalhos e subcabeçalhos são criados usando um ou mais símbolos '#'. Veja a {ref}`formatando consistência seção do Manual da Comunidade<ch-consistency-formatting-hr-markdown>` para mais informações sobre como usar o Markdown.
```
### Enviando - ou salvar - suas alterações
Submeter as alterações é como apertar o botão "Salvar botão" para um arquivo. O GitHub não salvará suas alterações automaticamente, por isso é importante não pular esta etapa.

Quaisquer alterações feitas no arquivo serão depositadas no seu repositório.

É uma boa prática escrever um título descritivo do commit e uma breve descrição do que você fez na caixa de alterações do commit. Então algo parecido: commit o título: 'primeira edição do arquivo readme'; descrição: 'Template copiado de … e editado com detalhes deste projeto'. Essas informações sobre o commit são chamadas de "mensagem de commit", e o título de commit permitirá que você olhe rapidamente pela história das mudanças para um arquivo (é por isso que torná-los descritivos é tão importante - é como deixar uma nota útil para seu futuro).

Você pode ver uma lista dos seus commits (ou seu "histórico de commit") clicando no símbolo de relógio na sua página inicial ou na página para cada arquivo.

## 4. Adicionar uma licença ao seu repositório

É importante que todo o seu trabalho tenha uma licença desde o início ou que ninguém possa reutilizá-la. As licenças dizem aos outros pesquisadores como eles são capazes de reutilizar, modificar e remixar seu trabalho. Nenhuma licença implica que outros *não* têm permissão para usar seu trabalho, mesmo com atribuição. Então, é melhor incluir uma licença que permite que as pessoas saibam o que podem e não podem fazer e como lhe dar crédito pelo seu trabalho.

Dependendo do seu campo, grande parte do seu trabalho pode ser documentos com apenas alguns dados ou código. As licenças padrão oferecidas no GitHub são a maior apreensão para softwares e realmente não serão os tipos certos para documentos.

[As licenças](https://creativecommons.org/licenses/) criativas são as melhores para serem usadas para este propósito, e a mais aberta delas é a CC BY 4.0.

Para adicionar uma licença ao repositório, a primeira coisa a fazer é criar um arquivo LICENSE.md:

* Para fazer isso, clique no botão Adicionar Arquivo e clique em criar arquivo. Isso lhe dará um arquivo em branco.
* Em seguida, você precisa nomear o arquivo, então o chame LICENSE.md. Isso o torna num arquivo do markdown.
* Você pode encontrar todas as licenças comuns criativas no link acima, então copie o texto da licença que você deseja e cole-o neste arquivo.
* Não se esqueça de pressionar o botão verde do novo arquivo do commit no final e escrever uma mensagem de commit para descrever o que você fez.
* Você também pode adicionar um link para a licença na parte inferior do seu arquivo LEIAME.md. Aqui está um link para um repositório que você pode copiar para adicionar uma licença [CC BY 4.0](https://github.com/santisoler/cc-licenses). Ele tem um arquivo de texto para sua LICENÇA. arquivo d e também um escudo (ou medalha) que você pode colocar na parte inferior do seu arquivo LEIAME.md.

Você pode encontrar mais informações sobre licenças no capítulo {ref}`rr-licensing` do The Turing Way.
