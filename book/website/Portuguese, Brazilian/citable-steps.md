(cm-citable-steps)=
# Passos para tornar objetos de pesquisa fictícios

Há muitas razões pelas quais autores não citam os dados e softwares que usam, mas uma das maiores é que não está claro como. Você pode fazer um longo caminho para reduzir essa barreira seguindo alguns passos para torná-la o mais fácil possível.

(cm-citable-steps-object)=
## 1. Identifique seus objetos de pesquisa

Queremos salientar que a maioria dos nossos objectos de investigação deve ser partilhada para que outros investigadores possam reproduzir e reutilizá-los. Portanto, o primeiro passo é identificar todos os componentes de pesquisa que você compartilharia on-line. Praticar a pesquisa aberta não é essencial para obter crédito por seu software ou dados, mas é muito mais fácil para outros desenvolverem o seu trabalho de uma forma que reconheça a sua contribuição. Há cada vez mais provas que mostram que a investigação aberta tende a ser mais citada do que a investigação não aberta de qualidade e significado equivalentes.

Como parte da referência para seus objetos de pesquisa, é importante publicar objetos de pesquisa além de papéis, tais como imagens, dados, software, protocolos, fluxos de trabalho persistentes associados a suas pesquisas.

A melhor maneira de começar com isto será procurar alguns exemplos do tipo de objetos de pesquisa que são ou devem ser citados. Localizar objetos de pesquisa referenciados normalmente na sua disciplina serve a dois propósitos:
1. Demonstra que software & dados são coisas que podem ser citadas;
2. Dá aos autores uma referência e um formato que eles podem copiar e colar diretamente no seu documento.
<!-- TODO: Cite relevant paper for this (Piwowar et al 2013?) -->

```{note}
Você pode aprender mais sobre os diferentes tipos de objetos de pesquisa nos capítulos {ref}`fazer sua pesquisa aberta<rr-open>` e {ref}`fazer sua pesquisa FALHA<rr-rdm>`.
```

(cm-citable-steps-publish)=
## 2. Publique seu trabalho on-line

As publicações on-line são anexadas a identificadores persistentes que são utilizados para citá-los. É importante notar que nem tudo o publicado on-line obtém um identificador único, mas é importante que os objetos de pesquisa sejam publicados on-line com DOIs conforme descrito abaixo.

(cm-citable-steps-doi)=
### DOIs

```{figure} ../../figures/DOI.jpg
---
nome: faça-o
alternativa: Esta imagem exibe três caixas com materiais no topo. A caixa principal do meio contém "identificadores" escritos nele com três discos em cima, que são rotulados como "conjuntos de dados". Ambas as caixas a seu lado têm artigos de diário sobre eles. Uma seta no topo da imagem aponta para essas imagens como sendo 'Identificadores Digitais de Objetos Identificadores'. Há um texto no fundo da imagem que diz "Persistente", "Único", "Confiável".
---
Identificadores Digitais de Objetos ou DOIs são persistentes, únicos e confiáveis. _O projeto Turing Way_ ilustração por Scriberia. Usado sob uma licença CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

Identificadores exclusivos ou ligações persistentes para objetos digitais são mais chamados formalmente de [Identificadores Digitais de Objeto ou DOIs](https://en.wikipedia.org/wiki/Digital_object_identifier). Usar DOIs torna muito mais fácil para outros citar seus dados reduz o risco de podridão de link e significa que você pode rastrear como sua pesquisa está sendo usada e citada.

### Servidores que fornecem DOIs

Independente do papel, diferentes objetos de pesquisa podem ser publicados on-line em servidores que oferecem DOIs. Alguns desses servidores são [Zenodo](https://zenodo.org/) e [FigShare](https://figshare.com/) (para objetos diferentes como figuras, apresentações e relatórios), [Data Dryad](https://datadryad.org/stash) (para dados), [Concessões Abertas](https://www.ogrants.org/) (para conceder propostas) e [Open Science Framework (OSF)](https://osf.io/) (para componentes diferentes de um projeto de pesquisa aberta).

É perfeitamente possível citar um conjunto de dados ou pacote de software diretamente, e a maioria dos principais editores agora permite isso em seus guias de estilo. No entanto, por vezes, pode ajudar a citar um documento mais convencional, e é aqui que entra o software e as revistas de dados. Esses periódicos são semelhantes aos diários de métodos, na medida em que tendem a não incluir resultados significativos, concentrando-se em descrever, com suficiente detalhe, dados e software para permitir a reutilização. Alguns exemplos incluem:
- [Diário de Software de Pesquisa Aberta](https://openresearchsoftware.metajnl.com/)
- [Jornal de Software de Código Aberto](https://joss.theoj.org/)

(cm-citable-steps-referências)=
## 3. Adicionar Informações de Referenciamento por Máquina Leitura

Você pode ir mais longe permitindo que as pessoas importem informações sobre seus objetos de pesquisa para o banco de dados de referência preferido. Se [BibTeX](https://en.wikipedia.org/wiki/BibTeX) é popular no seu campo para gerenciar referências, poste um `. arquivo` ib de *todas* as suas saídas (não apenas seus papéis). Se [Endnote](https://endnote.com/) for mais popular, torne uma exportação de Endnote disponível. Se você usa GitHub, GitLab ou similar, considere a criação de um arquivo de `CITATION` em cada repositório contendo orientação sobre como alguém pode consultar resultados de pesquisa diferentes de seu projeto.

Se possível, forneça vários formatos: você não precisará atualizá-los com muita frequência e isso será recompensado.

```{note}
Muitas ferramentas on-line permitem exportar citações de objetos de pesquisa em formatos diferentes.
Por exemplo, veja [https://www.citethisforme.com/](https://www.citethisforme.com/).
```
