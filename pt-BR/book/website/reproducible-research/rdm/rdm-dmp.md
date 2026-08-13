(rr-rdm-dmp)=

# Data Management Plan

Um Plano de Gerenciamento de Dados (DMP) ou Plano de Gestão de Saída, é um documento que descreve como suas saídas de pesquisa serão geradas, armazenadas, usadas e compartilhadas em seu projeto.
Um DMP é um documento vivo, que pode ser atualizado em todo o projeto de pesquisa conforme necessário.

Um Plano de Gerenciamento de Dados é um roteiro para você gerenciar seus dados de forma eficiente e segura.
Isso pode impedir a perda ou a violação de dados.
Planejar com antecedência como gerenciar seus dados de forma consistente pode poupar seu tempo mais tarde! It can also make it easier to {ref}`share<rr-rdm-sharing>` your data with others and therefore make the data more {ref}`FAIR<rr-rdm-fair>`

```{figure} ../../../figures/data-management-plan.*
---
name: data-management-plan
alt: There are two women in the illustration. The left one is looking distressed and says 'Oh no, my computer crashed! I lost all the data!' The right woman is holding a map which says DMP (Data Management Plan) and is looking happy. She is saying 'Good thing I had a plan! The data is all backed up! 

---
Data Management Plan. _The Turing Way_ project illustration by Scriberia. Zenodo. [http://doi.org/10.5281/zenodo.3332807](http://doi.org/10.5281/zenodo.3332807)
```

## Um Plano de Gerenciamento de Dados deve fornecer informações sobre seis principais tópicos:

### 1. Funções e responsabilidades

- É importante discutir quem é responsável por diferentes tarefas durante o ciclo de vida de um projeto de pesquisa.
  Definir quem é responsável pelo gerenciamento dos dados e códigos pode evitar confusão/má comunicação mais tarde no projeto.
- Você deve verificar as recomendações do DMP e os requisitos do seu instituto e agência financiadora.
  A equipe de suporte à pesquisa da biblioteca do seu instituto e o site da agência financiadora geralmente são lugares bons para encontrar informações e ajuda.
  Algumas agências financiadoras exigem que você use o modelo DMP delas.
  You can check if your funder or institute has a DMP using [DMPonline](https://dmponline.dcc.ac.uk/).

### 2. Tipo e tamanho dos dados coletados e documentação/metadados gerados

- Aqui você pode listar os formatos de arquivo que você usará para coletar, processar e apresentar os seus dados.
  Se você quiser compartilhar suas saídas de pesquisa mais tarde, é preferível utilizar formatos de arquivo padrão que podem ser abertamente usados sem uma licença específica para um programa de software.
  Para garantir isso, você deve adaptar seus arquivos ou começar a trabalhar nesses formatos desde o início.
- Uma distinção pode ser feita entre diferentes tipos de dados que podem ser descritos separadamente no plano:
  - Dados brutos/primários: dados coletados da fonte (mantenha sempre uma versão somente leitura dos dados brutos para que você possa consultá-los mais tarde!)
  - Dados processados: uma versão dos dados que foram modificados para análise ou visualização
  - Finalised data: data that is ready to be shared in a publication or data repository (see {ref}`Sharing and archiving data section <rr-rdm-sharing>` for more information).
    Some data repositories, such as [Zenodo](https://zenodo.org/), allow versioning of datasets so that you can update your finalised dataset if you want to release another version.
- All of these types of data will have to be described to be placed into context by using metadata (see the {ref}`Documentation and metadata section<rr-rdm-metadata>`) and adequate documentation which will allow future you, and anyone in your team, to interpret the data.
- É útil saber o tamanho aproximado (na faixa de MB, GB, TB ou PB) dos dados nestas várias etapas porque isso afetará as soluções de armazenamento disponíveis para você (discutida no próximo ponto).

### 3. Tipo de armazenamento de dados usado e de backup de procedimentos que estão em vigor

- Check the {ref}`data storage and organisation section<rr-rdm-storage>` for storage and back-up solutions and ways to organise your files
- Manter o controle de quem fez alterações específicas em seus dados/código será importante, particularmente para o código.
  See the {ref}`Version Control chapter<rr-vcs>` for more information.
- Determine quem tem acesso aos dados e quem concede acesso.
  Pelo menos uma outra pessoa deve ter acesso aos seus dados, como seu supervisor/PI/chefe do departamento.
  Se você estiver gerenciando dados pessoais/comercialmente sensíveis, o acesso só deve ser dado a indivíduos que tenham que trabalhar com os dados.

### 4. Preservação dos resultados de pesquisa após o projeto

- Considere se suas saídas de pesquisa podem ser disponibilizadas ao público.
  Personal data or research outputs needed to apply for patents cannot be publicly shared, see the {ref}`Open data section<rr-open-data>`
  If data cannot be made publicly available you will still have to preserve it for several years, depending on the policies of your country, institute and funder.
- É possível externalizar a preservação de seus dados a longo prazo para um repositório de dados.
  You can find more information on how to select an appropriate repository in {ref}`sharing and archiving data<rr-rdm-sharing>` section
  - Select repositories using, for example, [FAIRsharing](https://fairsharing.org/) or [Nature's recommended repository list](https://www.springernature.com/gp/authors/research-data-policy/repositories/12327124), that provide a persistent identifier such as a DOI for your research output.

Um repositório deve ter uma política de preservação que especifique quanto tempo as suas saídas serão curadas.
Em caso de dúvida, entre em contato com sua equipe de suporte de pesquisa de dados para obter mais informações sobre repositórios de dados.

- Para a conservação digital, certifique-se de que os dados de pesquisa podem ser encontrados, acessados, utilizados e compreendidos agora e no futuro.
  Isso exige que sejam consideradas as mudanças tecnológicas, transformações no comportamento de usuários e novos requisitos para o processamento de dados assistido por computador, bem como a evolução organizacional.

### 5. Reutilização de seus resultados de pesquisa por outros

- Select a license when you make your output available on a repository (see the Licensing subchapters on {ref}`data<rr-licensing-data>` and {ref}`software<rr-licensing-floss>` for more information).
  Selecionando uma licença, você informa aos outros como eles podem reutilizar seus dados.
  Se você não selecionar uma licença, outras pessoas não poderão reutilizar seus dados sem pedir sua permissão.
- Você pode colocar seus resultados de pesquisa em contexto usando um texto de introdução, como um arquivo README.txt
  - See the {ref}`documentation and metadata section<rr-rdm-metadata>`

### 6. Custos

- Verifique se há custos associados ao seu projeto
  - Solução de armazenamento de preferência (durante e após o projeto, veja itens 3 e 4)
  - Custos de pessoal (se você precisar de um gerente de dados para gerenciar dados mais sensíveis ou em grandes quantidades)
  - Software licenses (such as Electronic Lab Notebooks, see the {ref}`Open notebooks section<rr-open-notebooks>`)
  - Or [indirect costs](https://labrigger.com/blog/2025/02/12/indirect-costs-are-research-costs/) that need to be covered.
  - You can use this [checklist for costs](https://www.ukdataservice.ac.uk/media/622368/costingtool.pdf) as a guidance, or the [Framework for Costing Research Data Management](https://doi.org/10.5281/zenodo.15465412).

You can use this [checklist](https://ukdataservice.ac.uk/learning-hub/research-data-management/plan-to-share/checklist/) to see if you have everything covered in your Data Management Plan.

(rr-rdm-dmp-citable)=

## DMPs as Citable Research Objects

Many funders now encourage or require DMP as part of their open science policies.
Publishing your DMP also allows you to create a living document - you can update it during the project and deposit new versions with new DOIs while maintaining all previous versions.
This creates a traceable record of how your data management evolved throughout the research lifecycle.
See [](#cm-citable-steps-object) for more information on how to make your DMP citable.

(rr-rdm-dmp-tools)=

## Ferramentas DMP

Existem diversas plataformas e ferramentas que podem ser utilizadas para configurar seu Plano de Gerenciamento de Dados:

- [ARGOS](https://argos.openaire.eu/home)
- [DMPonline](https://dmponline.dcc.ac.uk)
- [DMPtool](https://dmptool.org)

See [activeDMPs](https://activedmps.org/) for a full overview.

## Additional Resources

- [UK Data Services data management information](https://ukdataservice.ac.uk/learning-hub/research-data-management/)
- [TU Delft Research Data Management portal](https://www.tudelft.nl/en/library/research-data-management)
- [Research Data Management](https://www.scienceeurope.org/our-priorities/research-data/research-data-management/) by Science Europe
- Books
  - {cite:ps}`Briney2015dmp`
- Articles
  - {cite:ps}`Briney2020dmp`
  - {cite:ps}`Hart2016dmp`
  - {cite:ps}`Michener2015dmp`
- Videos
  - [Videos (3-7 min) on data management by Kristin Briney](https://www.youtube.com/watch?v=K5_ocBG5xek&list=PLEor4jq8YPgK_sgEiAcpHZLw-62mufXus)
  - Video on [elements of a DMP](https://commons.esipfed.org/node/1442).
  - [3 min video on Roles and Responsibilities](https://www.youtube.com/watch?v=Ry0OA9mDTCc)
  - [DMPs by DTU Bibliotek](https://www.youtube.com/watch?v=tvs5_X5rn8w) (20 minutes)
  - [Areas of a Data Management Plan](https://www.youtube.com/watch?v=L3LPv2sB-IE) (7 minute video by Moore Library)
- Definition of [Long Term Preservation](https://www.gesis.org/en/research/research-data-management/long-time-preservation) from the Leibniz Institute of Social Science.
- Planning by [DataOne](https://dataoneorg.github.io/Education/bp_step/plan/) & [USGS](https://www.usgs.gov/data-management/planning)


