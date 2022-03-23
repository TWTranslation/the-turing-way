(rr-renv-binder)=
# Vestimenta

(rr-renv-binder-visão geral)=
## Geral

Agora que vimos como usar e capturar o ambiente computacional usado em um projeto Python, é tempo de pensarmos em como partilhar esse ambiente.

Com `um arquivo environment.yml` (ou similar, de sistemas de gerenciamento de pacotes alternativos),outros podem recriar o ambiente especificado por esse arquivo. No entanto, isto depende de o novo utilizador ter o mesmo sistema de gestão de pacotes estabelecido e saber como utilizá-lo. Seria muito mais fácil se houvesse uma solução automatizada para recriar o ambiente computacional - e é aqui que a Binder entra.

O Binder usa uma ferramenta chamada `repo2docker` para criar uma imagem Docker de um projeto com base nos arquivos de configuração incluídos. A imagem resultante contém o projeto e o ambiente computacional especificado pelo usuário original. Outros usuários podem acessar a imagem através de um BinderHub, baseado em nuvem, que lhes permite visualizar, editar e executar o código a partir do seu navegador da web.

A excelente desenho animado abaixo da Juliette Taka ilustra os passos para criar e compartilhar um projeto "binderizado".

**Passo 1:** Começamos com um pesquisador que concluiu um projeto e quer compartilhar seu trabalho com qualquer pessoa, independentemente do ambiente computacional deles. Note que o Binder não precisa ser aplicado apenas a projetos concluídos; pode ser utilizado da mesma forma para compartilhar projetos em curso.

**Passo 2:** O projeto do pesquisador contém muitos arquivos de diferentes tipos. Neste caso, o pesquisador tem trabalhado em notebooks de Jupyter. No entanto, Binder pode ser usado da mesma forma com muitos outros formatos de arquivos e línguas que abordaremos em mais detalhes em breve.

**Passo 3:** O pesquisador carrega seu código para um serviço de hospedagem de repositórios disponível publicamente, como o GitHub, onde outros podem acessá-lo. Ela inclui um arquivo que descreve o ambiente computacional necessário para executar o projeto.

**Passo 4:** Ela gera um link no [mybinder.org](https://mybinder.org) BinderHub. Clicando neste link, qualquer um pode acessar uma versão "binderizada" do seu projeto. O clique aciona `repo2docker` para construir uma imagem Docker com base no conteúdo do repositório e seus arquivos de configuração. Esta imagem é então hospedada na nuvem. A pessoa que clicou no link será levada para uma cópia do seu projeto em seu navegador da Web, onde pode interagir com ele. Essa cópia do projeto está hospedada no ambiente, o pesquisador especificado no passo 3, independentemente do ambiente computacional ao qual ele é acessado.

```{figure} ../../figures/binder-comic.png
---
nome: binder-comic
alt: Uma ilustração dos passos que uma pessoa pode tomar para criar um projeto binderizado.
---
Crédito por Figura - [Juliette Taka, Logilab e o projeto OpenDreamkit](https://opendreamkit.org/2017/11/02/use-case-publishing-reproducible-notebooks/)
```

Para ter uma ideia de como isto se parece, abaixo está um caixote de um projeto de exemplo simples. Os arquivos estão listados e podem ser clicados e modificados pela pessoa que acessar o Binder.

```{figure} ../../figures/binder-home.png
---
nome: binder-home
alt: uma captura de tela de um agregador de um projeto exemplo
---
Um caixote de um projeto amostra.
```

Os usuários também podem abrir terminais para rodar ou interagir com os arquivos, clicando em "Novo" e em seguida em "Terminal" no canto superior direito da tela principal Binder exibida acima. Aqui, isto é usado para executar o script de análise no exemplo Binder, que executa uma regressão linear em alguns dados:

```{figure} ../../figures/binder-terminal.png
---
nome: binder-terminal
alt: Uma captura de tela de um terminal onde os usuários podem executar ou interagir com os arquivos do projeto
---
Uma captura de tela de um terminal onde os usuários podem executar ou interagir com os arquivos do projeto
```

Como mencionado, Binder está bem integrado com cadernos de notas Jupyter. Os cadernos podem ser abertos clicando em "Novo" e, em seguida, "Notebook" da mesma forma que os terminais podem ser abertos. Estes podem ser mais convenientes para aqueles que trabalham com saídas gráficas, como mostrado aqui onde um é usado para executar `make_plot. y` no exemplo Binder:

```{figure} ../../figures/binder-notebook.png
---
nome: caderno binder-notebook
alt: Uma captura de tela de um caderno de notas Jupyter integrado com o Binder
---
Uma captura de tela de um caderno de Jupyter integrado com Binder
```

Se R estiver instalado em um Binder, o menu suspenso exibirá as opções de abrir os blocos de anotações RR Jupyter e as sessões RStudio no Binder.

(rr-renv-binder-disambiguation)=
## Desambiguação

Nesta secção, há alguns termos relacionados, que serão delineados aqui para clareza:

- **Binder**: Uma versão compartilhável de um projeto que pode ser visualizado e interagido dentro de um ambiente computacional reproduzível através de um navegador da web.
- **BinderHub**: Um serviço que gera binders. O mais usado é o [mybinder.org](https://mybinder.org), que é mantido pela equipe binder. É possível criar outros BinderHubs que podem suportar configurações mais especializadas. Uma dessas configurações poderia incluir autenticação para permitir que repositórios privados sejam compartilhados entre colaboradores fechados.
- **[mybinder.org](https://mybinder.org)**: Um BinderHub, público e gratuito. Porque ele é público, você não deve usá-lo se o seu projeto exigir quaisquer informações pessoais ou confidenciais (como senhas).
- **Binderize**: Para fazer um Binder of a project.

(rr-renv-binder-criação)=
## Criando um Binder para um Projeto

A criação de uma versão binderizada de um projeto envolve três etapas fundamentais que serão explicadas nesta seção:

1. Especifique o ambiente computacional
2. Coloque os arquivos do projeto em algum lugar publicamente disponível (descreveremos como fazer isso com o GitHub)
3. Gere um link para um binder do projeto

Para obter uma lista de repositórios de exemplo para uso com o Binder, consulte a página de [Exemplo de Repositórios Binder](https://mybinder.readthedocs.io/en/latest/sample_repos.html).

(rr-renv-binder-criação-stepone)=
### Passo 1: Especifique seu ambiente computacional

Suponha que o projeto não contém nenhum arquivo especificando o ambiente computacional. Quando um Binder é gerado, o ambiente será o ambiente padrão do Binder (contendo Python 3. ) que pode ou não ser adequada para o projeto. No entanto, se ele contém um arquivo de configuração para o ambiente, então o Binder será gerado com o ambiente especificado. Uma lista completa de tais arquivos que o Binder aceita, com exemplos, pode ser encontrada [aqui](https://mybinder.readthedocs.io/en/latest/config_files.html). Os principais são discutidos abaixo, alguns dos quais são específicos do idioma:

- `ambiente.yml`
  - Lembre-se de que os arquivos `environment.yml` foram discutidos na seção {ref}`rr-renv-package`.
- Arquivo
  - Arquivos Dockerfiles serão discutidos na seção {ref}`rr-renv-containers` , então não serão mais discutidos aqui.
- `apt.txt`
  - Dependências que normalmente seriam instaladas através de comandos como `sudo apt-get install package_name` devem ser listadas em um `apt. Arquivo xt` e será instalado automaticamente no Binder.
  - Por exemplo, se um projeto usa Latex o arquivo `apt.txt` deve ser lido
    ```
    texto-latex-base
    ```
    para instalar o pacote base Latex.
- `default.nix`
  - Para aqueles que usam o arquivo {ref}`rr-renv` Nix um `default.nix` pode ser uma maneira conveniente de capturar seu ambiente.
- `requirements.txt` (Python)
  - Para os usuários do Python um arquivo `requirements.txt` pode ser usado para listar pacotes dependentes.
  - Por exemplo, para ter o Binder install `numpy` esse arquivo deve ser lido:
    ```
    numpy
    ```
  - Uma versão específica do pacote também pode ser especificada usando um `==`. Por exemplo, para ter a versão do Binder `1.14.5` de `numpy` , então o arquivo deve ser
    ```
    numpy==1.14.5
    ```
  - O arquivo `requirement.txt` não precisa ser escrito a mão. Executar o comando `pip congelar > requirements.txt` irá retornar um arquivo `requirements.txt` que define completamente o ambiente Python.
- `runtime.txt`
  - É usado para especificar uma versão específica do Python ou R para o Binder usar.
  - Para especificar qual versão de R usar, encontrar a data em que foi capturada no [MRAN](https://mran.microsoft.com/documents/rro/reproducibility) e incluí-la no `tempo de execução. Arquivo xt` como
    ```
    r-<YYYY>-<MM>-<DD>
    ```
  - Para especificar uma versão do Python, use o comando `runtime.txt`. Por exemplo, para usar o Python 2.7, o arquivo precisa ler
    ```
    python-2.7
    ```
- `install.R` ou `DESCRIPTION` (R/RStudio)
  - Um arquivo `install.R` lista os pacotes a serem instalados. Por exemplo, para instalar o pacote `tibble` no Binder:
    ```
    instalar.pacotes("tibble")
    ```
  - [Arquivos de DESCRIÇÃO](https://cran.r-project.org/doc/manuals/r-release/R-exts.html#The-DESCRIPTION-file) são mais usados normalmente na comunidade R para gerenciamento de dependências.

(rr-renv-binder-criação-steptwo)=
### Passo 2: Coloque o seu código no GitHub

O GitHub é discutido com comprimento no capítulo {ref}`rr-vcs`, , que o senhor deputado deveria referir se quer compreender mais sobre este passo. Neste capítulo, daremos uma breve explicação. O GitHub é uma plataforma muito usada onde você pode criar "repositórios", e fazer upload de código, documentação ou quaisquer outros arquivos neles. Para concluir esta etapa:

1. Faça uma conta no [GitHub](https://github.com/).
2. Crie um repositório para o projeto do qual deseja criar um Binder.
3. Carregue seus arquivos do projeto (incluindo o arquivo que você criou para especificar seu ambiente computacional) no repositório e salve ("commit" no vocabulário do GitHub).

If you are unable to complete these steps, refer to the chapter on {ref}`version control <rr-vcs>` for a fuller explanation.

(rr-renv-binder-criação-steptrês)=
### Passo 3: Gere um Link para um Binder do seu Projeto

Vá para [https://mybinder.org](https://mybinder.org). Você verá um formulário que pede para especificar um repositório para [mybinder.org](https://mybinder.org) construir. No primeiro campo, cole a URL do repositório do projeto no GitHub. Isso vai parecer com algo assim: `https://github.com/<your-username>/<your-repository>`

```{figure} ../../figures/mybinder-gen-link.png
---
nome: mybinder-gen-link
alt: Uma captura de tela da página da Web usada para gerar um link Binder para o seu projeto
---
Interface para gerar links Binder para projetos
```

Como podem ver, há campos adicionais nesta forma, mas estes são facultativos e não serão aqui discutidos.

Uma vez que a URL do projeto a ser binderizado for fornecida, dois campos serão preenchidos automaticamente na tela retratada acima:

- `Copie a URL abaixo e compartilhe seu Binder com outros` campo, fornece um link para o Binder que pode ser copiado e compartilhado.
- `Copie o texto abaixo, e então cole no seu README para mostrar um distintivo de ligação` campo, pode ser incluído no GitHub para criar um botão que permita que qualquer pessoa que acessar seu projeto inicie o Binder.

Finalmente, clique no botão de lançamento. Isso pedirá ao [mybinder.org](https://mybinder.org) para construir o ambiente necessário para executar o projeto. Isso pode levar vários minutos. Você pode clicar no botão `Build logs` para ver os logs gerados pelo processo de build. Estes logs ajudam a resolver quaisquer problemas que causam falha na compilação, como erros no arquivo que define o ambiente computacional a ser gerado.

Uma vez construído, o Binder será iniciado automaticamente; novamente, isso pode levar algum tempo.

(rr-renv-binder-data)=
## Incluindo dados em um binder

Existem algumas maneiras de disponibilizar dados no seu Binder. O melhor depende do tamanho dos seus dados e das suas preferências para compartilhar dados. Note que quanto mais dados forem incluídos, mais tempo um Binder levará para ser lançado. Os dados também ocupam o espaço de armazenamento que deve ser pago, então é bom ser atento e minimizar os dados que você inclui, especialmente no mybinder [fornecido publicamente. rg](https://mybinder.org). .

(rr-renv-binder-data-small)=
### Arquivos públicos pequenos

A abordagem mais simples para pequenos arquivos de dados que são públicos é adicioná-los diretamente ao seu repositório do GitHub ou incluí-los junto com o resto dos seus arquivos de projeto no Binder. Isto funciona bem e é razoável para arquivos com tamanhos até 10MB.

(rr-renv-binder-data-médio)=
### Arquivos Públicos Médios

Para arquivos de média dimensão - alguns 10 segundos de megabytes para algumas centenas de megabytes - encontram outro lugar online para armazená-los e certificar-se de que estão disponíveis publicamente. Adicionar um arquivo chamado `postBuild` (que é um script shell então a primeira linha deve ser `#! bin/bash`) para os arquivos do projeto. No arquivo `postBuild` , adicione uma única leitura de linha:
```
wget -q -O nome_do_link_seu_arquivo
```

O arquivo `postBuild` é usado para executar comandos quando os arquivos para produzir o binder estão sendo gerados. Neste caso, ele pode ser usado para baixar seus dados para os arquivos usados para iniciar o executável.

(rr-renv-binder-data-grande)=
### Arquivos públicos grandes

A melhor opção para arquivos grandes é usar uma biblioteca específica para o formato de dados para transmitir os dados como você está usando. Há algumas restrições ao tráfego de saída a partir do seu Binder que são impostas pela equipe que opera [mybinder.org](https://mybinder.org). Atualmente, apenas conexões HTTP e Git são permitidas. Isto aparece quando as pessoas querem usar sites FTP para obter dados. Por razões de segurança FTP não é permitido no [mybinder.org](https://mybinder.org).
