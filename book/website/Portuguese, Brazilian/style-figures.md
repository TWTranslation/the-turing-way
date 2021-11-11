(figuras-de-estilo)=
# Usando figuras em _The Turing Way_

Nós encorajamos você a adicionar imagens aos capítulos _The Turing Way_ do livro. Esta seção do guia de estilo irá explicar como usar [Markally Structured Text](https://myst-parser.readthedocs.io/en/latest/) (MyST) para adicioná-lo ao livro com {ref}`texto alternativo<ch-style-figures-alttext>` e {ref}`legendas<ch-style-figures-caption>`.

Somos muito apaixonados por garantir que os criadores dos arquivos de imagem originais (incluindo você!) sejam {ref}`reconhecidos adequadamente por<ch-style-figures-licence>`. Não use imagens que não estão licenciadas para reutilização.

Neste subcapítulo, usamos o termo **figura** para nos referir a uma ilustração que transmite informações no contexto de capítulos _The Turing Way_. O termo **imagem** é usado para consultar o objeto do arquivo em si.

(modelo-figura-de-estilo)=
## Abrir licença

Por favor, certifique-se de que você atribui os arquivos de imagem de forma justa e evite arquivos que estão restritos à reutilização ou não têm permissões de reprodução.

As seguintes recomendações ajudarão você a verificar se você está usando as imagens de acordo com suas permissões de licença:

* Se você estiver usando suas próprias imagens, por favor adicione-as à pasta `figuras`. Eles serão disponibilizados sob uma [Creative Commons Attribution 4. Licença internacional (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/deed.ast) como acontece com o resto do livro.
* Como alternativa, você pode originar imagens em domínio público ([licença CC0](https://creativecommons.org/share-your-work/public-domain/cc0)) ou imagens licenciadas através de termos Creative Commons apropriados. Imagens que também estão disponíveis sob CC-BY 4. as permissões são muito facilmente interoperáveis com a _A Turing Way_ , já que esta é a mesma licença que o resto do conteúdo do livro.
* Se você encontrou uma imagem (por exemplo na internet), não está disponível sob uma licença aberta por favor contate o autor original da imagem e procure permissão para reproduzir a imagem. Certifique-se de perguntar a eles **como eles gostariam de ser creditados** na legenda da figura.

Em geral, certifique-se de sempre citar a imagem corretamente conforme direcionado pelos proprietários de imagem. "Imagem da Internet" não é suficiente.

(modelo-figuras-das-imagem)=
## Tipo de imagem, nome do arquivo, tamanho e localização

Por favor, carregue os arquivos `.jpg` ou `.png` que têm menos de 1MB para permitir que carreguem mais rápido no livro online. Se o seu arquivo for maior do que 1MB, por favor use uma ferramenta de edição de imagem local, ou uma ferramenta online como [IMG2GO](https://www.img2go.com/compress-image) para compactar o arquivo.

Para nomear seu arquivo de imagem, por favor use tudo em minúsculas e separe as palavras com hífens. Todos os arquivos de imagem usados neste livro devem estar localizados no arquivo `_listare-figura. d` no diretório `livro/website/figuras` do nosso [Repositório GitHub](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/website/figures). Se você usar um arquivo de imagem novo, adicione o arquivo no diretório `figuras` , e adicione detalhes na `_figure-list. d`.

(ch-style-figures-syntax)=
## Sintaxe do MyST para adicionar uma figura a _Capítulo_ Viagem

Todos os nossos capítulos estão escritos em arquivos Markdown. Portanto, usar a sintaxe Markdown para incluir um valor em um arquivo Markdown funcionará bem, por exemplo, `![](../.. figuras / file-collection.jpg)`, onde o caminho relativo do arquivo da imagem é fornecido dentro dos colchetes '()'.

**No entanto,**, esta formatação não permite que as imagens sejam responsivas aos tamanhos de tela, tornando-os inacessíveis para ler em telas pequenas e smartphones. Além disso, isto não permite aos autores redimensionar números em seus capítulos ou cruzar referências em algum outro lugar do livro.

Portanto, nossa recomendação é usar o [formato Markally Structured Text](https://myst-parser.readthedocs.io/en/latest/) (MyST) disponível no Livro Jupyter.

Você pode redimensionar as figuras para ajustar como elas aparecem em nossos capítulos usando os parâmetros: `largura` e `altura` (recebe valor em px, por exemplo, 400px) ou escala `` (recebe valor em percentagem, por exemplo, 50%), especialmente se a sua figura original for grande. Usando o parâmetro: `nome`, você pode fazer referência a figuras em outros capítulos de uma forma semelhante, conforme definido em {ref}`ch-style-crossref`.

Todos os componentes da sua figura (localização, tamanho e nome) podem ser encapsulados na seção dentro de um arquivo markdown usando a seguinte directiva:

````
```{figure} ../../figures/file-collection.jpg
---
altura: 500px
nome: arquivo-coleção
---
```
````
Esta figura pode ser referenciada em outros arquivos usando o papel {ref} como:

```
{ref}`coleção-de arquivos`
```
Por favor, note que uma altura de 500px funciona muito bem com o livro _The Turing Way,_ , mas isto é apenas uma sugestão.
(ch-figuras-estilo-alttext)=
## Texto alternativo
Texto alternativo ou texto alternativo são usados para descrever a aparência e a função de uma imagem em uma página HTML. Nossa figura de exemplo pode ser explicada com esta frase: *Duas pessoas podem navegar felizes arquivos em uma gaveta de documentos.*
Adicionar textos alternativos para figurar é um dos primeiros princípios da acessibilidade à Internet. Software para leitor de tela pode ler textos alternativos para explicar melhor o conteúdo da figura aos seus usuários.
Todos os componentes da sua figura (local do arquivo de imagem, tamanho, nome texto alternativo e título) pode ser encapsulado na seção dentro de um arquivo markdown usando a seguinte directiva:

````
```{figure} ../../figures/file-collection.jpg
---
height: 500px
nome: coleção de arquivos
alt: Duas pessoas felizes navegando arquivos em uma gaveta de documentos.
---
_A Turing Way_ ilustração de projeto por Scriberia. Usado sob uma licença CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```
````
Outra vantagem de usar texto alternativo é quando uma imagem não pode ser carregada no navegador, ou o link para as quebras de imagem, ele é exibido no lugar de uma figura como mostrada abaixo:

```{figure} ../../figures/alt-text-demo.png
---
nome: alt-demo
alt: Duas pessoas feliz navegando arquivos em uma gaveta de documentos.
---
_A Turing Way_ ilustração de projeto por Scriberia. Usado sob uma licença CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

Quando todos esses componentes são usados corretamente, uma figura incluída em um arquivo será renderizada no livro online, como nesta página:

```{figure} ../../figures/file-collection.jpg
---
height: 500px
nome: coleção de arquivos
alt: Duas pessoas felizes navegando arquivos em uma gaveta de documentos.
---
_A Turing Way_ ilustração de projeto por Scriberia. Usado sob uma licença CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(modelo-figuras-do-legenda)=
## Legenda

Legendas aparecem abaixo da figura. Devem ser curtos e concisos e incluir uma referência à fonte de onde são retirados. Em particular, é importante descrever a licença ao abrigo da qual a imagem é reutilizada.

Por exemplo, uma legenda poderia dizer:

> Fazendo seu primeiro pull request no GitHub. _A ilustração do projeto Caminho de Turing_ por Scriberia. Usado sob uma licença CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).

A sintaxe desta imagem é a seguinte, e a forma como aparece no livro está abaixo do trecho de código.

````
```{figure} ../../figures/first-pull-request.png
---
height: 400px
name: first-pull-request
alt: A person helping out another person making their first pull request on GitHub
---
Making your first pull request on GitHub.
_O projeto Turing Way_ ilustração por Scriberia. Usado sob uma licença CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```
````

```{figure} ../../figures/first-pull-request.png
---
height: 400px
nome: primeiro pull request
alt: Uma pessoa ajudando outra pessoa fazendo seu primeiro pull request no GitHub
---
Fazendo seu primeiro pull request no GitHub.
_O projeto Turing Way_ ilustração por Scriberia. Usado sob uma licença CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

Por favor, certifique-se de que o link para a fonte é o {term}`identificador do objeto digital <Digital Object Identifier>` e não o registro do Zenodo. Verifique também se você criou um link para a fonte usando a formatação de link markdown: `[text](url)`.

(modelo-figuras-avançadas)=
## Recursos avançados e "obtiver"

Para parâmetros mais avançados, por favor veja a [Documentação de Livro do Júpiter](https://jupyterbook.org/content/figures.html). Essa página inclui informações sobre como [escalar e alinhar](https://jupyterbook.org/content/figures.html#figure-scaling-and-aligning) as figuras, e como adicionar os números ou suas legendas às [margens](https://jupyterbook.org/content/figures.html#margin-captions-and-figures) do livro.

Nós notamos alguns "pegás" de colaboradores até _The Turing Way_ e nós tentaremos manter esta seção do guia atualizado para qualquer outra pessoa que aprenda a sintaxe MyST para figuras

* Ambas `:` e `"` possuem um significado sintático para o Sphinx. Isso significa que é importante que não utilize esses caracteres no seu texto alternativo.
