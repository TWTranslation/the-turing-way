(rr-renv-pacote)=
# Sistemas de Gerenciamento de Pacotes

Gerenciadores de pacotes instalam e controlam os diferentes pacotes de software (e suas versões) que você usa em um ambiente. Há várias opções para escolher, por exemplo, Yum, Zypper, dpkg, e Nix (que serão mencionados na seção {ref}`rr-renv-binder`). Vamos focar no [Conda](https://conda.io/en/latest/), que tem várias funcionalidades úteis.

(rr-renv-pacote-conda)=
## O que Conda faz?

Conda permite que os usuários criem qualquer número de ambientes inteiramente separados, e rapidamente e alternam entre eles. Por exemplo, digamos que um pesquisador tem um projeto, _Projeto Um_, que tem seu próprio ambiente, definido pela Conda, é composto do seguinte conjunto de pacotes:

| **Nome do Pacote** | **Versão** |
| ------------------ | ---------- |
| `Pacote A`         | `1.5.2`    |
| `Pacote B`         | `2.1.10`   |
| `Pacote C`         | `0.7.9`    |

Mais tarde, o pesquisador começa o _Projeto Dois_ em seu próprio ambiente, com os seguintes pacotes:

| _Nome do Pacote_ | _Versão_ |
| ---------------- | -------- |
| `Pacote B`       | `2.1.10` |
| `Pacote C`       | `1.2.4`  |
| `Pacote D`       | `1.5.2`  |
| `Pacote E`       | `3.7.1`  |

Note aqui que a versão do `pacote C` usada no _Projeto Dois_ foi atualizada a partir da versão utilizada no _Projeto Um_. Se esses ambientes de projeto não fossem separados, o pesquisador teria a escolha de:

- A) Usando a versão mais antiga do `pacote C` para sempre e não se beneficiando com atualizações e correções de bugs em versões posteriores.
- B) Instalando a versão atualizada do pacote e esperando que ele não impacte o _Projeto Um_.
- C) Instalando a versão atualizada do pacote para uso no _Projeto 2_, depois desinstalá-lo e reinstalar o antigo sempre que eles precisarem fazer trabalho no _Projeto Um_. Isso seria extremamente aborrecido e arrisca-se a ser esquecido.

Todas estas opções são extremamente fracas, daí a utilidade da Conda para criar ambientes distintos que são facilmente intercambiáveis.

Conda também pode ser usada para capturar e exportar ambientes computacionais facilmente. Ele também pode ir na outra direção; pode gerar ambientes computacionais a partir de arquivos de configuração que podem ser usados para recriar o ambiente de outra pessoa.

Outro benefício da Conda é que ela oferece muito maior flexibilidade aos usuários que não têm privilégios de administração nas máquinas em que estão trabalhando (como é muito comum quando trabalham com instalações de computação de alto desempenho). Sem a Conda, é tipicamente desafiador instalar o software exigido em tais máquinas. No entanto, porque Conda cria e altera _novos_ ambientes, ao invés de fazer alterações no ambiente geral de uma máquina, os privilégios de administrador não são necessários.

Finalmente, embora o Conda seja, até certo ponto, centrado em Python, também está bem integrado para uso com outras línguas. Por exemplo, a versão base do Conda inclui a biblioteca padrão de C++.

(rr-renv-pacote-instalando)=
## Instalando Conda

Note que estas instruções de instalação são direcionadas para sistemas Linux. Instruções para instalar o Conda no Windows ou Mac system podem ser encontradas [aqui](https://docs.conda.io/projects/conda/en/latest/user-guide/install/).

Vá para [https://repo.continuum.io/miniconda/](https://repo.continuum.io/miniconda/) e baixe o último instalador do Miniconda 3 para o seu sistema (32 bits ou 64 bits). Será um nome como `miniconda_version_number.sh`. Execute o instalador usando:

```
bash Miniconda_versão_número.sh
```

Você pode verificar se o Conda foi instalado com sucesso digitando:

```
conda --version
```

que deve retornar um número de versão.

(rr-renv-pacote-usando)=
## Criação e Uso de Ambientes

Conda instala automaticamente um ambiente de base com alguns pacotes de software comumente usados. É possível trabalhar neste ambiente de base; no entanto, é uma boa prática criar um novo ambiente para todos os projectos que se inicia.

Para criar um ambiente, utilize `conda create --name your_project_env_name` seguido por uma lista de pacotes a incluir. Para incluir os pacotes `scipy` e `matplotlib` , adicione-os ao final do comando:

```
criar conda --name Projetot_One scipy matplotlib
```

Pode especificar as versões de certos (ou todos) pacotes usando `=package_number` após o nome. Por exemplo, para especificar `scipy 1.2.1` no ambiente acima:

```
criar conda --name Projetot_One scipy=1.2.1 "Título"
```

Ao criar ambientes, você também pode especificar versões de idiomas para instalar. Por exemplo, para usar o `Python 3.7.1` no ambiente _Project_One_:

```
conda create --name Project_One python=3.7.1 scipy=1.2.1 matplotlib
```

Agora que um ambiente foi criado, é hora de ativar (começar a usar) através de `conda activate environment_name`. Portanto, neste exemplo:

```
conda ativar Projeto_One
```

Note que você pode precisar usar a fonte `` em vez de `conda` se você estiver usando uma versão antiga do Conda.

Uma vez que um ambiente é ativado, você deverá ver o nome do ambiente antes de cada prompt no seu terminal:

```
(Project_One) $ python --version
Python 3.7.1
```

(rr-renv-pacote-excluindo)=
## Desativando e excluindo ambientes

Você pode desativar (sair da) um ambiente usando:

```
"conda" desativar
```

e remover (excluir) um ambiente como mostrado aqui:

```
remover conda env --name Projeto_One
```

Para verificar se um ambiente foi removido com sucesso, você pode ver uma lista de todos os ambientes de Conda no sistema utilizando:

```
lista env conda
```

No entanto, a exclusão de um ambiente pode não apagar os arquivos do pacote que foram associados a ele. Isto pode levar a que muita memória seja desperdiçada em pacotes que já não são necessários. Pacotes que não são mais referenciados por nenhum ambiente podem ser excluídos usando:

```
"conda limpo" -pts
```

Como alternativa, você pode excluir um ambiente (como _Project_One_), juntamente com seus pacotes associados via:

```
'conda' remover --name Projeto_One --todos
```

(rr-renv-pacote-remoção)=
## Instalar e remover pacotes dentro de um ambiente

Dentro de um ambiente, você pode instalar mais pacotes usando:

```
instalar o package_name conda
```

Da mesma forma, você pode removê-los via:

```
apagar nome do pacote
```

Esta é a melhor maneira de instalar pacotes de dentro do Conda, pois também instalará uma versão adaptada à Conda do pacote. No entanto, é possível utilizar outros métodos se uma versão específica do pacote não estiver disponível. Por exemplo, `pip` é comumente usado para instalar pacotes de Python. Então, um comando como:

```
pip install scipy
```

irá instalar o pacote `scipy` explicitamente - desde que o `pip` seja instalado dentro do ambiente de Conda atualmente ativo. Infelizmente, quando Conda e `pip` são usados juntos para criar um ambiente, pode conduzir a um estado que pode ser difícil de reproduzir. Especificamente, executar Conda depois do `pip` pode potencialmente substituir ou quebrar pacotes instalados via `pip`. Uma maneira de evitar isso é instalando o maior número possível de requisitos no Conda, e então usando o pip. Informações detalhadas podem ser lidas no post, [Usando o Pip em um ambiente de Conda](https://www.anaconda.com/using-pip-in-a-conda-environment/).

Embora os pacotes do Python tenham sido usados em muitos dos exemplos dados aqui, os pacotes do Conda não precisam ser pacotes do Python. Por exemplo, aqui o idioma base R está instalado juntamente com o pacote R `r-yaml`:

```
criar conda --name Projetot_One r-yaml
```

Para ver todos os pacotes instalados no ambiente atual, use:

```
lista de conda
```

Para verificar se um pacote em particular está instalado, por exemplo, a `scipy` neste caso:

```
conda list scipy
```

Um canal de Conda é de onde ele baixou um pacote. Canais comuns incluem `Anaconda` (uma empresa que fornece o canal de pacote de conda padronizado), e `conda-forge` (uma tentativa de embalagem conduzida pela comunidade). Você pode instalar explicitamente um pacote a partir de um determinado canal, especificando-o como:

```
conda install -c channel_name package_name
```

(rr-renv-pacote-exportação)=
## Exportando e Reproduzindo Ambientes Computacionais

Ambientes de Conda podem ser exportados facilmente para arquivos legíveis por humanos no formato YAML. Arquivos YAML são discutidos com mais detalhes {ref}`mais tarde <rr-renv-yaml>` neste capítulo.

Para exportar um ambiente conda para um arquivo chamado `environment.yml`, ative o ambiente e então execute:

```
exportação de env conda > environment.yml
```

Da mesma forma, ambientes de Conda podem ser criados a partir de arquivos YAML via:

```
conda env criar -f environment.yml
```

Isso permite que pesquisadores se reproduzam rapidamente em ambientes computacionais uns dos outros. Note que a lista de pacotes não é apenas aqueles explicitamente instalados. Ele pode incluir pacotes de dependências específicas para Sistema Operacional para que os arquivos de ambiente possam exigir alguma edição para ser portátil para diferentes sistemas operacionais.

Os ambientes também podem ser clonados. Isso pode ser desejável, por exemplo, se um investigador iniciar um novo projecto e quiser criar um novo ambiente para trabalhar nele; o ambiente do novo projeto (pelo menos inicialmente) pode exigir os mesmos pacotes do ambiente de um projeto anterior.

Por exemplo, para clonar o ambiente _Project_One_ e dar a este novo ambiente o nome _Project_Two_:

```
criar conda --name Projeto_Dois --clonar Projeto_Um
```
