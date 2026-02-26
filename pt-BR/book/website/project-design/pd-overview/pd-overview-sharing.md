(pd-overview-sharing)=

# Compartilhando seu trabalho de pesquisa

In order to make sure that (most) research outputs are available to everyone interested in analysing or reusing them, let's take some time to learn about how to share them.
Science can only progress when we build on each other's work.
Different digital research outputs or {ref}`research objects<cm-ro>`, such as data, software and code, protocols, reagents, and hardware, can be shared as open results on the web.
They should come with specific information such as licenses, documentation and source code (repository, online index or archive).

Sharing online is not enough - you should make sure that knowledge discovery and navigation process is clearly described.
You need to make sure that your research objects are **F**indable, **A**ccesible, **I**nteroperable and **R**eusable.
This is referred to as {ref}`FAIR Principles<rr-rdm-fair>` that provides guidelines to improve the Findability, Accessibility, Interoperability and Reusability of digital assets; all of which support research reproducibility.

This aspect is already considered when developing your {ref}`Data Management Plan (DMP)<rr-rdm-dmp>` (see {ref}`pd-overview-planning-dmp`).
Therefore, it is important to revisit your DMP to make sure that the guidelines are applied when making your results available.
You can learn more about this in a chapter on {ref}`making data FAIR<rr-rdm-fair>`).

(pd-overview-sharing-archive)=

## Share your data

When legally possible, your data should be archived in an open place, where people can access them.
If you have sensitive data, you will not be able to share the raw data, but there may be some data you can share.
A repository is a good place to store your data.

An overview of some repositories available for archiving your data can be found in [re3data.org](https://www.re3data.org/).

Another good resource where you can read more about this topic is the chapter on {ref}`Sharing and Archiving Data<rr-rdm-sharing>`.

(pd-overview-sharing-protocols)=

## Compartilhe seus protocolos

Uma das razões para fazer investigação reprodutível é proporcionar a outros os instrumentos necessários para se construírem sobre ela.
Se os detalhes dos protocolos não forem compartilhados, os pesquisadores podem gastar meses otimizando-os antes de poderem começar com seus projetos.

A tool that can be used to avoid this is [protocols.io](https://www.protocols.io/).
Ele oferece uma maneira de garantir que os seus protocolos estejam abertamente disponíveis, permitindo que você os atualize mantendo o controle das alterações.
Além disso, ter os seus protocolos em linha torna mais fáceis de compartilhar, criando oportunidades de contribuir.
You can also link protocol DOIs to related research outputs (datasets, papers) using connection metadata - see our [chapter on linking research outputs](#cm-citable-linking) for guidance on creating these connections.

The benefits of making protocols FAIR and citable extend beyond credit: searchable protocols help others find proven methods, DOIs enable impact tracking, and formal citations encourage rigorous protocol documentation.
Protocols.io provides [detailed guidance on protocol DOIs](https://www.protocols.io/help/dois), and Nature Protocols offers [best practices for protocol citation](https://www.nature.com/nprot/).
For more information on how DOIs work, see our [chapter on persistent identifiers](#rr-rdm-pid).

## Compartilhar Scripts de Análise e Software de Pesquisa

If you have been using a version control system with a public repository (see the {ref}`Version Control<rr-vcs>` chapter), you have already done most of the work.
You should now consider putting a snapshot of your code in a repository, so you can be sure it gets archived for a relatively long time, and it become citable.
Indeed, there is no guarantee that the repository will stay available for a long time.

É possível integrar o seu sistema de controle de versão com um repositório geral.
For example, when integrating GitHub or Gitlab with Zenodo (see {ref}`cm-citable-cite-software`), you can get Digital Object Identifiers or DOIs for your software.
Isto torna automaticamente mais fácil de compartilhar e torná-lo citável.
You can read about DOIs in the chapter on {ref}`Making Research Components Citable<cm-citable>`.

## Share Research Hardware

In absence of better solution, you may deal with your hardware documentation with the same strategy as with your software: using version control  repositories during its development, and zenodo integration for archiving.
If your documentation is in the form of a website, try to provide a independent html build that can run without a server.

## Share reagents

Depending on your research domain, you may have produced reagents (genetic material or tissue for example).
If there is a specific bank for these products that can share them widely, you may consider using them.
Make sure a persistent identifier is given, an that the description of your reagents have enough metadata to make sharing useful.

## Coletando sua Pesquisa

Assim que você terminar sua pesquisa, você pode querer coletar todas as partes digitais do seu projeto em um só lugar.
Chama-se a isto um compêndio da investigação.
Publicar o seu papel juntamente com um compêndio de pesquisa permite toda a sua pesquisa: do design do projeto, através da coleção e análise de dados e das saídas resultantes.

Isso tem infinitas vantagens. Ele torna a sua obra compartilhável e reprodutível, outros podem usá-la e dá-lhe mais visibilidade.

You can read how to set up your research compendia, {ref}`this chapter<rr-compendia>`.

(pd-overview-sharing-License)=

## Adicionar Licença para Saídas de Pesquisa

Mesmo que você tenha uma licença no início do projeto, você precisa pensar sobre isso novamente ao compartilhar seus resultados e resultados finais - isso permite que as pessoas tenham as informações sobre como sua pesquisa deve ser reutilizada e compartilhada.

If you want more information about how to choose and add a license to your project you can check the {ref}`Licensing Chapter<rr-licensing>`.

(pd-overview-citation)=

## Citações de recebimento

Todo este trabalho duro terá sua recompensa. Tendo publicado todas as suas pesquisas do design para os resultados adiciona visibilidade ao seu trabalho e mais oportunidade de obter crédito.

Não só seus resultados podem ser citados, como seus métodos e protocolos podem ser reutilizados e seu design pode ser compartilhado.

Read {ref}`this chapter on ORCID<cm-citable-orcid>` for more information about how you can collect different research outputs in one place using ORCID and highlight them to get fair credit for your work.
