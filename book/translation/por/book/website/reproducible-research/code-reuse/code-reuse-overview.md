(rr-code-reuse-recomendações)=
# Visão geral da reutilização do código

Esta seção contém uma lista de verificações de recomendações para tornar seu software mais reutilizável. A seção de detalhes`rr-code-reuse-` do {ref}contém uma explicação mais aprofundada de cada uma dessas recomendações. Você pode seguir as recomendações que são mais adequadas para o seu tipo de software e ignorar as que não são relevantes no seu caso.

## Recomendações Repetidas

1. Certifique-se de que você pode encontrá-lo (no espaço; significado: ser capaz de localizar o repositório/projeto)
1. Certifique-se de que você pode encontrá-lo (no tempo; significado: ser capaz de localizar uma determinada versão)
1. Certifique-se de que você pode executar a mesma sequência de operações
1. Certifique-se de que seu ambiente e sequência de operações são robustos e nenhum humano é necessário para replicar o que foi feito
1. Licença do seu código
    - com uma licença que permite reutilização;
    - com uma licença compatível com as licenças das dependências
1. Certifique-se de que está acessível
1. Incluir os dados necessários
1. Escrever documentação útil*

## Recomendações reexecutáveis

1. Remova bits codificados (como caminhos que só existiam no disco rígido onde o pipeline era executado) e faça o código modular
1. Teste se os módulos que você criou podem ter diferentes tipos de dados ou parâmetros de entrada
1. Transformar os módulos em um pacote/caixa de ferramentas
1. Escrever documentação útil*

## Recomendações Portáteis
1. Certifique-se de que você pode recriar o ambiente onde ele viveu.
1. Escrever documentação útil*

## Recomendações Extensíveis
1. Escrever documentação útil*

## Recomendações modificáveis
1. Certifique-se de que seu código é legível por humanos
1. Certifique-se de que os comentários estão presentes
1. Escrever documentação útil*

O leitor observante pode notar que `Escrever documentação útil` é mencionada para cada nível de reutilização. Isto deve-se ao facto de serem necessários diferentes níveis de documentação para diferentes níveis de reutilização.

## Documentação

*Diferentes requisitos de documentação para diferentes níveis de reutilização*

Escrever documentação útil é um requisito importante para todos os níveis de reutilização. No entanto, para os diferentes níveis de reutilização, existem diferentes requisitos de documentação:

A documentação:
- explica o uso, especificação:
  - o que o software faz; (necessário para repetição)
  - como pode ser usado; (necessário para repetição)
  - que opções/parâmetros estão disponíveis. (necessário para repetição)
- contém exemplos de como executá-lo. (necessário para repetição)
- tem instruções de instalação, incluindo boas descrições de:
  - o hardware do qual depende (por exemplo GPUs); (necessário para portátil)
  - o sistema operacional no qual o software foi testado; (necessário para portátil)
  - requisitos de software (como bibliotecas e configurações de shello). (necessário para portátil)
