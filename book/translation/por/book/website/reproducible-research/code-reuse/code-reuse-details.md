
(rr-code-reuse-details)=
# Recomendações detalhadas para reutilização de código

Certifique-se de que você (ou outra pessoa) pode reutilizar o seu código para fazer a mesma coisa exatamente. Esta seção contém uma lista de verificações simples de recomendações para tornar seu software mais reutilizável. Nesta secção há uma explicação mais aprofundada de cada uma destas recomendações, com indicações para outras partes relevantes deste guia.

## Recomendações Repetidas

Neste estágio, talvez você não precise sequer abrir o código e lê-lo, você só quer ter certeza de que pode voltar a executar todas as etapas necessárias e obter os mesmos resultados que você tiu.

### 1. Certifique-se de que você pode encontrá-lo (no espaço)

Seu código deve ser armazenado publicamente e compartilhado com os colaboradores. Tem um identificador único e persistente, para que todos possam encontrá-lo e acessá-lo.

**Veja também**: {ref}`rr-vcs`

### 2. Certifique-se de que você possa encontrá-lo (em tempo)

Idealmente, a evolução temporal do código está documentada com controle de versão. Isso permite que você recupere uma versão específica do passado.

**Veja também**: {ref}`rr-vcs`

### 3. Certifique-se de que você pode executar a mesma sequência de operações

Muitas vezes, o ser humano que criou o ambiente é também aquele que escreveu o código e aquele que conhece a ordem exacta dos passos necessários para poder reexecutar o código e reproduzir os resultados. Isto poderia certamente ser cuidadosamente documentado para que outro humano o refaça.

**Veja também**: [Lição do CodeRefinery sobre Pesquisa Reprodutiva](https://coderefinery.github.io/reproducible-research/)

### 4. Certifique-se de que seu ambiente e sequência de operações são robustos e nenhum humano é necessário para replicar o que foi feito

Não querem depender do ser humano. Tendem a cometer erros, mesmo que não tenham más intenções. Então você quer que seu ambiente seja escrito e seja re-criado quando necessário, e deseja que sua sequência de operações seja executada por um script de pipeline que cola todas as sequências de passos. Um bom efeito lateral de escrever a sequência de operações é que isso geralmente pode servir como documentação das etapas.

**Veja também**: {ref}`rr-renv-options`

### 5. Licença do seu código

Certifique-se de anexar uma licença ao seu código e especifique como você deseja ser citado quando as pessoas a reutilizarem. Considere usar uma licença permissiva que permita a reutilização. Além disso, você deve escolher uma licença que seja compatível com as licenças das bibliotecas ou pacotes que o seu software depende.

**Veja também**: {ref}`rr-licensing-software`, {ref}`rr-licensing-software-permissive`, {ref}`rr-licensing-compatibilidade`

### 6. Certifique-se de que está acessível

Certifique-se de especificar como você deseja ser citado quando as pessoas o reutilizarem.

**Veja também**: {ref}`cm-citable-cite-software`

### 7. Incluir os dados necessários

Se o software depende de qualquer tipo de dados, os dados devem estar disponíveis

**Veja também**: {ref}`rr-rdm-data`

## Recomendações reexecutáveis

Certifique-se de que você (ou outros) pode reutilizá-lo para fazer a coisa que você fez, mas com diferentes dados/parâmetros diferentes

### 1. Remova bits codificados e faça o código modular
Você não quer ter detalhes específicos de seus dados ou parâmetros de análise codificados no código. Se algo pode se tornar uma função reutilizável, separe-a dos parâmetros codificados e transforme-a em algo (re)usável por conta própria. Torne os módulos puros: dado o mesmo input, uma função pura sempre retorna o mesmo valor. Em vez de especificar caminhos de arquivos dentro dos scripts, considere passá-los como argumentos de linha de comando para um script mais portátil e geral e reutilizável.

**Veja também**: [lição de desenvolvimento do CodeRefinery Modular Code](https://cicero.xyz/v3/remark/0.14.0/github.com/coderefinery/modular-code-development/master/talk.md/#1)

### 2. Teste se os módulos que você criou podem ter diferentes tipos de dados ou parâmetros de entrada
Você talvez não saiba ainda como seu código será reutilizado no futuro. mas você pode evitar como não deve ser usado se você puder testar quais parâmetros são permitidos.

**Veja também**: [Aula com CodeRefinery sobre testes automatizados](https://coderefinery.github.io/testing/motivation/)

### 3. Transformar os módulos em um pacote/caixa de ferramentas
Separe ainda mais as especificações do seu projeto com os bits que podem ser reutilizados em outros de seus projetos ou por outras pessoas.

**Veja também**: {ref}`rr-renv package`, [Packaging software](https://scicomp.aalto.fi/scicomp/packaging-software/), [Pacotes de software em Python](https://aaltoscicomp.github.io/python-for-scicomp/packaging/)

## Recomendações Portáteis
A portabilidade refere-se à capacidade de transferir software para um novo ambiente. Isso pode se referir a uma máquina idêntica (mas não a mesma), mas também pode se referir a uma nova arquitectura de hardware, sistema operacional e coisas assim. Ambos são importantes para a reutilização de software.

### 1. Certifique-se de que você pode recriar o ambiente onde ele viveu.
O ambiente é um instantâneo frágil no tempo que acompanha silenciosamente o código. Pode incluir o humano que operou o software, os passos que o humano fez para preparar os dados, o hardware, SO, bibliotecas, pacotes/caixas/dependências externas. Tudo isto pode ser cuidadosamente documentado para que outro ser humano refaça os mesmos passos.

**Veja também**: {ref}`rr-renv`

## Recomendações extensíveis e modificáveis
Certifique-se de que outros podem usar o seu código para estendê-lo e melhorá-lo.

### 2. Certifique-se de que seu código é legível por humanos
Geralmente, paga mais escrever códigos para outros seres humanos para que eles possam lê-lo (incluindo o seu próprio futuro). Um isolante crítico com nomes de variáveis obscuros não é mais rápido ou mais eficiente do que dividir um linho em várias etapas com nomes de variáveis legíveis que fazem sentido. Além disso, o recurso a convenções de codificação ajudará outros leitores.

**Veja também**: {ref}`rr-code-style-and-formatting`, {ref}`rr-code-quality-advantages`

### 3. Certifique-se de que os comentários estão presentes
Escreva comentários antes de escrever o código real. Imagine que alguém poderia ler os comentários e pular todos os bits de código entre comentários e ter uma imagem completa do que está acontecendo como se lesse o código inteiro.
