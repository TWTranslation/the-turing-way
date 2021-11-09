(formatação ch-consistência)=
# Formatação

A formatação se refere a como _o livro The Turing Way_ é escrito e afeta diretamente a aparência e apresentação do livro.

_The Turing Way_ está hospedado online como um livro de Jupyter e usa as recomendações de formatação, conforme descrito em sua [documentação](https://jupyterbook.org/intro.html). A formatação adequada garante que _A Turing Way_ seja legível, acessível e similar a uma peça modular de trabalho.


(ch-coerência-formatação-hr)=
## Requisitos Rígidos

Os requisitos difíceis na lista de verificação de consistência garantem que _The Turing Way_ prioriza a acessibilidade, colaboração, legibilidade e facilidade de uso. As verificações que lidam com a formatação de _The Turing Way's_ incluem:

(ch-consistência-formatação-hr-markdown)=
### Marque 1: Use o Markdown para criar seu conteúdo

_O Caminho de Turing_ deve ser escrito em [Markdown](https://en.wikipedia.org/wiki/Markdown) quando possível, para que o Livro de Júpiter seja renderizado como deveria.


#### Markdown x HTML

Partes de capítulos anteriores em _The Turing Way_ foram escritas em `HTML`, tornando parte do conteúdo difícil de ler.

Por exemplo, {ref}`html-to-markdown` descreve uma tabela que foi escrita em `HTML`.

```{figure} ../../figures/html-to-markdown.png
---
nome: html-to-markdown
alt: Uma captura de tela de uma tabela mal formatada escrita em HTML. A mesa é esmagada e não tem fronteiras de coluna nem de linha. Isto torna difícil para um leitor decifrar o seu significado.
---
O conteúdo escrito em HTML pode não ser renderizado corretamente.
```

Quando reformatada para Markdown, a tabela fica mais limpa e mais fácil de ler:

```{figure} ../../figures/html-to-markdown2.png
---
nome: html-to-markdown2
alt: Uma captura de tela de uma tabela convertida em Markdown de HTML. A tabela se torna mais fácil de ler e entender quando convertida em Markdown.
---
Converter HTML em Markdown torna o livro Caminho de Exibição mais fácil de ler.
```
```{note} Uma PR que aborda essa verificação pode ser encontrada [aqui](https://github.com/alan-turing-institute/the-turing-way/pull/1460).
```

O conteúdo de capítulo escrito em `HTML` geralmente são colocados em tags que começam e terminam com colchetes de ângulo `<>`.
[W3Schools](https://www.w3schools.com/html/html_elements.asp) é um excelente recurso para entender o que estas tags significam, e guias de referência Markdown, como [esta folha](https://www. arkdownguide.org/cheat-sheet/), pode ajudar a traduzir a formatação `HTML` para Markdown.
Também existem ferramentas úteis na web, como [Turndown](https://domchristie.github.io/turndown/) e [CloudConvert](https://cloudconvert.com/html-to-md), que convertem `HTML` para Markdown com um único clique.

Por favor, note que se `HTML` é a única opção para você formatar seu texto da forma que desejar, você só pode usá-lo se o conteúdo no livro on-line ainda puder ser lido e compreendido (use a pré-visualização Netlify em seu PR para testar).
Por exemplo, [superscripts e assinaturas](https://support.squarespace.com/hc/en-us/articles/206543587-Markdown-cheat-sheet#toc-superscript-and-subscript) podem ser escritos em `HTML` porque eles sempre aparecem como esperado.
Além disso, conteúdo como vídeos e tabelas do YouTube com cabeçalhos que abrangem várias colunas ou linhas podem ser escritos em `HTML`.


```{attention} Uma Nota Sobre Estilizar
:class: dica

_The Turing Way_ tem uma [folha de estilos legais](https://github. om/alan-turing-institute/the-turing-way/blob/main/book/website/_static/book-stylesheet.css) que controla a aparência do conteúdo escrito em `HTML`.
Se você incluir `HTML` na sua contribuição, certifique-se de que sua formatação inclua as classes e IDs relevantes da folha de estilos.

Por exemplo, se você deseja adicionar um vídeo do YouTube ao seu conteúdo usando a tag `<iframe>, envolva o `<iframe>` em uma tag `<div>` e dê a `div` a classe `video-container` como mostrado abaixo.

<div class="video-container">
    <iframe>....</iframe>
</div>

```

This is also described in the {ref}`Style Guide<ch-style-custom-styling-videos>`.

#### Demonstração

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/tv0HlVgxDdI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

#### Checklists de escrita

Ao escrever um novo capítulo para _The Turing Way_, você pode incluir um subcapítulo da Lista de Checklist que itecia os principais pontos de ação que você deseja que os leitores tomem com base no conteúdo do capítulo. Para capítulos anteriores em _The Turing Way_, este subcapítulo é escrito em Markdown como uma Lista de Tarefas com caixas de seleção:

```
# Lista de verificação
- [ ] Item Um
- [ ] Item Dois
- [ ] Item Três

```

No entanto, as caixas de seleção não são exibidas conforme previsto na versão on-line do livro, por exemplo:

```{figure} ../../figures/checklist-formatting.png
---
nome: formatação da checklist
alt: Quando o subcapítulo da Checklist de qualquer capítulo é escrito em Markdown como uma lista de tarefas com caixas de seleção, colchetes são exibidos ao invés de caixas de seleção na versão web do livro.
---
As caixas de seleção são exibidas como colchetes quadrados na versão web do livro.
```

Assim, recomendamos que você formate os subcapítulos da sua Lista de Verificação como listas não ordenadas em suas futuras contribuições e edite capítulos anteriores que seguem a outra convenção:

```
# Checklist
- Item Um
- Item Dois
- Item Três

```
#### Demonstração

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/oe2Up1pU5DY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistência-formatação-hr-headers)=
### Verificar 2: Use cabeçalhos em ordem sequencial.

Cabeçalhos não consecutivos se referem a um aumento nos níveis de cabeçalho de mais de um. Por exemplo:

```
# Título
### Outro Título
```
Tal aumento de dois níveis de cabeçalho resulta em avisos ao construir _O Caminho de Turing_ localmente. Idealmente, todos os arquivos Markdown devem começar com título de nível 1 e aumentar sequencialmente conforme apropriado:

```
# Título
## Outro Título
```

Vários arquivos no livro _The Turing Way_ não seguem esta convenção. Uma lista de tais arquivos pode ser encontrada em [esta issue](https://github.com/alan-turing-institute/the-turing-way/issues/1321), e [este PR](https://github.com/alan-turing-institute/the-turing-way/pull/1451) é um ótimo exemplo de como corrigir um arquivo com cabeçalhos não consecutivos.

#### Demonstração

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/qq9QCrykdbw" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistência-formatação-hr-etiquetas)=
### Marque 3: Adicione rótulos a capítulos, subcapítulos, seções e imagens para ativar as referências cruzadas.

Muitas vezes, um capítulo pode se referir ao conteúdo de outro capítulo para explicar conceitos ou desenvolver em pontos. A referência cruzada facilita isso, garantindo que o conteúdo indicado seja fácil de encontrar com um simples clique. Isso ajuda a tornar _The Turing Way_ mais acessível e navegável.

{ref}`Cross-reference <ch-style-crossref>` é discutido em detalhes no estilo {ref}`ch-`. O subcapítulo explica o que são os rótulos, fornece uma convenção de nome para as etiquetas de _A Via de Viagem_, e dá vários exemplos úteis de como devem ser feitas referências cruzadas.

#### Demonstração

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/ikcjxjklLVg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistência-formatação-hr-images)=
### Verifique 4: Use `MyST` para formatação de imagem

Algumas figuras e imagens de _The Turing Way_ são incorporadas usando a sintaxe Markdown. Enquanto isso funciona, ele não permite que as imagens se adaptem ao tamanho da tela do dispositivo do qual o livro é lido.

Texto Estruturado (`MyST`) é um sabor de Markdown que aborda isso e permite imagens responsivas na _The Turing Way_.

Também permite o uso de legendas e texto alternativo (texto texto), que são as descrições de imagens invisíveis que são lidas em voz alta para os leitores da _Caminho de Turing_ que usam um leitor de tela. Se nenhum texto ALT for fornecido com uma imagem, esses usuários não poderão entender o propósito da imagem.

Ao escrever texto de ALT, lembre-se de:
- **Seja descritivo** - Descreva adequadamente a imagem usando seu conteúdo e contexto para orientação. Ao fazer isso, não há necessidade de "anunciar" uma imagem em sua descrição (por exemplo, usando "ilustração de" ou "imagem de") já que os leitores de tela já farão isso.
- **Mantenha o mais curto possível** - Embora uma descrição longa possa ser necessária para algumas imagens, É melhor mantê-los tão curtos quanto possível. Isso garante que as descrições sejam fáceis de entender.

Note que as imagens incluídas no livro _The Turing Way_ devem ser menores que 1MB. Isso permite que o livro carregue mais rapidamente, especialmente para os leitores que podem ter conexões de internet lentas.

Por favor, consulte o guia de estilo {ref}` <ch-style-figures>` para exemplos em formatação de imagens usando `MyST` e adicionando texto ALT a elas. Ao incluir imagens nas suas contribuições, pode ser melhor evitar o parâmetro altura já que o valor errado pode fazer sua imagem parecer distorcida em dispositivos móveis. Você deve sempre verificar como sua imagem fica na prévia Netlify do livro quando você faz uma PR.

#### Demonstração

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/upBiKLR_A5E" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistência-formatação-sr)=
## Requisitos Suficientes

Requisitos suaves ajudam a melhorar o visual geral do _The Turing Way_. Quando efetivados, estas verificações podem passar despercebidas, mas também contribuem para fazer _O Caminho de Turing_ uma peça de trabalho polida. Requisitos suaves que lidam com a formatação de _The Turing Way's_ incluem:

(ch-consistência-formatação-sr-um)=
### Verifique 1: Certifique-se de que os nomes dos capítulos/subcapítulos são curtos e mapeie exatamente como eles são titulares no `_toc.yml`

Alguns capítulos e subcapítulos em _The Turing Way_ não coincidem com suas referências correspondentes na tabela de conteúdos em todo o livro que aparece à esquerda da página. Isto pode ser confuso para os usuários, especialmente quando a referência do capítulo/subcapítulo na tabela de conteúdo varia significativamente do nome do capítulo/subcapítulo.

```{figure} ../../figures/mismatched-title-toc.png
---
nome: incompatível-toc
alt: Um subcapítulo cujo título difere de sua referência na tabela de conteúdo. O título do subcapítulo é "Usando folhas para dados de pesquisa", no entanto, na tabela de conteúdos, é chamado de "Organização de dados em planilhas de dados".
---
O título deste subcapítulo é 'Usando planilhas para pesquisa de dados', no entanto a tabela de conteúdo refere-se ao mesmo ficheiro de "Organização de dados em planilhas de dados".
```

Assegurando que o conteúdo da _A Caminho de Turing_ passe por esta verificação, uma recomendação a seguir é manter os títulos curtos. Ao escrever um novo capítulo, certifique-se de que o título é curto e tenha o mesmo nome na tabela de conteúdo. Da mesma forma, ao revisar os capítulos existentes, se seu título e referência na tabela de conteúdo difere, torna o menor dos dois títulos do capítulo e atualize `_toc. ml` se necessário.

```{note}
O `_toc.yml` é o arquivo onde vive a tabela de conteúdo para o modo de Turing Way_ em geral.
```

No entanto, lembre-se de que o título final deve dizer adequadamente aos leitores o que esperar de um capítulo ou subcapítulo.

#### Demonstração

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/HxcdqKJbCE4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-consistência-formatação-sr-two)=
### Verificar 2: Certifique-se de captação de título adequado para cabeçalhos

Os títulos de alguns capítulos em _The Turing Way_ não usam casamento de títulos. [Capitalização](https://en.wikipedia.org/wiki/Title_case) é um estilo de capitalização usado para formatar os títulos e títulos de publicação funcionam. Ser uma referência citeável para indivíduos que buscam levar a cabo ciências de dados reprodutíveis, títulos e títulos em _A Via de Turing_ deve ser cara.

Embora _The Turing Way_ não siga um estilo específico de capitalização de título, algumas regras gerais e não exaustivas a considerar incluem:
- Capitalizar palavras principais ou importantes
- Artigos em minúsculas, conjunções e pré-posições (a menos que estes estejam estressados)
- Capitalizar as primeiras e últimas palavras

Existem ferramentas úteis, como [CapitalizeMyTitle](https://capitalizemytitle.com/) e [Converter caso de Título](https://titlecaseconverter.com/), que pode ser usado para cabeçalhos em caso de título ao escrever seu conteúdo. Além disso, cabeçalhos em _The Turing Way_ podem ser executados através de estas ferramentas para garantir que eles sigam convenções com base em títulos. Em seguida, eles podem ser substituídos dentro dos capítulos e no `_toc.yml` conforme apropriado.

Por exemplo, em {ref}`incompatível-title-toc` acima, **O uso de planilhas para dados de pesquisa** deve ser inserido com título para **Usando planilhas para dados de pesquisa**.

Certos cabeçalhos talvez não precisem de ser cobertos por título consoante o contexto em que são utilizados. Por exemplo, porque alguns dos cabeçalhos deste capítulo formam uma lista de verificação - não precisam de ser acusados por título.

#### Demonstração

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/ET_LI5dwP9M" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
