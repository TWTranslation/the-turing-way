(rr-renv-package)=

# Sistemas de Gerenciamento de Pacotes

Gerenciadores de pacotes instalam e controlam os diferentes pacotes de software (e suas versões) que você usa em um ambiente.
There are quite a few to choose from, for example, Yum, Zypper, dpkg, Nix (which will be mentioned in the {ref}`rr-binderhub` section), and language specific package managers [Python Packages](https://py-pkgs.org/) and [R Packages](https://r-pkgs.org/). We are going to focus on [Conda](https://conda.io/en/latest/), which has several useful functionalities.

(rr-renv-package-conda)=

## O que Conda faz?

Conda permite que os usuários criem qualquer número de ambientes inteiramente separados, e rapidamente alternarem entre eles.
For example, say a researcher has a project, _Project One_, which has its own environment, defined by Conda, that is made up of the following set of packages:

| **Package Name** | **Version** |
| ---------------- | ----------- |
| `Package A`      | `1.5.2`     |
| `Package B`      | `2.1.10`    |
| `Package C`      | `0.7.9`     |

Later, the researcher starts _Project Two_ in its own environment, with the following packages:

| _Package Name_ | _Version_ |
| -------------- | --------- |
| `Package B`    | `2.1.10`  |
| `Package C`    | `1.2.4`   |
| `Package D`    | `1.5.2`   |
| `Package E`    | `3.7.1`   |

Note here that the version of `package C` used in _Project Two_ has been updated from the version used in _Project One_.
Se esses ambientes de projeto não fossem separados, o pesquisador teria a escolha de:

- A) Using the older version of `package C` forever and not benefiting from updates and bugfixes in later versions.
- B) Installing the updated version of the package and hoping that it does not impact _Project One_.
- C) Installing the updated version of the package for use in _Project Two_, then uninstalling it and reinstalling the old one whenever they need to do work on _Project One_.
  Isso seria extremamente irritante e é um passo com risco de ser esquecido.

Todas estas opções são extremamente fracas, daí a utilidade da Conda para criar ambientes distintos que são facilmente intercambiáveis.

Conda também pode ser usada para capturar e exportar ambientes computacionais facilmente.
Ele também pode ir na outra direção; pode gerar ambientes computacionais a partir de arquivos de configuração que podem ser usados para recriar o ambiente de outra pessoa.

Outro benefício do Conda é que ele oferece muito maior flexibilidade aos usuários que não têm privilégios de administração nas máquinas em que estão trabalhando (como é muito comum quando trabalhamos com instalações de computação de alto desempenho).
Sem Conda, é tipicamente desafiador instalar o software exigido em tais máquinas.
However, because Conda creates and changes _new_ environments rather than making changes to a machine's overall system environment, admin privileges are not required.

Finalmente, embora o Conda seja centrado em Python até certo ponto, também está bem integrado para uso com outras linguagens.
Por exemplo, a versão base do Conda inclui a biblioteca padrão de C++.

(rr-renv-package-installing)=

## Instalando Conda

Note que estas instruções de instalação são direcionadas para sistemas Linux.
Instructions for installing Conda on Windows or Mac systems can be found [here](https://docs.conda.io/projects/conda/en/latest/user-guide/install/).

Go to [https://repo.continuum.io/miniconda/](https://repo.continuum.io/miniconda/) and download the latest Miniconda 3 installer for your system (32 bit or 64 bit). It will have a name like `miniconda_version_number.sh`.
Execute o instalador usando:

```
bash Miniconda_version_number.sh
```

Você pode verificar se o Conda foi instalado com sucesso digitando:

```
conda --version
```

que deve retornar um número de versão.

(rr-renv-package-using)=

## Criando e Usando Ambientes

Conda instala automaticamente um ambiente de base com alguns pacotes de software comumente usados.
É possível trabalhar neste ambiente de base; no entanto, é uma boa prática criar um novo ambiente para cada projeto que iniciar.

To create an environment, use `conda create --name your_project_env_name` followed by a list of packages to include.
To include the `scipy` and `matplotlib` packages, add them to the end of the command:

```
conda create --name Project_One scipy matplotlib
```

You can specify the versions of certain (or all) packages by using `=package_number` after the name. For example, to specify `scipy 1.2.1` in the above environment:

```
conda create --name Project_One scipy=1.2.1 matplotlib
```

Ao criar ambientes, você também pode especificar versões de linguagens para instalar. For example, to use `Python 3.7.1` in the _Project_One_ environment:

```
conda create --name Project_One python=3.7.1 scipy=1.2.1 matplotlib
```

Now that an environment has been created, it is time to activate (start using) it via `conda activate environment_name`.
Então neste exemplo:

```
conda activate Project_One
```

Note that you may need to use `source` instead of `conda` if you are using an old version of Conda.

Uma vez que um ambiente é ativado, você deverá ver o nome do ambiente antes de cada prompt no seu terminal:

```
(Project_One) $ python --version
Python 3.7.1
```

(rr-renv-package-deleting)=

## Desativando e Excluindo Ambientes

Você pode desativar (sair de) um ambiente usando:

```
conda deactivate
```

e remover (excluir) um ambiente como mostrado aqui:

```
conda env remove --name Project_One
```

Para verificar se um ambiente foi removido com sucesso, você pode ver uma lista de todos os ambientes de Conda no sistema utilizando:

```
conda env list
```

No entanto, a exclusão de um ambiente pode não apagar os arquivos do pacote que foram associados a ele.
Isto pode levar a que muita memória seja desperdiçada em pacotes que já não são necessários.
Pacotes que não são mais referenciados por nenhum ambiente podem ser excluídos usando:

```
conda clean -pts
```

Alternatively, you can delete an environment (such as _Project_One_) along with its associated packages via:

```
conda remove --name Project_One --all
```

(rr-renv-package-removing)=

## Instalando e Removendo Pacotes Dentro de Um Ambiente

Dentro de um ambiente, você pode instalar mais pacotes usando:

```
conda install package_name
```

Da mesma forma, você pode removê-los via:

```
conda remove package_name
```

Esta é a melhor maneira de instalar pacotes estando dentro do Conda, pois também instalará uma versão do pacote adaptada ao Conda.
No entanto, é possível utilizar outros métodos se uma versão específica do pacote não estiver disponível.
For example, `pip` is commonly used to install Python packages.
Então, um comando como:

```
pip install scipy
```

will install the `scipy` package explicitly - as long as `pip` is installed inside the currently active Conda environment.
Unfortunately, when Conda and `pip` are used together to create an environment, it can lead to a state that can be hard to reproduce.
Specifically, running Conda after `pip` may potentially overwrite or break packages installed via `pip`.
Uma maneira de evitar isso é instalando o maior número possível de requisitos no Conda, e então usar o pip.
Detailed information can be read on the post, [Using Pip in a Conda Environment](https://www.anaconda.com/using-pip-in-a-conda-environment/).

Embora os pacotes do Python tenham sido usados em muitos dos exemplos dados aqui, os pacotes do Conda não precisam ser pacotes do Python. For example, here the R base language is installed along with the R package `r-yaml`:

```
conda create --name Project_One r-base r-yaml
```

Para ver todos os pacotes instalados no ambiente atual, use:

```
conda list
```

To check if a particular package is installed, for example, `scipy` in this case:

```
conda list scipy
```

Um canal (channel) no Conda é de onde ele baixou um pacote.
Common channels include `Anaconda` (a company which provides the defaults conda package channel), and `conda-forge` (a community-driven packaging endeavour).
Você pode instalar explicitamente um pacote a partir de um determinado canal, especificando-o como:

```
conda install -c channel_name package_name
```

(rr-renv-package-exporting)=

## Exportando e Reproduzindo Ambientes Computacionais

Ambientes Conda podem ser exportados facilmente para arquivos legíveis no formato YAML.
YAML files are discussed in more detail {ref}`later <rr-renv-yaml>` in this chapter.

To export a conda environment to a file called `environment.yml`, activate the environment and then run:

```
conda env export > environment.yml
```

Da mesma forma, ambientes Conda podem ser criados a partir de arquivos YAML via:

```
conda env create -f environment.yml
```

Isso permite que pesquisadores reproduzam os ambientes computacionais uns dos outros rapidamente.
Note que a lista de pacotes não é apenas aqueles explicitamente instalados.
Ela pode incluir pacotes de dependências específicas para Sistema Operacional, então arquivos de ambiente podem exigir alguma edição para ser portátil para diferentes sistemas operacionais.

Os ambientes também podem ser clonados.
Isso pode ser desejável, por exemplo, se um investigador iniciar um novo projeto e quiser criar um novo ambiente para trabalhar nele; o ambiente do novo projeto (pelo menos inicialmente) pode exigir os mesmos pacotes do ambiente de um projeto anterior.

For example, to clone the _Project_One_ environment, and give this new environment the name _Project_Two_:

```
conda create --name Project_Two --clone Project_One
```
