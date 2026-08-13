(testing-checklist)=

# Checklist para testes de código

Essa checklist contém muitos itens.
As [mentioned before](#rr-testing-write-tests), it is far better to do some of the items than none of them.
Não desanime se esta lista de tarefas parecer intransponível.

(testing-checklist:writing-tests)=

## Testes de escrita

- Escrevam algumas provas de fumaça.
- Escreva testes de unidade para todas as unidades do seu código.
- Escreva testes de integração para verificar a integração entre unidades.
- Escreva alguns testes do sistema.  Priorize caminhos comuns e importantes através do programa.
- Escreva testes de regressão.  Podem existir testes de regressão em qualquer nível de teste.
- Se for apropriado para seu projeto, escreva testes de aceitação.
- Adicione testes de tempo de execução ao seu projeto.

(testing-checklist:good-practice-checks)=

## Boas verificações práticas

- Documente os testes e como executá-los.
  - Escreva scripts para configurar e configurar quaisquer recursos necessários para executar os testes.
- Escolha e utilize um framework de testes.
- Execute os testes regularmente.
  - Automatize o processo de execução de testes. Considere usar a integração contínua (veja o capítulo sobre integração contínua) para fazer isso.
- Verifique a cobertura de código dos seus testes e tente melhorá-la.
- Participe da revisão de código com um parceiro.
