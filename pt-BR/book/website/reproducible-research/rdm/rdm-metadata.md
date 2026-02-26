(rr-rdm-metadata)=

# Documentação e Metadados

Ter dados disponíveis de nada serve se não for possível compreendê-los. Sem metadados para fornecer proveniência e contexto, os dados não podem ser usados de forma eficaz.
Por exemplo, uma tabela de números é inútil se nenhum título descreve o que as colunas/linhas contêm.
Portanto, é importante garantir que os conjuntos de dados abertos incluam metadados consistentes, ou seja, informações sobre os dados que permitam descrevê-los de forma completa.
Isso requer que as informações que acompanham os dados estejam presentes na documentação e nos metadados.

(rr-rdm-metadata-documentation)=

## Documentação

A documentação fornece contexto para o seu trabalho.
Ela permite que colaboradores, colegas e seu eu futuro entendam o que foi feito e por quê.

A documentação dos dados pode ser feita em diferentes níveis.
Toda a documentação que acompanha os dados deve ser escrita em linguagem clara e simples.
A documentação permite que os usuários dos dados tenham informações suficientes para compreender a fonte, os pontos fortes e fracos, e as limitações analíticas dos dados, de forma que possam tomar decisões informadas ao utilizá-los.

```{figure} ../../../figures/documentation.*
---
name: documentation
alt: The figure goes through a dark wood setting lights along the way. The lights are blocks of text - one can see that these are pieces of documentation. They make it easy for colleagues to find their way. In the darkness one sees another figure - someone got lost in the woods where no documentation was available.
---
Illustration about peer review.
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

(rr-rdm-metadata-metadata)=

## Metadados

Metadados são informações sobre os dados, descritores que facilitam a catalogação e a descoberta de dados.
Muitas vezes, os metadados são destinados à leitura por máquina.

Quando dados são submetidos a um repositório de dados confiável, os metadados legíveis por máquina são gerados pelo próprio repositório.
Se os dados não estiverem em um repositório, um arquivo de texto com metadados legíveis por máquina pode ser adicionado como parte da documentação.

- O tipo de pesquisa e a natureza dos dados também influenciam o tipo de documentação necessária.
- The level of documentation and metadata [{term}`def<Metadata>`] will vary according to the project, and the range of people the data needs to be understood by.
- Examples of documentation may include items like [data dictionaries](https://help.osf.io/hc/en-us/articles/360019739054-How-to-Make-a-Data-Dictionary) (see [here for a template](https://data.nal.usda.gov/data-dictionary-blank-template)) or codebooks, protocols, logbooks or lab journals, README files, research logs, analysis syntax, algorithms and code comments.
- Variáveis devem ser definidas e explicadas utilizando dicionários ou livros de códigos.
- Dados devem ser armazenados em estruturas de pastas lógicas e hierárquicas, com um arquivo README usado para descrever a estrutura.
  The README file is helpful for others and will also help you find your data in the future {cite:ps}`Fuchs2018documentation`.
  See the [README template from Cornell](https://cornell.app.box.com/v/ReadmeTemplate) for an example.
- Recomenda-se utilizar padrões de metadados reconhecidos pela comunidade para facilitar a combinação de conjuntos de dados.

(rr-rdm-metadata-standards)=

### Padrões da Comunidade - Metadados

O uso de padrões definidos pela comunidade para metadados é crucial para a pesquisa reprodutível e permite a comparação de dados heterogêneos provenientes de diversas fontes, domínios e disciplinas.
Os padrões de metadados são também específicos de cada área.
For example, for brain data, the [Brain Imaging Data Structure](https://doi.org/10.25504/FAIRsharing.rd1j6t) is the standard to use.
No entanto, nem toda área utiliza padrões de metadados.
You can see if your discipline uses metadata standards through [FAIRsharing](https://fairsharing.org/), a resource to identify and cite the metadata or identifier schemas, databases or repositories that exist for your data and discipline.

Nesse caso, um arquivo de texto com metadados específicos da área pode ser adicionado como parte da documentação.

Quer aprender mais sobre Metadados e Padrões de Metadados? Watch an [introduction video](https://commons.esipfed.org/node/1422).

(rr-rdm-metadata-pid)=

### PID Metadata

{abbr}`PID (Persistent Identifier)` metadata is metadata submitted to PID registration agencies, most repositories handle PID metadata automatically through API integration, it enables your work to be discoverable across disciplines and platforms.

PID metadata includes core properties like:

- Creator names and affiliations
- Title and description
- Publication date and resource type
- Relationships to other research outputs (such as citations or dataset-paper links)

Unlike domain-specific metadata (such as the Brain Imaging Data Structure for neuroimaging data), PID metadata follows standardized schemas that are discipline agnostic.
Both types of metadata are valuable - PID metadata enables broad discoverability while domain-specific metadata captures the detailed context needed for reuse within your field.

Learn about how repositories generate PID metadata and the distinction between these metadata types in our [chapter on persistent identifiers](#rr-rdm-pid-metadata).

(rr-rdm-readme)=

## README for datasets

A README file provides information about data (or software) and is intended to help ensure that the data can be correctly interpreted and used, by yourself or others.
A README file is generally shared together with an open dataset, or can be the [landing page of your software/project repository](#pd-project-repo-readme).

README text files should describe the methods used for data collection and analysis and include data/software-specific information (parameters, variables, column headings, symbols used).
See [Make a README](https://www.makeareadme.com/) for more information on why README files are important and how you can set up your own README files.

### README tips and examples

- Create one README file for each dataset
- Name the file README
- Use plain text file (README.txt or README.md). Or use README.pdf when text formatting is important for your file.

Example templates:

- [Cornell Template](https://cornell.app.box.com/v/ReadmeTemplate)
- [4TU.ResearchData’s guidelines for readme files](https://data.4tu.nl/s/documents/Guidelines_for_creating_a_README_file.pdf) (pdf)

(rr-rdm-metadata-tagging)=

## Tagging

Tags are keywords assigned to files, and a way to add metadata to a file to organise them more flexibly.
While a file can only be in one folder at a time, it can have an unlimited number of tags.

Some tips include:

- Use short tag names (one or two words)
- Be consistent with tags
- Not all file formats allow tags, and when files are transferred tags may be stripped

See [Tagging and Finding Your Files by MIT libraries](https://libguides.mit.edu/metadataTools)) for more information.

(rr-rdm-metadata-resources)=

## Recursos Adicionais

- Videos on [Data Description](https://www.youtube.com/watch?v=sg3P_V8PIes) & [Documentation and Data Quality](https://www.youtube.com/watch?v=3ByfQWDcavg) from the [TU Delft Open Science MOOC](https://online-learning.tudelft.nl/courses/open-science-sharing-your-research-with-the-world/).
- Example of data documentation by {cite:ps}`Larsen2021Documentation`
- [Webinar: The Data You Document are the Data We Love](https://youtu.be/SoFxBN-Jnbg?t=1133)
- [Slides: FAIRify your data: data documentation and metadata](https://osf.io/wbr7t/)
- [Controlled vocabularies for the social sciences: what they are, and why we need them](https://odissei-data.nl/en/2022/10/controlled-vocabularies-for-the-social-sciences-what-they-are-and-why-we-need-them/)
- [Research Data Management: Metadata](https://libguides.ucd.ie/data/metadata)
- Data dictionaries and codebooks by {cite:ps}`Buchanan2021dictionaries`.
