(pt_BR/contributing-workflow)=
# Workflow de Contribuição

Quer você esteja escrevendo um novo conteúdo ou revisando os já existentes, contribuindo para _A Caminho de Viagem_ geralmente engloba os passos discutidos nesta seção. Pode remeter para as recomendações aqui apresentadas, a fim de assegurar que preparou adequadamente a sua contribuição para revisão. Note-se que a ordem destas recomendações não é rigorosa e encorajamo-lo a seguir a abordagem que mais lhe convém.

(ch-contributing-workflow-template)=
## Selecione um modelo

Uma vez que você tenha decidido sobre o tipo de conteúdo que você deseja contribuir para _O Caminho de Viagem_, use o [modelo relevante](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/templates) para preparar sua contribuição.

```{note}
Por favor, note que acolhemos as novas contribuições de modelo.
Se os modelos de estudo de capítulo ou caso não se adequarem às suas necessidades, abra um pedido de pulso com sugestões para melhorá-los.
Se você quer contribuir com conteúdo para o qual não há um modelo correspondente, você também é encorajado a criar o modelo ausente e adicioná-lo à coleção de modelos.
```

(pt_BR/contributing-workflow-location)=
## Coloque novos arquivos e pastas em locais apropriados

_O repositório Github do Modo Turing_segue uma estrutura geral de arquivos, onde Guias são pastas e capítulos são subpastas dentro delas. Da mesma forma, estudos de caso são localizados dentro de uma subpasta `de análise de caso` dentro das pastas. Todas as pastas estão localizadas dentro do diretório [`livro/website`](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/website).

Ao escrever um novo conteúdo, certifique-se de que os novos arquivos e pastas que você cria são colocados adequadamente para preservar a estrutura de arquivos _The Turing Way's_.

Por exemplo, o capítulo [Controle de Versão](https://the-turing-way.netlify.app/reproducible-research/vcs.html) do Guia de Pesquisa Reprodutiva está colocado da seguinte forma:

````{admonition} Adding new files and folders
:class: dropdown
```
livro\website
├
├─reproducible-research <---- (pasta para o Guia de Pesquisa Reprodutiva)
user-reproducible-research. d <---- (Página de Aterrissagem)
cs. d <---- (página inicial para o capítulo de controle de versão)
£new-chapéu <---- (página inicial para um novo capítulo)
eqüentões)
├─vcs (pasta de capítulo)
├├─vcs-workflow. d
Econômico-vcs-git. d
eg vcs-git-commit.md
exereto...
£™vcs-personal-stories.md
ahead to be 'checklist' de vcs. d
ereposição_vcs-resources. d
├
^\\-vos-econtra.
├─new-capítulo (nova pasta de capítulos)
├├....
£    
──t-design <---- (pasta para o Guia para Projeto de Projeto)
    ├project-design.md
-...
```
````

Novos capítulos no Guia para Pesquisa Reprodutiva devem ser adicionados como `novo capítulo` no exemplo acima.

(ch-contributing-workflow-naming)=
## Nomear arquivos/pastas adequadamente

Por favor, siga _as convenções_ do The Turing Way para nomear arquivos. Com nomes de arquivo adequados, outros contribuidores podem facilmente identificar o objetivo e a localização de seus arquivos e adicionar ou melhorá-los, se necessário.

(ch-contributing-workflow-guidelines)=
## Siga as diretrizes de estilo e consistência

Conforme você escreve seu capítulo, tenha em mente o _estilo_ [da Modo de Turing](https://the-turing-way.netlify.app/community-handbook/style.html) e [consistência](https://the-turing-way.netlify.app/community-handbook/consistency.html) recomendações. Isso garante que seu novo conteúdo seja acessível e se encaixa no estilo geral, na estrutura e na formatação do livro.

(ch-contribuinte-workflow-toc)=
## Adicionar seus novos arquivos à tabela de conteúdo do livro

A tabela de conteúdos em todo o livro mora no arquivo `_toc.yml` [](https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_toc.yml). Estas estruturas de arquivos _The Turing Way_ e definem a ordem em que os capítulos aparecem. Os arquivos do seu capítulo devem ser adicionados ao `_toc.yml` conforme apropriado.

Por exemplo, porque o [Estudo de caso de Métodos Estatísticos](https://the-turing-way.netlify.app/reproducible-research/case-studies/statistical-methods-manuscript.html) pertence ao Guia de Pesquisa Reprodutiva, foi adicionado à tabela de conteúdo da seguinte forma:

````{admonition} Updating the book-wide table of contents
:class: dropdown
```

- arquivo: reprodutível-research/reproducible-research
  seções:
...

  - title: Case Studies
    file: reproducible-research/case-studies
    sections:
    - title: A Statistical Methods Manuscript
      file: reproducible-research/case-studies/statistical-methods-manuscript
```

````

(ch-contributing-workflow-referencing)=
## Fontes externas de referência adequadamente

Certifique-se de que as fontes externas sejam referenciadas corretamente e incluídas no _arquivo bibtex do The Turing Way_ centralizado, conforme recomendado no guia de estilo [](https://the-turing-way.netlify.app/community-handbook/style/style-citing.html)

(ch-contributing-workflow-glossário)=
## Atualizar o glossário geral

_A Turing Way_ mantém um glossário todo o livro localizado em sua [Apóstrofe](https://the-turing-way.netlify.app/afterword/glossary.html). Ao escrever seu capítulo, [atualize o glossário](https://the-turing-way.netlify.app/community-handbook/style/style-more-styling.html) do livro com os principais termos do capítulo que os leitores devem lembrar.

(pt_BR/contributing-workflow-crosschecking)=
## Cruzar a verificação do seu Pull Request

O conteúdo dos templates são apenas destinados a guiar e estruturar a sua escrita. Remova todos os espaços reservados, dicas e sugestões do seu capítulo antes de enviar seu PR para revisão.
