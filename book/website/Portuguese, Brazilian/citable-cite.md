(cm-citable-cite)=
# Objetos de Pesquisa

Deve citar objetos de pesquisa diretamente no papel em lugares onde ele é relevante. Esta é uma forma comum de citar publicações e é válida para citar outros componentes de pesquisa, como dados e software. Uma citação inclui as seguintes informações:
- Autor
- Título
- Ano da publicação
- Editor (para dados, este é frequentemente o repositório de dados onde é doméstico),
- Versão (se indicada)
- Acesse informações (uma URL ou DOI)

O estilo de citação é um arranjo, ordem e formatação específicos das informações necessárias para uma citação. Por exemplo, o estilo MLA foi desenvolvido pela Associação de Linguagens Modernas (originalmente usada nas humanidades) e o estilo APA foi desenvolvido pela American Psicológica Association (usada originalmente na psicologia e nas ciências sociais).
- Estilo de citação MLA usa o seguinte formato: `Autor. "Título da Fonte". Título do contêiner, Outros colaboradores, Versão, Número, Publicador, Data de Publicação, Localização.`
- Estilo de citação APA usa o seguinte formato: `Autor. (Ano). Título do conjunto de dados (número da versão). [Recuperado de] ***OU*** [DOI]`

Veja [Guia de Estilos de Citação do Scribbr](https://www.scribbr.com/citing-sources/citation-styles/). Veja também [Recurso FORCE11](https://www.force11.org/node/4771).

(cm-citable-cite-data)=
## Dados de Citação

Ao compartilhar um conjunto de dados, use DOIs dedicados e adicione um **extrato de disponibilidade de dados** no final do papel ou nos detalhes do repositório online (semelhante à seção de confirmação).

Você pode encontrar exemplos dessas afirmações nas políticas do autor (dados de pesquisa) dos editores.

### Exemplos da disponibilidade de dados:

**Usando o Digital Object Identifier (DOI):** “Os dados que suportam as descobertas deste estudo estão abertamente disponíveis no [nome do repositório] em http://doi. rg/[doi].”

**Se nenhum DOI for emitido:**
- Os dados que suportam as conclusões deste estudo estão abertamente disponíveis no [nome do repositório] em [URL], número de referência [número de referência]".

**Quando houver um período de embargo, você pode reservar o seu DOI e ainda incluir uma referência ao conjunto de dados no seu papel:**
- “Os dados que apoiam as conclusões estarão disponíveis no [nome do repositório] em [URL / DOI] na sequência de um embargo [6 mês] a partir da data de publicação para permitir a comercialização dos resultados de pesquisa.”

**Quando os dados não podem ser disponibilizados:**
- “As restrições aplicam-se aos dados que suportam as descobertas deste estudo. [Explicar a natureza das restrições, por exemplo, se os dados contém informações que poderiam comprometer a privacidade dos participantes da pesquisa] Dados estão disponíveis a uma solicitação razoável entrando em contato com [nome e detalhes de contato] e com permissão de [nome de terceiro]."
-  “Os dados que suportam as conclusões deste estudo estão disponíveis mediante pedido. Condições de acesso e procedimentos podem ser encontrados na [URL para repositório de acesso restrito como [FÁCIL](https://easy.dans.knaw.nl/ui/home).]"

**Mais exemplos de declaração de disponibilidade de dados:**

Você pode encontrar mais exemplos na [página de demonstrações de acesso aos dados do Mancher](https://www.library.manchester.ac.uk/using-the-library/staff/research/research-data-management/sharing/data-access-statements/), os [exemplos de Declaração de Disponibilidade de Dados de Cambridge](https://www.cambridge.org/core/services/authors/open-data/data-availability-statements), os [exemplos de Declaração de Disponibilidade de Dados AMS](https://www.ametsoc.org/index.cfm/ams/publications/author-information/formatting-and-manuscript-components/data-availability-statement-examples/)ou [Dicas da Natureza para escrever um comando deslumbrante de Disponibilidade de Dados](https://researchdata.springernature.com/posts/tips-for-writing-a-dazzling-das-data-availability-statement).

(cm-cite-software)=
## Software de Citação

Uma citação de software tem muitos dos mesmos elementos que uma citação de dados, descrita acima, e são descritos com mais detalhes nos [Princípios de Citação do Software](https://www.force11.org/software-citation-principles). Ao usar outros software, é vital citá-los e atribuí-los correctamente.

Para tornar seu código cível, você pode usar a integração entre [Zenodo](https://zenodo.org/) e GitHub.

- Crie um arquivo para dizer às pessoas como citar seu software. Use este [guia prático](https://citation-file-format.github.io/cff-initializer-javascript/) para formatar o arquivo.
- Vincule sua conta do GitHub com uma conta Zenodo. Este guia explica [como](https://guides.github.com/activities/citable-code/).
- Você pode dizer ao Zenodo quais informações ou metadados você deseja incluir no seu software adicionando um `zenodo. arquivo` do filho, descrito [aqui](https://guide.esciencecenter.nl/citable_software/making_software_citable.html).
- No Zenodo, vire o interruptor para a posição 'on' para o repositório do GitHub que você deseja liberar.
- No GitHub, clique no botão *Criar um novo release*. O Zenodo deve ser notificado automaticamente e deve fazer uma cópia de snapshot do estado atual do repositório (apenas uma filial), sem qualquer histórico) e também deve atribuir um identificador persistente (DOI) para esse snapshot.
- Utilize o DOI em qualquer citação do seu software e diga aos colaboradores e usuários que façam o mesmo!
