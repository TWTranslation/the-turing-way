(rr-renv-yaml)=

# YAML

O YAML é uma linguagem de marcação ("markup language") baseada em indentação, que visa ser fácil de ler e fácil de escrever.
Muitos projetos o usam para arquivos de configuração por causa de sua legibilidade, simplicidade e bom suporte para muitas linguagens de programação.
It can be used for many things, including defining computational environments, and is well integrated with [GitHub actions](https://github.com/actions), which is discussed in the {ref}`rr-ci-github-actions` chapter.

(rr-renv-yaml-files)=

## Arquivos YAML

Um arquivo YAML que define um ambiente computacional pode parecer algo como isto:

```
# Define the operating system as Linux
os: linux

# Use the xenial distribution of Linux
dist: xenial

# Use the programming language Python
language: python

# Use version of Python 3.2
python: 3.2

# Use the Python package numpy and use version 1.16.1
packages:
  numpy:
    version: 1.16.1
```

Note that comments can be added by preceding them with a `#`.

(rr-renv-yaml-syntax)=

## Sintaxe YAML

Um documento YAML pode consistir dos seguintes elementos.

(rr-renv-yaml-syntax-scalars)=

### Scalars

Os scalars (escalares) são valores comuns: números, strings, booleanos.

```
number-value: 42
floating-point-value: 3.141592
boolean-value: true

# strings can be both 'single-quoted` and "double-quoted"
string-value: 'Bonjour'
```

A sintaxe YAML também permite strings não aspas valores por razões de conveniência:

```
unquoted-string: Hello World
```

(rr-renv-yaml-syntax-lists)=

### Listas e Dicionários

Listas são coleções de elementos:

```
jedis:
  - Yoda
  - Qui-Gon Jinn
  - Obi-Wan Kenobi
  - Luke Skywalker
```

Cada elemento da lista é indentado e começa com um traço e um espaço.

Dictionaries are collections of `key: value` mappings.
Todas as chaves diferenciam maiúsculas de minúsculas.

```
jedi:
  name: Obi-Wan Kenobi
  home-planet: Stewjon
  species: human
  master: Qui-Gon Jinn
  height: 1.82m
```

Note que um espaço após os dois-pontos é obrigatório.

(rr-renv-yaml-syntax-gotchas)=

### Sacadas do YAML

Devido ao formato ter o objetivo de ser fácil de escrever e ler, existem algumas ambiguidades no YAML.

- **Special characters in unquoted strings:** YAML has several special characters you cannot use in unquoted strings.
  Por exemplo, analisar (fazer parsing) oo seguinte exemplo falhará:
  ```
  unquoted-string: let me put a colon here: oops
  ```
  Colocar aspas na string tira a ambiguidade:
  ```
  unquoted-string: "let me put a colon here: oops"
  ```
  Generally, you should quote all strings that contain any of the following characters: `[] {} : > |`.
- **Tabs versus spaces for indentation:** do _not_ use tabs for indentation.
  Embora o YAML resultante ainda possa ser válido, isso pode ser uma fonte de muitos erros sutis de parsing.
  Use apenas espaços.

(rr-renv-yaml-environments)=

## Como Usar YAML para Definir Ambientes Computacionais

Por causa da sua simplicidade, arquivos YAML podem ser escritos à mão.
Alternatively, they can be automatically generated as discussed in the {ref}`rr-renv-package` subchapter.
De um arquivo YAML, um ambiente computacional pode ser replicado de algumas maneiras.

- **Manually.** It can be done manually by carefully installing the specified packages.
  Because YAML files can also specify operating systems and versions that may or may not match that of the person trying to replicate the environment, this may require the use of {ref}`rr-renv-vm`.

- **Via Package Management Systems such as Conda.** As {ref}`discussed <rr-renv-package>`, as well as being able to generate YAML files from computational environments, Conda can also generate computational environments from YAML files.

(rr-renv-yaml-security)=

## Problemas de Segurança

Existe um risco inerente de baixar/usar arquivos que você não escreveu no seu computador, e é possível incluir código malicioso nos arquivos YAML.
Não carregue arquivos YAML nem gere ambientes computacionais a partir deles, a menos que confie na sua fonte.
