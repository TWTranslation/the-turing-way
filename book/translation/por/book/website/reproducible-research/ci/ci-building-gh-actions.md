(rr-ci-building-gh-actions)=
# Construindo um bloco de ações do Github

Conforme descrito anteriormente, os arquivos de fluxo de trabalho usam sintaxe YAML, que tem ou uma extensão de arquivo `.yml` ou `.yaml`. Se você é novo no YAML e quer aprender mais, {ref}`veja nossa seção sobre o YMAL<rr-renv-yaml>`. Este arquivo de fluxo de trabalho deve ser armazenado no diretório `.github/workflows` do repositório.

Cada fluxo de trabalho é definido em um YAML separado. Vamos introduzir o bloco de construção de um fluxo de trabalho usando o exemplo Hello World:

```
name:
    Hello World package
on:
  push:
    branches: [ main ]
Jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
```

**1. Nome**

Esse é o nome do fluxo de trabalho e é opcional. O GitHub usará este nome para ser exibido na página de ações do repositório.
```
nome:
    Pacote Hello World
```

**2. ligado**

O `no campo` informa ao GHA quando executar. Por exemplo, podemos executar o fluxo de trabalho sempre que houver um `push` ou um `pull` no `branch principal`.
```
em:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]
```
Há vários eventos que podem ser usados para acionar um fluxo de trabalho. Você pode explorá-los [aqui](https://docs.github.com/en/free-pro-team@latest/actions/reference/workflow-syntax-for-github-actions).

**3. empregos e etapas**

Este bloco define o componente principal de um fluxo de trabalho Acção. Fluxo de trabalho são feitos de `empregos`. Cada trabalho também precisa de uma máquina host específica na qual ser executado, o `é executado:` campo é como especificamos. O workflow do modelo está executando o `build` job na versão mais recente do Ubuntu, um sistema operacional baseado no Linux.

```
jobs:
  build:
  runs-on: ubuntu-latest
```

Também podemos separar as funções de `compilação` e `teste` do nosso fluxo de trabalho em mais de uma tarefa que será executada quando o nosso fluxo de trabalho for acionado. Trabalhos são feitos de `etapas`. Eles permitem que você defina o que será executado em cada tarefa. Há três maneiras de definir os passos.

- Com `usa`
- Com o `executar`
- Com `nome`

```

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
  test:
    steps:
    - name: npm install
      run: 
-
        npm install
        npm test
```

A ação mais básica é `actions/checkout@v2`. Isto usa uma ação fornecida pelo GitHub chamada [`checkout`](https://github.com/actions/checkout) para permitir que o fluxo de trabalho acesse o conteúdo do repositório. Todos os passos de um trabalho executado sequencialmente no runner associado ao trabalho. Por padrão, se uma etapa falhar, os passos subsequentes do trabalho são ignorados. A palavra-chave de cada execução representa um novo processo e concha no ambiente de runner. Quando você fornece comandos com várias linhas, cada linha é executada no mesmo shell.

Proporcionar um guia abrangente de todas as opções disponíveis ultrapassa o âmbito desta visão geral e, em vez disso, pedimos que você estude a [documentação de referência oficial](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions) e/ou as referências dos projetos de código aberto da configuração do CI na seção anterior.
