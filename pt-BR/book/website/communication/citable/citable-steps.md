(cm-citable-steps)=

# Passos para tornar objetos de pesquisa fictícios

There are many reasons why authors don't cite the data, protocols, software and hardware that they use, but one of the biggest ones is that it's not clear how.
Você pode fazer um longo caminho para reduzir essa barreira seguindo alguns passos para torná-la o mais fácil possível.

(cm-citable-steps-object)=

## 1. Identifique seus objetos de pesquisa

Queremos salientar que a maioria dos nossos objectos de investigação deve ser partilhada para que outros investigadores possam reproduzir e reutilizá-los.
Portanto, o primeiro passo é identificar todos os componentes de pesquisa que você compartilharia on-line.
Praticar a pesquisa aberta não é essencial para obter crédito por seu software ou dados, mas é muito mais fácil para outros desenvolverem o seu trabalho de uma forma que reconheça a sua contribuição.
Há cada vez mais provas que mostram que a investigação aberta tende a ser mais citada do que a investigação não aberta de qualidade e significado equivalentes.

As part of the citation for your research objects, it is important to publish research objects beyond papers, such as images, data, software, protocols, methods, and workflow associated with your research.

A melhor maneira de começar com isto será procurar alguns exemplos do tipo de objetos de pesquisa que são ou devem ser citados.
Localizar objetos de pesquisa referenciados normalmente na sua disciplina serve a dois propósitos:

1. It demonstrates that software & data are things that can be cited;
2. It gives authors a reference and format that they can copy and paste directly into their document.

<!-- TODO: Cite relevant paper for this (Piwowar et al 2013?) -->

```{note}
You can learn more about the different types of research objects in the chapters {ref}`making your research open<rr-open>` and {ref}`making your research FAIR<rr-rdm>`.
```

(cm-citable-steps-publish)=

## 2. Publique seu trabalho on-line

Online publications are attached to [persistent identifiers](https://www.youtube.com/watch?v=iea6d5oI8Ag) that are used for citing them.
É importante notar que nem tudo o publicado on-line obtém um identificador único, mas é importante que os objetos de pesquisa sejam publicados on-line com DOIs conforme descrito abaixo.

(cm-citable-steps-doi)=

### DOIs

```{figure} ../../../figures/DOI.*
---
name: doi
alt: This image shows three boxes with materials on top. The main box in the middle has 'identifiers' written on it with three discs on top of it that are labelled 'data sets'. Both boxes by their side have journal articles on top of them. An arrow on the top of the image points to these images as being 'Digital Object Identifiers'. There is text at the bottom of the image which says 'Persistent', 'Unique', 'Trusted'.
---
Digital Object Identifiers or DOIs are persistent, unique and trusted. _The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

Unique identifiers or persistent links for digital objects are more formally called [Digital Object Identifiers or DOIs](https://en.wikipedia.org/wiki/Digital_object_identifier).
Usar DOIs torna muito mais fácil para outros citar seus dados reduz o risco de podridão de link e significa que você pode rastrear como sua pesquisa está sendo usada e citada.

### Servidores que fornecem DOIs

Independente do papel, diferentes objetos de pesquisa podem ser publicados on-line em servidores que oferecem DOIs.
Some of these servers are [Zenodo](https://zenodo.org/) and [FigShare](https://figshare.com/) (for different objects such as figures, presentations and reports), [Data Dryad](https://datadryad.org/stash) (for data), [Open Grants](https://www.ogrants.org/) (for grant proposals) and [Open Science Framework (OSF)](https://osf.io/) (for different components of an open research project).

É perfeitamente possível citar um conjunto de dados ou pacote de software diretamente, e a maioria dos principais editores agora permite isso em seus guias de estilo.
No entanto, por vezes, pode ajudar a citar um documento mais convencional, e é aqui que entra o software e as revistas de dados.
Esses periódicos são semelhantes aos diários de métodos, na medida em que tendem a não incluir resultados significativos, concentrando-se em descrever, com suficiente detalhe, dados e software para permitir a reutilização.
Alguns exemplos incluem:

- [Journal of Open Research Software](https://openresearchsoftware.metajnl.com/)
- [Journal of Open Source Software](https://joss.theoj.org/)

You can read more about these different article types in our {ref}`Chapter on Publishing Different Article Types<cm-dif-articles>`.

(cm-citable-steps-referências)=

## 3. Adicionar Informações de Referenciamento por Máquina Leitura

Você pode ir mais longe permitindo que as pessoas importem informações sobre seus objetos de pesquisa para o banco de dados de referência preferido.
If [BibTeX](https://en.wikipedia.org/wiki/BibTeX) is popular in your field for managing references, post a `.bib` file of _all_ your outputs (not just your papers).
If [Endnote](https://endnote.com/) is more popular, make an Endnote export available.
If you use GitHub, GitLab or a similar public repository, consider creating a `CITATION.cff` file in each repository, which will describe how someone can refer to different research outputs from your project.
You can read more about `CITATION.cff` in {ref}`Software citation with CITATION.CFF <cm-citable-cff>`.

Se possível, forneça vários formatos: você não precisará atualizá-los com muita frequência e isso será recompensado.

