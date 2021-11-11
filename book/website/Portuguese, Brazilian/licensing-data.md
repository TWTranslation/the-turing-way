(rr-licensing-data)=
# Licenças de Dados

Como uma licença de software, uma licença de dados rege o que outra pessoa pode fazer com dados que você cria ou possui e que você torna acessível aos outros, por exemplo, um repositório de dados. As licenças de dados variam com base em diferentes critérios, tais como:
* Atribuição ao proprietário original
* Permissão para redistribuir ou modificar original
* Inclusão da mesma licença com derivadas ou redistribuições

Como resultado, a acessibilidade de seus dados é afetada pela licença de dados escolhida.

(rr-licensa-data-cc)=
## Licenças Creative Commons

A Creative Commons ou a CC fornecem uma série de licenças que podem ser utilizadas com uma grande variedade de criações que, de outro modo, poderiam estar sujeitas a restrições de direitos de autor, incluindo música, arte, livros e fotos. Embora não seja personalizado para os dados, licenças CC podem ser usadas como licenças de dados porque são fáceis de entender. Its website includes a [summary page](https://creativecommons.org/about/cclicenses/){cite:ps}`creativecommons2020licenses` outlining all the available licenses, explained with simple visual symbols.

(rr-licensing-data-cc-permissions)=
### Níveis de permissão

O nível de permissão fornecido por uma licença de dados Creative Commons pode ser entendido a partir do seu nome, que é uma combinação de "marcas de permissão" de duas letras. A única excepção para este esquema de nomenclatura é CC0, que será introduzida na próxima secção.

| **Marca de Permissão** | **O que posso fazer com os dados?** |
| ---------------------- | ----------------------------------- |
|                        |                                     |
 AY ├Criador deve ser creditado SA · Derivadas ou redistribuições devem ter uma licença idêntica NC ™. Somente usos não comerciais são permitidos ND &ND Não são permitidos derivados


Por exemplo, a licença CC BY-ND especifica que os usuários devem creditar no criador dos dados e não podem criar derivadas.

(rr-licensing-data-cc-cc0)=
### Dedicando seu trabalho ao público com CC0

CC0 serve como um mecanismo de dedicação público, onde você abdica de todos os direitos autorais aos seus dados. Isso significa que qualquer pessoa pode modificar, redistribuir ou desenvolver seu trabalho. Além disso, ao usar CC0, você perde o direito à atribuição. Em vez disso, é preciso confiar em normas, como boas práticas de citação nas comunidades académicas, para serem reconhecidas como criadoras. Várias organizações, como museus, organismos governamentais e editores científicos, escolheram a CC0 para ter acesso a pelo menos uma parte dos seus dados. Em muitos casos, os repositórios de dados mantidos pelas universidades recomendam CC0 como a opção padrão, como a [4TU.Centre for Research Data](https://researchdata.4tu.nl/en/use-4turesearchdata/archive-research-data/upload-your-data-in-our-data-archive/licencing/).

(rr-licensing-data-odc)=
## Abrir Dados Comuns

O Open Data Commons fornece três licenças que podem ser aplicadas especificamente a dados. As [páginas da web](https://opendatacommons.org/licenses/index.html) {cite:ps}`odk2020odc` de cada uma dessas licenças incluem resumos legíveis pelo homem, com as ramificações dos legaleses explicadas em um formato conciso.

(rr-licensing-data-odc-pddl)=
### A Dedicação e Licença de Domínio Público ou PDDL

O PDDL é análogo ao CC0, onde você renuncia a todos os seus direitos aos dados que está colocando no domínio público. Ele vem com um conjunto de normas comunitárias recomendadas por [](https://opendatacommons.org/licenses/pddl/norms.html), que não são obrigatórios para incluir e não formar um contrato legal, mas podem ser úteis para ter um guia para incentivar a justiça, Abrir compartilhamento de dados. Também é possível criar um conjunto personalizado de normas que sirvam melhor a sua comunidade de dados compartilhados.

(rr-licensing-data-odc-odc-by)=
### A Atribuição ou Licença ODC-BY

Esta licença protege seus direitos de atribuição como proprietário ou criador de dados, assim como a marca de permissão **BY** das licenças CC. Qualquer uso ou distribuição do seu banco de dados deve incluir também informações sobre a licença usada no original.

(rr-licensing-data-odc-odbl)=
### A Licença de Banco de Dados Aberto ou ODbL

O ODbL adiciona mais duas restrições à licença ODC-BY. A primeira é que quaisquer usos públicos de seus dados devem ser compartilhados com a mesma licença, Semelhante à marca de permissão CC **SA**. O segundo é que, se alguma versão dos seus dados for redistribuída em um formato 'fechado' (por exemplo, com medidas de proteção tecnológica), é obrigatório que esta redistribuição esteja também disponível numa versão livre dessas medidas de encerramento.

(rr-licensing-data-diferenças)=
## Uma nota sobre as diferenças entre as licenças CC e ODC

Embora possa parecer que as opções de licenciamento oferecidas por Creative Commons e Open Data Commons são exatamente as mesmas, existem algumas diferenças importantes.

Uma diferença é o escopo dos direitos que são cobertos pela licença, o que é bem explicado [aqui](https://wiki.creativecommons.org/wiki/Data#What_is_the_difference_between_the_Open_Data_Commons_licenses_and_the_CC_4.0_licenses.3F). As licenças ODC foram feitas especificamente para serem aplicadas a dados e geralmente abrangem apenas os direitos do banco de dados. Por outro lado, as licenças CC são mais genéricas e podem ser aplicadas a outros materiais. As licenças CC abrangem também os direitos autorais e outros direitos conexos.

Outra diferença é a disponibilidade de um documento normativo comunitário normalizado com o PDDL. A falta de tal documento com CC0 significa que você tem de confiar nas normas comunitárias, que muitas vezes podem ser não faladas ou não escritas e podem variar de comunidade para comunidade, para garantir uma atribuição justa. Uma comparação entre PDDL e CC0 é fornecida [aqui](https://opendatacommons.org/faq.1.html).

(licença rr-data-options)=
## Outras opções de licenciamento

Também é possível escolher outras licenças de dados que possam ter sido desenvolvidas tendo em mente um caso específico de utilização ou comunidade ou que não estejam em uso generalizado a nível global. Estes incluem licenças que foram desenvolvidas pelos governos nacionais, como a [Licença Norueguesa para os Dados abertos do Governo](https://data.norge.no/nlod/en/) {cite:ps}`nlod2020governmentdata`. Muitas vezes, essas licenças são a opção recomendada de licenciamento de dados no país correspondente, especialmente para dados criados ou propriedade dos seus organismos públicos. Outro exemplo é a [Open Government License](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/) ou OGL, que foi desenvolvida por The National Archives, UK.

O [guia do Centro de Curadoria de Dados (DCC)](https://www.dcc.ac.uk/guidance/how-guides/license-research-data) {cite:ps}`ball2011license` sobre como licenciar dados de pesquisa expansões sobre as licenças discutidas neste capítulo, e fornece mais informações sobre [Licenças Preparadas](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-6000), [Licenças Bespoke](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-7000), [Licença múltipla](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-13000) e [Mecanismos de Licenciamento de Dados](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-14000).

Se você gostaria de ler mais sobre os desafios e os melhores pontos de licenciamento, [este artigo](https://research.okfn.org/avoiding-data-use-silos/) é um ótimo recurso para começar.

***Tags de Capítulo**: Este capítulo é curado para o `Grupo de Estudo de Dados de Turing` (`turing-dsg`).*
