(rr-open-dados)=

# Dados Abertos

O mundo está a assistir a uma transformação global significativa, facilitada pela tecnologia e pelos meios de comunicação digitais, alimentada por dados e pela informação.
Esta transformação tem um enorme potencial para promover uma investigação mais transparente, responsável, eficiente, responsável e eficaz.
Apenas uma parte muito pequena dos dados originais é publicada em revistas convencionais.
Apesar das políticas existentes sobre o arquivamento de dados, os dados práticos de hoje são armazenados principalmente em arquivos privados, não em repositórios institucionais seguros, e efetivamente são perdidos para o público (e muitas vezes até para o pesquisador que gerou os dados).

Esta falta de compartilhamento de dados é um obstáculo à pesquisa internacional (seja académica, governamental ou comercial) por duas razões principais:

1. Em geral, é difícil ou impossível reproduzir um estudo sem os dados originais.
2. Os dados não podem ser reutilizados ou incorporados no novo trabalho por outros investigadores se não puderem ter acesso aos mesmos.

Assim, há uma revolução global de dados em curso que procura promover a colaboração e a criação e expansão de programas de investigação eficazes e eficientes.
Open data [{term}`def<Open data>`] is crucial to meeting these objectives.
Os dados abertos estão disponíveis livremente na internet.
Any user is permitted to download, copy, analyse, re-process, and reuse it for any other purpose with minimal financial, legal, and technical barriers.

Isto representa uma mudança real na forma como a investigação funciona. Funders are starting to require researchers to make their data available and submit data management plans {ref}`Data Management Plans<rr-rdm-dmp>` as part of project proposals.
Neste momento, qualquer pessoa que deseje utilizar dados de um pesquisador tem frequentemente de entrar em contato com esse pesquisador e fazer um pedido.
"Aberto por padrão" corrige isso com a presunção de publicação para todos.
Se o acesso aos dados for restringido, por exemplo, por razões de segurança, a justificação deve ser clara.
Free access to and subsequent use of data is of [significant value to society and the economy and also has benefits to researchers](https://blog.datadryad.org/2025/07/24/benefits-of-open-data/).
Por conseguinte, esses dados devem ser abertos por defeito e apenas quando necessário.

You can find more about the practical steps to make your data available in the section describing {ref}`Steps to Share your Data <rr-rdm-sharing-steps>` in the subchapter: {ref}`Sharing and Archiving Data<rr-rdm-sharing>`.

(barreiras-abertas)=

## Barreiras para compartilhamento de dados

Muitos académicos acham difícil compartilhar dados.
Recent surveys {cite:ps}`Stuart2018sharing` conducted amongst researchers list the following reasons:

- Organizar os dados de forma apresentável e útil é desafiador (mencionado por 46%)
- Pesquisadores têm dúvidas sobre direitos autorais e licenciamento (mencionado por 37%)
- Pesquisadores não sabem qual repositório usar para diferentes tipos de dados (criado por 33%)

Estes são desafios culturais que poderão ser enfrentados no prosseguimento da mudança de prática.
No entanto, existem também razões jurídicas, éticas ou contratuais que às vezes impedem a disponibilização pública dos dados na sua totalidade ou mesmo em partes.
Abaixo, discutimos algumas razões que explicam porque é que isso pode acontecer.

```{figure} ../../../figures/data-privacy.*
---
height: 500px
name: data-privacy
alt: An image detailing why private data should be used. A person stands next to a well with 'private data' written on it and a padlock around it. It is black and white and blue. The text lists that 'people deserve - dignity, agency, privacy, rights, confirmed consent.'
---
_The Turing Way_ project illustration by Scriberia. Original version on Zenodo. [http://doi.org/10.5281/zenodo.3695300](http://doi.org/10.5281/zenodo.3695300)
```

(rr-dados-abertura-barreiras-privacidade)=

### Privacidade e Proteção de Dados

Muitos domínios de investigação envolvem o trabalho com dados pessoais sensíveis, sendo a investigação médica o exemplo mais óbvio.
Please see the {ref}`sensitive data<pd-sdp>` chapter for more information about different types of sensitive data.
You can check the {ref}`Managing Sensitive Data Projects<pd-sdpm>` chapter on how you should manage these data.
Particularly the {ref}`Data Privacy Strategies<pd-sdpm-privacy>` section can help you to safely manage and protect sensitive personal data.

(rr-dados-barreiras-consentimentos)=

### Consent

Para que os dados de pesquisa anonimamente sejam disponibilizados para futura reutilização, formulários de consentimento devem cobrir o compartilhamento desses dados com outros investigadores.
Research so far suggests that study participants are usually less concerned about the data being archived and shared than researchers think {cite:ps}`Kuula2010archiving`.
Pesquisas até agora sugerem que os participantes dos estudos geralmente estão menos preocupados com os dados arquivados e compartilhados que os pesquisadores acham que {cite:ps}<code>Kuula2010archiving</code>.

(rr-open-data-barreiras-nacional)=

### Dados nacionais e comercialmente sensíveis

Em muitos casos, as empresas não estão, compreensivelmente, dispostas a publicar grande parte dos seus dados.
O raciocínio é que, se uma informação comercialmente sensível de uma empresa for divulgada, isso prejudicará os interesses comerciais da empresa e prejudicará a competitividade.
Isto baseia-se na ideia de que, nos mercados competitivos, a inovação só ocorrerá com alguma protecção da informação.
Se uma empresa gasta tempo e dinheiro a desenvolver algo de novo, cujos pormenores são tornados públicos. Nessa altura, os seus concorrentes podem facilmente copiá-lo sem terem de investir os mesmos recursos.
O resultado é que ninguém iria inovar em primeiro lugar.
Do mesmo modo, para preocupações de segurança pública, os governos não estão frequentemente dispostos a publicar dados relacionados com questões como a segurança nacional.
Nesses casos, pode não ser possível abrir os dados, ou só pode ser possível compartilhar conjuntos de dados parciais ou obscurecidos.

_**Chapter Tags**: This chapter is curated for the `Turing Data Study Group` (`turing-dsg`)._
