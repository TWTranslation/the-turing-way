(rr-code-reuse-recommendations)=

# Visão geral da reutilização do código

Esta seção contém uma lista simples de recomendações para tornar seu software mais reutilizável.
The {ref}`rr-code-reuse-details` section contains a more in-depth explanation of each of these recommendations.
Você pode seguir as recomendações mais adequadas ao seu tipo de software e pular aquelas que não são relevantes para o seu caso.

## Recomendações repetíveis

1. Certifique-se de que você pode encontrá-lo (no espaço; significado: conseguir localizar o repositório/projeto)
2. Certifique-se de que você pode encontrá-lo (no tempo; significado: conseguir localizar uma determinada versão)
3. Certifique-se de que você pode executar a mesma sequência de operações
4. Certifique-se de que seu ambiente e sequência de operações sejam robustos o suficiente para que nenhum ser humano seja necessário para replicar o que foi feito
5. Licencie seu código
   - com uma licença que permite a reutilização;
   - com uma licença compatível com as licenças das dependências
6. Certifique-se de que seja citável
7. Incluir os dados necessários
8. Escreva documentação útil\*

## Recomendações reexecutáveis

1. Remova porções hard-coded (como caminhos que só existiam no disco rígido onde o pipeline era executado) e modularize o código
2. Teste se os módulos que você criou podem receber diferentes tipos de dados de entrada ou parâmetros
3. Transforme os módulos em um pacote
4. Escreva documentação útil\*

## Recomendações de portabilidade

1. Certifique-se de que você pode recriar o ambiente em que ele vivia
2. Escreva documentação útil\*

## Recomendações extensíveis

1. Escreva documentação útil\*

## Recomendações modificáveis

1. Certifique-se de que seu código seja legível por humanos
2. Certifique-se de que hajam comentários
3. Escreva documentação útil\*

The observant reader might will notice that `Write useful documentation` is mentioned for every level of reuse.
Isso ocorre porque diferentes níveis de documentação são necessários para diferentes níveis de reutilização.

## Documentação

_Different documentation requirements for different levels of reuse_

Escrever documentação útil é um requisito importante para todos os níveis de reutilização.
No entanto, para os diferentes níveis de reutilização, há diferentes requisitos de documentação:

A documentação:

- explica o uso, especificando:
  - o que o software faz; (necessário para repetível)
  - como pode ser usado; (necessário para repetível)
  - quais opções/parâmetros estão disponíveis. (necessário para repetível)
- contém exemplos de como executar o código. (necessário para repetível)
- tem instruções de instalação, incluindo descrições detalhadas de:
  - o hardware do qual ele depende (por exemplo, GPUs); (necessário para portabilidade)
  - o sistema operacional no qual o software foi testado; (necessário para portabilidade)
  - requisitos de software (como bibliotecas e configurações do shell). (necessário para portabilidade)
