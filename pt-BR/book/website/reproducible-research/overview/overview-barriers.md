(rr-geros-barreiras)=

# Barreiras para a reprodutibilidade

So far we have explained {ref}`what we mean<rr-overview-definitions>` by reproducible research and explained some of the {ref}`additional benefits<rr-overview-benefits>`.

Nesta seção, cobrimos algumas das barreiras (reais e percebidas) que você pode enfrentar ao tornar seu trabalho reprodutível.

```{figure} ../../../figures/barriers-reproducibility.*
---
width: 500px
name: reproducibility-barriers
alt: Slide from the presentation showing the different barriers to reproducibility. The text in the center says 'Barriers to reproducible research' and the following barriers are arranged clockwise around the slide - Is not considered for promotion, Held to a higher standard than others, Publication bias towards novel findings, Plead the 5th, Takes time, Support additional users, Requires additional skills.
---
A slide outlining some of the barriers to reproducible research from Kirstie Whitaker's [talk about _The Turing Way_](https://youtu.be/wZeoZaIV0VE?t=312) at [csv,conf,v4](https://csvconf.com/2019) in May 2019.
Used under a CC-BY 4.0 license.
DOI: [10.5281/zenodo.2669547](https://doi.org/10.5281/zenodo.2669547).
```

Este capítulo descreve algumas dessas barreiras e sugestões para contorná-las.
As barreiras à pesquisa reprodutível podem ser descritas em três grupos principais.
The first, and hardest to overcome are those relating to the current incentive structure in academic research: {ref}`Limited incentives to give evidence against yourself<rr-overview-barriers-incentives>` (or "Plead the fifth"), the known {ref}`publication bias towards novel findings<rr-overview-barriers-publication>`, the fact that reproducible or open research may be {ref}`held to higher standards than others<rr-overview-barriers-standards>`, and that all this effort is {ref}`not considered for promotion<rr-overview-barriers-promotion>`.
Then there are the technical and theoretical challenges of working with {ref}`big data and complex computational infrastructure<rr-overview-barriers-infrastructure>` and remembering that {ref}`being reproducible does not mean the answer is right<rr-overview-barriers-notright>`.
We finish with three barriers considering the pressures on individual data scientists: that this work can be perceived to {ref}`take extra time<rr-overview-barriers-time>`, that you may be required to {ref}`support additional users<rr-overview-barriers-support>` (spoiler: you aren't!), and that you and members of your team might {ref}`require additional skills<rr-overview-barriers-skills>`.
The good news is that helping you learn those skills is exactly what _The Turing Way_ is here for!

(rr-vos-visão-barreiras-incentivos)=

## Incentivos limitados para fornecer provas contra si mesmo

The [Fifth Amendment](https://en.wikipedia.org/wiki/Fifth_Amendment_to_the_United_States_Constitution) to the United States Constitution includes a clause that no one "shall be compelled in any criminal case to be a witness against themselves".
(Editado para linguagem de gênero neutro.)
"Invocar a quinta" (emenda) significa que alguém opta por não dar provas de que poderia ter havido algo de errado no seu comportamento passado.
A pessoa tem o direito de permanecer em silêncio.

Sabemos que ninguém quer incriminar-se a si próprio e também que ninguém é infalível.
Colocar seu código e seus dados online pode ser muito revelador e intimidador, e faz parte da condição humana ficar nervoso por ser julgado pelos outros.
Although there is no _law_ governing the communication of reproducible research - unless you commit explicit fraud in your work - sharing errors that you find in your work is heavily disincentivised.

```{figure} ../../../figures/make-ok-to-be-human.*
---
height: 500px
name: make-ok-to-be-human
alt: A cartoon of a woman holding a folder of files and looking worried. Thought bubble says, If I share my data people might find mistakes. The caption on the images reads Need to make it ok to be human.
---
An illustration of the "plead the fifth" barrier where our current culture disincentivises acknowledging and correcting mistakes.
Illustration by The Ludic Group LLP from Kirstie Whitaker's keynote presentation at Scientific Data in 2017.
Used under a CC-BY 4.0 license.
DOI: [10.6084/m9.figshare.5577340.v1](https://doi.org/10.6084/m9.figshare.5577340.v1).
```

Apresentar provas contra si próprio, particularmente ao encontrar erros em material publicado, é difícil e estressante.
Mas precisamos equilibrar esse custo individual com o fato de que liberar seu código pode ajudar outros pesquisadores a fornecer feedback e aprender, e pode auxiliá-los em suas pesquisas.
Na verdade, você quase certamente descobrirá que publicar seu código e a documentação dos dados te motiva a conduzir suas análises com um padrão mais alto.
Ter cuidado com o que escreve e documentar suas decisões também pode ajudar a gerar novas ideias para você e para os outros.

Most importantly, we need to move away from a culture where publishing nothing is safer than publishing _something_.
_The Turing Way_ is here to help you take little steps towards being more reproducible as your career progresses.
Não queremos que ninguém se sinta sozinho ou que "não é bom o suficiente" ao iniciar e continuar sua jornada de pesquisa aberta.

(rr-overview-barriers-publicação)=

## Viés de publicação para novas descobertas

Novos resultados não são necessariamente precisos ou interessantes, mas são recompensados no mundo acadêmico!
Papers that do not find statistically significant relationships are hard to publish, particularly if the results _do not_ reproduce previously published findings.
(Isso inclui descobertas estatisticamente significativas que vão na direção oposta à do trabalho já publicado.)
Da mesma forma, um artigo pode ter menos probabilidade de ser aceito em uma revista ou conferência se reproduz com sucesso resultados já publicados em vez de produzir um novo conjunto deles.
Há uma boa chance de que os revisores digam "já sabemos disso" e rejeitem a submissão.

O viés para a novidade na ciência de dados significa que muitos pesquisadores são desincentivados a fazer o trabalho de documentar, testar e compartilhar seu código e seus dados.
John Ioannidis published an influential paper in 2005 titled "Why Most Published Research Findings Are False" {cite:ps}`Ioannidis2005False` which discusses the many factors that contribute to publication bias.
Dados esses vieses, é bastante provável que haja muito trabalho duplicado na ciência de dados.
Muitas pessoas que fazem pesquisa perguntam-se a mesma coisa, não obtendo a resposta que esperam ou querem, e depois não dizem a ninguém o que encontraram.

This barrier is not specific to computational reproducibility as we define it in _The Turing Way_.
However, it is a major cultural barrier to {ref}`transparent communication<cm>`, and affects {ref}`project design<pd>`.
_The Turing Way_ community are advocating in all the places we are able, for the systemic culture change that is required to dismantle the current publication and academic credit biases towards novelty over rigour.

(rr-overview-barriers-padrões)=

## Mantidos aos padrões mais altos que os outros

Um pesquisador que torna seu trabalho reprodutível compartilhando seus códigos e dados pode ser mantido a um padrão mais alto do que outros pesquisadores.
Se os autores não compartilham nada, todos os leitores de um manuscrito ou papel de conferência podem fazer é confiar (ou não confiar) nos resultados.

Se o código e os dados estiverem disponíveis, os revisores por pares podem procurar diferenças na implementação.
Talvez regressem com novas ideias sobre formas de analisar os dados porque conseguiram experimentar o trabalho.
Há o risco de eles exigirem alterações adicionais dos autores do manuscrito apresentado antes de ele ser aceito para a revisão por pares.

As we described in the {ref}`"Plead the Fifth"<rr-overview-barriers-incentives>` section above, the solution to this challenge is to align career incentives so that doing what is best for _science_ also benefits the individuals involved.

(rr-overview-barriers-promoção)=

## Não considerado para promoção

No actual sistema académico, uma das principais preocupações de promoção é a capacidade comprovada de receber subvenções e de recrutar estudantes.
Both funding bodies and prospective students value novelty and this behaviour is reflected in preferentially rewarding papers with a high [journal impact factor](https://en.wikipedia.org/wiki/Impact_factor).
It is likely part of the human condition to be motivated by things that are new or surprising, but as {ref}`discussed above<rr-overview-barriers-publication>`, this bias towards novelty causes a systematic publication bias.

De um modo mais geral, o sistema de promoções no meio académico tende a recompensar os indivíduos que se mostraram diferentes dos outros no seu domínio.
Isso significa que a partilha de códigos e dados para facilitar aos "concorrentes" a realização do mesmo trabalho acaba por ser desencorajada pela promoção e financiamento de painéis de selecção.
A good example of this bias is the Nobel Prize award which only goes to a small number of researchers each year, and as such ["overlooks many of its important contributors"](https://www.theatlantic.com/science/archive/2017/10/the-absurdity-of-the-nobel-prizes-in-science/541863/) (Ed Yong, The Atlantic, 2017).
One of the goals of _The Turing Way_ is to draw attention to the misalignment of the tenure and promotion process with collaborative and reproducible data science.

(rr-overview-barriers-infraestrutura)=

## Grande dados e complexa infraestrutura computacional

Os grandes dados são concebidos de diferentes maneiras por diferentes investigadores.
Os dados "Big" podem ser complexos, provenientes de uma variedade de fontes de dados, são grandes no volume de armazenamento e/ou são transmitidos em uma resolução temporária muito alta.
Embora existam maneiras de definir sementes aleatórias e tirar snapshots de um conjunto de dados em um determinado momento no tempo, pode ser difícil ter dados idênticos ao longo de diferentes processos de análise.
Isto é particularmente relevante no contexto das ferramentas de computação paralela.
Por exemplo, alguns dados, como o rastreamento de voo ou o tráfego na Internet, são tão grandes que não podem ser armazenados e devem ser processados, uma vez que são transmitidos em tempo real.

Um desafio mais comum para pesquisadores de "grandes dados" é a variabilidade do desempenho de software em sistemas operacionais e a rapidez com que as ferramentas mudam ao longo do tempo.
Está disponível um ecossistema quase em mudança constante de tecnologias da ciência de dados, o que significa reproduzir resultados no futuro é altamente variável e depende da utilização de ferramentas perfeitamente retrógradas à medida que se desenvolvem.
Muitas vezes, os resultados dos testes estatísticos variarão consoante a configuração da infra-estrutura utilizada em cada um dos experimentos, tornando muito difícil reproduzir um resultado de forma independente.
As experiências são muitas vezes dependentes de inicialização aleatória para algoritmos iterativos e nem todo o software inclui a habilidade de consertar um número pseudo-aleatório sem limitar as capacidades de paralelização (por exemplo, em Tensorflow).
Estes instrumentos podem exigir competências técnicas profundas, que não estão amplamente disponíveis para cientistas de dados.
The [Apache Hadoop](https://hadoop.apache.org/) framework, for instance, is extremely complex to deploy data science experiments without strong software and hardware engineering knowledge.

Mesmo computação de alto desempenho "padrão", pode ser difícil de configurar para ser perfeitamente reprodutível, particularmente em diferentes provedores de computação na nuvem ou configurações institucionais.
_The Turing Way_ contains chapters to help data scientists learn skills in {ref}`reproducible computational environments<rr-renv>` including {ref}`containers<rr-renv-containers>` such as docker and ways to {ref}`version control your software libraries<rr-renv-package>`.
We are always [open to more contributions](#ch-contributing) as the technology to support reproducible research in very large datasets or for complex modelling evolves.

(rr-overview-barriers-notright)=

## Ser reprodutível não significa que a resposta está certa

By making the code and data used to produce a result openly available to others, our results may be **reproduced** but mistakes made by the initial author can be carried through.
Getting the same wrong answer each time is a step in the right direction, but still very much a **wrong** answer!

This barrier isn't really a _barrier_ to reproducible research as much as a caveat that investing time in reproducibility doesn't necessarily mean that you're doing better science.
Você pode considerar a reprodutibilidade computacional como necessária, mas não suficiente para pesquisas de alta qualidade.
É necessária uma abordagem crítica, em vez de uma utilização ingénua do software existente ou da implementação de métodos estatísticos sem compreender o que fazem.
See, for example, [a discussion](https://ryxcommar.com/2019/08/30/scikit-learns-defaults-are-wrong) in August 2019 about whether the default settings for Scikit-learn's implementation of logistic regression are misleading to new users.
É necessária interpretabilidade e interoperabilidade para avaliar adequadamente a investigação original e reforçar as descobertas.

(rr-overview-barriers-tempo)=

## Determina o tempo

A reprodução de uma análise exige tempo e esforço, particularmente no início do projecto.
This may include agreeing upon a {ref}`testing framework<rr-testing>`, setting up {ref}`version control<rr-vcs>` such as a Github repository and {ref}`continuous integration<rr-ci>`, and {ref}`managing data<rr-rdm>`.
Ao longo de todo o projeto, pode ser necessário tempo para manter o pipeline reprodutível.

Também pode ser gasto tempo comunicando com os colaboradores para concordar sobre quais partes do projeto podem ser de código aberto e quando e como essas saídas são compartilhadas.
Pesquisadores podem descobrir que eles precisam "melhorar" seus colegas para permitir que a equipe se beneficie de ferramentas de reprodutibilidade como o git e o GitHub, Recipientes, notebook do Jupyter ou bancos de dados.

```{figure} ../../../figures/help-you-of-the-future.*
---
width: 500px
name: help-you-of-the-future
alt: A cartoon of a woman passing a folder of documents back to herself. Speech bubble says You're mainly keeping records for you in the future.
---
Although making clear documentation may feel like it is taking a lot of time at the moment, you are helping yourself and your collaborators remember what you have done so it is easy to reuse the work or make changes in the future.
Illustration by The Ludic Group LLP from Kirstie Whitaker's keynote presentation at Scientific Data in 2017.
Used under a CC-BY 4.0 license.
DOI: [10.6084/m9.figshare.5577340.v1](https://doi.org/10.6084/m9.figshare.5577340.v1).
```

However, _The Turing Way_ community advocates that this time is more than made up for by the end of the project.
Tome como um experimento de pensamento um revisor pedindo "apenas mais uma análise" quando a publicação for submetida a um diário.
Em muitos casos, este pedido chegará entre 6 e 12 meses após a equipa de investigação ter trabalhado com os dados brutos.
Pode ser muito difícil voltar atrás no tempo para encontrar a parte do gasoduto que o revisor pediu para mudar.
Se o trabalho for totalmente reproduzível, incluindo dados controlados pela versão e a configuração geradora de código, esta análise será muito rápida para rodar e incorporar no resultado final da pesquisa.
O pipeline de análise pode ser facilmente adaptado conforme necessário em resposta aos pedidos de co-autor e revisor.
Também pode ser facilmente reutilizada para futuros projectos de investigação.

(rr-overview-barriers-support)=

## Apoie usuários adicionais

Muitas pessoas preocupam-se com o facto de ao tornar sua análise reprodutível, serem obrigadas a responder a muitas perguntas de futuros usuários do seu código.
These questions may cover software incompatibility across operating systems and the dependencies changing over time (see the {ref}`Big data and complex computational infrastructure<rr-overview-barriers-infrastructure>` barrier above).
Eles também podem incluir perguntas sobre como ajustar o código para outra finalidade.

Esta barreira baseia-se em parte na mistura "reprodutível" com a pesquisa "aberta".
The _Turing Way_ {ref}`definition of "reproducible"<rr-overview-definitions>` doesn't require authors to support the expansion and reuse of the data and code beyond running the exact analyses that generate the published results in the accompanying manuscript.

Em quase todos os casos, a criação de código e de código aberto requer uma documentação melhor do que a escrita de um pesquisador.
This can feel like an additional barrier, although - as discussed in the previous section on reproducible research {ref}`taking extra time<rr-overview-barriers-time>` it is likely that the primary beneficiaries of well commented and tested code with detailed documentation are the research team - particularly the principal investigator of the project - themselves.

(rr-overview-barriers-habilidades)=

## Requer habilidades adicionais

As you can tell from the ever-growing number of chapters in _The Turing Way_, working reproducibly requires skills that aren't always taught in training programmes.
Você - ou alguém da sua equipe - pode precisar desenvolver experiência em engenharia de dados, pesquisar engenharia de software, escrita técnica para documentação ou gerenciamento de projetos no GitHub.
That is a major barrier when the current incentive structures are not aligned with learning these skills (see the barriers on {ref}`plead the fifth<rr-overview-barriers-incentives>`, {ref}`publication bias towards novel findings<rr-overview-barriers-publication>`, {ref}`held to higher standards than others<rr-overview-barriers-standards>`, and {ref}`not considered for a promotion<rr-overview-barriers-promotion>`!)
However, this is the primary barrier that we at _The Turing Way_ are working to dismantle with you.
Esperamos que você goste de aprender estas habilidades conosco e que nos ajude a melhorar o livro como quiser.

> "A journey of a thousand miles begins with a single step" (Chinese philosopher [Lao Tzu](https://en.wikipedia.org/wiki/A_journey_of_a_thousand_miles_begins_with_a_single_step)).

Esperamos que, trabalhando para vos ajudar a aprender algumas destas valiosas competências, eliminemos também algumas das barreiras mais estruturais à investigação reprodutível.

## Leitura e recursos adicionais

You can watch Kirstie Whitaker describe some of these barriers in [her talk about _The Turing Way_](https://youtu.be/wZeoZaIV0VE?t=312) at [csv,conf,v4](https://csvconf.com/2019) in May 2019.
You can use and reuse her slides under a CC-BY licence via Zenodo (doi: [10.5281/zenodo.2669547](https://doi.org/10.5281/zenodo.2669547)).
A seção que descreve o slide abaixo começa cerca de 5 minutos no vídeo.
