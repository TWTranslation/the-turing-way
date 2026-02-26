(rr-vcs-git-general)=

# Informações gerais sobre o git

Git is a successful version control software (see [Wikipedia](https://en.wikipedia.org/wiki/Git) for detailed information).
Ele foi criado em 2005 e foi rapidamente adotado por desenvolvedores de software, especialmente por ser muito rápido e escalável.
Suas funções permitem o desenvolvimento e a manutenção paralelos de grandes projetos, como o desenvolvimento Linux.

(rr-vcs-gitpros)=

## Por que todo mundo está usando o git

Embora desenvolvido para software, o Git tem sido usado para muitos tipos diferentes de projetos e plataformas, como GitHub, GitLab, Gogs, GitLea e outros.
Essas plataformas trouxeram ferramentas de gerenciamento de projetos para o fluxo de trabalho do Git, facilitando a construção de comunidades em torno de projetos como o livro Turing Way.
Às vezes, os usuários dessas plataformas nem sabem sobre o Git.

(rr-vcs-git-limitations)=

## Limitações do Git

O Git não é mágica e é bom conhecer suas limitações.
O Git funciona melhor, principalmente, com arquivos de texto pequenos.
O Git começa a se tornar impraticável quando há muitos arquivos presentes ou quando o repositório se torna muito grande (1 TB é o limite).
Como um repositório Git armazena todas as versões de cada arquivo adicionado a ele, arquivos grandes que são submetidos a modificações regulares podem inflar significativamente o tamanho de um projecto.·.
Em projetos de pesquisa, os conjuntos de dados geralmente contêm milhares de arquivos e/ou contêm arquivos (muito) grandes.
Embora seja possível usar o Git para aplicações que não sejam software, é preciso planejar o uso de fluxos de trabalho específicos e/ou ferramentas adicionais para poder usar as ferramentas do Git.
Isso é particularmente problemático porque tudo funcionará bem no começo e é muito difícil resolver problemas quando o projeto está em andamento.
Portanto, é importante planejar com antecedência e tentar evitar grandes repositórios.
Por exemplo, é possível dividir os arquivos em diferentes repositórios e salvar arquivos binários fora do Git.
There are tools allowing that while keeping git at the core of the version control (git-annex and submodules are possible technologies, see section {ref}`data version control<rr-vcs-data>` and {ref}`research projects<rr-vcs-git4research>`).

(rr-vcs-git-usecases)=

## Como usar o Git

Se você já fez modificações em arquivos no GitHub, provavelmente usou o Git sem nem perceber.
When you push the `commit changes` button on a Git platform, Git was acting in the background to `add` the changes to the index,
`commit` them with a message, and push it to the repository.

Vários softwares permitem usar o Git sem usar a linha de comando, localmente.
Aqui está uma lista não exaustiva de softwares que você também pode usar. Consulte a documentação deles:

- [RStudio](https://posit.co/products/open-source/rstudio/)
- Sourcetree
- Gitkracken
- [Visual Studio Code](https://en.wikipedia.org/wiki/Visual_Studio_Code)

In many cases, one still needs to use the command lines for complex matters, and we present the main Git functions usage in this book (see {ref}`Getting Started with Git<rr-vcs-git>`).