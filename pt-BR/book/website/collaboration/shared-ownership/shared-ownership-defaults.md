(cl-shared-ownership-defaults)=

# Nudging for a Better Default

Research has shown that humans making decisions have a strong tendency to go along with the status quo or default option (See the [Nudge Theory](https://www.imperial.ac.uk/nudgeomics/about/what-is-nudge-theory/) by {cite:ps}`ThalerSunstein2009Nudge`).
Na ausência de um padrão definido activamente, a norma cultural ou institucional prevalecente passa a ser a opção de opção desfactual.
E, por conseguinte, as opções de padrão para projectos em curso e novos devem incitar fortemente à adopção de um modelo de propriedade compartilhada.

O mínimo padrão para um projeto de código aberto deve incluir os seguintes documentos:

1. Escolha uma licença de código aberto (sempre que possível).
2. Reconhecendo os colaboradores visivelmente.
3. Definir padrões para a propriedade compartilhada.

## Licença de código aberto

É necessária mais consciência em torno da licença aberta, já que muitos pesquisadores que atualmente possuem código pode não estar completamente ciente de como as licenças de código aberto podem proteger a abertura e a identidade de um projeto.
More code might be licensed if researchers were given a basic introduction into how different open licenses work (for example, copyleft vs permissive) and which to choose, although this will only help projects that are maintained enough for a license to be added (see {ref}`rr-licensing`) for reference).
Deve haver um push para que o código seja abertamente licenciado por padrão.
Isto pode ser aplicado por muitas partes interessadas no ecossistema da investigação. Funders can require that code produced by a grant is openly licensed and, similarly, publishers can require that code associated with a publication is openly licensed (open research _data_ is already required by funders for example, [in the UK](https://www.ukri.org/about-us/policies-standards-and-data/good-research-resource-hub/open-research/), this could easily be extended to cover software).
As empresas que hospedam repositórios podem - como alguns fazem - facilitar a adição de uma licença, e incentivar suavemente os usuários a fazê-lo adicionando uma licença por padrão.

**Call to action: Select a license for your project**

Planeje seu projeto do início para estar aberto em todo o ciclo de vida da sua pesquisa.
Ao usar dados pessoais ou identificáveis, indique claramente que medidas são tomadas para garantir a privacidade e a segurança dos dados.
Para o resto do seu trabalho, escolha uma licença de código aberto e adicione-a ao repositório (consulte https://choosealicense.com/).
You can read more about it in the {ref}`Licensing<rr-licensing>` chapter.

## Conhecimento Significativo dos Contribuidores

A propriedade deveria ser compartilhada com os colaboradores de forma mais precisa, garantindo que as formas de trabalhar, contribuir e reconhecer as contribuições sejam devidamente definidas no projeto.
Os detalhes sobre as pessoas e práticas devem ser documentados de forma transparente e comunicados para que não apenas os contribuidores existentes possam criar uma sensação de propriedade, mas novos contribuidores também podem identificar quais caminhos podem assumir no projeto.
Há muitos tipos de contribuições possíveis em projetos de código aberto que vão além de escrever código ou documentação.
Cada uma destas contribuições deve ser reconhecida de forma transparente e justa.
For example, we can learn from open source metrics like [CHAOSS](https://chaoss.community/) or [CRediT - Contributor Roles Taxonomy](https://casrai.org/credit/), recognise the hidden labour using frameworks defined by [HiddenREF](https://hidden-ref.org/) or as described in {ref}`The Turing Way Acknowledge chapter<ch-acknowledgement>`, allow people to capture their contributions in a way that is most meaningful for them.
É possível desenvolver um programa mais estruturado que reconheça, recompense e incentive contribuidores que são cruciais para a sustentabilidade do seu projeto.

**Call to action: Acknowledging contributors visibly**

Reconhecer contribuidores registrando seus nomes em locais visíveis (como um arquivo de contribuidores) deve ser adicionado aos fluxos de trabalho dos administradores ou dos mantenedores.
Anuncie e comemore todos os tipos de trabalho, comunicando-as abertamente em fóruns e canais da comunidade oficiais.
Você pode usar ações do GitHub, bots ou um pipeline de integração contínua para automatizar o processo.
To take another easier approach, you can install the all-contributors bot by [https://allcontributors.org](https://allcontributors.org) to your repository, which can help you recognise contributions including those that don’t involve pushing code.
See it working on [_The Turing Way_ repository](https://github.com/the-turing-way/the-turing-way#contributors).

## Compartilhando a propriedade do projeto com a comunidade

No caso da propriedade compartilhada, uma comunidade coletiva constrói o projeto e, portanto, deve ser atribuída como tal.
Para torná-lo um padrão, precisamos facilitar a prática em diferentes projetos de código aberto.
Uma maneira de o fazer é ter documentos comunitários essenciais que demonstrem o compromisso de reconhecer equitativamente e compartilhar a propriedade do projeto com todos os colaboradores.
Estes documentos não só devem ser compartilhados como devem ser mantidos abertos para feedback, contribuições e actualizações de modo a torná-los significativos para a comunidade.
As políticas e normas comunitárias devem ser comunicadas desde o início, a fim de facilitar um diálogo aberto, seguro e respeitoso entre os membros da comunidade.

**Call to action: Set standards for shared ownership**

Descreva explicitamente quem é considerado o proprietário do projeto.
Você deve compartilhar o crédito com a comunidade de contribuidores em vez de atribuir apenas indivíduos que administram o projeto.
For example, when citing the project, use “Community” as the first author {ref}`as practised in The Turing Way<fw-cite>`.
Diretrizes de contribuição, Código de Conduta (consulte o Guia de Código Aberto para referência) e outras páginas da comunidade no repositório do seu projeto podem ajudar a definir o tom para a cultura que você deseja promover na comunidade, e como os colaboradores são apoiados na sua participação.
