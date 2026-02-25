```{figure} ../../../figures/data-provenance.jpg
---
name: provenance
alt: Different people work at different stations to enable provenance.
---
Provenance on which data in which version was underlying which computation is crucial for reproducibility. _The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-vcs-data)=

# Controle de Versão para Dados

Discutimos aquela versão que controla os componentes dos projetos em desenvolvimento poderia ajudar a tornar o trabalho mais organizado, eficiente, colaborativo e reprodutível.
Many scientific projects, however, do not only contain code, manuscripts, or other small-sized files, but contain larger files such as large datasets, analysis results, or binary files (presentations, manuscripts, pdfs) which can change or be updated in a project just like other small sized text components.
In this chapter, we discuss why and how to do data versioning, especially why Git is not well suited for data versioning and what we can be done about it.

(rr-vcs-data-importance)=

## Importância do controle de dados da versão

Não devemos ter a noção de que os dados usados para análise são estáticos; assim que é adquirida, não muda e serve como contributo para uma determinada análise e como a espinha dorsal dos nossos resultados científicos.
A realidade é que os dados raramente são invariáveis.
Por exemplo, ao longo de um projecto científico, os datasets podem ser alargados com novos dados, adaptados a novos esquemas de nomenclatura, reorganizado em diferentes hierarquias, atualizado com novos pontos de dados ou modificado para corrigir quaisquer erros.
Sometimes you might also want to experiment off different versions of the same dataset.

Tais processos dinâmicos são excelentes e benéficos para a ciência, uma vez que garantem que os dados são utilizáveis e actualizados. mas eles podem ser confusos se não forem devidamente documentados.
Se um conjunto de dados que é a base para calcular um resultado científico alterar sem controle de versão, A reprodutibilidade pode ser ameaçada: resultados podem se tornar inválidos, ou scripts que são baseados em nomes de arquivos que mudam entre versões podem ser quebrados.
Especially if original data gets replaced with new data without version control in place, the original results of the analysis may not be reproduced.
Therefore, version controlling data and other large files in a similar way to version controlling code or manuscripts can help ensure the reproducibility of a project and capture the provenance of results;
that is "the precise subset and version of data a set of result originates from".
Juntamente com todos os outros componentes de um projeto de pesquisa, os dados identificados em versões precisas fazem parte do resultado da pesquisa.
O aspecto da reprodutibilidade de um projecto científico pode melhorar muito se conseguirmos acompanhar o subconjunto ou a versão de dados em que uma determinada análise ou resultado se baseia.

(rr-vcs-data-desafios)=

## Desafios na versão controlando os dados

As we described earlier, there are  {ref}`limitation to git <rr-vcs-git-limitations>`.
As long as the files to version control are small in size, not too numerous and can be stored in a few `csv` or character separated files, tools such as [Git](https://git-scm.com/) are appropriate.

However, when you work, share, and collaborate on large, potentially [binary](https://en.wikipedia.org/wiki/Binary_file) files (such as many scientific data formats), you need to think about ways to version control this data with specialised tools.
Se outros tentarem clonar seu repositório ou buscar/puxar para atualizá-lo localmente, levará mais tempo para fazer isso se ele contiver arquivos maiores que foram versionados e modificados.

Accordingly, repository hosting services usually impose maximum file sizes on users.
Por exemplo, se um único arquivo no seu repositório exceder 100 MB, você não poderá fazer push desse arquivo para um repositório do GitHub.
Furthermore, if a large file was accidentally added to a repository, removing the file from the repository can be tedious, as this file needs to be [purged](https://help.github.com/en/github/authenticating-to-github/removing-sensitive-data-from-a-repository).

Essas falhas podem tornar a versão de controle de arquivos tediosos e lenta, impedir colaborações em repositórios com grandes dados, e impedir que dados ou projetos com dados sejam compartilhados em plataformas como o GitHub.

(rr-vcs-data-ferramentas)=

## Ferramentas para Controle de Versão de Dados

Several tools are available to handle version controlling and sharing large files.
A maioria deles integra muito bem com o Git e amplia as capacidades de um repositório para controlar arquivos grandes.
Com estas ferramentas, grandes dados podem ser adicionados a um repositório, controlado por versão, revertido para estados anteriores, ou atualizada e modificada de forma colaborativa, e até compartilhada com o GitHub como arquivos de pequeno tamanho.
Algumas dessas ferramentas incluem:

(rr-vcs-data--tools-dvc)=

### DVC

DVC (open-source Version Control System for Machine Learning Projects) https://dvc.org/.
DVC guarantees reproducibility by consistently maintaining a combination of input data, configuration, and the code that was initially used to run an experiment.

(rr-vcs-data--tools-lfs)=

### Git LFS

[Git LFS](https://git-lfs.github.com/) comes with a command-line extension to Git and allows you to treat files of any size alike, using standard Git commands.
A major shortcoming, however, is that Git LFS is a _centralised_ solution.
Arquivos grandes não são distribuídos, mas armazenados num servidor remoto.
Isto geralmente requer configurar seu servidor ou pagar um serviço - o que pode torná-lo muito inacessível.

(rr-vcs-data-tools-gitannex)=

### `git-annex`

The [`git-annex`](https://git-annex.branchable.com/) tool is a distributed system that can manage and share large files independent from a central service or server.
`git-annex` manages all file _content_ in a separate directory in the repository (`.git/annex/objects`, the so-called _annex_) and only places file _names_ with some metadata into version control by Git.
Quando um repositório Git com um anexo é enviado para um serviço de hospedagem da web, como o GitHub, o conteúdo armazenado no anexo não será carregado.
Instead, they can be pushed to a storage system (such as a web server, but also third party services such as Dropbox, Google Drive, Amazon S3, box.com, and [many more](https://git-annex.branchable.com/special_remotes/)).
If a repository with an annex is cloned, the clone will not contain the _contents_ of all annexed files by default, but display only file names.
Isto torna o repositório pequeno, mesmo que rastreie centenas de gigabytes de dados e clonagem rápida, enquanto o conteúdo do arquivo é armazenado em uma ou mais soluções de armazenamento externo gratuito ou comercial.
On-demand, any file content can then be obtained with a `git-annex get` command from the external file storage.

(rr-vcs-data-tools-submodules)=

### git submodules

Submodules allows to split the data in different repositories, while keeping everything under a single "parent" repository.
It is very powerful, but difficult to use.
Especially, using  {ref}`Git Branches<rr-vcs-workflow-branches>` in  submodules make it complex to handle.
However, this is the only tool listed here allowing to work with many files in a Git repository.

(rr-vcs-data-tools-datalad)=

### DataLad

[DataLad](https://www.datalad.org/), builds upon git and git-annex.
Like `git-annex`, it allows you to version control data and share it via third-party providers but simplifies and extends this functionality.
Além de compartilhar e controlar arquivos grandes; permite a gravação, compartilhamento e uso de ambientes de software, gravação e re-execução de comandos ou análises de dados e operação perfeitamente através de uma hierarquia de repositórios.

(rr-vcs-data-inclusivity)=

## Data versioning and inclusivity

Data versioning in Git require the use of more complex tools, and this means that accessibility to the data will be more difficult.
For instance, if you use datalad with Github, newcomers trying to see one of the large file will have difficulties:
they will be able to see that the file exists, but will not be able to download or see it without cloning the repository and running git-annex or datalad commands.

So while using these tools will make Git commands to run faster, one may want to disable them for critical binary files, like presentations or pdfs.
A solution can be to pack them in submodules, so that the repositories are keeping a small size.

As an example, we can take the repository creating the turing book.
The repository is slow to work with, because a lot of binary files were used over the time.
However, it makes the onboarding of new users easier.
