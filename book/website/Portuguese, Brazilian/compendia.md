(rr-compendia)=
# Compendia de Pesquisa

## Pré-requisito

| Pré-requisito                                | Importância | Observações                                          |
| -------------------------------------------- | ----------- | ---------------------------------------------------- |
| {ref}`Controle de Versão<rr-vcs>`      | Útil        | Pode ser usado para a versão do compêndio            |
| {ref}`Pesquisa Aberta<rr-open>`        | Útil        | Componentes são parte do compêndio                   |
| {ref}`Ambientes Reproduíveis<rr-renv>` | Útil        | Pode ser usado para tornar o compendium reprodutível |
| {ref}`Binder Hub<rr-binderhub>`        | Útil        | Pode ser usado para publicar o compêndio             |
| {ref}`Faça<rr-make>`                   | Útil        | Pode ser usado para automação no compêndio           |

## Summary

Um compêndio de pesquisa é uma coleção de todas as partes digitais de um projeto de pesquisa, incluindo dados, código, textos (protocolos, relatórios, questionários, meta data). A coleção é criada de tal forma que reproduzindo todos os resultados é direta {cite:ps}`Nuest2017compendia,Gentleman2007statistical`.

Este capítulo tem muitos pré-requisitos, pois leva todos os componentes digitais de um projeto juntos num pacote de pesquisa reprodutível. Dito isto, é possível construir um compêndio de investigação com um conhecimento técnico mínimo. O principal objectivo é que todos os elementos de um projeto sejam publicados em conjunto, de modo que uma estrutura básica de pastas que combine todos os componentes possa ser suficiente.

```{figure} ../figures/research-compendium.jpg
---
de altura: 500px
nome: pesquisa-compendium
alt: Uma ilustração mostrando uma pessoa que é formada por uma grande máquina que pega informações científicas de vários papéis e dá uma saída de arquivo legível.
---
_A Turing Way_ ilustração de projeto por Scriberia. Usado sob uma licença CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Motivação

Um compêndio de pesquisa [{term}`def<Research Compendia>`] combina todos os elementos do seu projeto, permitindo que outros reproduzam seu trabalho e deve ser o produto final do seu projeto de pesquisa. Publicar o seu papel de pesquisa juntamente com um compêndio de pesquisa permite que outros acessem o seu input, teste a sua análise e, se o compêndio pode ser executado, execute novamente para avaliar a saída resultante. Isso não só ainda confia na sua pesquisa, como pode lhe dar mais visibilidade. Outros podem utilizar sua pesquisa de maneiras inesperadas, alguns dos quais são discutidos abaixo (consulte a seção: {ref}`Usando um compêndio de pesquisa<rr-compendia-using>`).

## Fundo

Um compêndio da pesquisa no seu mais básico é um conjunto abrangente de arquivos que combina todos os componentes de um projeto. Este compêndio pode ser baixado e executado localmente para recriar o trabalho feito, ou pode conter elementos que permitem a sua execução em um servidor remoto. Compendia da pesquisa executável visa tornar a parte computacional de uma publicação científica reprodutível, fornecendo todos os blocos de construção disponíveis e fornecendo uma descrição de como o usuário pode executar o código contido.


### Estrutura de um compêndio de pesquisa

Três princípios devem ser tidos em mente ao construir um compêndio de pesquisa {cite:ps}`Marwick2018compendia`.

- Os ficheiros devem ser organizados numa estrutura de pastas convencional;
- Dados, métodos e saída devem ser claramente separados;
- O ambiente computacional deve ser especificado.

Com estes princípios, é possível uma grande variedade de empresas. Vamos começar com a versão mais básica.


#### Compendium Básico

Um compêndio básico segue estes três princípios. Ele separa dados e métodos em uma estrutura de pastas convencional e descreve o ambiente computacional em um arquivo designado. Além disso, qualquer compêndio deve ter uma página inicial sob a forma de um documento README.

```text
compendium/
── dados
├── meu_data.csv
─── analysis
── my_script.R
── DESCRIPTION
─ README.md
```

#### Compendium Executável

A seguinte pasta pode ser considerada um compêndio de pesquisa executável. Contém todas as partes digitais do projeto de pesquisa (código, dados, texto, números) e todas as informações sobre como obter os resultados. O ambiente de computação é descrito no `Dockerfile`, as dependências dos arquivos e como gerar os resultados automaticamente são descritas no `Makefile`. Além disso, temos um `README. d` descrevendo o que é o compêndio e um arquivo `LICENSE` com informações sobre como ele pode ser usado.

```text
compêndio /
── CITATION
─── código
── analyse_data.R
── clean_data.
── data_clean
── data_clean.csv
── data_raw
─── datapackage. son
├── data_raw.csv
─── Dockerfile
── figuras
├──── flow_chart. peg
── LICENSE
─── Makefile
── papel de papel.Rmd
─ README.md
```

#### Separando Métodos, Dados, Saída

Os princípios do compêndio da pesquisa afirmam que deve separar claramente Métodos, Dados e Output. Simplificado, isso significa que devemos distinguir entre três tipos de arquivos e pastas:

- **Somente leitura**: dados brutos (``data_raw\`), metadados (``datapackage.json`,`CITATION`)
- **Gerado por seres humanos**: código (`clean_data.R`, `analyse_data.`), papel (`papel.Rmd`), documentação (`README.md`)
- **Projeto gerado**: dados limpos (``data_clean\`, figuras (``figuras\`), outras saídas

Os exemplos mencionados aqui não são exaustivos e alguns podem ser primeiramente "gerado-humano" e em algum momento se tornam "somente leitura" (por exemplo, um humano pode gerar o datapackage `de metadados de dados. son`, mas uma vez que isso é feito, pode se tornar algo para não ser tocado). Por outras palavras, se uma pasta contém ficheiros em qualquer destas categorias, pode depender do ciclo de vida do projeto.


### Criando um compêndio

Se você já usa algumas das ferramentas neste livro - como controle de versão, Makefiles, e/ou reproduzíveis ambientes - pode chegar naturalmente a você criar um compêndio de pesquisa. Isto acontece porque um repositório de controle de versão pode ser um compêndio de pesquisa; Um Makefile o torna executável; Um ambiente reprodutível o torna reproduzível. Para criar um compêndio de pesquisa, recomendamos primeiro pensar sobre *quais são os componentes do seu projeto* e criar a estrutura da pasta de acordo. Use nomes para arquivos e pastas que tornam mais fácil para os outros entenderem o que eles contêm. É uma boa idéia pensar sobre isso cedo no processo de pesquisa e iniciar seu projeto com a mentalidade de que o resultado final é um compêndio de pesquisa em vez de apenas um papel de pesquisa.


### Publicando um compêndio

Existem várias opções para publicar um compêndio de pesquisa:

- Em uma plataforma de versão como o GitHub ou GitLab (potencialmente com um link para o Binder).
- Em um arquivo de pesquisas, como o Zenodo ou o Open Science Framework (OSF).
- Como material complementar de uma publicação em papel.

Por exemplos, veja o rótulo/tag/comunidade "pesquisar-compendium" (aplicado no GitHub, Zenodo, OSF) ou como alternativa ao termo "pesquisa compendium" na descrição (usado no GitLab). Para obter mais informações, consulte também [Pesquisa no Compendium](https://research-compendium.science).

No futuro, o compêndio da investigação poderá até ser a própria publicação que permite uma revisão por pares de todo o projecto de investigação.

(rr-compendia-usando)=
### Usando um compêndio

Um compêndio de pesquisa pode ser utilizado de várias maneiras, incluindo (mas não limitado a):

- Avaliação por pares: Se os pares puderem verificar o que você fez, eles podem revisá-la de forma muito mais aprofundada.
- Entendimento da pesquisa: se você realmente quer entender o que alguém fez no projeto de pesquisa deles, o compêndio de pesquisa é o que você precisa olhar.
- Ensino: A compendia da pesquisa pode ser um ótimo exemplo para ser usada no ensino.
- Estudos de reprodutividade/hacks: Um compêndio de pesquisa permite que outros pesquisadores tentem (e esperamos que tenha sucesso) refazer seus computadores.


## Checklist

Para criar um compêndio de pesquisa, siga estas etapas:

- Pense em uma boa estrutura de pastas (veja o exemplo acima)
- Criar estrutura de pastas (diretório principal e sub-diretórios)
- Opcional: Faça o compendium em um repositório git
- Adicionar todos os arquivos necessários para reproduzir os resultados do projeto
- Tente fazer com que o compêndio seja tão limpo e fácil de usar quanto possível quando você o anunciar para outros
- Opcional: Faça um par verificar o compêndio e ver se ele funciona corretamente
- Publique o seu compêndio

## Leitura mais recente

- O site [Pesquisa Compendium](https://research-compendium.science) contém links para outros recursos e publicações na compendia de pesquisa, bem como links para exemplos.


<!---
> top 3/5 resources to read on this topic (if they weren't licensed so we could include them above already) at the top, maybe in their own box/in bold.
> less relevant/favourite resources in case someone wants to dig into this in detail
-->
