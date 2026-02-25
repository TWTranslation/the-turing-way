(rr-rdm-armazenamento)=

# Armazenamento de Dados e Organização

A perda de dados pode ser catastrófica para o seu projeto de pesquisa e pode acontecer frequentemente.
Você pode evitar a perda de dados escolhendo soluções de armazenamento adequadas e fazendo backup de seus dados com frequência.

```{figure} ../../../figures/version-control.*
---
height: 500px
name: version-control
alt: Two images are shown to represent the benefits of using version control. On the left, there is an image of two people rummaging through a blue box on top of a table. The box is full of jumbled documents and the people look confused and frustrated. The documents are named "final 2" and "let this be the final". On the right, the same two people look happy and are searching through files organised clearly in a blue filing cabinet. There are "V1, V2, V3 and V4" separations organising the files.
---
_The Turing Way_ project illustration by Scriberia. Original version on Zenodo. [http://doi.org/10.5281/zenodo.3695300](http://doi.org/10.5281/zenodo.3695300)
```

(rr-rdm-armazenamento-onda)=

## Onde armazenar dados

- Most institutions will provide a _network drive_ that you can use to store data.
- _Portable storage media_ such as memory sticks (USB sticks) are more risky and vulnerable to loss and damage.
- _Cloud storage_ provides a convenient way to store, backup and retrieve data.
  Você deve verificar os termos de uso antes de usá-los para seus dados de pesquisa.

Especialmente se você estiver lidando com dados pessoais ou confidenciais, você precisa garantir que a opção da nuvem esteja de acordo com quaisquer regras de proteção de dados a que os dados estão vinculados.
Para adicionar uma camada extra de segurança, você deve criptografar dispositivos e arquivos onde for necessário.

A sua instituição pode fornecer soluções de armazenamento local e políticas ou orientações que restringem o que você pode usar.
Assim, recomendamos que você se familiarize com suas políticas e recomendações locais.

When you are ready to release the data to the wider community, you can also search for the appropriate databases and repositories in [FAIRsharing](https://fairsharing.org/databases), according to your data type, and type of access to the data.
Learn more about this in the {ref}`rr-rdm-sharing` subchapter.

(rr-rdm-organização-armazenamento)=

## Organização de Dados

To organise your data, you should use a clear folder structure to ensure that you can find your files.
We encourage you to use an existing template.
An open source project created a quite complete one at https://github.com/tonic-team/Tonic-Research-Project-Template

```{figure} ../../../figures/file-management-manual.jpg
---
name: Folder structure for research data

alt: A protagonist has a file with "readme" written on it and brings it to another person standing in front of a filing cabinet. The cabinet has three drawers labelled "data", "code", and "results".
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

- Certifique-se de ter (sub)pastas suficientes para que os arquivos possam ser armazenados na pasta certa e não estejam espalhados pelas pastas onde não pertencem, ou armazenado em grandes quantidades em uma única pasta.
- Usar estrutura para pastas limpas.
  Você pode estruturar pastas com base na pessoa que gerou dados / pasta, cronologicamente (mês, ano, sessões), por projeto (como feito no exemplo abaixo) ou com base no método/equipamento ou tipo de dados.
- Avoid overlapping or vague folder names, and do not use personal data in folder/file names.

(rr-rdm-storage-organisation-examples)=

### Exemplos da Organização de Dados

- Download [this](http://nikola.me/folder_structure.html) folder structure by Nikola Vukovic
- You can pull/download folder structures using GitHub:
  [This template](https://github.com/bvreede/good-enough-project) by Barbara Vreede, based on [cookiecutter](https://github.com/cookiecutter/cookiecutter), follows recommended practices for scientific computing by [Wilson et al. (2017)](https://doi.org/10.1371/journal.pcbi.1005510).
- See [this template](https://osf.io/4sdn3/) by Chris Hartgerink for file organisation on the [Open Science Framework](https://osf.io/).
- [How to Organize Your Digital Files](https://www.nytimes.com/wirecutter/guides/how-to-organize-your-digital-files/) by Melanie Pinola.
- [Project structure videos by Danielle Navarro](https://www.youtube.com/watch?v=u6MiDFvAs9w&list=PLRPB0ZzEYegPiBteC2dRn95TX9YefYFyy&index=1) (with [slides](https://slides.djnavarro.net/project-structure/#1)).

### More Information on Data Organisation

- [How to organise your data and code](https://renebekkers.wordpress.com/2021/04/02/how-to-organize-your-data-and-code) by Rene Bekkers.

(rr-rdm-convenções)=

## Convenções de Nomes de Arquivos

Estrutura os nomes dos seus arquivos e configure um modelo para isso.
For example, it may be advantageous to start naming your files with the date each file was generated (such as `YYYYMMDD`).
Isso irá classificar seus arquivos cronologicamente e criar um identificador exclusivo para cada arquivo.
A utilidade desse processo é evidente quando você gera vários arquivos no mesmo dia que precisam ser versionados para evitar a reescrita.
File names should be friendly to both machines and humans.

Algumas outras dicas para o nome do arquivo incluem:

- Use the date or date range of the experiment: `YYYYMMDD`
- Utilizar o tipo de arquivo
- Utilize o nome/iniciais do pesquisador
- Use o número da versão do arquivo (v001, v002) ou a linguagem utilizada no documento (ENG)
- Não torne os nomes dos arquivos muito longos (isto pode complicar as transferências de arquivos)
- Avoid special characters `()?\!@\*%{[<>` and spaces
- Hyphens `-` and underscores `_` can be used to separate related and unrelated chunks, respectively
- Keep in mind that some operating systems are case-sensitive, some are not
- Avoid personal data in file names

Você pode explicar a convenção de nome do arquivo em um arquivo README.txt, para que ele também se torne evidente para outros o que significam os nomes do arquivo.

For further guidance on file naming:

- [Jenny Bryan’s ‘naming things’ presentation](https://speakerdeck.com/jennybc/how-to-name-files) (or watch the [5 minute summary](https://youtu.be/ES1LTlnpLMk))
- [MIT's recommendations on File naming and folder hierarchy](https://libraries.mit.edu/data-management/store/organize/)
- [8 step guide on how to set up your file naming convention](https://resolver.caltech.edu/CaltechAUTHORS:20200601-161923247)
- [Project structure slides by Danielle Navarro](https://djnavarro.net/slides-project-structure/#9)

(rr-rdm-storage-renaming)=

### File renaming tools

If you want to change your file names you have the option to use bulk renaming tools.
Be careful with these tools, because changes made with bulk renaming tools may be too rigorous if not carefully checked!

Some bulk file renaming tools include:

- [Bulk Rename Utility](http://www.bulkrenameutility.co.uk/Main_Intro.php), [WildRename](http://www.cylog.org/utilities/wildrename.jsp), and [Ant Renamer](http://www.antp.be/software/renamer) (for Windows)
- [Renamer](https://renamer.com/) (for MacOS)
- [PSRenamer](http://www.cylog.org/utilities/wildrename.jsp) (for MacOS, Windows, Unix, Linux)

(rr-rdm-storage-backups)=

## Backups

Para evitar perder seus dados, você deve seguir as boas práticas de backup.

- Você deve ter 2 ou 3 cópias de seus arquivos, armazenados em
- pelo menos 2 arquivos de armazenamento diferentes,
- em locais diferentes.

Backups are ideally done automatically and should take into consideration your institute's guidelines.
Quanto mais importantes forem os dados e as freqüências das alterações nos conjuntos de dados, mais frequente você deve fazer o backup.
Se seus arquivos ocupam grande quantidade de espaço e fazem backup de todos eles provam ser desafiadores ou caros, você pode querer criar um conjunto de critérios quando fizer o backup dos dados.
This can be part of your {ref}`Data Management Plan<rr-rdm-dmp>`.

Watch this video on [Safe data storage and backup](https://www.youtube.com/watch?v=bgbbToXHgW0) from the [TU Delft Open Science MOOC](https://online-learning.tudelft.nl/courses/open-science-sharing-your-research-with-the-world/).



