(rr-geros-barreiras)=
# Barreiras para reprodutibilidade

Até agora, explicamos {ref}`o que entendemos por<rr-overview-definitions>` reprodutível pesquisa e explicamos alguns dos`benefícios adicionais de {ref}<code><rr-overview-benefits>`.

Nesta seção, cobrimos algumas das (reais e percebidas) barreiras que você pode enfrentar, tornando seu trabalho reprodutível.

```{figure} ../../figures/barriers-reproducibility.png
---
largura: 500px
nome: reprodutibilidade-barreiras
alt: Deslize da apresentação mostrando as diferentes barreiras para reprodutibilidade. O texto no centro diz "Barreiras à pesquisa reprodutível" e as seguintes barreiras estão organizadas no sentido horário em torno do deslizamento - não é considerado para promoção, Segurado a um padrão mais alto que outros, Viés de publicação para descobertas de romances, liderar o 5, Tomar o tempo, Suportar usuários adicionais, Requer habilidades adicionais.
---
Um slide delineando algumas das barreiras para reprodutível pesquisa por Kirstie Whitaker [fale sobre A Turing Way_](https://youtu.be/wZeoZaIV0VE?t=312) em [csv,conf,v4](https://csvconf.com/2019) em maio de 2019.
Usado sob uma licença CC-BY 4.0.
DOI: [10.5281/zenodo.2669547](https://doi.org/10.5281/zenodo.2669547).
```

Este capítulo descreve algumas dessas barreiras, e algumas sugestões para as contornar. Os obstáculos à reprodução da investigação podem ser descritos em três grandes grupos. O primeiro, e o mais difícil de superar são as relacionadas à atual estrutura de incentivo da pesquisa acadêmica: {ref}`incentivos limitados para fornecer evidências contra si mesmo<rr-overview-barriers-incentives>` (ou "Conduza o quinto"), os conhecidos {ref}`viés de publicação para novas descobertas<rr-overview-barriers-publication>`, o fato de que a pesquisa reprodutível ou aberta pode ser {ref}`realizada a padrões mais altos que os outros<rr-overview-barriers-standards>`, e que todo este esforço {ref}`não é considerado para promoção<rr-overview-barriers-promotion>`. Depois, há os desafios técnicos e teóricos de trabalhar com {ref}`grandes dados e uma infraestrutura computacional complexa<rr-overview-barriers-infrastructure>` e lembrar que {ref}`ser reproduzível não significa que a resposta está certa<rr-overview-barriers-notright>`. Terminamos com três barreiras, considerando as pressões sobre cientistas de dados individuais: que este trabalho pode ser percebido para {ref}`levar tempo extra<rr-overview-barriers-time>`, que você pode ser necessário para {ref}`suportar usuários adicionais<rr-overview-barriers-support>` (spoiler: você não! , e que você e membros de seu time podem {ref}`exigir habilidades adicionais<rr-overview-barriers-skills>`. A boa notícia é que ajudá-lo a aprender essas habilidades é exatamente para quê _The Turing Way_ está aqui!

(rr-vos-visão-barreiras-incentivos)=
## Incentivos limitados para fornecer provas contra si mesmo

A [Quinta Alteração](https://en.wikipedia.org/wiki/Fifth_Amendment_to_the_United_States_Constitution) à Constituição dos Estados Unidos inclui uma cláusula segundo a qual ninguém "será obrigado, em qualquer caso criminal, a ser testemunha contra [them]navio[ves]". (Edicado a linguagem de gênero neutro.) "Defender a quinta" significa que alguém opta por não dar provas de que poderia ter havido algo de errado no seu comportamento passado. Têm o direito de permanecer em silêncio.

Sabemos que ninguém quer incriminar-se a si próprio e também que ninguém é infalível. Colocar seu código e seus dados online pode ser muito revelador e intimidador, e faz parte da condição humana estar nervoso por ser julgado pelos outros. Embora não exista nenhuma _lei_ que rege a comunicação de pesquisas reprodutíveis - a menos que você cometer fraude explícita no seu trabalho - a partilha de erros que você encontre em seu trabalho é fortemente desincentivada.

```{figure} ../../figures/make-ok-to-be-human.jpg
---
height: 500px
nome: make-ok-to-be-human
alt: Um desenho animado de uma mulher que segura uma pasta de arquivos e parece preocupada. Bolha de pensamento diz: se eu compartilhar meus dados, as pessoas podem encontrar erros. A legenda nas imagens diz que é preciso fazer com que seja humana.
---
Uma ilustração da barreira "suplicar a quinta" onde nossa cultura atual desincentiva o reconhecimento e a correção de erros.
Ilustração por The Ludic Group LLP da apresentação de keynote do Kirstie Whitaker em Dados Científicos de 2017.
Usado sob uma licença CC-BY 4.0.
DOI: [10.6084/m9.figshare.5577340.v1](https://doi.org/10.6084/m9.figshare.5577340.v1).
```

A apresentação de provas contra si própria, sobretudo se se detectarem erros no material publicado, é difícil e tenaz. Mas precisamos equilibrar esse custo individual face ao fato de que liberar código pode ajudar outros investigadores a fornecer feedback, aprenda e pode ajudá-los em sua pesquisa. De fato, você quase certamente descobrirá que publicar seu código e documentação de dados te motivar a conduzir suas análises a um padrão mais elevado. Ter cuidado com o que você escreve, e documentar suas decisões, também pode ajudar a gerar novas ideias para você e para os outros.

O mais importante, precisamos nos afastar de uma cultura onde publicar nada é mais seguro do que publicar _algo_. _A Turing Way_ está aqui para ajudá-lo a dar pequenos passos no sentido de ser mais reprodutível à medida que sua carreira avança. Não queremos que ninguém se sinta sozinho, ou "pouco bem" enquanto começam e continuam sua jornada de pesquisa aberta.

(rr-overview-barriers-publicação)=
## Viés de publicação para descobertas novas

Os novos resultados não são necessariamente precisos ou interessantes, mas são recompensados no mundo académico! Papéis que não encontram relações estatisticamente significativas são difíceis de publicar, particularmente se os resultados *não* reproduzem descobertas publicadas anteriormente. (Isso inclui descobertas estatisticamente significativas que vão na direcção oposta à do trabalho já publicado.) Da mesma forma, um artigo pode ser menos provável de ser aceito por um diário ou uma conferência se ele reproduz resultados já publicados com sucesso em vez de produzir um novo conjunto. Há uma boa chance de os revisores dizerem "já sabemos disso" e rejeitarem o envio.

O preconceito para a novidade na ciência de dados significa que muitos investigadores estão desincentivados de fazer o trabalho para documentar, testar e compartilhar seus códigos e dados. John Ioannidis publicou um documento influente em 2005 intitulado "Por que as mais publicadas pesquisas descobertas são falsas" {cite:ps}`Ioannidis2005False` que discute os muitos fatores que contribuem para a publicação de viés. Tendo em conta estes preconceitos, é muito provável que haja muito trabalho duplicado na ciência dos dados. Muitos pesquisadores diferentes fazem a mesma pergunta, não obter a resposta que esperam ou que queiram e depois não dizer a ninguém o que encontraram.

Essa barreira não é específica para a reprodutibilidade computacional conforme a definimos em _The Turing Way_. No entanto, é uma importante barreira cultural a {ref}`comunicação transparente<cm>`, e afeta {ref}`design do projeto<pd>`. _A comunidade_ Modo de Turing está defendendo em todos os lugares que nós somos capazes, para a alteração da cultura sistémica que é necessária para desmantelar a actual publicação e as tendências de crédito académico no sentido de uma novidade em relação ao rigor.

(rr-overview-barriers-padrões)=
## Mantidos aos padrões mais altos que os outros

Um pesquisador que torna seu trabalho reprodutível compartilhando seus códigos e dados pode ser mantido a um padrão mais alto do que outros pesquisadores. Se os autores não compartilham nada, todos os leitores de um manuscrito ou papel de conferência podem fazer é confiar (ou não confiar) nos resultados.

Se o código e os dados estiverem disponíveis, os revisores por pares podem procurar diferenças na implementação. Talvez regressem com novas ideias sobre formas de analisar os dados porque conseguiram experimentar o trabalho. Há o risco de eles exigirem alterações adicionais dos autores do manuscrito apresentado antes de ele ser aceito para a revisão por pares.

Como descrito na seção {ref}`"Plead the Quinto"<rr-overview-barriers-incentives>` acima, a solução para este desafio é alinhar incentivos de carreira, para que fazer o que é melhor para a _ciência_ também beneficie os indivíduos envolvidos.

(rr-overview-barriers-promoção)=
## Não considerado para promoção

No actual sistema académico, uma das principais preocupações de promoção é a capacidade comprovada de receber subvenções e de recrutar estudantes. Tanto organismos de financiamento como futuros estudantes valorizam a novidade e esse comportamento é refletido em papéis preferencialmente recompensadores com um alto [fator de impacto dos periódicos](https://en.wikipedia.org/wiki/Impact_factor). É provável que parte da condição humana seja motivada por coisas novas ou surpreendentes. mas como {ref}`discutiu acima de<rr-overview-barriers-publication>`, este viés para novidade causa um viés de publicação sistemático.

De um modo mais geral, o sistema de promoções no meio académico tende a recompensar os indivíduos que se mostraram diferentes dos outros no seu domínio. Isso significa que a partilha de códigos e dados para facilitar aos "concorrentes" a realização do mesmo trabalho acaba por ser desencorajada pela promoção e financiamento de painéis de selecção. Um bom exemplo desta parcialidade é o prémio Nobel, que só é atribuído a um pequeno número de investigadores todos os anos. e como tal ["esquece muitos dos seus importantes contribuidores"](https://www.theatlantic.com/science/archive/2017/10/the-absurdity-of-the-nobel-prizes-in-science/541863/) (Ed Yong, The Atlantic, 2017). Um dos objetivos de _The Turing Way_ é chamar atenção para o desalinhamento do período e do processo de promoção com ciência de dados colaborativa e reprodutível.

(rr-overview-barriers-infraestrutura)=
## Grande dados e complexa infraestrutura computacional

Os grandes dados são concebidos de diferentes maneiras por diferentes investigadores. Os dados "Big" podem ser complexos, provenientes de uma variedade de fontes de dados, são grandes no volume de armazenamento e/ou são transmitidos em uma resolução temporária muito alta. Embora existam maneiras de definir sementes aleatórias e tirar snapshots de um conjunto de dados em um determinado momento no tempo, pode ser difícil ter dados idênticos ao longo de diferentes processos de análise. Isto é particularmente relevante no contexto das ferramentas de computação paralela. Por exemplo, alguns dados, como o rastreamento de voo ou o tráfego na Internet, são tão grandes que não podem ser armazenados e devem ser processados, uma vez que são transmitidos em tempo real.

Um desafio mais comum para pesquisadores de "grandes dados" é a variabilidade do desempenho de software em sistemas operacionais e a rapidez com que as ferramentas mudam ao longo do tempo. Está disponível um ecossistema quase em mudança constante de tecnologias da ciência de dados, o que significa reproduzir resultados no futuro é altamente variável e depende da utilização de ferramentas perfeitamente retrógradas à medida que se desenvolvem. Muitas vezes, os resultados dos testes estatísticos variarão consoante a configuração da infra-estrutura utilizada em cada um dos experimentos, tornando muito difícil reproduzir um resultado de forma independente. As experiências são muitas vezes dependentes de inicialização aleatória para algoritmos iterativos e nem todo o software inclui a habilidade de consertar um número pseudo-aleatório sem limitar as capacidades de paralelização (por exemplo, em Tensorflow). Estes instrumentos podem exigir competências técnicas profundas, que não estão amplamente disponíveis para cientistas de dados. A estrutura [Apache Hadoop](https://hadoop.apache.org/) por exemplo, é extremamente complexa para implementar experimentos em ciência de dados sem um forte conhecimento de software e engenharia de hardware.

Mesmo computação de alto desempenho "padrão", pode ser difícil de configurar para ser perfeitamente reprodutível, particularmente em diferentes provedores de computação na nuvem ou configurações institucionais. _A Turing Way_ contém capítulos para ajudar os cientistas a aprender habilidades em {ref}`ambiente computacional reprodutível<rr-renv>` incluindo {ref}`contêineres<rr-renv-containers>` como o docker e maneiras de {ref}`controlar suas bibliotecas de software<rr-renv-package>`. Estamos sempre [abertos a mais contribuições](https://github.com/alan-turing-institute/the-turing-way/blob/main/CONTRIBUTING.md) à medida que a tecnologia para apoiar a pesquisa reprodutível em conjuntos de dados muito grandes ou para desenvolver modelagem complexa.

(rr-overview-barriers-notright)=
## Ser reprodutível não significa que a resposta está certa

Ao tornar o código e dados usados para produzir um resultado abertamente disponível para outros nossos resultados podem ser **reproduzidos** mas erros cometidos pelo autor inicial podem ser levados a cabo. Obter a mesma resposta errada toda vez é uma etapa na direção certa, mas ainda é uma **resposta** errada!

Essa barreira não é realmente uma barreira __ de reprodutível a pesquisa tanto quanto uma ressalva de que o tempo de investimento na reprodutibilidade não significa necessariamente que você está fazendo uma ciência melhor. Você pode considerar a reprodutibilidade computacional como necessária, mas não suficiente para pesquisas de alta qualidade. É necessária uma abordagem crítica, em vez de uma utilização ingénua do software existente ou da implementação de métodos estatísticos sem compreender o que fazem. Veja, por exemplo, [uma discussão](https://ryxcommar.com/2019/08/30/scikit-learns-defaults-are-wrong) em agosto de 2019 sobre se as configurações padrão para implementação da regressão logística do Scikit-learn's estão enganando os novos usuários. É necessária interpretabilidade e interoperabilidade para avaliar adequadamente a investigação original e reforçar as descobertas.

(rr-overview-barriers-tempo)=
## Determina o tempo

A reprodução de uma análise exige tempo e esforço, particularmente no início do projecto. Isso pode incluir concordar com um`framework de testes do {ref}<rr-testing>`, configurando {ref}`controle de versão<rr-vcs>` como um repositório Github e {ref}`integração contínua<rr-ci>`, e {ref}`gerenciando dados<rr-rdm>`. Ao longo de todo o projeto, pode ser necessário tempo para manter o pipeline reprodutível.

Também pode ser gasto tempo comunicando com os colaboradores para concordar sobre quais partes do projeto podem ser de código aberto e quando e como essas saídas são compartilhadas. Pesquisadores podem descobrir que eles precisam "melhorar" seus colegas para permitir que a equipe se beneficie de ferramentas de reprodutibilidade como o git e o GitHub, Recipientes, notebook do Jupyter ou bancos de dados.

```{figure} ../../figures/help-you-of-the-future.jpg
---
largura: 500px
name: help-you-of-the-future
alt: Um desenho animado de uma mulher que volta para si mesma uma pasta de documentos. Bolha de fala diz que você está mantendo registros para você no futuro.
---
Embora tornar uma documentação clara pode parecer que está demorando muito tempo no momento, você está ajudando você e seus colaboradores lembram o que você fez para que seja fácil reutilizar o trabalho ou fazer alterações no futuro.
Ilustração por The Ludic Group LLP da apresentação de keynote do Kirstie Whitaker em Dados Científicos de 2017.
Usado sob uma licença CC-BY 4.0.
DOI: [10.6084/m9.figshare.5577340.v1](https://doi.org/10.6084/m9.figshare.5577340.v1).
```

No entanto, _a comunidade The Turing Way_ defende que desta vez é mais do que compensado até o final do projeto. Tome como um experimento de pensamento um revisor pedindo "apenas mais uma análise" quando a publicação for submetida a um diário. Em muitos casos, este pedido chegará entre 6 e 12 meses após a equipa de investigação ter trabalhado com os dados brutos. Pode ser muito difícil voltar atrás no tempo para encontrar a parte do gasoduto que o revisor pediu para mudar. Se o trabalho for totalmente reproduzível, incluindo dados controlados pela versão e a configuração geradora de código, esta análise será muito rápida para rodar e incorporar no resultado final da pesquisa. O pipeline de análise pode ser facilmente adaptado conforme necessário em resposta aos pedidos de co-autor e revisor. Também pode ser facilmente reutilizada para futuros projectos de investigação.

(rr-overview-barriers-support)=
## Apoie usuários adicionais

Muitas pessoas preocupam-se com o facto de ao tornar sua análise reprodutível, serem obrigadas a responder a muitas perguntas de futuros usuários do seu código. These questions may cover software incompatibility across operating systems and the dependencies changing over time (see the {ref}`Big data and complex computational infrastructure<rr-overview-barriers-infrastructure>` barrier above). Eles também podem incluir perguntas sobre como ajustar o código para outra finalidade.

Esta barreira baseia-se em parte na mistura "reprodutível" com a pesquisa "aberta". A _Turing Way_ {ref}`definição de "reprodutível"<rr-overview-definitions>` não requer que os autores apoiem a expansão e a reutilização dos dados e do código além de executar as análises exatas que geram os resultados publicados no manuscrito que os acompanha.

Em quase todos os casos, a criação de código e de código aberto requer uma documentação melhor do que a escrita de um pesquisador. Isto pode parecer uma barreira adicional, embora - como discutido na seção anterior sobre a pesquisa reprodutível {ref}`reserve tempo extra<rr-overview-barriers-time>` é provável que os principais beneficiários do código comentado e testado com documentação detalhada sejam a equipe de pesquisa - particularmente o principal investigador do projeto - em si.

(rr-overview-barriers-habilidades)=
## Requer habilidades adicionais

Como você pode ver pelo número crescente de capítulos em _The Turing Way_, trabalhar de forma reprodutiva requer competências que nem sempre são ensinadas em programas de formação. Você - ou alguém da sua equipe - pode precisar desenvolver experiência em engenharia de dados, pesquisar engenharia de software, escrita técnica para documentação ou gerenciamento de projetos no GitHub. Essa é uma grande barreira quando as estruturas de incentivo atuais não estão alinhadas com o aprendizado dessas habilidades (veja as barreiras no {ref}`invocando o quinto<rr-overview-barriers-incentives>`, {ref}`viés de publicação para novas descobertas<rr-overview-barriers-publication>`, {ref}`mantidos em padrões mais altos do que outros<rr-overview-barriers-standards>`, e {ref}`não são considerados para promoção<rr-overview-barriers-promotion>`!) No entanto, esta é a principal barreira que nós no _The Turing Way_ estamos trabalhando para desmantelar com você. Esperamos que você goste de aprender estas habilidades conosco e que nos ajude a melhorar o livro como quiser.

> "Uma jornada de mil milhas começa com um único passo" (filósofo chinês [Lao Tzu](https://en.wikipedia.org/wiki/A_journey_of_a_thousand_miles_begins_with_a_single_step)).

Esperamos que, trabalhando para vos ajudar a aprender algumas destas valiosas competências, eliminemos também algumas das barreiras mais estruturais à investigação reprodutível.

## Leitura e recursos adicionais

Você pode assistir Kirstie Whitaker descrever algumas destas barreiras em [sua conversa sobre _The Turing Way_](https://youtu.be/wZeoZaIV0VE?t=312) em [csv, onf,v4](https://csvconf.com/2019) em maio de 2019. Você pode usar e reutilizar seus slides sob uma licença CC-BY via Zenodo (doi: [10.5281/zenodo.2669547](https://doi.org/10.5281/zenodo.2669547)). A seção que descreve o slide abaixo começa cerca de 5 minutos no vídeo.
