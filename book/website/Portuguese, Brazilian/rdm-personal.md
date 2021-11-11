(rr-rdm-pessoal)=

## Gerenciamento de dados pessoais
Esta seção fornece uma visão geral das coisas a considerar ao trabalhar com dados pessoais. Para uma visão mais prática sobre ferramentas e práticas que facilitam a reprodução, por favor veja o capítulo {ref}`Projetos de Dados Sensíveis<pd-sdp>`.

### Dados pessoais

Dados pessoais são informações sobre **pessoas vivas** que podem ser identificadas usando os dados que você está processando, seja direta ou indiretamente (por exemplo, o nome de uma pessoa, endereço ou outro identificador exclusivo, como seu número de Segurança Social). "[Dados relacionados ao falecido não são considerados dados pessoais na maioria dos casos, sob o RGPD](https://gdpr.eu/eu-gdpr-personal-data/)." Os identificadores indirectos incluem a saúde, as características económicas, culturais ou sociais. Especialmente quando uma determinada combinação de identificadores pode ser utilizada para identificar uma pessoa, há que ter o cuidado de gerir devidamente os dados. Dados particularmente sensíveis incluem dados relacionados com a pessoa:
* identidade racial/étnica
* opiniões políticas
* Crenças religiosas/filosóficas
* Associação sindical
* Dados genéticos e biométricos
* saúde física ou mental
* orientação sexual

### Políticas de dados pessoais
Existem várias políticas em diferentes países para proteger os direitos dos indivíduos sobre os seus dados pessoais. Por exemplo, os dados pessoais na Austrália estão regulamentados nos termos da [Lei de Privacidade australiana](https://www.oaic.gov.au/privacy/the-privacy-act/). Na União Europeia **GDPR** (Regulamento Geral de Proteção de Dados) se aplica ao processamento de dados pessoais e pode exigir que você leve a cabo uma Avaliação de Impacto de Proteção de Dados ([DPIA](https://youtu.be/YRiCb3unz3g?t=988)). Processar significa fazer qualquer coisa com as informações de uma pessoa, incluindo coleta, armazenamento, análise, compartilhamento, exclusão e destruição. Para garantir que você está atualizado com os requisitos de gerenciamento de dados sensíveis, por favor, reveja as políticas nacionais/institucionais que se aplicam à sua pesquisa. Veja {cite}`o Smith2015participantdata` para práticas recomendadas de compartilhamento de dados clínicos de teste.


(rr-rdm-informado-consentimento)=

### Consentimento informado

O consentimento informado, voluntário e justo para participar num estudo é muito importante para qualquer projecto de pesquisa que envolva participantes humanos. É através deste processo de consentimento que os participantes da pesquisa podem entender o que participar num estudo específico significará para eles. Em seguida, cada pessoa pode escolher se deseja participar usando o formulário de consentimento. Consulte também o {ref}`Guia para Pesquisa Ética<er>`.

Observe que o formulário de consentimento informado é considerado dados pessoais e, portanto, deve ser tratado com o mesmo cuidado que outros dados pessoais. Não armazene os formulários de consentimento onde armazena os restantes dados que coleta; use um painel de bloqueio separado ou uma pasta criptografada, por exemplo.

Caso não possa usar um formulário de consentimento por escrito, tente fazer um registo de consentimento verbal.

**A documentação do consentimento deve incluir:**

* folha de informações de um participante e

* um formulário de consentimento assinado pelo participante.

The **participant information sheet** is used to inform participants about the study. A informação deve ser clara e fácil de compreender e deve abranger o seguinte:
* Do que se trata o projecto.
* O que implicará a sua participação.
* Quaisquer riscos envolvidos para os participantes e salvaguardas para minimizar esses riscos.
* Garantias sobre segurança de dados e confidencialidade dos usuários.
   * Mencione quem tem acesso aos dados
* Como os dados serão utilizados no estudo (para artigos, relatórios e apresentações publicadas).
* Proposta de planos para arquivar dados no final do estudo e potencial reutilização secundária de dados.
    * Consentimento determinado pode ser uma solução aqui, permitindo que os participantes escolham que tipo de informação será compartilhada publicamente
* Detalhes da organização que supervisiona a investigação.
* Quem entrar em contato para obter mais informações sobre o estudo.

O **formulário de consentimento** é usado para verificar se o participante da pesquisa entende e concorda em participar do estudo. A forma de consentimento deve cobrir os seguintes pontos no mínimo:
* O usuário
    * leu e entendeu a folha de informações do usuário
    * foi dada a oportunidade de fazer perguntas
    * entende que a participação é voluntária
    * entende que eles podem se retirar do estudo a qualquer momento, sem dar razões e sem penalizar
    * entende como os dados serão gerenciados, compartilhados e arquivados (como detalhado na folha de informações)
       * para aumentar a chance de reutilização dos seus dados, não promete excluir os dados, mas em vez disso peça o consentimento para manter e compartilhar os dados (veja {cite}`Meyer2018personaldata`)
* Assinaturas tanto do participante como do pesquisador e da data de assinatura

Pense em frente e planeje como você vai:

* colete, armazene e gerencie os dados (veja {ref}`Armazenamento de dados e organização<rr-rdm-storage>`)

* controlar permissões de acesso

* preparar dados para arquivar/compartilhar no final do projeto, se possível, (veja {ref}`Dados de compartilhamento e arquivamento<rr-rdm-sharing>`)


(rr-rdm-privacidade)=

Existem várias estratégias que você pode adotar para **proteger a privacidade** dos indivíduos de sua pesquisa:

**1. Minimização de dados**

* Se as informações pessoais não forem necessárias, não colete.
* Revisar periodicamente se você mantém informações desnecessárias de identificação.
* Ao identificar informações não é mais necessário, remova-as, exclua-as ou destrua-as com segurança.

**2. Limites de retenção de dados**
* Decida quanto tempo você manterá dados identificáveis antes de remover identificadores diretos, aplicando técnicas de anonimato mais complexas, ou excluindo todos os dados.
* Ao excluir dados confidenciais, você precisa estar ciente de que métodos padrão para excluir arquivos (por exemplo, mover arquivos para a lixeira e esvaziá-la) não são seguros. Estes arquivos excluídos podem ser recuperados. Use um software como BleachBit para excluir os dados com segurança.

**3. Transferência de dados segura**
* Antes de decidir transferir dados pessoais, você deve considerar se a transferência de dados identificáveis é necessária. Por exemplo, os dados podem ser desidentificados ou anonimizados?
* Se os dados não podem ser identificados então você deve garantir que tem autoridade para transferir os dados pessoais, e que existem salvaguardas adequadas para proteger os dados antes, durante e após o trânsito.
* Muitas vezes, a sua universidade ou instituto proporcionará soluções para uma transferência segura de arquivos. Entre em contato com você pesquisando dados, privacidade ou equipe de suporte de TI para orientação.

**4. Encriptação**
* A criptografia fornece proteção garantindo que apenas uma pessoa com a chave de criptografia relevante (ou senha) possa acessar o conteúdo.
    * Proteger no nível de disco: Bitlocker para Windows, FileVault para MacOS
    * Proteger no nível de "container" (uma pasta contendo vários arquivos): Veracrypt (ou Arquivo para MacOS)
    * Armazenamento portátil: Bitlocker
    * Nível de arquivos / Informações de troca:
      * Método simples: use 7zip e pacote com uma senha
      * Mais complicado de configurar: use ferramentas PGP (também pode ser usado para enviar e-mails com segurança)
    * Veja o [Manual de Criptografia da Universidade de Gand para Pesquisadores](https://osf.io/nx8km/) para mais detalhes e guias passo a passo

**5. Permissões de acesso**
* Gerenciamento de permissões de pastas compartilhadas.
* Proteção com senha.


**6. Anonymisation**

A anonimização é um processo pelo qual a identificação de informações em um conjunto de dados é removida. É utilizada, em primeiro lugar, para permitir que dados sejam partilhados ou publicados sem revelar as informações confidenciais que contém, limitando ao mesmo tempo a perda de informação.
* Sempre que possível, identificadores diretos (como nomes, endereços, Os números de telefone e de conta) devem ser removidos assim que as informações de identificação deixarem de ser necessárias. Você pode excluir os dados ou substituí-los por pseudônimos. Para dados qualitativos você deve substituir ou generalizar características de identificação ao transcrever entrevistas.
* Dados identificados de-identificados que podem ser reidentificados usando um arquivo de link (por exemplo, informação associando indivíduos de dados a indivíduos identificáveis) é conhecido como dados pseudoerrados. NOTA: Neste caso, o arquivo de ligação deve ser criptografado e armazenado de forma segura e separada dos dados de pesquisa não identificados.
  * A identificação de indivíduos em dados pseudônimos ou não identificados pode ainda ser possível usando combinações de identificadores indiretos (como a idade, educação, emprego, área geográfica e condições médicas). Além disso, os dados e saídas contendo pequenas contagens de células podem ser potencialmente divulgados, particularmente nos casos em que as amostras são extraídas de pequenas populações ou em que incluem casos com valores extremos ou características relativamente raras.
   * Como tal, quando pretende compartilhar dados potencialmente identificáveis ou as saídas geradas a partir dos dados, talvez você precise considerar técnicas de anonimato mais avançadas, como controle de divulgação estatística (SDC, consulte [este manual](https://securedatagroup.org/sdc-handbook/) para obter mais informações).
* Para obter mais informações sobre anonimato você pode assistir [este webinar pela Enrico Glerean](https://www.youtube.com/watch?v=ILXeA4fx3cI).

**7. Compartilhando dados confidenciais**

Se você planeja compartilhar ou publicar seus dados, deve se certificar de que seus dados são apropriados e seguros para compartilhar. Por exemplo, você deve considerar se os dados podem ser adequadamente anonimizados, e se os dados anônimos permanecerão úteis (veja também {ref}`Barridores ao compartilhamento de dados<rr-rdm-sharing>`Capítulo de Pesquisa Aberta). Após aplicar métodos para desidentificar e anonimizar dados confidenciais, ainda poderá haver um risco de re-identificação (veja {cite}`Meyer2018personaldata`).

Uma medida de segurança adicional, ou alternativa à anonimização, está a aplicar controlos de acesso para garantir que os dados sejam partilhados de forma adequada e segura. Isso pode envolver encontrar um repositório de dados que possa fornecer controles de acesso adequados (veja [aqui](https://osf.io/tvyxz/wiki/8.%20Approved%20Protected%20Access%20Repositories/) para uma lista de repositórios de acesso protegidos). Esses repositórios podem fornecer acesso aos metadados do projeto, o que permite que outras pessoas encontrem e o {ref}`cite os dados<cm-citable-cite>`. O acesso restrito/condicional também fornece potenciais reutilizadores com as informações que eles precisam para acessar os dados, fazendo com que os dados {ref}`FALHA <rr-rdm-fair>`. Por exemplo, condições para acessar os dados poderiam exigir o potencial reutilização de dados para:
  * Registre-se e/ou forneça detalhes de contato para garantir que os reutilizadores sejam genuínos e conscientes das suas responsabilidades
  * Forneça informações sobre como eles usam os dados
  * Concordar com condições (segurança dos dados, privacidade, restrições incluídas nos formulários de consentimento)

**Recursos**
* [Proteger o curso de dados confidenciais](https://mantra.edina.ac.uk/protectionrightsandaccess) por [MANTRA](https://mantra.edina.ac.uk)
* {cite}`Meyer2018personaldata`.
* [Apresentações](https://www.youtube.com/watch?v=J9kWkzK83i4&list=PLyeHH3bEQqIbgbw75gheV27nFF2ctPPpR&index=1) por [Zosia Beckles](https://youtu.be/J9kWkzK83i4), [Michele Voznick](https://youtu.be/w5v5d6r6irs) e [Tessa Darbyshire](https://youtu.be/jEFu1ykVI_I) sobre Gestão de Dados Responsável: Legais & Aspectos Éticos como parte do [Falhar durante sessões](https://www.youtube.com/c/AI4ScientificDiscovery).
* [Apresentação](https://www.youtube.com/watch?v=H2mv6q4WwOU&) por Rob Gommans sobre o GDPR e o Processamento de (identificável) imagem, Áudio e Video Data para fins de pesquisa científica.
* [Apresentação](https://youtu.be/_3bufely0c0) por Stephan Heunis sobre dados de pesquisa no cérebro e privacidade de dados pessoais: dicas práticas para compartilhar e proteger.
* [Apresentação](https://youtu.be/eAKhI0qde2w?t=1104) por Walter Scholger no GDPR com recursos tais como modelos de consentimento informados (18:30 - 38:50).
* [Apresentação](https://www.youtube.com/watch?v=PSe2V1KTQ8w&) sobre o tratamento de dados pessoais por Enrico Glerean e Pa├ivi Lindstro├m da Universidade de Aalto. Veja [aqui](https://www.aalto.fi/en/services/rdm-training) para o curso completo.
* [Apresentação](https://www.youtube.com/watch?v=J457qBdQ3xo) no GDPR por Rosalie Salameh.
* [Apresentação de](https://vimeo.com/362161972) e [artigo](https://www.smashingmagazine.com/2017/07/privacy-by-design-framework/) sobre **privacidade por design**.
* [Apresentação](https://www.youtube.com/watch?v=2WebuDlzEIw&list=PLG87Imnep1Sln3F69_kBROUrIbT5iderf&index=2) sobre problemas éticos e legais no compartilhamento de dados por Hina Zahid.
* [Slides](https://osf.io/5xhya/) de Hanne Elsen sobre privacidade e o RGPD no Ciclo de Vida da Pesquisa.
* [Materiais da oficina](https://osf.io/em3da/) em procedimentos de desidentificação de dados para compartilhamento de dados.
