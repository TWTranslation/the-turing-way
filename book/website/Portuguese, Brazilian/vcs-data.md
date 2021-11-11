(rr-vcs-data)=
# Controle de Versão para Dados

Discutimos aquela versão que controla os componentes dos projetos em desenvolvimento poderia ajudar a tornar o trabalho mais organizado, eficiente, colaborativo e reprodutível. No entanto, muitos projectos científicos não contêm apenas códigos, manuscritos ou outros arquivos de pequena escala. Muitos projetos contêm arquivos maiores, como dados de entrada ou resultados de análise. que pode alterar ou ser atualizado em um projeto como outros componentes, como código e manuscritos. O aspecto da reprodutibilidade de um projecto científico pode melhorar muito se conseguirmos acompanhar o subconjunto ou a versão de dados em que uma determinada análise ou resultado se baseia.

(rr-vcs-data-importance)=
## Importância do controle de dados da versão

Não devemos ter a noção de que os dados usados para análise são estáticos; assim que é adquirida, não muda e serve como contributo para uma determinada análise e como a espinha dorsal dos nossos resultados científicos. A realidade é que os dados raramente são invariáveis. Por exemplo, ao longo de um projecto científico, os datasets podem ser alargados com novos dados, adaptados a novos esquemas de nomenclatura, reorganizado em diferentes hierarquias, atualizado com novos pontos de dados ou modificado para corrigir quaisquer erros.

Tais processos dinâmicos são excelentes e benéficos para a ciência, uma vez que garantem que os dados são utilizáveis e actualizados. mas eles podem ser confusos se não forem devidamente documentados. Se um conjunto de dados que é a base para calcular um resultado científico alterar sem controle de versão, A reprodutibilidade pode ser ameaçada: resultados podem se tornar inválidos, ou scripts que são baseados em nomes de arquivos que mudam entre versões podem ser quebrados. Especialmente se os dados originais forem substituídos por novos dados sem controle de versão em vigor, os resultados originais da análise não poderão ser reproduzidos. Portanto, versão controlando dados e outros arquivos grandes de uma forma similar ao controle de código ou manuscritos pode ajudar a garantir a reprodutibilidade de um projeto e capturar a proveniência dos resultados; chapéu é "o subconjunto preciso e a versão dos dados de que um conjunto de resultados se origina". Juntamente com todos os outros componentes de um projeto de pesquisa, os dados identificados em versões precisas fazem parte do resultado da pesquisa.

```{figure} ../../figures/provenance.jpg
---
altura: 500px
nome: proveniência
alt: Provença em que dados em que a versão estava subjacente a qual a computação é crucial para a reprodução.
---
Proveniência em que dados em que versão estava subjacente que a computação é crucial para a reprodutibilidade.
_O projeto Turing Way_ ilustração por Scriberia. Usado sob uma licença CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-vcs-data-desafios)=
## Desafios na versão controlando os dados

Dependendo do tamanho dos dados e das modificações que ele suportar, as ferramentas de controle de versão, como o Git, podem não ser adequadas para dados. Enquanto os arquivos para controle de versão são pequenos em tamanho e podem ser armazenados em alguns `csv` ou em arquivos separados por caracter ferramentas como [Git](https://git-scm.com/) são apropriadas.

Quando você trabalha, compartilhe e colabore em arquivos grandes e potencialmente [binários](https://en.wikipedia.org/wiki/Binary_file) (como muitos formatos de dados científicos), você precisa pensar em formas de controlar a versão destes dados com ferramentas especializadas. Isso porque a maioria das ferramentas de controle de versão - como Git - não são adequadas para lidar com dados binários grandes. Como um repositório Git armazena todas as versões de cada arquivo adicionado a ele, arquivos grandes que são submetidos a modificações regulares podem inflar significativamente o tamanho de um projecto.·. Se outros tentarem clonar seu repositório ou buscar/puxar para atualizá-lo localmente, levará mais tempo para fazer isso se ele contiver arquivos maiores que foram versionados e modificados.

O que é especialmente inconveniente é que os serviços de hospedagem de repositórios, como o GitHub, impõem o máximo de tamanhos de arquivos aos usuários (pelo menos em suas versões gratuitas). Por exemplo, se um único arquivo no seu repositório exceder 100 MB, você não poderá fazer push desse arquivo para um repositório do GitHub. Além disso, se um arquivo grande for acidentalmente adicionado a um repositório, remover o arquivo do repositório pode ser tedioso, já que este arquivo precisa ser [eliminado](https://help.github.com/en/github/authenticating-to-github/removing-sensitive-data-from-a-repository). Essas falhas podem tornar a versão de controle de arquivos tediosos e lenta, impedir colaborações em repositórios com grandes dados, e impedir que dados ou projetos com dados sejam compartilhados em plataformas como o GitHub.

(rr-vcs-data-ferramentas)=
## Ferramentas para Controle de Versão de Dados

Várias ferramentas estão disponíveis para lidar com controle de versão e compartilhamento de arquivos grandes. A maioria deles integra muito bem com o Git e amplia as capacidades de um repositório para controlar arquivos grandes. Com estas ferramentas, grandes dados podem ser adicionados a um repositório, controlado por versão, revertido para estados anteriores, ou atualizada e modificada de forma colaborativa, e até compartilhada com o GitHub como arquivos de pequeno tamanho. Algumas dessas ferramentas incluem:

(rr-vcs-data--tools-lfs)=
### Git LFS

[Git LFS](https://git-lfs.github.com/) vem com uma extensão de linha de comando no Git e permite que você trate arquivos de qualquer tamanho, usando comandos Git padrão. Uma grande deficiência, no entanto, é que o Git LFS é uma solução _centralizada_. Arquivos grandes não são distribuídos, mas armazenados num servidor remoto. Isto geralmente requer configurar seu servidor ou pagar um serviço - o que pode torná-lo muito inacessível.

(rr-vcs-data-tools-gitannex)=
### `git-annex`

A ferramenta [`git-anexo`](https://git-annex.branchable.com/) é um sistema distribuído que pode gerenciar e compartilhar arquivos grandes independentes de um serviço ou servidor central. `git-anAnnex` gerencia todo o conteúdo do arquivo __ em um diretório separado no repositório (`. ita/anexo/objetos`, o chamado _anexo_) e apenas coloca os nomes dos arquivos __ com alguns metadados para o controle de versão por Git. Quando um repositório Git com um anexo é enviado para um serviço de hospedagem da web, como o GitHub, o conteúdo armazenado no anexo não será carregado. Em vez disso, eles podem ser empurrados para um sistema de armazenamento (como um servidor web, mas também serviços de terceiros, como Dropbox, Google Drive, Amazon S3, box. om, e [muitos mais](https://git-annex.branchable.com/special_remotes/)). Se for clonado um repositório com um anexo, o clone não conterá o conteúdo de __ de todos os arquivos anexados por padrão, mas exibirá apenas os nomes de arquivos. Isto torna o repositório pequeno, mesmo que rastreie centenas de gigabytes de dados e clonagem rápida, enquanto o conteúdo do arquivo é armazenado em uma ou mais soluções de armazenamento externo gratuito ou comercial. Sob demanda, qualquer conteúdo de arquivo pode ser obtido com um `git-ananexo obtém o comando` do armazenamento externo de arquivos.

(rr-vcs-data-tools-datalad)=
### DataLad

[DataLad](https://www.datalad.org/), compila sobre Git e git-annex. Como `git-Annex`, ele permite que você controle de dados e os compartilhe via provedores de terceiros, mas simplifica e amplia essa funcionalidade. Além de compartilhar e controlar arquivos grandes; permite a gravação, compartilhamento e uso de ambientes de software, gravação e re-execução de comandos ou análises de dados e operação perfeitamente através de uma hierarquia de repositórios.
