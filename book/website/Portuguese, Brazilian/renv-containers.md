(rr-renv-containers)=
# Recipientes

(rr-renv-containers-porquê)=
## Por que contêineres?

Mesmo para projetos moderadamente complexos, o tamanho da pilha de dependências de software pode ser enorme. Faça um pipeline simples para criar um relatório pdf para uma análise escrita em R usando `Rmarkdown`, por exemplo. Fazer isto reprodutível, não apenas (i) os respectivos pacotes R precisam ser instalados e (ii) a versão R precisa ser a mesma, mas também (iii) as versões do `pandoc` e `LaTeX` precisam ser as mesmas que durante o tempo de execução.

Em vez de tentar resolver essas dependências por meio de um gerenciador de pacotes (como conda) - que também depende de todos os softwares necessários estarem disponíveis em um único gerenciador de pacotes - pode ser mais fácil criar um snapshot de todo o ambiente de computação, incluindo todas as dependências. Estes ambientes computacionais são então auto-contidos, daí a designação de 'contêineres'.

(rr-renv-containers-what)=
## O que são contêineres?

Os contêineres permitem que um pesquisador empacote um projeto com todas as partes necessárias - como bibliotecas, dependências e configurações do sistema - e enviar tudo como um pacote. Qualquer um pode então abrir um contêiner e trabalhar dentro dele, ver e interagir com o projeto como se a máquina a que eles estão acessando fosse idêntica à máquina especificada no contêiner - independentemente de qual é seu ambiente computacional _realmente_. Eles são projetados para facilitar a transferência de projetos entre ambientes muito diferentes.

De certa forma, os contentores se comportam como uma máquina virtual. Para o mundo exterior, parecem ter o seu próprio sistema completo. No entanto, ao contrário de uma máquina virtual, ao invés de criar todo um sistema operacional virtual, além de todas as ferramentas e software tipicamente empacotados com um, Os recipientes só contêm os componentes individuais de que eles precisam para operar o projeto que eles contêm. Isso dá um aumento significativo de desempenho e reduz o tamanho do aplicativo.

Os contêineres são uma maneira particularmente útil de reproduzir a pesquisa que depende de software para ser configurado de certa maneira. ou que faz uso de bibliotecas que variam entre (ou não existem) diferentes sistemas. Em resumo, contêineres são uma forma mais robusta de compartilhar pesquisas reprodutíveis do que sistemas de gerenciamento de pacotes ou Binder porque eles reproduzem todo o sistema usado para a pesquisa Não apenas os pacotes usados explicitamente por ele. O seu principal reverso é o que se deve à sua maior profundidade, são conceitualmente mais difíceis de entender e produzir do que muitos outros métodos de replicação de ambientes computacionais.

Ben Corrie dá uma visão geral razoavelmente acessível dos conceitos principais em ['O que é um contêiner?'](https://www.youtube.com/watch?v=EnJ7qX9fkcU).

(rr-renv-containers-images)=
## O que são Imagens?

As imagens são os arquivos usados para gerar contêineres. Os seres humanos não fazem imagens; escrevem receitas para gerar imagens. Os contêineres são, em seguida, cópias idênticas instanciadas a partir de imagens.

Pense nisso assim:

- Um arquivo de receita que uma escrita humana contém todas as etapas para gerar uma versão funcional do projeto e seu ambiente computacional. mas não há materiais reais. Pense nisso como um planeta.
- Construir uma imagem leva essa receita e usa-a, monta todos os pacotes, bibliotecas de software e configurações necessárias para fazer o projeto e o ambiente de pleno direito e empacotá-los de forma condensada. Pense em imagens como um pedaço de mobília de pacote fixo feita usando o diagrama.
- Os contêineres levam essa imagem e montam uma versão totalmente funcional do projeto e do ambiente necessário para executá-la. Pense nisto como a montagem dos móveis de pacote plano.

Portanto, se um pesquisador quiser permitir que outros reproduzam seus trabalhos, eles precisariam escrever um arquivo de receita e usá-lo para construir uma imagem do projeto deles. Em seguida, eles podem compartilhar este arquivo de imagem com qualquer pessoa que queira replicar seu trabalho. Essa pessoa pode então usar a imagem para gerar um contêiner contendo uma versão de funcionamento do projeto.

(rr-renv-containers-docker)=
## O que é Docker?

Há muitas ferramentas disponíveis para criar e trabalhar com contêineres. Centrar-nos-emos no Docker, que é amplamente utilizado, mas esteja ciente de que outros, como a Singularidade, também existem. A singularidade às vezes é preferida para uso em sistemas de computação de alto desempenho, já que não precisa de permissões de `sudo` para ser executado, enquanto o Docker executa.

No Docker, os arquivos de receita usados para gerar imagens são conhecidos como arquivos Dockerfiles e devem ser nomeados como `arquivo Dockerfile`.

[Docker Hub](https://hub.docker.com/) hospeda muitas imagens pré-fabricadas, tais como [imagens](https://hub.docker.com/_/ubuntu) das máquinas Ubuntu, que podem ser baixadas e construídas. Isto torna o processo de escrita de Dockerfiles relativamente fácil, já que os usuários raramente precisam começar do zero, eles podem simplesmente personalizar as imagens existentes. No entanto, isso deixa um usuário vulnerável a problemas de segurança similares conforme descrito no sub-capítulo {ref}`rr-renv-yaml-security` do {ref}`rr-renv-yaml`:

- É possível incluir código malicioso nas imagens do Docker
- É possível que pessoas que produzem imagens incluam software neles com vulnerabilidades de segurança

[Este](https://opensource.com/business/14/7/docker-security-selinux) artigo vai mais fundo nas possíveis vulnerabilidades de segurança dos contêineres e aqui está uma [detalhada](https://opensource.com/business/14/9/security-for-docker) dos recursos de segurança atualmente no Docker, e como funcionam. O melhor conselho para o uso de imagens construídas por outros é, como de costume, só baixe e execute algo em sua máquina se ela vier de uma fonte confiável. O Docker Hub tem emblemas de "imagem oficial" para imagens normalmente usadas, verificadas, como mostrado aqui:

```{figure} ../../figures/docker-official-image.png
---
nome: imagem oficial do docker-docker-
alt: Uma captura de tela dos emblemas oficiais da imagem
---
```

(rr-renv-containers-installing-docker)=
## Instalando o Docker

Instaladores do Docker em uma variedade de sistemas diferentes estão disponíveis [aqui](https://docs.docker.com/install/). Instruções de instalação detalhadas também estão disponíveis para uma variedade de sistemas operacionais como [Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/), [Debian](https://docs.docker.com/install/linux/docker-ce/debian/), [Macs](https://docs.docker.com/docker-for-mac/install/)e [Windows](https://docs.docker.com/docker-for-windows/install/).

(rr-renv-containers-commands)=
## Comandos da tecla

Aqui estão alguns comandos chave para criar e trabalhar com contêineres:

- Para construir uma imagem de um arquivo Dockerfile, vá para o diretório onde o arquivo Dockerfile é e é executado:
  ```
  sudo docker build --tag image_name .
  ```
- Para listar as imagens em seu sistema, use:
  ```
  imagens docker sudo
  ```
- Para remover uma imagem, execute:
  ```
  sudo docker rmi image_name
  ```
- Para abrir um contêiner de uma imagem, execute:
  ```
  sudo docker executa -i -t image_name
  ```
  O `-i -t` flags abrem automaticamente um terminal interativo dentro do contêiner para que você possa ver e interagir com os arquivos do projeto.
- Para sair de um terminal interativo, use:
  ```
  saindo
  ```
- Para obter uma lista de contêineres ativos com IDs, execute:
  ```
  recipientes docker sudo
  ```
- Há também três comandos principais usados para alterar o status dos contêineres:
  - Pausing suspende o processo rodando o contêiner.
    ```
    sudo docker pause container_ID
    ```
    Os contêineres podem ser despausados substituindo `pause` por `cancelar`.
  - Parar um contêiner termina o processo que o executa. Um recipiente deve ser interrompido antes que possa ser excluído.
    ```
    sudo docker stop container_ID
    ```
    Um contêiner parado pode ser reiniciado substituindo `stop` com `restart`.
  - Se `parar` não funcionar com contêineres pode ser morto usando
    ```
    sudo docker kill container_ID
    ```
- Para remover um contêiner, execute:
  ```
  sudo docker rm container_ID
  ```
(rr-renv-containers-dockerfiles)=
## Escrevendo arquivos Dockerfiles

Vamos ver a anatomia de um Dockerfile muito simples:

```
# Etapa 1: Configure o ambiente computacional

# Defina a imagem base
FROM ubuntu:18. 4

# Instalar pacotes necessários para executar o projeto
RUN apt-get update && \
    apt-get install -y --no-install-recommend python3. python3-pip && \
    rm -rf /var/lib/apt/lists/*
RUN python3 -m pip install numpy

#-----------------------

# Etapa 2: Inclua os arquivos do projeto na imagem

# Copiar arquivos do diretório `project_files` na máquina construindo a imagem
# na pasta `project` no container. Esta pasta e quaisquer diretórios
# que faltam no caminho são criados automaticamente.
Projeto/ projeto/ COPY
```

Isso parece complicado, mas a maioria das linhas neste exemplo são comentários (que são precedidos por `#`'s). Há apenas seis linhas de código real. O primeiro é uma instrução `DE` especificando uma imagem base. Todos os arquivos do Dockerker requerem uma FROM, mesmo que seja apenas `DE SCRATCH`. Todos os comandos a seguir em um arquivo Dockerfile são baseados na imagem base para fazer uma versão funcional do projeto do investigador. Especificar uma versão para a imagem (`18.04` neste caso) é opcional. No entanto, é a melhor prática, pois garante que nosso arquivo Dockerfile permaneça válido após novos lançamentos do Ubuntu, que não pode incluir pacotes (ou versões específicas dos mesmos) que exigimos mais tarde (por exemplo `python3.`).

Vale a pena gastar tempo para escolher uma imagem base apropriada, como tal, pode reduzir a quantidade de trabalho envolvida na escrita de um Dockerfile drasticamente. Por exemplo, uma coleção de imagens com a linguagem de programação R incluída nelas podem ser encontradas [aqui](https://github.com/rocker-org/rocker-versioned). Se um projeto faz uso de R, é conveniente usar uma dessas como imagem base ao invés de passar tempo escrevendo comandos no seu Dockerfile para instalar R.

O maior bloco de retas vem em seguida. É uma série de instruções `RUN` que executam comandos shell ao construir a imagem. Neste bloco, eles são usados para instalar o software necessário para executar o projeto. O primeiro bloco de `CORRIDA` é uma cadeia de comandos deste formulário:

```
Comando RUN d_to_do_thing_1 \
   && comandd_to_do_thing_2 \
   && command_to_do_thing_3 \
   && comando_para_fazer_coisa_4
```

É uma boa prática agrupar comandos relacionados em um único bloco de `RUN` para reduzir o tamanho final de sua imagem em [evitando a criação de camadas desnecessárias](https://docs.docker.com/develop/develop-images/#minimize-the-number-of-layers). Também seguimos o best-practice usando `--no-install-recommend` para [evitar instalar pacotes desnecessários](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#dont-install-unnecessary-packages) e [limpar o `apt-cache`](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#run), ambas as quais reduzem ainda mais o tamanho das imagens Debian ou Ubuntu.

Depois de instalarmos o Python, usamos outro comando da RUN para instalar uma biblioteca exigida pelo nosso código.

Finalmente o comando `COPY` é usado para copiar os arquivos do projeto do computador construindo a imagem para a própria imagem. A sintaxe deste comando é `COPY file_to_copy location_in_container_to_copy_to`. Neste exemplo, todos os arquivos no diretório `project_files` estão incluídos no arquivo `projeto` no container. Note que você só pode copiar arquivos do diretório onde o arquivo Dockerfile está localizado, ou subdiretórios dentro dele (no exemplo, ou seja, o `subdiretório` projeto).

O comando `ADD` tem os mesmos recursos que `COPY`, mas também pode ser usado para adicionar arquivos que não estejam na construção da máquina a imagem. Por exemplo, pode ser usado para incluir arquivos hospedados on-line seguindo `ADD` com uma URL para o arquivo. É uma boa prática usar `COPY`, exceto onde `ADD` é especificamente necessário. como o termo `COPY` é mais explícito sobre o que está a ser feito.

Aqui está o que acontece se um contêiner for aberto a partir de uma imagem chamada `book_example`, construída a partir do exemplo acima:

```{figure} ../../figures/container-example.png
---
nome: exemplo contêiner
alt: Uma captura de tela do que acontece quando um contêiner é aberto de uma imagem
---
```

Como você pode ver, o projeto `diretório` foi criado, e dentro dos arquivos do projeto, `análise. y` e `data.csv` foram copiados para ele. Como o arquivo Dockerfile já inclui o software necessário para o projeto, na imagem, o script `analyis.py` é executado sem instalar mais software.

(rr-renv-containers-dockerfiles-workdir)=
### `MUNDO`

Esse comando pode ser usado no Dockerfiles para alterar o diretório de trabalho atual. Os comandos que seguem isso no arquivo Dockerfile serão aplicados dentro do novo diretório de trabalho a não ser / até que outro `WORKDIR` mude o diretório de trabalho. Quando um recipiente for aberto com um terminal interativo, o terminal será aberto no diretório de trabalho final. Aqui está um exemplo simples de um arquivo Dockerfile que usa `WORKDIR`e o contêiner que ele gera.

```
# Configuração básica
FROM ubuntu
Atualização do apt-get RUN

# Faça um diretório chamado
RUN mkdir A

# Faça o diretório de trabalho A
WORKDIR A

# Faça dois diretórios, um chamado B_1 e um chamado B_2
RUN mkdir B_1
RUN mkdir B_2
```

```{figure} ../../figures/workdir-example.png
---
nome: Exemplo de trabalho
alt: Captura de tela do contêiner gerado usando o comando WORKDIR
---
```

Diretórios `B_1` e `B_2` foram criados dentro do diretório `A`.

`O WORKDIR` deve ser usado quando alterar diretórios é necessário durante a construção de uma imagem. Pode ser tentador usar `o directory_name da RUN cd` em vez disso. já que esta sintaxe será mais familiar para aqueles que normalmente funcionam através da linha de comando, mas isso pode levar a erros. Após cada instrução `RUN` em um arquivo Dockerfile, a imagem é salva e todos os seguintes comandos são aplicados novamente à imagem. As an example, here is what happens in the above example if the `WORKDIR A` line is swapped for `RUN cd A`.

```{figure} ../../figures/cd-example.png
---
nome: cd-example
alt: Uma captura de tela do que acontece quando o comando WORKDIR é trocado com RUN cd
---
```

Todos os diretórios estão no nível superior neste caso, em vez de `B_1` e `B_2` estando dentro de `A`. Isso é porque a imagem foi reiniciada após o comando `RUN cd` e aberta no nível superior (root) por padrão, portanto, foi aí que os comandos `mkdir B_1` e `mkdir B_2` entraram em vigor.

(rr-renv-containers-dockerfiles-commands)=
### Outros comandos

Outros comandos que às vezes são usados em arquivos do Dockerfiles incluem:

- `CMD`: Isso é usado para executar comandos assim que o contêiner é aberto. Isso é diferente de comandos RUN que são comandos executados como parte da _configuração de um contêiner_ Por exemplo, para ter uma mensagem de boas-vindas quando um contêiner é aberto na imagem `CMD` pode ser usado da seguinte forma:
  ```
  CMD ["echo","Bem-vindo! Você acabou de abrir este contêiner!"]
  ```
  É uma boa prática usar o CMD para todos os comandos que precisam ser executados antes que alguém comece a trabalhar no contêiner em vez de forçar os usuários a executá-los eles mesmos (e confiar que eles mesmo saberão que precisarão).
- `VOLUMES`: Serão discutidos {ref}`mais tarde <rr-renv-containers-volumes>`.
- `MANEIRO`: Isto contém informações sobre a pessoa que escreveu o Dockerfile. Normalmente está incluído no topo de um arquivo Dockerfile.
- `EXPOSE`: Isso inclui portas que devem ser expostas. É mais relevante para as pessoas que usam o Docker para compartilhar aplicativos web.
- `USUÁRIO`: Altere o usuário que um comando é executado como (útil para descartar privilégios).

(rr-renv-containers-dockerignore)=
## Construindo imagens e `.dockerignore` Arquivos

Como mencionado na seção de comandos chave de {ref}` <rr-renv-containers-commands>` , Para construir uma imagem, abra um terminal no mesmo diretório que o arquivo Dockerfile a ser usado e executado:

```
sudo docker build --tag name_to_give_image .
```

Quando uma imagem é construída tudo no diretório do Dockerfile e abaixo (isso é chamado de "contexto") é enviado para o Docker daemon para construir a imagem. O daemon usa o Dockerfile e seu contexto para construir a imagem. Se o contexto contém muitos arquivos grandes, que não são necessários para a construção da imagem, (dados antigos, por exemplo), então é uma perda de tempo enviá-los para o daemon. Fazer isso pode deixar o processo de construção de uma imagem mais lento. Os arquivos podem ser excluídos do contexto listando-os em um arquivo de texto chamado `.dockerignore`. É uma boa prática fazê-lo.

Os arquivos não precisam ser listados individualmente no arquivo `.dockerignore`. Aqui está um exemplo do conteúdo de um arquivo `.dockerignore`:

```
*.jpg
**/*.png
data_files/*
file_to_exclude.txt
```

Isso exclui do contexto:

- Todos os arquivos `.jpg` no mesmo diretório que o arquivo Dockerfile
- Todos os arquivos `.png` no mesmo diretório do arquivo Dockerfile _ou quaisquer subdiretórios dentro dele_
- Todos os arquivos dentro do diretório `data_files`
- O arquivo chamado `file_to_exclude.txt`

(rr-renv-containers-sharing)=
## Compartilhando imagens

Imagens Docker podem ser compartilhadas mais facilmente via [Docker Hub](https://hub.docker.com/), o que requer uma conta. Diga a dois investigadores, Alice e Bob, que estão colaborando num projeto e Alice deseja compartilhar uma imagem de algum do seu trabalho com Bob.

Para fazer isso, Alice deve:

- Escreva um arquivo Dockerfile para produzir uma imagem do seu trabalho.
- Construa a imagem. Ela (sendo inventiva) a chama de image_name
- Vá para DockerHub e cadastre-se para uma conta. Diga Alice (novamente, estando inventivo) escolhe o nome de usuário `username_Alice`
- Entrar no DockerHub através do terminal em sua máquina usando:
  ```
  login do sudo docker
  ```
- Marque a imagem de seu projeto em sua máquina através da linha de comando fornecendo o nome da imagem e usando o padrão `username/image_name:version`. Então o Alice executa o comando:
  ```
  sudo docker tag image_name username_Alice/image_name:version_1
  ```
- Faça push da imagem para sua conta do Docker Hub usando:
  ```
  sudo docker tag push username_Alice/image_name:version_1
  ```
- A imagem do Alice está online e pode ser baixada. Acima para o Bob...

Bob (supondo que ele já tenha instalado o Docker) pode abrir um contêiner da imagem do Alice simplesmente executando

```
docker sudo run -i -t username_Alice/image_name:version_1
```

Inicialmente, o Docker irá procurar essa imagem na máquina do Boi. Quando ele não encontrá-lo, _automaticamente_ buscará o DockerHub, Baixe a imagem do Alice e abra o contêiner com o trabalho e o ambiente do Alice na máquina do Box.

(rr-renv-containers-copiing)=
## Copiando arquivos para e de contêineres

Os contêineres agem muito como máquinas virtuais; como resultado, copiar arquivos para e fora deles não é tão trivial como copiar arquivos para diferentes locais dentro do mesmo computador.

Um arquivo pode ser copiado da máquina executando um contêiner no contêiner usando:

```
sudo docker cp file_name container_ID:path_to_where_para_o_arquivo_do_arquivo/arquivo
```

Lembre que os IDs de contêiner podem ser obtidos usando `sudo docker contêineres`.

Um arquivo pode ser copiado de dentro de um contêiner para a máquina executando o seguinte comando na máquina que executa o contêiner:

```
sudo docker cp container_ID:path_to_o_caminho_de_arquivo/arquivo _para_onde_do_arquivo_para_o_arquivo_nome_de_arquivo
```

Se a segunda parte (o `path_to_where_to_put_file/file_name`) é substituído por um `.`, em seguida, o arquivo será copiado para qualquer diretório que o terminal esteja executando o comando.

(rr-renv-containers-volumes)=
## Volume

Toda vez que um recipiente é aberto a partir de uma imagem, esse recipiente é completamente novo. Diga que um recipiente está aberto e que é feito trabalho dentro dele. Diga que um recipiente está aberto e que é feito trabalho dentro dele. Se esse contêiner é fechado, e a imagem de que veio é usada novamente para iniciar outro contêiner, nenhum desse trabalho será no novo. Terá simplesmente o estado de partida descrito na imagem.

Isso pode ser um problema se um pesquisador quiser trabalhar em um recipiente ao longo do tempo. Felizmente, há uma maneira de contornar esta situação utilizando volumes. Os volumes armazenam o trabalho feito em um recipiente mesmo depois de fechado, e podem ser usados para carregar que funcionam em futuros contêineres.

Para criar/usar um volume, execute:

```
sudo docker run -i -t --mount source=volume_name,target=/target_directory image_name
```

Você deve dar ao seu volume um nome mais descritivo que o `volume_name`. Um diretório `de destino` é necessário; só funciona dentro deste diretório será salvo no volume. Assim que o pesquisador estiver pronto, ele poderá fechar o recipiente normalmente. Quando eles voltam para o projeto e querem continuar o seu trabalho, eles só precisam usar o mesmo comando que acima, e irá carregar o trabalho contido no `volume_name` no novo contêiner. Também aí se salvará qualquer novo trabalho.

Abaixo está uma lista de comandos relacionados ao volume:

- Para listar volumes: `sudo docker volume ls`
- Para excluir um volume: `sudo docker volume rm volume_name`
- Para excluir todos os volumes não anexados: `sudo docker volume prune`

Se ao excluir um contêiner, um `-v` é incluído após `rm` no `sudo docker rm container_ID`, qualquer volume associado ao contêiner também será excluído.

(rr-renv-containers-singularity)=
## Singularidade


> **Pré-requisitos**: No momento, Singularity só é executado em sistemas Linux (por exemplo, Ubuntu). Se você usar o macOS, [Singularity Desktop para macOS](https://www.sylabs.io/singularity-desktop-macos/) está no estágio de lançamento "Beta".

Uma desvantagem significativa do uso do Docker para pesquisa reprodutível é que não se pretende como uma aplicação do user-space mas como uma ferramenta para administradores de servidores. Como tal, requer acesso root para operar. No entanto, não há qualquer razão para que a execução de uma análise exija o acesso de raiz do utilizador. Isto é especialmente importante quando os cálculos são conduzidos em um recurso compartilhado, como sistemas de HPC onde os usuários nunca terão acesso root.

O software de contêiner de [singularidade](https://www.sylabs.io/) foi introduzido para resolver este problema. Singularidade foi criada com sistemas HPC e pesquisa reprodutível em mente (consulte \[this\](https://www.youtube.com/watch?v=DA87Ba2dpNM). Isso não requer acesso root para executar (apenas para construir o contêiner _imagens_! , e assim permite que usuários de HPC criem imagens de recipientes localmente antes de executar análises em um grupo de alto desempenho, por exemplo. Como benefício adicional, Isso torna possível o uso de quase qualquer software em um sistema HPC sem ter que incomodar a equipe de administração com a instalação.

Furthermore, since Docker is _the_ most well-known containerization approach, singularity aims at maintaining compatibility with docker containers. Isto significa que a singularidade pode ser usada para executar contêineres docker normais (sem exigir acesso root!).

Singularidade pode ser usada para executar imagens Docker ou estendê-las construindo novas imagens com base em docker containers como camada base. Por exemplo, poderíamos usar a singularidade para criar um recipiente de ubuntu vanilla com um casco usando a imagem docker de ubuntu:

```
shell de singularidade docker://ubuntu
```

> (digite `exit` para deixar o shell interativo novamente).

Assim como as imagens docker são construídas usando `o arquivo Dockerfile` arquivos, contêineres singularidade são construídos a partir de arquivos de definição de singularidade. O processo e a sintaxe são semelhantes aos arquivos docker, mas existem diferenças subtis. Como um exemplo mínimo de funcionamento, podemos construir um contêiner `lolcow` com base na imagem oficial do docker do ubuntu. Coloque o seguinte em um arquivo `lolcow.def` (com base na [Documentação do Singularity](https://www.sylabs.io/guides/3.2/user-guide/build_a_container.html)):
```
Bootstrap: docker
From: ubuntu

%pperde
    apt-get -y update
    apt-get -y install fortune cowsay lolcat

%environment
    export LC_ALL=C
    export PATH=/usr/games:$PATH

%runscript
    fortune ├lolcat
```

Esta 'receita' usa uma imagem docker como base (`ubuntu`), instala alguns pacotes `apt` e modifica algumas variáveis de ambiente, e especifica o `runscript` (que é executado usando o comando `singularidade run`). Detalhes sobre o formato do arquivo de definição de singularidade podem ser encontrados na [documentação oficial](https://www.sylabs.io/docs/).

Uma imagem de contêiner pode ser construída (exigindo root!) via:

```
sudo singularidade construir lolcow.simg lolcow.def
```

Isto irá puxar a imagem ubuntu do DockerHub, executar as etapas da receita no arquivo de definição e produzir um único arquivo de imagem de saída (`lolvaca. img`). Finalmente, o script `` é executado como

```
singularidade run lolcow.simg
```

De preferência, você deveria ver uma bela vaca ASCII e algumas palavras de sabedoria:

```
___________________________________
/ Você será chamado para ajudar com \
\ \ amigo em um problema.                /
-----------------------------------
       \   ^__^
        \  (oo)\_______
           (__)\       )\/\
               ||----w |
               ||     ||
```

Sendo compatível com HPC, contêineres de singularidade também são suportados por uma ampla gama de ferramentas de gerenciamento de fluxo de trabalho. Por exemplo, ambos [snakemake](https://snakemake.readthedocs.io/en/stable/) e [nextflow](https://www.nextflow.io/docs/latest/singularity.html) suportam contêineres de singularidade específicos de trabalho. Isto torna contêineres de singularidade única adequada para paralela de fluxos de trabalho em sistemas HPC usando o amplamente utilizado [slurm](https://slurm.schedmd.com/documentation.html) gerenciador de carga de trabalho. Usando singularidade, contêineres e snakemake/nextflow é uma forma de escalar a reprodutibilidade em uma escala maciça. Além disso, como um benefício adicional, trazendo fluxos de trabalho de uma máquina para um sistema HPC já não requer mais escrever scripts de submissão de trabalho personalizados.

(rr-renv-containers-singularity-storage)=
### Armazenamento de longo prazo de imagens de contêiner

É importante notar que um simples arquivo de receitas de contêiner não é reproduzível em si, uma vez que o processo de construção depende de várias fontes (on-line). Assim, o mesmo arquivo de receita pode levar a imagens diferentes se as fontes subjacentes forem atualizadas.

Para alcançar a reprodutibilidade verdadeira, é importante armazenar o contêiner _imagens_. Para imagens singulares, isso é particularmente fácil, já que uma imagem é simplesmente um arquivo grande. Estas podem variar em tamanho, de algumas dezenas de megabytes (microcontainers) a vários gigabytes, e, portanto, não são adequados para ser armazenado em um repositório git em si Um repositório gratuito, solução elegível e de longo prazo para armazenar imagens contêines é [zenodo. rg](https://zenodo.org/) que permite até 50 Gb por repositório. Desde que zenodo mints DOIs para todo o conteúdo enviado, as imagens são imediatamente referenciáveis. Em contraste com o [Docker Hub](https://hub.docker.com/) (que também aceita apenas imagens docker), zenodo também está claramente orientado para o armazenamento a longo prazo e para a descoberta através de um sistema de metadados sofisticado. Assim, é idealmente adequado para armazenar contentores científicos associados a análises específicas, uma vez que estas tendem a não mudar com o tempo.

(rr-renv-containers-warning)=
## Palavras de Aviso

Embora a singularidade e o docker possam parecer semelhantes, são conceitualmente muito diferentes. Além do fato óbvio que a singularidade não requer acesso root para contêineres executados, lida também com a distinção entre o sistema de arquivos de host e o de contêiner de forma diferente. Por exemplo, por padrão, a singularidade inclui alguns pontos de bind no container, nomeadamente:

- `$HOME`
- `/sys:/sys`
- `/proc:/processo`
- `/tmp:/tmp`
- `/var/tmp:/var/tmp`
- `/etc/resolv.conf:/etc/resolv.conf`
- `/etc/passwd:/etc/passwd`
- `$PWD`

Nota, `$PWD` é útil, uma vez que implica que todos os arquivos no diretório de trabalho são visíveis dentro do container. Vinculando `$HOME` por padrão, no entanto, também implica que o software que usa arquivos de configuração de `$HOME` pode se comportar inesperadamente, uma vez que os arquivos de configuração específicos da imagem são substituídos pelas configurações de usuários atuais em `$HOME`. Embora este comportamento seja útil em cenários HPC, é potencialmente perigoso para a investigação reprodutível. Para evitar problemas em potencial, qualquer software instalado em um contêiner de singularidade deve ser apontado para um arquivo de configuração global, independente do usuário.
