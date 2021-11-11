(rr-open-dados)=
# Dados Abertos

O mundo está a assistir a uma transformação global significativa, facilitada pela tecnologia e pelos meios de comunicação digitais, alimentada por dados e pela informação. Esta transformação tem um enorme potencial para promover uma investigação mais transparente, responsável, eficiente, responsável e eficaz. Apenas uma parte muito pequena dos dados originais é publicada em revistas convencionais. Apesar das políticas existentes sobre o arquivamento de dados, os dados práticos de hoje são armazenados principalmente em arquivos privados, não em repositórios institucionais seguros, e efetivamente são perdidos para o público (e muitas vezes até para o pesquisador que gerou os dados).

Esta falta de compartilhamento de dados é um obstáculo à pesquisa internacional (seja académica, governamental ou comercial) por duas razões principais:

1. Em geral, é difícil ou impossível reproduzir um estudo sem os dados originais.
2. Os dados não podem ser reutilizados ou incorporados no novo trabalho por outros investigadores se não puderem ter acesso aos mesmos.

Assim, há uma revolução global de dados em curso que procura promover a colaboração e a criação e expansão de programas de investigação eficazes e eficientes. Dados abertos [{term}`def<Open data>`] é crucial para atingir esses objetivos. Os dados abertos estão disponíveis livremente na internet. Qualquer usuário é autorizado a baixar, copiar, analisar, reutilizar e reutilizá-lo para qualquer outro propósito com um mínimo de barreiras financeiras, legais e técnicas.

Isto representa uma mudança real na forma como a investigação funciona. Funders estão começando a exigir que os pesquisadores disponibilizem seus dados e enviem os planos de gerenciamento de dados {ref}`Planos de gerenciamento de dados<rr-rdm-dmp>` como parte das propostas do projeto. Neste momento, qualquer pessoa que deseje utilizar dados de um pesquisador tem frequentemente de entrar em contato com esse pesquisador e fazer um pedido. "Aberto por padrão" corrige isso com a presunção de publicação para todos. Se o acesso aos dados for restringido, por exemplo, por razões de segurança, a justificação deve ser clara. O livre acesso e posterior utilização de dados tem um valor significativo para a sociedade e para a economia. Por conseguinte, esses dados devem ser abertos por defeito e apenas quando necessário.

Você pode encontrar mais sobre os passos práticos para tornar seus dados disponíveis na seção que descreve {ref}`Passos para compartilhar seus dados <rr-rdm-sharing-steps>` no subcapítulo: {ref}`Compartilhar e Arquivar Dados<rr-rdm-sharing>`.

(barreiras-abertas)=
## Barreiras para compartilhamento de dados
Muitos académicos acham difícil compartilhar dados. Inquéritos recentes {cite:t}`Stuart2018compartilhamento realizado entre pesquisadores` nos seguintes motivos:

- Organizar os dados de forma apresentável e útil é desafiador (mencionado por 46%)
- Pesquisadores têm dúvidas sobre direitos autorais e licenciamento (mencionado por 37%)
- Pesquisadores não sabem qual repositório usar para diferentes tipos de dados (criado por 33%)

Estes são desafios culturais que poderão ser enfrentados no prosseguimento da mudança de prática. No entanto, existem também razões jurídicas, éticas ou contratuais que às vezes impedem a disponibilização pública dos dados na sua totalidade ou mesmo em partes. Abaixo, discutimos algumas razões que explicam porque é que isso pode acontecer.

```{figure} ../../figures/data-privacy.jpg
---
height: 500px
nome: dada-privacidade
alt: Uma imagem detalhando por que os dados privados devem ser usados. Uma pessoa está ao lado de um poço com os "dados privados" escritos nele e um cadeado em torno dele. É preto e branco e azul. O texto lista que "as pessoas merecem - dignidade, agência, privacidade, direitos, consentimento confirmado".
---
_A Turing Way_ ilustração de projeto por Scriberia. Versão original do Zenodo. [http://doi.org/10.5281/zenodo.3695300](http://doi.org/10.5281/zenodo.3695300)
```

(rr-dados-abertura-barreiras-privacidade)=
### Privacidade e Proteção de Dados

Muitos domínios de investigação envolvem o trabalho com dados pessoais sensíveis, sendo a investigação médica o exemplo mais óbvio. As pessoas devem ser protegidas da (re)identificação através dos seus dados utilizados na investigação. A anonimização dos dados pode ser suficiente em alguns casos, mas garantir que (re)identificação não é possível está a tornar-se cada vez mais difícil devido ao progresso técnico, o aumento do poder computacional e - ironicamente - dados mais abertos. Por exemplo, (re)identificação pode ser possível através da mineração de dados de dados acessíveis e os chamados quasi-identificadores, um conjunto de propriedades (comun) que são – na sua combinação – tão específicas que podem ser usadas para identificar indivíduos.

Ainda é possível manter a privacidade se forem fornecidos datasets parciais ou generalizados. Por exemplo, você pode fornecer faixas de idade em vez de data de nascimento ou apenas os dois primeiros dígitos de código postal. Pode também ser possível fornecer os dados em um formato que os investigadores possam consultar enquanto mantêm os dados fechados. Por exemplo, um usuário pode ser capaz de enviar uma consulta para recuperar a média de um conjunto de dados, mas não pode acessar qualquer um dos pontos de dados individuais.

Muitas áreas de disciplinas científicas envolvem o trabalho com dados pessoais sensíveis. A sua gestão está bem regulamentada na legislação relativa à protecção de dados (na Europa, através da aplicação nacional do Regulamento Geral sobre a Protecção de Dados) e nos procedimentos de ética, tal como estão estabelecidos na maioria das instituições de investigação. {cite:t}`EU2016protection`.

(rr-dados-barreiras-consentimentos)=
### Consentimento

Para que os dados de pesquisa anonimamente sejam disponibilizados para futura reutilização, formulários de consentimento devem cobrir o compartilhamento desses dados com outros investigadores. Pesquisas até agora sugerem que os participantes dos estudos geralmente estão menos preocupados com os dados arquivados e compartilhados que os pesquisadores acham que {cite:t}`Kuula2010archiving`. As folhas de informação dos participantes e formulários de consentimento devem incluir como os dados de pesquisa serão armazenados, preservado e utilizado a longo prazo e como a confidencialidade será protegida quando necessário.

(barreiras-abertas-anonimização)=
### Anonymisation

Indivíduos devem ser protegidos de (re)identificação por meio de seus dados Anonimato dos dados pode ser suficiente em alguns casos mas é cada vez mais difícil assegurar que a reidentificação não seja possível. Pode até ser impossível devido ao progresso técnico, ao crescimento do poder computacional e - ironicamente - dados mais abertos.

Por exemplo, a reidentificação pode ser possível através da mineração de dados de dados acessíveis e dos chamados quase identificadores, um conjunto de propriedades (comun) que são - na sua combinação - tão específicas que podem ser usadas para identificar o indivíduo. Preservar privacidade ainda pode ser possível se forem fornecidos conjuntos de dados parciais ou generalizados, como faixa etária ao invés da data de nascimento, ou apenas os dois primeiros dígitos de códigos postais. Pode também ser possível fornecer os dados em um formato que os investigadores podem consultar enquanto mantêm os dados fechados. Por exemplo, um usuário pode ser capaz de enviar uma consulta para recuperar a média de um conjunto de dados, mas não pode acessar qualquer um dos pontos de dados individuais. Outra maneira de fornecer dados anônimos é fornecer [dados sintéticos](https://en.wikipedia.org/wiki/Synthetic_data), , dados gerados para refletir as condições e propriedades dos dados brutos, sem incluir nenhuma informação pessoal.

(rr-open-data-barreiras-nacional)=
### Dados nacionais e comercialmente sensíveis

Em muitos casos, as empresas não estão, compreensivelmente, dispostas a publicar grande parte dos seus dados. O raciocínio é que, se uma informação comercialmente sensível de uma empresa for divulgada, isso prejudicará os interesses comerciais da empresa e prejudicará a competitividade. Isto baseia-se na ideia de que, nos mercados competitivos, a inovação só ocorrerá com alguma protecção da informação. Se uma empresa gasta tempo e dinheiro a desenvolver algo de novo, cujos pormenores são tornados públicos. Nessa altura, os seus concorrentes podem facilmente copiá-lo sem terem de investir os mesmos recursos. O resultado é que ninguém iria inovar em primeiro lugar. Do mesmo modo, para preocupações de segurança pública, os governos não estão frequentemente dispostos a publicar dados relacionados com questões como a segurança nacional. Nesses casos, pode não ser possível abrir os dados, ou só pode ser possível compartilhar conjuntos de dados parciais ou obscurecidos.

***Tags de Capítulo**: Este capítulo é curado para o `Grupo de Estudo de Dados de Turing` (`turing-dsg`).*
