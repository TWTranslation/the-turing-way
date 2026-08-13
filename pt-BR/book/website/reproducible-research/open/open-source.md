(rr-open-source)=

# Software de código aberto

(rr-open-source-whatis)=

## O que é Software de Código Aberto?

When a software is open-source [{term}`def<Open Source Software>`], anybody can view, use, modify, and distribute its source code for any purpose.
These permissions are enforced through an {ref}`open-source licence<rr-licensing>`.
O código aberto é poderoso porque reduz as barreiras à adoção, permitindo que as ideias se espalhem rapidamente.
Em sua forma mais básica, abrir seu software significa colocar seu código on-line, onde ele pode ser visualizado e reutilizado por outros.

Muitos dos softwares de pesquisa mais utilizados são de fonte aberta.
Perhaps the paradigmatic example is the scikit-learn Python package for machine learning {cite:ps}`pedregosa2012ScikitLearn`, which, in the space of just over five years, has attracted over 500 unique contributors, 20,000 individual code contributions, and 2,500 article citations.
A produção de um pacote comparável utilizando uma abordagem tradicional de origem fechada provavelmente não seria viável.
Precisaria, no mínimo, de um orçamento de dezenas de milhões de dólares.
While scikit-learn is an outlier, hundreds of other open-source packages that support much more domain-specific needs depend similarly on unsolicited community contributions; for example, the NIPY (neuroimaging in Python) group of projects in neuroimaging {cite:ps}`gorgolewski2016NIPY`).
Notadamente, tais contribuições não só resultam em novas funcionalidades das quais a comunidade mais ampla pode beneficiar, mas também proporcionam regularmente aos seus respectivos autores um maior reconhecimento comunitário, conduzindo a novos projectos e oportunidades de emprego.

Pesquisadores que usam software de código aberto geralmente fazem alterações neles, como adicionar recursos que eles precisam para sua pesquisa ou corrigir erros.
Poderão então contribuir com estas melhorias para o projecto principal, de modo a que a comunidade possa tirar partido delas.

(rr-open-source-benefitsyou)=

## Como funcionar e contribuir para projetos de software de código aberto você oferece benefícios

- _Improve existing skills_: Whether it is coding, user interface design, graphic design, writing, or organizing, if you are looking for practice, there is a task for you on an open-source software project.
  Além disso, o código aberto requer um código mais limpo e mais sustentável para permitir a colaboração entre potencialmente milhares de pessoas que podem nunca se encontrar.
  Isso ajuda a construir e manter bons hábitos de codificação.
  Não deve ser subestimado são as habilidades que você pode desenvolver em projetos de software de código aberto.
  O código aberto oferece oportunidades para praticar liderança e habilidades de gestão, como resolver conflitos, organizar equipes de pessoas e priorizar o trabalho.
- _Advance your career_: By definition, all of your open source work is public, and this presents opportunities:
  - _Demonstrate technical ability_: Technical interviews traditionally involve working on a simulated problem that can be tackled in a set amount of time with little additional context.
    Tais simulações, por definição, não são casos de utilização no mundo real, nem mostram o que seria o trabalho com um requerente.
    O código aberto fornece visibilidade tanto sobre como um candidato resolve problemas e como ele trabalha com outros.
    Se um empregador conseguir ver a qualidade do seu trabalho e o ver trabalhar com os outros durante um longo período, em vez de ter uma oportunidade num único curto, o empregado é muito mais atraente. casos de alto estresse que podem não servir os seus pontos fortes.
  - _Reputation_: Becoming an active member of the open source community can gain you a favourable reputation which may bolster future job prospects.
- _Meet people with similar interests_: Open source software projects with warm, welcoming communities keep people coming back for years, and many people form lifelong friendships through their participation in open source.
- _Find mentors and teach others_: Working with others on a shared project means you will have to explain how you do things, as well as ask other people for help. Os actos de aprendizagem e de ensino podem ser uma actividade adequada para todas as partes envolvidas.

### Fazendo seu Trabalho em Código-fonte aberto

- _Re-usability_: Making your work openly available for reuse makes it easier for others to incorporate into their research.
  If you make your software citeable, via a DOI [{term}`def<Digital Object Identifier>`] for example, this can increase your citations.
- _Contribution_: When you write closed source software, the only developers that can potentially detect, diagnose, triage, and resolve software bugs are those that have a copy of the code.
  Se o seu projeto está aberto, o número de potenciais desenvolvedores contribuintes e, portanto, o potencial conjunto de conhecimentos são ordens de magnitude maior.
- _Feedback_: Making your work open enables you to get feedback and improve your project in a way you may never have thought of alone.
- _Accountability_: There is an argument that any software developed using government money should be open source by default; if the public has paid for its development they have a right to make use of it.
  Se o seu trabalho for financiado pelo governo, abri-lo é um passo em frente no sentido da abertura e da responsabilização dos governos.

### Contribuindo para projetos de software em código aberto de outros

- _It is empowering to be able to make changes, even small ones_: You do not have to become a lifelong contributor to enjoy participating in open source.
  Você já viu um erro de digitação em um site e deseja que alguém o corrija?
  Em um projeto de software de código aberto, você pode fazer exatamente isso.
  Open source ajuda as pessoas a sentirem-se agências sobre suas vidas e como experimentam o mundo, o que, em si mesmo, é gratificante.
- _It is fun_:
  Open source provides an endless, ever-changing set of Rubix cubes for you to solve on weekends. Assim como os quebra-cabeças, cruzada e quebra-cabeça, o open source fornece escapadas intelectuais de tamanho elevado.

(pesquisa rr-open-source-benefits)=

## Como beneficiar a pesquisa de software em código aberto

There are several ways in which open-source software benefits research:

(rr-open-source-benefitspesquisch-reusable)=

### Reusable

Os projetos de software de código aberto permitem que os pesquisadores tirem proveito do trabalho uns dos outros.
Isso permite que os investigadores apliquem os seus esforços no trabalho de grande valor.
Diz-se por vezes que “todos os problemas fáceis já foram resolvidos”.
Blogging, gerenciamento de conteúdo e sistemas operacionais são todos problemas com soluções de código aberto estabelecidas (e convencionais), para nomear algumas.
Enquanto os desenvolvedores poderiam gastar seu tempo reinventando rodas que a comunidade de código aberto já fez, é altamente preferível usar a melhor roda do mundo, especialmente quando essa roda vem a qualquer preço.
Isto reduz a duplicação de esforços e permite que os pesquisadores se concentrem em desafios ainda por resolver.

The {ref}`rr-code-reuse` provides a more in-depth list of different aspects to consider for making your code more reusable, whether this is a small script or a library.

(rr-open-source-benefitsresearch-checkable)=

### Verificável

Open-source projects allow the broader research community to read and test each others' code.
This way, bugs can be found more quickly, and other researchers can validate results.

(rr-open-source-benefitsresearch-collaborative)=

### Colaborativo

Working openly also allows any number of researchers to collaborate on projects that could not possibly be developed by single researchers/research groups.
Examples include [Linux](https://www.linux.org/) operating systems, Python packages such as [scipy](https://www.scipy.org/) and [numpy](http://www.numpy.org/), and the machine learning library [TensorFlow](https://www.tensorflow.org/).

(rr-open-source-run)=

## Como executar seu projeto de software de código aberto

You can open source an idea, a work in progress, or after years of being closed source.
No nível mais básico, tudo o que você precisa fazer é colocar seu código on-line em algum lugar que provavelmente durará muito tempo.
You can make your code citeable by assigning it a DOI [{term}`def<Digital Object Identifier>`] (as discussed in the section on {ref}`rr-rdm-sharing`).
This helps ensure that you get proper credit if people use or build upon your work.

A popular place to make your code available is GitHub [{term}`def<Github>`] (see the chapter on {ref}`rr-vcs`).
You must include a license file stating that anyone has permission to use, copy, and modify your work. Without this, no one can legally use your work, and so it is not open source.
The {ref}`rr-licensing` chapter will help you to pick the best license for your project.
There are also a few other files you should include with your code, as described below.

(rr-open-source-run-readme)=

### Seja bem-vindo Usuários, Adicionando Informações a Seu LEIAME

You should include a README [{term}`def<README>`] file where you include useful information about what the project is, how to use it, and how to contribute to it. Here is a list of the main things a README should include:

- _The project name and what it is_: This will significantly help someone that comes across it to get an idea of the project. Inclua alguns pontos-chave que descrevem as principais características do projeto e quais recursos você está implementando.
  Isso ajuda a comparar rapidamente outros projetos com o seu e dá uma ideia do porquê do projeto existe em primeiro lugar.
- _Instructions on how to install the project_: The installer might be a collaborator, someone that comes across and is interested in the project, or even you - if you get a new machine and need to re-install your project.
  No entanto, é um desperdício total dos seus recursos descobrir como começar o projeto do zero.
  As instruções também devem incluir quaisquer pré-requisitos necessários para a execução do projecto.
  A melhor coisa que você pode fazer é escrever as instruções de instalação quando você primeiro as faz você mesmo, e você economizará rapidamente horas de trabalho no futuro.
- _Instructions for how to run the code and any associated tests_: If you've been working on your project it may seem obvious how to run it, but this will likely not be the case for someone coming across it for the first time.
- _Links to related material_
- _List of authors/contributors to the project, possibly with contact information_
- _Acknowledgements_

Suppose you intend for other people to collaborate on your project (as opposed to just making your code available and considering it complete).
In that case, you should include Contributing Guidelines and most likely, a Code of Conduct.

(rr-open-source-run-guidelines)=

### Diretrizes de Contribuição

Contributing Guidelines [{term}`def<Contributing Guidelines>`] tell your audience how to participate in your project. For example, you might include information on:

- Como arquivar um relatório de bug
- Como sugerir uma nova funcionalidade
- Seu planejamento ou visão para o projeto
- Como contribuidores (ou não devem) entrar em contato com você

Using a warm, friendly tone and offering specific suggestions for contributions (such as writing documentation, or making a website) can go a long way in making newcomers feel welcomed and excited to participate.
For example, [Active Admin](https://activeadmin.info/index.html) starts its [contributing guide](https://github.com/activeadmin/activeadmin/blob/master/CONTRIBUTING.md) with: "First off, thank you for considering contributing to Active Admin. It’s people like you that make Active Admin such a great tool."

In the earliest stages of your project, your Contributing Guidelines file can be simple.
You should always explain how to report bugs or file issues, and any technical requirements (like tests) to make a contribution.
Over time, you might add other frequently asked questions here or in your readme file.
Writing down this information means fewer people will ask you the same questions over and over again.
It is also a good idea to link to your contributing guidelines file from your README, so more people see it.

(rr-open-source-run-conduct)=

### Code of Conduct

A Code of Conduct [{term}`def<Code of Conduct>`] helps set ground rules for behaviour for your project's participants.
This is especially valuable if you are launching an open-source project for a community or company.
A Code of Conduct empowers you to facilitate healthy, constructive community behaviour, which will reduce your stress as a maintainer.
It communicates how you expect participants to behave and describes who these expectations apply to, when they apply, and what to do if a violation occurs.

Much like open source licences, there are also emerging standards for codes of conduct, so you do not have to write your own. The [Contributor Covenant](https://contributor-covenant.org/) is a drop-in Code of Conduct that is used by [over 40,000 open source projects](https://www.contributor-covenant.org/adopters). No matter which text you use, you should be prepared to enforce your Code of Conduct when necessary.

Keep the file in your project's root directory, so it is easy to find, and link to it from your README.

(rr-open-source-contribute)=

## Como Contribuir com os Projetos de Software de Código Aberto de outros

(rr-open-source-contribute-anatomy)=

### Anatomia de um projeto de software de código aberto

Every open source community is different. That said, many open source software projects follow a similar organizational structure.
Understanding the different community roles and the overall process will help you get quickly oriented to any new project.

A typical open source software project has the following types of people:

- _Author_: The person/s or organization that created the project.
- _Owner_: The person/s who has administrative ownership over the organization or repository (not always the same as the original author).
- _Maintainers_: Contributors who are responsible for driving the vision and managing the organizational aspects of the project. They may also be authors and/or owners of the project.
- _Contributors_: Everyone who has contributed something back to the project.
- _Community Members_: People who use the project. Podem ser activos em conversas ou expressar a sua opinião sobre o rumo do projecto.

Bigger projects may also have subcommittees or working groups focused on different tasks, such as tooling, triage, community moderation, and event organizing. Look on a project’s website for a “team” page, or in the repository for governance documentation, to find this information.

A great many open source projects are hosted on GitHub (see the chapter on version control for more detail), which has facilities such as:

- _Issue tracker_: Where people discuss issues related to the project.
- _Pull requests_: Where people discuss and review changes that are in progress.
- _Discussion forums or mailing lists_: Some projects may use these channels for conversational topics (for example, "How do I..." or "What do you think about..." instead of bug reports or feature requests). Outros usam o rastreador de issues para todas as conversas.
- _Synchronous chat channel_: Some projects use chat channels (such as Slack or IRC) for casual conversation, collaboration, and quick exchanges.

(rr-open-source-contribute-changes)=

### Contribuir com Suas Alterações

Say you have added a feature or fixed a bug and want to contribute this work to the main project.

1. _Read the documentation_: The main project may have contributing guidelines or information in a README instructing prospective contributors on how to supply their changes.
2. _Make sure your conventions match the style and structure of the main project_: For example, if all the variables in a project are named in some particular way yours should be too.
   Consistent conventions make it much easier for someone who has not seen your piece of the project before to understand it rather than having to figure out your particular set of conventions _and_ what the code is doing.
   As convenções do projecto podem ser delineadas na sua documentação, ou podem apenas ser evidenciadas pela inspecção do próprio código.
3. _Break your changes up into manageable, well-defined chunks_: For example, if you have added two separate features, do not submit them together.
   Manter as coisas "limpas" desta forma torna o seu trabalho mais simples de entender e revisar.
4. _Test your changes_: If the project comes with tests, run them.
   Certifique-se de que você está testando uma versão atualizada do projeto, já que ele pode ter evoluído consideravelmente ao longo do tempo. Escreva testes específicos para as suas alterações e envie-os também.
5. _Do not just submit code, update relevant documentation too_: If your changes are incorporated, it will have to be updated. Se você não o fizer, outra pessoa terá de o fazer.
6. _Ask questions_: If there are things you are unsure about, there is no harm in asking. Muitos projectos de maior envergadura dispõem de fóruns dedicados ou de outros locais para perguntas e debates.
7. _Be clear_: When you submit your changes, clearly describe the changes you have made, why you have made them, and how they have been implemented.
   Isso facilita que alguém olhe para o seu trabalho e decida se o incorpore no projeto principal para o fazer.
   In the likely case the main project is hosted on GitHub, you should put this in the pull request (see the chapter {ref}`rr-vcs` for more details).

(rr-open-source-contribute-looking)=

### Procurando por Projetos para Contribuir e Como Contribuir com eles

You do not need to overthink what exactly your first contribution will be, or how it will look.
Instead, start by thinking about the projects you already use or want to use.
The projects you will actively contribute to are the ones you find yourself coming back to.
Within those projects, whenever you catch yourself thinking that something could be better or different, act on your instinct. You might scan a README and find a broken link or a typo.
Alternatively, you could be a new user and notice something is broken, or find an issue that you think should be in the documentation.
Instead of ignoring it and moving on, or asking someone else to fix it, see whether you can help out by pitching in. That is what open source is all about.

You can also use one of the following resources to help you discover and contribute to new projects:

- [Open Source Friday](https://opensourcefriday.com/)
- [First Timers Only](https://www.firsttimersonly.com/)
- [CodeTriage](https://www.codetriage.com/)

If you are not sure how to start, there are a few other ways you can go about it, such as finding an open issue to tackle or asking if you can help write a new feature.

A common misconception about contributing to open source is that you need to contribute code. In fact, it is often the other parts of a project that are most neglected or overlooked. You will do the project a huge favour by offering to pitch in with these types of contributions. You could:

- Revisar código para submissões de outras pessoas.
- Escreva e melhore a documentação do projeto.
- Curar uma pasta de exemplos que mostram como o projeto é usado.
- Responda a perguntas sobre o projeto, por exemplo, Stack Overflow,
- Mantenha as coisas organizadas, por exemplo, no GitHub por:
  - Vinculando a issues duplicadas.
  - Sugerir novos rótulos de issues.
  - Passando por questões abertas e sugerindo o encerramento de questões antigas.
  - Faça perguntas esclarecedoras sobre questões abertas recentemente para fazer avançar a discussão.

(rr-open-source-closed)=

## Software fechado

What if you are working with people that do not use the open source model for their software?
This may initially seem an affront to all the principles discussed so far. However, there are usually very good reasons for why things are the way they are (for example legal, commercial, or security reasons).
Often, it will still be possible to use and contribute, but the details of how might be different.
The kinds of practices used in 'closed' software are generally the same, and the concepts and tools you can learn about in the Turing Way still apply.

Sometimes, however, there might not be good reasons for the closed source approach.
Different areas of research have different cultures which run against the grain of open principles and feel very frustrating.
Tackling this barrier can be very tricky as cultures can take years or decades to change.

Working with closed software can offer both opportunities and threats to your research.
In all cases, understanding and respecting other's perspectives offers the greatest chances of success.
