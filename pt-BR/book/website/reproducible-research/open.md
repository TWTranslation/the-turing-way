(rr-open)=

# Pesquisa Aberta

(rr-open-prerequisites)=

## Pré-requisitos

| Pré-requisito | Importance | Notes                                           |
| ------------- | ---------- | ----------------------------------------------- |
| {ref}`rr-vcs` | Helpful    | Experiência com o GitHub é particularmente útil |

```{figure} ../../figures/evolution-open-research.*
---
name: evolution-open-research-rr
alt: This image shows a researcher evolving their research practices to move towards the era of open research. The image starts with the person looking anxious about engaging with open science, slowly they take a few steps, feel comfortable about sharing their work, and finally start to collaborate with others.
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-open-summary)=

## Resumo

A pesquisa aberta visa transformar a pesquisa, tornando-a mais reprodutível, transparente, colaborativa, responsável e acessível à sociedade. Ela promove mudanças na forma como a investigação é levada a cabo e difundida através de ferramentas digitais. One definition of open research, [as given by the Organisation for Economic Co-operation and Development (OECD)](https://www.fct.pt/dsi/docs/Making_Open_Science_a_Reality.pdf "Making Open Science a Reality, OECD Science, Technology and Industry Policy Papers No. 25"), is the practice of making "the primary outputs of publicly funded research results – publications and the research data – publicly accessible in a digital format with no or minimal restriction." Para alcançar essa abertura na pesquisa, cada elemento do processo de pesquisa deve:

- _Be publicly available_: It is difficult to use and benefit from knowledge hidden behind barriers such as passwords and paywalls.
- _Be reusable_: Research outputs need to be licensed appropriately, so that prospective users know any limitations on reuse.
- _Be transparent_: With appropriate metadata to provide clear statements of how research output was produced and what it contains.

Schematically, the research process has the following form: data are collected and then analysed (often using software). Este processo pode envolver o uso de hardware especializado. Os resultados da investigação são depois publicados. Throughout the process, it is good practice for researchers to document their work. This can happen in notebooks or other forms of documentation. For experimental studies, Electronic Lab Notebooks are common. A pesquisa aberta visa tornar aberto cada um destes elementos:

- _Open Data_: Documenting and sharing research data openly for reuse.
- _Open Source Software_: Documenting research code and routines, and making them freely accessible and available.
- _Open Hardware_: Documenting designs, materials, and other relevant information related to hardware, and making them freely accessible and available.
- _Open Access_: Making all published outputs freely accessible for maximum use and impact.
- _Open Notebooks_: An emerging practice, documenting and sharing the experimental process of trial and error.

See the [Open Definition](https://opendefinition.org/) for a set of principles that define “openness” in relation to data and content. The above elements are expanded upon in this chapter.

Open scholarship [{term}`def<Open Scholarship>`] is a concept that extends open research further. Ela se refere a tornar outros aspectos da pesquisa científica abertos ao público, por exemplo:

- _Open educational resources_: Making educational resources publicly available to be re-used and modified.
- _Equity, diversity, inclusion_: Ensuring scholarship is open to anyone without barriers based on factors such as race, background, gender, and sexual orientation.
- _Citizen science_: The inclusion of members of the public in scientific research.

Estes elementos também são discutidos detalhadamente neste capítulo.

(rr-open-useful)=

## Motivação e Antecedentes

Existem cinco principais escolas de pensamento que promovem práticas abertas para beneficiar a pesquisa:

| Escola         | Crença                                                                                                              | Objetivo                                                                                              |
| -------------- | ------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| Infraestrutura | A investigação eficaz depende das ferramentas e aplicações disponíveis.                             | Criar plataformas, ferramentas e serviços disponíveis abertamente para pesquisadores. |
| Pragmática     | A criação de conhecimento poderia ser mais eficiente se os investigadores trabalhassem em conjunto. | Abrir o processo de criação de conhecimento.                                          |
| Medição        | As contribuições acadêmicas hoje precisam de medidas de impacto alternativas.                       | Desenvolver um sistema alternativo para medir o impacto da pesquisa.                  |
| Democrática    | O acesso ao conhecimento está distribuído desigualmente.                                            | Tornar o conhecimento disponível livre e gratuitamente para todas as pessoas.         |
| Público        | É necessário tornar a investigação acessível ao público.                                            | Tornar a investigação acessível aos cidadãos.                                         |

As práticas abertas também beneficiam os pesquisadores que as propagam.
For example, there is evidence {cite:t}`McKiernan2016Open` that open access articles are cited more often, as shown by the metastudy presented in the figure below.

```{figure} ../../figures/open-access-citations.*
---
height: 500px
name: open-access-citations
alt: A plot of the relative citation rate (OA divided by non-OA), in the x axis, for 19 different areas of knowledge, in the y axis. The areas of knowledge are organized from the highest to the lowest Relative Citation Rate in the following order - Agricultural Studies, Physics/Astronomy, Medicine, Computer Science, Sociology/Social Sciences, Psychology, Political Science, Management, Law, Economics, Mathematics, Health, Engineering, Philosophy, Education, Business, Communications Studies, Ecology, and Biology. The highest mean values are around 3.2 for Agricultural Studies, and the lowest are around 1.2 for Biology.
---
The relative citation rate (OA: non-OA) in 19 fields of research. This rate is defined as the mean citation rate of OA articles divided by the mean citation rate of non-OA articles. Multiple points for the same discipline indicate different estimates from the same study or estimates from several studies. (See {cite:ps}`McKiernan2016Open`.)
```

Outro benefício da abertura é que, embora as colaborações de pesquisa sejam essenciais para o avanço do conhecimento, identificar e se conectar com os colaboradores apropriados não é trivial. As práticas abertas podem facilitar a conexão entre pesquisadores ao aumentar a possibilidade de ser descoberta e dar visibilidade ao trabalho de cada um, facilitando o acesso rápido a novos dados e recursos de software e criando novas oportunidades para interagir e contribuir para os projetos comunais em curso.

_**Chapter Tags**: This chapter is curated for the `Turing Data Study Group` (`turing-dsg`)._
