(rr-renv)=

# Ambiente Reprodutível

(rr-renv-pré-requisitos)=

## Pré-requisitos

| Pré-requisito                                                              | Importância | Notas                                                                                   |
| -------------------------------------------------------------------------- | ----------- | --------------------------------------------------------------------------------------- |
| {ref}`Experience with the command line<rr-overview-resources-commandline>` | Necessário  | Experiência com download de software através da linha de comando é particularmente útil |
| {ref}`Version Control<rr-vcs>`                                             | Útil        | Experiência usando o git e o GitHub são úteis                                           |

**Recommended Skill Level**: _Intermediate-Advanced_

(rr-renv-summary)=

## Resumo

Every computer has its unique computational environment [{term}`def<Computational Environment>`] consisting of its operating system, installed software, versions of installed software packages, and other features that we will describe later.
Suponhamos que um projecto de investigação seja levado a cabo num computador, mas transferido para outro computador.
Não há garantia de que a análise será capaz de executar ou gerar os mesmos resultados se a análise estiver dependente de qualquer uma das considerações listadas acima.

Para que a investigação seja reprodutível, o ambiente computacional no qual ele foi conduzido deve ser capturado de tal forma que outros possam replicá-lo.
Este capítulo descreve uma variedade de métodos para capturar ambientes computacionais e dá orientações sobre suas forças e fraquezas.

### O que é um ambiente computacional?

Em termos gerais, um ambiente computacional é o sistema onde um programa é executado.
Isso inclui recursos de hardware (como o número de núcleos em qualquer CPU) e recursos de software (como o sistema operacional, linguagens de programação, pacotes de suporte, outros componentes de software instalado, juntamente com suas versões e configurações).

Software versions are often defined via [semantic versioning](https://semver.org).
Neste sistema, três números - por exemplo, 2.12.4 - são utilizados para definir cada versão de um pedaço de software.
Quando se faz uma mudança no software, a sua versão é aumentada.
These three numbers follow the pattern _MAJOR.MINOR.PATCH_, and are incremented as follows:

- _MAJOR_: significant changes
- _MINOR_: to add functionality
- _PATCH_: for bug fixes

(rr-renv-útil)=

## Motivação e Antecedentes

Vamos analisar um exemplo de por que os ambientes computacionais são importantes.
Diga que tenho um script Python muito simples:

```
a = 1
b = 5
print(a/b)
```

One divided by five is `0.2`, and this is what is printed if the script is run using Python 3.
However, if a slightly older version of Python, such as Python 2, is used, the result printed is `0`.
Isto porque a divisão de números inteiros é aplicada a números inteiros do Python 2, mas a divisão (normal) é aplicada a todos os tipos, incluindo inteiros, em Python 3.

Therefore this simple script returns _different_ answers depending on the computational environment in which it is run.
Usar a versão errada do Python é fácil de fazer, e demonstra como uma peça de código perfeitamente válida pode dar resultados diferentes dependendo de seu ambiente.
Se tais issues podem afetar um script simples como este, Imaginem quantos poderão aparecer num processo de análise complexo que poderá envolver milhares de linhas de código e dezenas de pacotes dependentes.

Pesquisadores precisam entender e capturar os ambientes computacionais nos quais eles estão conduzindo seu trabalho, já que ele tem o potencial de impactar três partes:

### Pesquisadores

Os ambientes de trabalho dos pesquisadores evoluem à medida que eles atualizam software, instalam novos softwares e movem para diferentes computadores.
Se o ambiente do projeto não for capturado e os pesquisadores precisarem retornar ao seu projeto ao fim de meses ou anos (como é comum na pesquisa), Eles não poderão fazê-lo com confiança.
Eles não terão como saber quais mudanças em um ambiente específico de pesquisa ocorreram e qual o impacto que essas mudanças podem ter na sua capacidade de executar o código. e nos resultados.

### Colaboradores

Muitas pesquisas agora são colaborativas, e pesquisar vários ambientes computacionais diferentes abre um campo minado de erros em potencial.
Tentar corrigir esses tipos de problemas é frequentemente demorado e frustrante, já que os pesquisadores precisam descobrir quais são as diferenças entre os ambientes computacionais e seus efeitos.
Pior, alguns bugs podem permanecer não detectados, potencialmente afetando os resultados.

### Ciências

Pesquisa acadêmica tem evoluído significativamente na última década, mas o mesmo não se pode dizer dos métodos pelos quais os processos de investigação são capturados e difundidos.
O principal método de difusão - a publicação académica - permanece praticamente inalterado desde o aparecimento da revista científica dos anos 1660.
Isto já não é suficiente para verificar, reproduzir e alargar os resultados científicos.
Apesar do reconhecimento crescente da necessidade de partilhar todos os aspectos do processo de investigação, Hoje em dia, as publicações acadêmicas muitas vezes são desconectadas da análise subjacente e, o que é crucial, do ambiente computacional que produziu as descobertas.
Para que a investigação seja reprodutível, os investigadores têm de publicar e distribuir toda a análise contida e não apenas os seus resultados.
The analysis should be _mobile_.
Mobilidade do Computador é definida como a habilidade de definir, criar, e manter um fluxo de trabalho localmente enquanto permanece confiante de que o fluxo de trabalho pode ser executado em outro lugar.
Essencialmente, a mobilidade de computação significa poder conter toda a pilha de software, de arquivos de dados através da pilha de biblioteca, e de forma confiável movê-lo do sistema para o sistema.
Qualquer investigação limitada ao local onde pode ser utilizada é instantaneamente limitada, na medida em que pode ser reproduzida.

Este capítulo descreverá como capturar, preservar e compartilhar ambientes computacionais e código para garantir que a pesquisa seja reprodutível.
