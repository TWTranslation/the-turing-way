(ch-style-citing)=
# Citações e Referências

Mantemos um arquivo [BibTeX](http://www.bibtex.org/) centralizado contendo todas as referências. O arquivo está localizado neste repositório no arquivo [`./book/website/_bibliography/references.bib`][turingbib].

## Fundamentos de arquivos BibTeX

Arquivos BibTeX são uma maneira de formatar listas de referências de uma forma estruturada. Elementos básicos de uma referência incluem um tipo de referência, uma chave de citação única, e uma série de pares chave-valor que descrevem a referência (por exemplo, autor ou título).

Existe uma série de palavras-chave para diferentes tipos de referências em BibTeX. Felizmente, existem ferramentas para ajudar a formatar referências à sintaxe BibTeX. Se você conhece o DOI para sua referência, você pode usar o [doi2bib](https://doi2bib.org/) para ajudar a preencher uma entrada BibTeX boa, o suficiente. Por exemplo, [aqui](https://doi2bib.org/bib/https://doi.org/10.5281/zenodo.3233853) é uma entrada BibTeX suficiente para o manual The Turing Way em si. Outra boa ferramenta é o [Google Scholar](https://scholar.google.com/), onde você procura uma referência, clique nas aspas duplas grandes `"`, e então clique em "BibTeX" próximo da parte inferior.

Exemplos de listar uma referência no formato BibTeX são mostrados abaixo.

## Adicionando uma nova referência em `references.bib`

Você pode editar o arquivo de referência localmente usando um método a seguir:

- Edite [`references.bib`][turingbib] diretamente usando um editor de texto
- Editar [`references.bib`][turingbib] diretamente usando um programa de gerenciamento como [JabRef](http://www.jabref.org/) (Linux, Windows, macOS) ou [BibDesk](https://bibdesk.sourceforge.io/) (macOS)

Usamos um formato bibtex padrão para adicionar uma nova entrada. Por exemplo, há uma entrada no arquivo [`references.bib`][turingbib] como:

```
@article{baker2016reproducibility,
    author={Baker, Monya},
    title={Reproducibility crise? ,
    journal={Nature},
    volume={533},
    número={26},
    páginas={353--66},
    ano={2016}
}
```

**Conclua a edição adicionando uma nova entrada no final do arquivo.**

## Guia de chave de citação

Recomendamos o uso da seguinte estrutura para chaves de citação:

```
AutorYYword
```

Onde:

1. `Autor` é o sobrenome do primeiro autor (`Baker` acima)
2. `AAAA` é o ano (`2016` acima)
3. `palavra` é a primeira palavra significativa no título (`reproducibility` acima). Nota, isso é subjetivo escolhe um nome que facilita lembrar a referência quando você vê a chave de citação.

## Adicionando uma nova referência no texto

To include a citation in your content, we follow the recommendation by [Jupyter Book](https://jupyterbook.org/content/citations.html) that uses [`sphinxcontrib-bibtex`](https://sphinxcontrib-bibtex.readthedocs.io/en/latest/) extension.

Os conceitos-chave são:

- Incluir uma referência usando usando:
```
{cite:ps}`CITEKEY`

```
Aqui `CITEKEY` é a chave de citação correspondente em [`references.bib`][turingbib].
- Você também pode incluir várias citações de uma só vez, separando a CITEKEYs por uma vírgula:
```
{cite:ps}`CITEKEY1,CITEKEY2,CITEKEY3`
```

Citaremos o artigo que editamos anteriormente no [`reference.bib`][turingbib] arquivo usando:

```
{cite:ps}`Kuula2010archiving`
```

Isto aparecerá em seu capítulo como {cite:ps}`padeiro2016reproducibilidade`.

A entrada completa da bibliografia está disponível no final deste livro (veja {ref}`recursos <bibliography>`) usando as diretivas:

    ```{bibliography} ../_bibliography/references.bib

    ```

Para uso avançado, consulte a documentação [feita por sphinxcontrib-bibtex](https://sphinxcontrib-bibtex.readthedocs.io/en/latest/usage.html), que é uma extensão Sphinx para citações no estilo BibTeX.

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib
