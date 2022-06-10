(cl-shared-ownership-defaults)=
# Nudging for a Better Default

A pesquisa mostrou que os humanos tomam decisões tem uma forte tendência a seguir o status quo ou opção padrão (Veja a [Teoria da Cura](https://www.imperial.ac.uk/nudgeomics/about/what-is-nudge-theory/) por {cite:ps}`ThalerSunstein2009Nudge`). Na ausência de um padrão definido activamente, a norma cultural ou institucional prevalecente passa a ser a opção de opção desfactual. E, por conseguinte, as opções de padrão para projectos em curso e novos devem incitar fortemente à adopção de um modelo de propriedade compartilhada.

O mínimo padrão para um projeto de código aberto deve incluir os seguintes documentos:
1. Escolha uma licença de código aberto (sempre que possível).
2. Reconhecendo os colaboradores visivelmente.
3. Definir padrões para a propriedade compartilhada.

## Licença de código aberto

É necessária mais consciência em torno da licença aberta, já que muitos pesquisadores que atualmente possuem código pode não estar completamente ciente de como as licenças de código aberto podem proteger a abertura e a identidade de um projeto. Mais código pode ser licenciado se pesquisadores tiverem uma introdução básica sobre como funcionam diferentes licenças abertas (por exemplo, copyleft vs permissive) e qual escolher, embora isso só ajudará projetos que são mantidos o suficiente para que uma licença seja adicionada (veja {ref}`rr-licensing`) para referência). Deve haver um push para que o código seja abertamente licenciado por padrão. Isto pode ser aplicado por muitas partes interessadas no ecossistema da investigação. Funders podem exigir que o código produzido por uma concessão seja abertamente licenciado e, de igual modo, Os publicadores podem exigir que o código associado a uma publicação seja abertamente licenciado (dados de pesquisa aberta __ já é exigido pelos financiadores, por exemplo. [no Reino Unido](https://www.ukri.org/about-us/policies-standards-and-data/good-research-resource-hub/open-research/), isso poderia facilmente ser estendido para cobrir software). As empresas que hospedam repositórios podem - como alguns fazem - facilitar a adição de uma licença, e incentivar suavemente os usuários a fazê-lo adicionando uma licença por padrão.

**Chamada para ação: Selecione uma licença para o seu projeto**

Planeje seu projeto do início para estar aberto em todo o ciclo de vida da sua pesquisa. Ao usar dados pessoais ou identificáveis, indique claramente que medidas são tomadas para garantir a privacidade e a segurança dos dados. Para o resto do seu trabalho, escolha uma licença de código aberto e adicione-a ao repositório (consulte https://choosealicense.com/). Você pode ler mais sobre isso no capítulo {ref}`Licenciamento de<rr-licensing-software>`.

## Conhecimento Significativo dos Contribuidores

A propriedade deveria ser compartilhada com os colaboradores de forma mais precisa, garantindo que as formas de trabalhar, contribuir e reconhecer as contribuições sejam devidamente definidas no projeto. Os detalhes sobre as pessoas e práticas devem ser documentados de forma transparente e comunicados para que não apenas os contribuidores existentes possam criar uma sensação de propriedade, mas novos contribuidores também podem identificar quais caminhos podem assumir no projeto. Há muitos tipos de contribuições possíveis em projetos de código aberto que vão além de escrever código ou documentação. Cada uma destas contribuições deve ser reconhecida de forma transparente e justa. Por exemplo, podemos aprender com métricas de código aberto como [CHAOSS](https://chaoss.community/) ou [CRediT - Taxonomia dos colaboradores](https://casrai.org/credit/), reconhecer o trabalho oculto usando frameworks definidos por [HiddenREF](https://hidden-ref.org/) ou como descrito em {ref}`O capítulo de Turing Way Acknowledge<ch-acknowledgement>`permitir que as pessoas captem suas contribuições de uma forma que seja mais significativa para elas. É possível desenvolver um programa mais estruturado que reconheça, recompense e incentive contribuidores que são cruciais para a sustentabilidade do seu projeto.

**Chamada para ação: colaboradores de conhecimento visivelmente**

Reconhecer contribuidores registrando seus nomes em locais visíveis (como um arquivo de contribuidores) deve ser adicionado aos fluxos de trabalho dos administradores ou dos mantenedores. Anuncie e comemore todos os tipos de trabalho, comunicando-as abertamente em fóruns e canais da comunidade oficiais. Você pode usar ações do GitHub, bots ou um pipeline de integração contínua para automatizar o processo. Para adoptar outra abordagem mais fácil, você pode instalar o bot de todos-contribuidores através de [https://allcontributors. rg](https://allcontributors.org) no seu repositório, o que pode ajudá-lo a reconhecer contribuições, incluindo as que não envolvem pressionar o código. Veja isso funcionando no repositório [_The Turing Way_](https://github.com/alan-turing-institute/the-turing-way#contributors).

## Compartilhando a propriedade do projeto com a comunidade

No caso da propriedade compartilhada, uma comunidade coletiva constrói o projeto e, portanto, deve ser atribuída como tal. Para torná-lo um padrão, precisamos facilitar a prática em diferentes projetos de código aberto. Uma maneira de o fazer é ter documentos comunitários essenciais que demonstrem o compromisso de reconhecer equitativamente e compartilhar a propriedade do projeto com todos os colaboradores. Estes documentos não só devem ser compartilhados como devem ser mantidos abertos para feedback, contribuições e actualizações de modo a torná-los significativos para a comunidade. As políticas e normas comunitárias devem ser comunicadas desde o início, a fim de facilitar um diálogo aberto, seguro e respeitoso entre os membros da comunidade.

**Chamada para ação: Definir padrões para propriedade compartilhada**

Descreva explicitamente quem é considerado o proprietário do projeto. Você deve compartilhar o crédito com a comunidade de contribuidores em vez de atribuir apenas indivíduos que administram o projeto. Por exemplo, ao citar o projeto, use "Comunidade" como o primeiro autor [como praticado na The Turing Way](https://the-turing-way.netlify.app/welcome.html#citing-the-turing-way). Diretrizes de contribuição, Código de Conduta (consulte o Guia de Código Aberto para referência) e outras páginas da comunidade no repositório do seu projeto podem ajudar a definir o tom para a cultura que você deseja promover na comunidade, e como os colaboradores são apoiados na sua participação.
