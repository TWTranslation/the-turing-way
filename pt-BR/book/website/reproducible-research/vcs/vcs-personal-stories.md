(rr-vcs-histórias-pessoais)=

# Histórias pessoais

(rr-vcs-pessoal-histórias-interior)=

## Uma entrevista com Adina em Datalad

Versão que controla dados pode ser desafiadora. Adina sabe isso porque ela faz parte de uma equipe que desenvolve DataLad e o usa para resolver os desafios de gerenciamento de dados.
Kirstie a entrevistou sobre o seu trabalho e por que pensa que a reformulação dos dados é essencial.

**Kirstie**: Hi Adina, thank you for contributing the chapter on version control for data!
Eu sei que você é um desenvolvedor para DataLad, e estou animado para saber mais sobre o projeto.
Você pode começar por me dizer quem é e em que é que está a trabalhar?

**Adina**: Hey Kirstie, thanks a lot for providing a space for the topic of version-controlling data!
Sou estudante de PhD em neurociência, e eu faço parte do laboratório que desenvolve DataLad.
Para além de trabalhar em questões neurocientíficas, trabalho também em desafios de gestão de dados que são típicos do meu campo, Como "Eu tenho 300GB de dados, como posso controlar ou compartilhar isso? , ou "Como posso vincular as minhas análises à versão dos dados que use?".
Como neurocientista, tenho o privilégio de trabalhar em um campo com muitos conjuntos de dados fantásticos e abertos, mas também é desafiador lidar, compartilhar e acompanhar dados que podem facilmente ter várias centenas de GB de tamanho.

**Kirstie**: Fab, so how does DataLad help with your work?

**Adina**: DataLad lets me version control and share data of any size, and I use this to attach data in precise versions to code and manuscripts I create.
Ao fazer análises de dados e os dados subjacentes são modificados, eu posso atualizar meus repositórios e recalcular meus scripts.
Isso me ajuda a avaliar se meus resultados são replicáveis.
E assim como o Git, é uma grande ajuda de memória para lembrar o que fiz com os meus dados.
Tem algumas funções legais para a captura de proveniência, e só posso checar meu histórico do Git para descobrir em que dados foi criada uma figura em particular, por exemplo.

**Kirstie**: Cool, so what makes DataLad better suited for what you do than other tools that version control data?

**Adina**: I personally like DataLad, because on top of the functionality that Git and `git-annex` provides, it makes linking and reusing modular parts of my research easy.
Quando eu trabalho em uma análise, eu publico os dados, o código + resultados e o manuscrito como repositórios Git separados e controlados por versão no GitHub.
Mas esses repositórios são vinculados para que alguém que lê meu manuscrito possa fazer backtrace de cada passo que foi realizado para criar este resultado. voltar aos dados originais.
Posso compartilhar minha análise no GitHub e posso ter dados, códigos e até ambientes de software completamente, permitir que outros reproduzam os meus resultados, e considero que isso é um recurso muito poderoso.

**Kirstie**: And as a part of the DataLad team, how do you contribute to the software?

**Adina**: My main motivation is to make the software accessible for users of all backgrounds.
Se os cientistas não receberem formação formal no controlo de versão ou na gestão de dados da investigação, pode ser difícil trabalhar reprodutível.
Acredito que se o software for fácil de usar e bem documentado, pode ajudar os cientistas a fazer uma ciência melhor.
Em termos de software, portanto, trabalho em recursos de ajuda e UX, e em termos de documentação, eu trabalho em tutoriais que são adequados para usuários independentes do nível de habilidade ou plano de fundo.

**Kirstie**: What is the journey of DataLad, and how did you get to be a part of it?

**Adina**: DataLad was originally created by Michael Hanke and Yarik Halchenko in 2014.
Eles queriam ter uma ferramenta que lhes permitisse instalar dados tão facilmente como pacotes de software e manter o controle de como alterações de dados.
`git-annex` already existed at this point, but they wanted to build upon it to make it easier to use.
Ao longo dos anos, a ferramenta se tornou uma ferramenta conjunta de controle de versões e gestão de dados para facilitar o compartilhamento de dados, rastreamento de revisão e reprodutíveis computações.
Eu me juntei ao laboratório há quase dois anos como estudante de Mestrado na Psicologia Clínica, animado por ciência aberta e reprodutível, mas um iniciante completo em termos tecnológicos: nunca tinha ouvido falar de controle de versão. nenhuma experiência em programação, e a ideia de que os dados são dinâmicos foi perspicaz mas completamente nova para mim.
Naturalmente, quando comecei a usar DataLad, fiquei completamente sobrecarregado.
Felizmente, houve muitas pessoas que me ajudaram a começar e que me deram as informações de base necessárias.
I know, however, that such a learning environment is not the default, so when I started my PhD, I actually created the resource that I would have needed to get started as a student: [The DataLad Handbook](http://handbook.datalad.org).

**Kirstie**: Thanks a lot for telling us about this tool.
Então, o manual é onde as pessoas podem saber mais, se quiserem?

**Adina**: Yes, I would point them to [The DataLad Handbook](http://handbook.datalad.org).
Destina-se a ser um tutorial acessível e de código ao longo do tutorial, isso é adequado para pesquisadores, independentemente do plano de fundo - acho que você não deveria precisar ser um Linux-crank ou cientista da computação para controlar dados de controle de versão.
