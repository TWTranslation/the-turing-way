(rr-rdm-sharing)=

# Compartilhando e Arquivando Dados

(motivações rr-rdm-compartilhamentos)=

## Motivações para compartilhamento de dados

Há muitas razões para compartilhar seus dados de pesquisa publicamente.

1. Para permitir a possibilidade de reproduzir plenamente um estudo científico.
2. Para evitar a duplicação de esforços e acelerar o progresso científico.
   Grandes quantidades de fundos para a investigação e carreiras de investigadores podem ser desperdiçadas se apenas partilharem uma pequena parte da investigação sob a forma de publicações.
3. Facilitar a colaboração e aumentar o impacto e a qualidade da investigação científica.
4. Tornar os resultados da investigação abertamente acessíveis como bem público, uma vez que a investigação é frequentemente financiada com dinheiros públicos.

You can read more about why data should be available, and why some data should remain closed, in the {ref}`Open Data section <rr-open-data>`.

```{figure} ../../../figures/birds-of-open-data.*
---
height: 400px
name: birds-of-open-data.*
alt: Two birds in a fountain of open data. One asks "You mind if I reuse this data?" The other answers "Go ahead! We can even work together on it!"
---
Birds of Open Data. _The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. [](doi:10.5281/zenodo.3332807).
```

(rr-rdm-sharing-steps)=

## Passos para compartilhar seus dados

### Passo 1: Selecione quais dados você deseja compartilhar

Not all data can be made openly available, due to ethical and commercial concerns (see the {ref}`Open Data section <rr-open-data>`), and you may decide that some of your intermediate data is too large to share.
Como tal, primeiro você precisa decidir quais dados você precisa compartilhar para que outros possam reproduzir a sua pesquisa.

### Passo 2: Escolha um repositório de dados ou outra plataforma de compartilhamento

Data should be shared in a formal, open, and indexed data repository [{term}`def<Repository>`] where possible so that it will be accessible in the long run.
Suitable data repositories by subject, content type or location can be found at [Re3data.org](https://www.re3data.org/), and in [FAIRsharing](https://fairsharing.org/databases) where you can also see which standards (metadata and identifier) the repositories implement and which journal/publisher recommend them.
Pay attention to whether a repository assigns DOI.
See our [chapter on persistent identifiers](#rr-rdm-pid) to learn more about how you can link your data to other research objects.

A few public data repositories are [Zenodo](https://zenodo.org/), [Figshare](https://figshare.com/), [Harvard Dataverse](https://dataverse.harvard.edu/), [4TU.ResearchData](https://data.4tu.nl/info/en), and [Dryad](https://datadryad.org/).
See the [NIH list of Generalist Repositories](https://sharing.nih.gov/data-management-and-sharing-policy/sharing-scientific-data/generalist-repositories) for more data repositories.

### Passo 3: Escolha uma licença e link para seu papel e código

So that others know what they can do with your data, you need to apply a licence [{term}`def<License>`] to your data.
The most commonly used licences are [Creative Commons](https://creativecommons.org/choose/), [Open Government Licence](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/), or an [Open Data Commons Attribution License](https://opendatacommons.org/licenses/by/index.html).
Para obter o valor máximo do compartilhamento de dados, certifique-se de que seu papel e código ambos o link para seus dados, e vice-versa, para permitir que outros entendam melhor o seu projeto.
See {ref}`rr-licensing` for more information.

### Passo 4: Carregue seus dados e documentação

In line with the {ref}`FAIR principles <rr-rdm-FAIR>`, upload the data in open formats as much as possible and include sufficient documentation and metadata so that someone else can understand your data.
É também essencial pensar nos formatos de arquivo em que a informação é fornecida.
Os dados devem ser apresentados em formatos estruturados e normalizados para apoiar a interoperabilidade, a rastreabilidade e uma reutilização eficaz.
Em muitos casos, isso incluirá a disponibilização de dados em vários formatos normalizados, de modo a que possam ser processados por computadores e utilizados por pessoas.

(rr-rdm-sharing-resources)=

## Recursos adicionais para compartilhamento de dados

- '[How can you make research data accessible?](https://www.software.ac.uk/how-can-you-make-research-data-accessible)': a blog that contains five steps to make your data more accessible
- The European Commission's [data guidelines](https://open-research-europe.ec.europa.eu/for-authors/data-guidelines)
- Videos on [Data sharing and reuse](https://www.youtube.com/watch?v=4igGBCggU0Y) & [Data Preservation and Archiving](https://www.youtube.com/watch?v=J76yTp8XE-0) from the [TU Delft Open Science MOOC](https://online-learning.tudelft.nl/courses/open-science-sharing-your-research-with-the-world/).
- [Webinar: Why share your data?](https://www.ebi.ac.uk/training/online/courses/bringing-data-life-data-management-biomolecular-sciences/why-share-your-data/)
- [Webinar: Publishing and citing data in practice by Jez Cope](https://youtu.be/PpMOkTnBMlI)
- Coursera Videos from [Research Data Management and Sharing](https://www.coursera.org/learn/data-management) on the [Benefits of Sharing](https://www.coursera.org/lecture/data-management/benefits-of-sharing-IPZ0h), [Why Archive Data?](https://www.coursera.org/lecture/data-management/why-archive-data-lcQ2m), and [Why is Archiving Data Important?](https://www.coursera.org/lecture/data-management/why-is-archiving-data-important-04Gji)
- [Blog: Ask not what you can do for open data; ask what open data can do for you](http://blogs.nature.com/naturejobs/2017/06/19/ask-not-what-you-can-do-for-open-data-ask-what-open-data-can-do-for-you/)
- {cite:ps}`Levenstein2018sharing`

(rr-rdm-data-disponibiliy-statement)=

## Declaração de disponibilidade de dados

Uma vez que tenha disponibilizado os seus dados, é importante garantir que as pessoas possam encontrá-los quando lerem o artigo associado.
Você deve citar seu conjunto de dados diretamente no papel em lugares onde ele é relevante e incluir uma citação na sua lista de referências, Além de incluir uma declaração de disponibilidade de dados no final do documento (semelhante à seção de reconhecimento).
See {ref}`cm-citable-cite-data` for some examples.

