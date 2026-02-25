(rr-code-reuse-details)=

# Recomendações detalhadas para reutilização de código

Make sure you (or somebody else) can reuse your code to do the same exact thing you did.
Esta seção contém uma lista simples de recomendações para tornar seu software mais reutilizável.
Esta seção contém uma explicação mais aprofundada de cada uma dessas recomendações, com indicações para outras partes relevantes deste guia.

## Recomendações repetíveis

Nesse estágio, talvez você nem precise abrir o código e lê-lo. Você só quer ter certeza de que pode executar novamente todas as etapas necessárias e obter os mesmos resultados.

### 1. Certifique-se de que você pode encontrá-lo (no espaço)

Seu código deve ser armazenado publicamente e compartilhado com colaboradores. Ele deve ter um identificador único e persistente, para que todos possam encontrá-lo e acessá-lo.

**See also**: {ref}`rr-vcs`

### 2. Certifique-se de que você pode encontrá-lo (no tempo)

O ideal é que a evolução temporal do código seja documentada com controle de versão. Isso permite que você recupere uma versão específica do passado.

**See also**: {ref}`rr-vcs`

### 3. Certifique-se de que você pode executar a mesma sequência de operações

Muitas vezes, o ser humano que configurou o ambiente também é quem escreveu o código e quem sabe a ordem exata dos passos necessários para poder executar novamente o código e reproduzir os resultados.
Isso certamente pode ser cuidadosamente documentado para que outro ser humano pudesse fazer o mesmo.

**See also**: [CodeRefinery lesson on Reproducible Research](https://coderefinery.github.io/reproducible-research/)

### 4. Certifique-se de que seu ambiente e sequência de operações sejam robustos o suficiente para que nenhum ser humano seja necessário para replicar o que foi feito

Você não quer depender de humanos.
Eles tendem a cometer erros mesmo que não tenham más intenções.
Portanto, você quer que seu ambiente seja programado e recriado quando necessário e quer que sua sequência de operações seja executada por um pipeline que una toda a sequência de etapas.
Um bom efeito colateral de criar um script para a sequência de operações é que isso geralmente pode servir como documentação das etapas.

**See also**: {ref}`rr-renv-options`

### 5. Licencie seu código

Make sure you attach a license to your code and specify how you want to be cited when people reuse it.
Considere usar uma licença permissiva que permita a reutilização.
Além disso, você deve escolher uma licença que seja compatível com as licenças das bibliotecas ou pacotes dos quais seu software depende.

**See also**: {ref}`rr-licensing`, {ref}`rr-licensing-floss`, {ref}`rr-licensing-compatibility`

### 6. Certifique-se de que seja citável

Make sure to specify how you want to be cited when people reuse it.

**See also**: {ref}`cm-citable-cite-software`

### 7. Incluir os dados necessários

Se o software depender de qualquer tipo de dado, os dados devem estar disponíveis

**See also**: {ref}`rr-rdm-data`

## Recomendações reexecutáveis

Make sure you (or others) can reuse it to do the thing you did, but with different data/different parameters

### 1. Remova as porções hard-coded e modularize o código

Você não quer ter detalhes específicos dos seus dados ou parâmetros de análise codificados no código.
Se algo pode se tornar uma função reutilizável, separe-o dos parâmetros codificados diretamente no código e transforme-o em algo (re)utilizável de forma independente.
Torne os módulos puros: dada a mesma entrada, uma função pura sempre retorna o mesmo valor.
Em vez de especificar caminhos de arquivos dentro dos scripts, considere passá-los como argumentos de linha de comando para um script mais portátil e geral e reutilizável.

**See also**: [CodeRefinery Modular Code Development lesson](https://cicero.xyz/v3/remark/0.14.0/github.com/coderefinery/modular-code-development/master/talk.md/#1)

### 2. Teste se os módulos que você criou podem receber diferentes tipos de dados de entrada ou parâmetros

Talvez você ainda não saiba como seu código será reutilizado no futuro, mas pode evitar que ele não seja usado de maneira errônea se puder testar quais parâmetros são permitidos.

**See also**: [CodeRefinery lesson on Automated testing](https://coderefinery.github.io/testing/motivation/)

### 3. Transforme os módulos em um pacote

Separe ainda mais as especificidades do seu projeto das partes que podem ser reutilizadas em outros projetos seus ou de outras pessoas.

**See also**: {ref}`rr-renv-package`, [Packaging software](https://scicomp.aalto.fi/scicomp/packaging-software/), [Software packaging in Python](https://aaltoscicomp.github.io/python-for-scicomp/packaging/)

## Recomendações de portabilidade

Portabilidade refere-se à capacidade de transferir software para um novo ambiente.
Isso pode se referir a uma máquina idêntica (mas não a mesma), mas também pode se referir a uma nova arquitetura de hardware, sistema operacional e coisas do tipo.
Ambos são importantes para a reutilização de software.

### 1. Certifique-se de que você pode recriar o ambiente em que ele vivia

O ambiente é um retrato frágil que acompanha silenciosamente o código.
Ele pode incluir o ser humano que operou o software, as etapas que o ser humano realizou para preparar os dados, o hardware, o sistema operacional, as bibliotecas, pacotes e dependências externas.
Tudo isso pode ser cuidadosamente documentado para que outro ser humano possa refazer exatamente os mesmos passos.

**See also**: {ref}`rr-renv`

## Recomendações extensíveis e modificáveis

Certifique-se de que outras pessoas possam desenvolver seu código para ampliá-lo e aprimorá-lo.

### 1. Certifique-se de que seu código seja legível por humanos

Em geral, vale mais a pena escrever código para outros seres humanos para que eles possam lê-lo (inclusive seu futuro eu).
Uma linha de comando enigmática com nomes de variáveis obscuros não é mais rápida nem mais eficiente do que dividir a linha de comando em várias etapas com nomes de variáveis legíveis que façam sentido.
Além disso, usar convenções de código ajudará outros leitores.

**See also**: {ref}`rr-code-style-and-formatting`, {ref}`rr-code-quality-advantages`

### 2. Certifique-se de que hajam comentários

Escreva comentários antes de escrever o código propriamente dito. Imagine que alguém pudesse simplesmente ler os comentários e pular todos os trechos de código entre os comentários e ter uma visão completa do que está acontecendo como se tivesse lido o código inteiro.
