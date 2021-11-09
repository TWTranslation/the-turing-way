(ch-consistência-estrutura)=
# Estrutura

A estrutura se refere a como _A Via de Turing_ é organizada. Um bom framework estrutural garante que o conteúdo _The Turing Way's_ seja apresentado de forma ordeira.

(pt_BR-consistency-structure-hr)=
## Requisitos Rígidos

As verificações difíceis que lidam com a estrutura da _The Turing Way's_ incluem:

(E-consistência-estrutura-azul-vazio)=
### Verificar 1: Não adicione arquivos vazios no `_toc.yml`

The `_toc.yml` file is where _The Turing Way's_ table of contents (ToC) lives. Alguns arquivos referenciados no ToC estão vazios, e sua inclusão significa que os leitores podem navegar até um capítulo (sub)vazio ao ler _The Turing Way_. Isso afeta negativamente a experiência do leitor conforme eles passam pelo livro.

```{figure} ../../figures/empty-toc-file.png
---
nome: arquivo vazio
alt: um arquivo vazio que foi incluído na Tabela de Conteúdos da Via de Turing. Os leitores ainda podem navegar para arquivos vazios quando forem incluídos na tabela de conteúdo.
---
Arquivos vazios incluídos Tabela de Conteúdo da Via de Exibição ainda podem ser acessados pelos leitores.
```

Uma sugestão geral é remover referências a tais arquivos do ToC e levantar um problema no _repositório_ The Turing Way [Github](https://github.com/alan-turing-institute/the-turing-way) para que o conteúdo seja escrito para esses arquivos. Quando o conteúdo for escrito, os arquivos podem ser adicionados ao ToC.

Por exemplo, [esta issue](https://github.com/alan-turing-institute/the-turing-way/issues/1391) tem como curadoria uma lista de arquivos vazios e incompletos atualmente em _The Turing Way_, , e [esta PR](https://github.com/alan-turing-institute/the-turing-way/pull/1448) escreve o conteúdo para o subcapítulo `Licenças de Dados` exibido na imagem {ref}` <empty-toc-file>`.

(ch-consistência-estrutura-hr-estrutura)=
### Verificar 2: Certifique-se de que os capítulos seguem uma estrutura consistente

_A Caminho de Turing_ é composto por cinco guias que contêm vários capítulos e subcapítulos. No entanto, estes capítulos não seguem uma estrutura uniforme, retirando a experiência do leitor.

```{figure} ../../figures/recommended-chapter-structure.png
---
nome: estrutura de capítulo recomendada
alt: A estrutura recomendada para capítulos na Via de Turing. Os capítulos devem ter uma página de destino com secções para pré-requisitos, resumos e por que razão o capítulo é útil. Os capítulos também devem ter uma lista de verificação e um subcapítulo de recursos, além do resto do conteúdo do capítulo.
---
A estrutura recomendada para capítulos na Via Turing.
```

- **Página inicial:**
    - A página de destino do capítulo deve incluir informações sobre quaisquer pré-requisitos necessários para compreender o capítulo, um resumo do conteúdo do capítulo e uma explicação da utilidade do capítulo.
- **Subcapítulos:**
    - Um capítulo pode conter qualquer número de subcapítulos ou nenhum. No entanto, por favor, note o próximo requisito sobre a lista de verificação e os subcapítulos de recursos.
- **Checklist subchapter:**
    - A lista de verificação subcapítulo cria pontos de ação para o leitor tomar com base nos conceitos introduzidos no capítulo.
- **Subcapítulo de recursos:**
    - O subcapítulo de recursos aponta o leitor para outras fontes onde eles podem aprender mais sobre os conceitos discutidos no capítulo, além de tópicos relacionados a serem explorados.


```{attention} Please note that making chapters follow this structure may require splitting some of the existing content into new files.
Referências a estes arquivos devem ser atualizadas na tabela de conteúdo no arquivo `_toc.yml`.
```

Consulte o [modelo de capítulo](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/templates/chapter-template) para estrutura de novas contribuições de capítulos, e use-o para avaliar os capítulos atuais em _The Turing Way_. Para capítulos que não se encaixam nesta estrutura, por favor levante uma Solicitação de Pull Request.


(ch-consistência-estrutura-hr-toc)=
### Verifique 3: Não adicionar um 'tabela de conteúdo' em capítulos ou subcapítulos.

Alguns capítulos em _The Turing Way_ foram escritos com uma tabela de conteúdo feita a mão. No entanto O Livro de Júpiter gera automaticamente uma tabela permanente de conteúdos que pode ser encontrada no lado esquerdo do livro _The Turing Way_ , e uma tabela dinâmica, específica da página de conteúdo localizada no canto superior direito de cada página. Isto torna desnecessária uma tabela de conteúdos escrita manualmente, e pode impactar negativamente a experiência de um leitor com _The Turing Way_.

```{figure} ../../figures/many-table-of-contents.png
---
nome: muitos-e-tabela-de conteúdo
alt: Um subcapítulo no Caminho de Turing com três tabelas de conteúdo. Duas que são geradas pelo Jupyter Book e uma feita pelo autor do capítulo.
---
A tabela de conteúdos escrita manualmente é desnecessária, já que o Livro de Jupyter gera automaticamente duas tabelas de conteúdo separadas.
```
#### Demonstração

<div class="video-content">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/zKWrvgCxSB0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(E-consistência-estrutura-hr-citação)=
### Certifique-se de que as fontes externas sejam citadas e referenciadas corretamente

As described in the {ref}`style guide<ch-style-citing>`, _The Turing Way_'s book-wide references are stored in a BibTeX file called `references.bib`. Ao escrever um novo conteúdo, certifique-se de que as informações abatidas de fontes externas são citadas usando o formato BibTeX e adicionadas às `referências. arquivo ib` conforme apropriado.

O guia de estilo {ref}`<ch-style-citing>` demonstra como adicionar uma nova referência ao arquivo BibTeX centralizado, e mostra como essa referência pode ser incluída no seu texto.


(ch-consistência-estrutura-suave-req)=
## Requisitos Suficientes

Requisitos suaves que lidam com a estrutura da _The Turing Way's_ incluem:

(pt_BR-consistency-structure-sr-summary)=
### Verifique 1: Certifique-se que cada capítulo tem um bom resumo em sua página inicial

Um capítulo com um bom resumo dá ao leitor uma visão geral do conteúdo que se segue. Idealmente, os resumos devem comunicar a ideia principal do capítulo e identificar qualquer detalhe de suporte, mas ser breve e precisa. Os resumos deverão também fazer adequadamente referência cruzada aos subcapítulos do capítulo, em benefício dos leitores que possam querer explorar rapidamente os tópicos que o resumo apresenta. Capítulos em _The Turing Way_ que contêm resumos que não se ajustam a estes critérios podem precisar ser reformulados ou reescritos.


(ch-consistency-structure-sr-modular)=
### Verificar 2: Dividir capítulos longos em subcapítulos menores para que eles sejam modulares

Capítulos longos podem ser difíceis para alguns leitores. Além disso, o conteúdo muito longo pode intimidar os outros leitores que só poderão estar interessados nas principais ideias do capítulo que fala. Portanto, para tornar  _A Via de Turing_ mais fácil de ler, capítulos longos devem ser modulados adequadamente.

Ao manter os capítulos modulares, assegure que os seus subcapítulos falam apenas de um aspecto do tópico global. Por exemplo, se um capítulo sobre Aprendizagem de Máquina fosse escrito para _The Turing Way_, tal capítulo deve conter pelo menos três subcapítulos que cada foco de Aprendizagem Supervisionada, Aprendizado sem supervisão e Aprendizagem de reforço.
