(Cm-citable-cff)=
# Citação de software com CITATION.cff

O [Formato de Arquivo de Citação](https://citation-file-format.github.io) permite que você forneça metadados de citação, para software ou conjunto de dados, em arquivos de texto simples que são fáceis de ler tanto por humanos quanto por máquinas.

```{figure} ../../figures/recognition.jpg
---
nome: reconhecimento
largura: 500px
alt: Pesquisar desenvolvedores de software obtêm reconhecimento fazendo o software ser citado.
---
Os desenvolvedores de software de pesquisa são reconhecidos fazendo o software ser citado. _O projeto Turing Way_ ilustração por Scriberia. Zenodo. [http://doi.org/10.5281/zenodo.3332807](http://doi.org/10.5281/zenodo.3332807)
```

Para fornecer esses metadados, comece por escrever um arquivo `CITATION.cff` e inclua-o com seu software ou conjunto de dados. Uma `CITAÇÃO. o arquivo ff` agrega a informação em um formato de valor-chave que pode ser facilmente interpretado e atualizado por humanos, e interpretado e convertido com ferramentas existentes.

(cm-citable-cff-porquê)=
## Por que usar `CITATION.cff`?

Existem ótimas vantagens ao usar o arquivo `CITATION.cff` para as informações de citação de seu software!

É mais fácil para você: quando você hospeda seu código fonte de software no GitHub e tem uma `CITATION. ff` no seu repositório, você pode usar a integração do Zenodo-GitHub para publicar automaticamente novos lançamentos do software. O Zenodo usará as informações da `CITATION.cff` e mostrará junto com a publicação. Você não precisa mais editar essas informações manualmente no Zenodo.

```{figure} ../../figures/software-credit.jpg
---
nome: largura do software-credit
500px
alt: Mais créditos para os criadores de software.
---
Mais créditos para os criadores de software. _O projeto Turing Way_ ilustração por Scriberia. Zenodo. [http://doi.org/10.5281/zenodo.3332807](http://doi.org/10.5281/zenodo.3332807)
```

É mais fácil para os usuários de seu software:
1. Eles podem usar diretamente as informações de citação de `CITATION.cff` para citar seu software.
2. Se seu código fonte estiver no GitHub, exibirão as informações de citação na barra lateral como uma citação formatada, e também no formato BibTeX. Os usuários também podem copiar, colá-lo em seus manuscritos e/ou citar seu software corretamente.
3. Se eles usarem o gerenciador de referência Zotero, eles podem importar os metadados da citação diretamente da `CITATION. Arquivo ff` no repositório do GitHub para seu gerenciador de referências.

(cm-citable-cff-how-to-create)=
## Como criar um arquivo `CITATION.cff`

A `CITATION.cff` é um arquivo `YAML` com sua própria definição de esquema. O esquema define as regras para cada campo, e quais os campos que são obrigatórios e quais são opcionais. O usuário deve seguir estas regras para criar um arquivo `CITATION.cff` válido.

Um exemplo mínimo de um arquivo válido de `CITATION.cff` , que contém apenas as chaves obrigatórias, ficaria assim:

```yaml
autores:
  - nomes familiares: Fazer
    nome-dados: João
cff-version: 1.2.
mensagem: "Se você usa este software, por favor citá-lo usando os metadados deste arquivo."
título: "Meu software de pesquisa"
```

No entanto, adicionar mais campos pode ajudar você a criar mais metadados descritivos do seu software. O exemplo abaixo também fornece informações importantes sobre software como versão, data de lançamento, DOI, licença, palavras-chave.

```yaml
abstrato: "Este é o meu software de pesquisa incrível. It does many things."
authors:
  - family-names: Doe
    given-names: John
    orcid: "https://orcid.org/0000-0001-8888-9999"
cff-version: 1.2.0
date-released: "2021-10-13"
identifiers:
  - description: "This is the collection of archived snapshots of all versions of My Research Software"
    type: doi
    value: 10.5281/zenodo.123456
  - description: "This is the archived snapshot of version 0.11.2 of My Research Software"
    type: doi
    value: 10.5281/zenodo.123457
keywords:
  - "amazing software"
  - research
license: Apache-2.0
message: "If you use this software, please cite it using the metadata from this file."
repository-code: "https://github.com/citation-file-format/my-research-software"
title: "My Research Software"
version: 0.11.2
```

A lista completa dos campos é descrita no [guia de esquema CFF](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md). Na próxima seção, você pode descobrir quais ferramentas podem ajudá-lo a criar e usar o arquivo `CITATION.cff`.

### Passos para tornar seu software fictício

Para tornar seu software cívico, você precisa seguir as duas etapas abaixo.

#### Passo 1. Crie um arquivo `CITATION.cff`

Há duas maneiras de criar um arquivo `CITATION.cff`.

1. Use [cffinit](https://citation-file-format.github.io/cff-initializer-javascript/), um aplicativo da web que o guia através do processo de criação do seu arquivo de referência. O `cffinit` tem algumas vantagens em comparação com a edição manual, como

    - não é necessário instalar ferramentas extras;
    - não é necessário validação manual;
    - orientação para cada campos;
    - feedback visual para indicar problemas.

    Sugerimos usar `cffinit` pois ele simplifica a criação e validação. Para mais detalhes sobre o uso do `cffinit` veja {ref}`cm-citable-cffinit`.

2. Edite o arquivo manualmente no editor de código favorito. As desvantagens desse método são instalar as ferramentas necessárias em seu sistema e fazer a validação você mesmo. Além disso, as mensagens de erro da validação podem ser relativamente longas e difíceis de entender. Depois de ter um arquivo `CITATION.cff` , ele precisa ser validado para garantir que não haja problemas. Você pode validar seu arquivo `CITATION.cff` na linha de comando com [`cffconvert` pacote Python](https://pypi.org/project/cffconvert/).

    ```shell
    caminho do cd para/CITATION.cff
    cffconvert --validate
    ```

    Se você preferir usar o Docker, você pode usar a [`cffconvert` imagem Docker](https://hub.docker.com/r/citationcff/cffconvert):

    ```shell
    caminho do cd para/CITATION.cff
    docker run --rm -v ${PWD}:/app citationcff/cffconvert --validate
    ```

    Se você receber mensagens de erro, procure o erro de validação relevante e corrija-o.

```{note}
Para certificar-se de que o seu repositório do GitHub sempre tenha um arquivo válido `CITATION.cff`, você pode usar o [cff-validator](https://github.com/marketplace/actions/cff-validator) GitHub Action.
```

#### Passo 2. Adicione seu `CITATION.cff` a um repositório de código público

Depois de criar uma CITAÇÃO `válida. arquivo ff` você precisará adicioná-lo à raiz do seu código ou repositório de dados para que ele possa ser facilmente encontrado e citado.

(atualização-cm-citable-cff)=
## Atualizando seu arquivo `CITATION.cff`

Quando você precisar atualizar sua `CITAÇÃO. ff` arquivo, por exemplo para adicionar um autor ou para alterar as informações sobre lançamentos, você precisará editar o arquivo manualmente. É recomendável atualizar o arquivo `CITATION.cff` antes de fazer uma versão de software.

(cm-citable-cff-how-to-cite)=
## Como morder usando `CITATION.cff`

Se você encontrou software ou conjuntos de dados que contêm uma `CITAÇÃO. ff`, existem algumas maneiras de obter a informação de referência para citá-la na sua publicação.

- Você pode usar uma das ferramentas, como `cffconvert` programa de linha de comando para converter a sua `CITATION. Arquivo ff` para um dos [formatos suportados](https://github.com/citation-file-format/cff-converter-python#supported-output-formats), como APA, BibTeX ou EndNote.

- Como alternativa, se o software ou conjuntos de dados que você deseja citar estiverem disponíveis no GitHub, você pode usar a interface do GitHub para copiar a referência nos formatos APA ou BibTeX clicando no botão "Citar este repositório" (veja a área verde na imagem abaixo). Para mais detalhes sobre a citação de software no GitHub, consulte o guia do [GitHub sobre a citação de software](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-citation-files).

  ```{figure} ../../figures/github-cff-integration.jpg
  ---
  nome: github-cff-integration
  alt: Botão no GitHub que fornece a conversão automática do arquivo `CITATION.cff` para os formatos dos APA e BibTex.
  ---
  "Cite this repository" converte automaticamente o arquivo `CITATION.cff` para o formato dos APA's e BibTex.
  ```

  ```{note}
  Cite este repositório somente aparece quando há um arquivo `CITATION.cff` no repositório.
  ```

(cm-citable-cff-available-tools)=
## Ferramentas Disponíveis

Existem várias ferramentas para facilitar a criação e validação de arquivos `CITATION.cff` , bem como a conversão de e para outros formatos. O repositório do Formato de Arquivo de Referência fornece [uma lista de todas as ferramentas conhecidas](https://github.com/citation-file-format/citation-file-format#tools-to-work-with-citationcff-files-wrench) para isso.
