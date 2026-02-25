(rr-licensing-data)=

# Licenças de Dados

Como uma licença de software, uma licença de dados rege o que outra pessoa pode fazer com dados que você cria ou possui e que você torna acessível aos outros, por exemplo, um repositório de dados.
As licenças de dados variam com base em diferentes critérios, tais como:

- Atribuição ao proprietário original
- Permissão para redistribuir ou modificar original
- Inclusão da mesma licença com derivadas ou redistribuições

Como resultado, a acessibilidade de seus dados é afetada pela licença de dados escolhida.

(rr-licensa-data-cc)=

## Licenças Creative Commons

CC licenses, although not tailored for data, can be used as data licenses in some cases, such as CC0 for public domain data.
The Creative Commons website provides a [summary page](https://creativecommons.org/about/cclicenses/){cite:ps}`creativecommons2020licenses` outlining all the available licenses, explained with visual symbols as discussed in {ref}`rr-licensing-documentation`.

(rr-licensing-data-cc-cc0)=

### Dedicando seu trabalho ao público com CC0

CC0 serve como um mecanismo de dedicação público, onde você abdica de todos os direitos autorais aos seus dados.
Isso significa que qualquer pessoa pode modificar, redistribuir ou desenvolver seu trabalho.
Além disso, ao usar CC0, você perde o direito à atribuição.
Em vez disso, é preciso confiar em normas, como boas práticas de citação nas comunidades académicas, para serem reconhecidas como criadoras.
Várias organizações, como museus, organismos governamentais e editores científicos, escolheram a CC0 para ter acesso a pelo menos uma parte dos seus dados.
In many instances, data repositories maintained by universities recommend CC0 as the default option, such as the [4TU.Centre for Research Data](https://researchdata.4tu.nl/en/use-4turesearchdata/archive-research-data/upload-your-data-in-our-data-archive/licencing/).

(rr-licensing-data-odc)=

## Abrir Dados Comuns

O Open Data Commons fornece três licenças que podem ser aplicadas especificamente a dados.
The [webpages](https://opendatacommons.org/licenses/index.html) {cite:ps}`odk2020odc` of each of these licenses include human-readable summaries, with the ramifications of the legalese explained in a concise format.

(rr-licensing-data-odc-pddl)=

### A Dedicação e Licença de Domínio Público ou PDDL

O PDDL é análogo ao CC0, onde você renuncia a todos os seus direitos aos dados que está colocando no domínio público.
It comes with a [set of recommended community norms](https://opendatacommons.org/licenses/pddl/norms.html), which are not mandatory to include and do not form a legal contract but can be useful to have as a guide to encourage fair, open sharing of data.
Também é possível criar um conjunto personalizado de normas que sirvam melhor a sua comunidade de dados compartilhados.

(rr-licensing-data-odc-odc-by)=

### A Atribuição ou Licença ODC-BY

This license protects your attribution rights as a data owner or creator, just like the **BY** permission mark of CC licenses.
Qualquer uso ou distribuição do seu banco de dados deve incluir também informações sobre a licença usada no original.

(rr-licensing-data-odc-odbl)=

### A Licença de Banco de Dados Aberto ou ODbL

O ODbL adiciona mais duas restrições à licença ODC-BY.
The first is that any public uses of your data must be shared with the same license, similar to the CC **SA** permission mark.
O segundo é que, se alguma versão dos seus dados for redistribuída em um formato 'fechado' (por exemplo, com medidas de proteção tecnológica), é obrigatório que esta redistribuição esteja também disponível numa versão livre dessas medidas de encerramento.

(rr-licensing-data-diferenças)=

## Uma nota sobre as diferenças entre as licenças CC e ODC

Embora possa parecer que as opções de licenciamento oferecidas por Creative Commons e Open Data Commons são exatamente as mesmas, existem algumas diferenças importantes.

One difference is the scope of rights that are covered by the license, which is nicely explained [here](https://wiki.creativecommons.org/wiki/Data#What_is_the_difference_between_the_Open_Data_Commons_licenses_and_the_CC_4.0_licenses.3F).
As licenças ODC foram feitas especificamente para serem aplicadas a dados e geralmente abrangem apenas os direitos do banco de dados.
Por outro lado, as licenças CC são mais genéricas e podem ser aplicadas a outros materiais.
As licenças CC abrangem também os direitos autorais e outros direitos conexos.

Outra diferença é a disponibilidade de um documento normativo comunitário normalizado com o PDDL.
A falta de tal documento com CC0 significa que você tem de confiar nas normas comunitárias, que muitas vezes podem ser não faladas ou não escritas e podem variar de comunidade para comunidade, para garantir uma atribuição justa.
A comparison between the PDDL and CC0 is provided [here](https://opendatacommons.org/faq/).

(licença rr-data-options)=

## Outras opções de licenciamento

Também é possível escolher outras licenças de dados que possam ter sido desenvolvidas tendo em mente um caso específico de utilização ou comunidade ou que não estejam em uso generalizado a nível global.
These include licenses that were developed by national governments, such as the [Norwegian License for Open Government Data](https://data.norge.no/nlod/en/) {cite:ps}`nlod2020governmentdata`.
Muitas vezes, essas licenças são a opção recomendada de licenciamento de dados no país correspondente, especialmente para dados criados ou propriedade dos seus organismos públicos.
Another example is the [Open Government Licence](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/) or OGL, which was developed by The National Archives, UK.

The [Data Curation Center (DCC) guide](https://www.dcc.ac.uk/guidance/how-guides/license-research-data) {cite:ps}`ball2011license` on how to license research data expatiates on the licenses discussed in this chapter, and gives more information about [Prepared Licenses](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-6000), [Bespoke Licenses](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-7000), [Multiple Licensing](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-13000) and [Mechanisms for Licensing Data](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-14000).

If you would like to read more about the challenges and finer points of licensing, [this article](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3320472) is a great resource to get you started.

_**Chapter Tags**: This chapter is curated for the `Turing Data Study Group` (`turing-dsg`)._
