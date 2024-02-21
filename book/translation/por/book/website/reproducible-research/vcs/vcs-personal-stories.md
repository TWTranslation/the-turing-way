(rr-vcs-histórias-pessoais)=
# Histórias pessoais

(rr-vcs-pessoal-histórias-interior)=
## Uma entrevista com Adina em Datalad

Versão que controla dados pode ser desafiadora. Adina sabe isso porque ela faz parte de uma equipe que desenvolve DataLad e o usa para resolver os desafios de gerenciamento de dados. Kirstie a entrevistou sobre o seu trabalho e por que pensa que a reformulação dos dados é essencial.


**Kirstie**: Oi Adina, obrigado por contribuir com o capítulo sobre controle de versão para os dados! Eu sei que você é um desenvolvedor para DataLad, e estou animado para saber mais sobre o projeto. Você pode começar por me dizer quem é e em que é que está a trabalhar?

**Adina**: Olá Kirstie, muito obrigado por fornecer um espaço para o tópico de dados de controle de versão! Sou estudante de PhD em neurociência, e eu faço parte do laboratório que desenvolve DataLad. Para além de trabalhar em questões neurocientíficas, trabalho também em desafios de gestão de dados que são típicos do meu campo, Como "Eu tenho 300GB de dados, como posso controlar ou compartilhar isso? , ou "Como posso vincular as minhas análises à versão dos dados que use?". Como neurocientista, tenho o privilégio de trabalhar em um campo com muitos conjuntos de dados fantásticos e abertos, mas também é desafiador lidar, compartilhar e acompanhar dados que podem facilmente ter várias centenas de GB de tamanho.

**Kirstie**: Fab, então como DataLad ajuda no seu trabalho?

**Adina**: DataLad me permite controlar a versão e compartilhar dados de qualquer tamanho, e eu uso isso para anexar dados em versões precisas a códigos e manuscritos que crio. Ao fazer análises de dados e os dados subjacentes são modificados, eu posso atualizar meus repositórios e recalcular meus scripts. Isso me ajuda a avaliar se meus resultados são replicáveis. E assim como o Git, é uma grande ajuda de memória para lembrar o que fiz com os meus dados. Tem algumas funções legais para a captura de proveniência, e só posso checar meu histórico do Git para descobrir em que dados foi criada uma figura em particular, por exemplo.


**Kirstie**: Legal, então o que torna o DataLad mais adequado para o que você faz do que outras ferramentas que controlam dados da versão?

**Adina**: Eu pessoalmente gosto do DataLad, porque acima da funcionalidade que o Git e `git-anAnnex` fornecem, isso facilita a vinculação e reutilização de partes modulares da minha pesquisa. Quando eu trabalho em uma análise, eu publico os dados, o código + resultados e o manuscrito como repositórios Git separados e controlados por versão no GitHub. Mas esses repositórios são vinculados para que alguém que lê meu manuscrito possa fazer backtrace de cada passo que foi realizado para criar este resultado. voltar aos dados originais. Posso compartilhar minha análise no GitHub e posso ter dados, códigos e até ambientes de software completamente, permitir que outros reproduzam os meus resultados, e considero que isso é um recurso muito poderoso.

**Kirstie**: E como parte da equipe de DataLad, como você contribui para o software?

**Adina**: Minha principal motivação é tornar o software acessível para os usuários de todos os fundos. Se os cientistas não receberem formação formal no controlo de versão ou na gestão de dados da investigação, pode ser difícil trabalhar reprodutível. Acredito que se o software for fácil de usar e bem documentado, pode ajudar os cientistas a fazer uma ciência melhor. Em termos de software, portanto, trabalho em recursos de ajuda e UX, e em termos de documentação, eu trabalho em tutoriais que são adequados para usuários independentes do nível de habilidade ou plano de fundo.

**Kirstie**: Qual é a jornada de DataLad, e como você conseguiu fazer parte dela?

**Adina**: DataLad foi originalmente criado por Michael Hanke e Yarik Halchenko em 2014. Eles queriam ter uma ferramenta que lhes permitisse instalar dados tão facilmente como pacotes de software e manter o controle de como alterações de dados. `git-anAnnex` já existe neste ponto, mas eles queriam construir sobre ele para facilitar o uso. Ao longo dos anos, a ferramenta se tornou uma ferramenta conjunta de controle de versões e gestão de dados para facilitar o compartilhamento de dados, rastreamento de revisão e reprodutíveis computações. Eu me juntei ao laboratório há quase dois anos como estudante de Mestrado na Psicologia Clínica, animado por ciência aberta e reprodutível, mas um iniciante completo em termos tecnológicos: nunca tinha ouvido falar de controle de versão. nenhuma experiência em programação, e a ideia de que os dados são dinâmicos foi perspicaz mas completamente nova para mim. Naturalmente, quando comecei a usar DataLad, fiquei completamente sobrecarregado. Felizmente, houve muitas pessoas que me ajudaram a começar e que me deram as informações de base necessárias. Sei, no entanto, que tal ambiente de aprendizagem não é o padrão, então quando comecei o meu PhD, Na verdade eu criei o recurso que eu precisaria para começar como estudante: [O Manual do DataLad](http://handbook.datalad.org).

**Kirstie**: Muito obrigado por nos contar sobre esta ferramenta. Então, o manual é onde as pessoas podem saber mais, se quiserem?

**Adina**: Sim, eu os apontaria para [The DataLad Handbook](http://handbook.datalad.org). Destina-se a ser um tutorial acessível e de código ao longo do tutorial, isso é adequado para pesquisadores, independentemente do plano de fundo - acho que você não deveria precisar ser um Linux-crank ou cientista da computação para controlar dados de controle de versão.
