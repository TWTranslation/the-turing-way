(rr-renv-yaml)=
# YAML

O YAML é uma linguagem de marcação baseada no dentro, que visa ser fácil de ler e fácil de escrever. Muitos projetos o usam para arquivos de configuração por causa de sua legibilidade, simplicidade e bom suporte para muitas linguagens de programação. Ele pode ser usado para muitas coisas, incluindo a definição de ambientes computacionais e está bem integrado com as [ações do GitHub](https://travis-ci.org/), que é discutido no capítulo {ref}`rr-ci-github-actions`.

(rr-renv-yaml-files)=
## Arquivos YAML

Um arquivo YAML que define um ambiente computacional pode parecer algo como isto:

```
# Defina o sistema operacional como Linux
os: linux

# Use a distribuição xenófoba do Linux
distância: xenial

# Use a linguagem de programação Python
idioma: python

# Use a versão do Python 3.
python: 3.2

# Use o pacote Python numpy e use a versão 1. Pacotes 6.1
:
  numpy:
    versão: 1.16.1
```

Observe que os comentários podem ser adicionados precedendo eles com um `#`.

(rr-renv-yaml-sintaxe)=
## Sintaxe YAML

Um documento YAML pode consistir dos seguintes elementos.

(rr-renv-yaml-sintaxe escalar)=
### Escamas

Os escamas são valores comuns: números, strings, booleanos.

```
número-valor: 42
floating-point value: 3.141592
booleano: true

# strings podem ser ambas 'unle-quoted' e "double-quoted"
valor-string: 'Bonjour'
```

A sintaxe YAML também permite strings não cotadas valores por razões de conveniência:

```
texto sem citação: Olá Mundo
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

Cada elemento da lista é endentado e começa com um traço e um espaço.

Dicionários são coleções de `chave: valor` mapeamentos. Todas as chaves diferenciam maiúsculas de minúsculas.

```
jedi:
  name: Obi-Wan Kenobi
  planet: Stewjon
  espécies: humano
  master: Qui-Gon Jinn
  altura: 1.82m
```

Note que um espaço após o dobro é obrigatório.

(rr-renv-yaml-syntax-gotchas)=
### Pegadas YAML

Devido ao formato buscando ser fácil de escrever e ler, existem algumas ambiguidades no YAML.

- **Caracteres especiais em frases sem citação:** YAML tem vários caracteres especiais que não podem ser usados em frases sem citação. Por exemplo, analisar a seguinte amostra falhará:
  ```
  texto sem citação: deixe-me colocar dois pontos aqui: oops
  ```
  Citar o valor string torna este valor inequívoco:
  ```
  texto sem citação: "Deixe-me colocar dois pontos aqui: oops"
  ```
  Geralmente, você deve citar todas as frases que contenham qualquer um dos seguintes caracteres: `[] {} : > e`.
- **Guias versus espaços para indentação:** _não_ usam abas para indentação. Embora o YAML resultante ainda possa ser válido, isso pode ser uma fonte de muitos erros de análise sutil. Use apenas espaços.

(rr-renv-yaml-ambientes)=
## Como usar Yaml para definir ambientes computacionais

Por causa da sua simplicidade, arquivos YAML podem ser escritos à mão. Como alternativa, eles podem ser gerados automaticamente conforme discutido no subcapítulo {ref}`rr-renv-package`. De um arquivo YAML, um ambiente computacional pode ser replicado de algumas maneiras.

- **Manualmente.** Isso pode ser feito manualmente instalando cuidadosamente os pacotes especificados. Porque os arquivos YAML também podem especificar sistemas operacionais e versões que podem ou não coincidir com a da pessoa que tenta replicar o ambiente, isso pode exigir o uso de {ref}`rr-renv-vm`.

- **Por meio de Sistemas de Gerenciamento de Pacotes como Conda.** Como {ref}`discutiu <rr-renv-package>`, além de poder gerar arquivos YAML a partir de ambientes computacionais, Conda também pode gerar ambientes computacionais de arquivos YAML.

(rr-renv-yaml-security)=
## Problemas de Segurança

Existe um risco inerente em baixar/usar arquivos que você não escreveu no seu computador, e é possível incluir código malicioso nos arquivos YAML. Não carregue arquivos YAML nem gere ambientes computacionais a partir deles, a menos que confie na sua fonte.
