(rr-testing-systemtest)=
# Teste de Sistema

Quando os testes de integração são realizados, outro nível de testes chamado sistema de teste pode começar. O teste do sistema é um nível de teste de software onde um software completo e integrado é testado. O testador fornece ao programa a entrada e verifica se a saída do programa está correta. Se não for esse o caso, há um problema algures no sistema. Note que isso não precisa ser feito manualmente, pode ser automatizado. O propósito destes testes é avaliar a conformidade do sistema com os requisitos especificados. Em muitos aspectos, o sistema de testes funciona como uma extensão para testes de integração. O foco dos testes de sistema consiste em garantir que os grupos de componentes funcionem correctamente como um todo coeso.

No entanto, em vez de focar nas interfaces entre componentes, testes do sistema tipicamente avaliam a funcionalidade exterior de um software completo. Este conjunto de testes ignora as partes constituintes para aferir o software composto como uma entidade unificada. Por causa desta distinção, testes do sistema geralmente focam em saídas acessíveis pelo usuário ou externo.

O teste do sistema também pode testar funcionalidades do sistema que não sejam corretas. Os exemplos incluem:

- Teste de desempenho: o desempenho do programa atende aos requisitos mínimos? Um teste de desempenho pode medir quanto tempo o sistema leva para ser executado em um determinado caso.
- Teste de migração: o programa funciona quando transferido para outro ambiente computacional?
- Teste de estres/escala/carregamento: testando como o programa se comporta quando sob estresse, por exemplo, quando necessário para processar volumes muito grandes de dados.
- Teste de usabilidade: quão fácil o programa é do usuário (mais comum em softwares comerciais, testes tipicamente conduzidos por seres humanos, em vez de automatizados).
- Teste de recuperação: se o programa pode continuar se ocorrerem erros (novamente, mais comum em software comercial).

## Dicas de Teste

Os testes do sistema, também chamados testes de ponta a ponta, executam o programa, bem, do fim ao fim. Como tal, estes são os testes mais demorados a serem executados. Portanto, você só deve executá-los se todos os testes de nível inferior (unidade, integração) já tiverem passado. Se eles não estiverem, corrija os problemas detectados primeiro antes de perder tempo executando os testes do sistema.

Devido à sua natureza demorada, também será frequentemente impraticável ter testes de sistema suficientes para rastrear todas as vias possíveis através de um programa, especialmente se houver um número significativo de declarações condicionais. Portanto, você deve considerar os casos de teste do sistema que você corre cuidadosamente e prioridade:

- As rotas mais comuns por meio de um programa.
- As rotas mais importantes para um programa. Por exemplo, o detector da LIGO pretende encontrar acontecimentos gravitacionais muito raros. Se há um erro nesse caminho através do programa que monitora o detector, então é um problema de *enorme*.
- Casos propensos a falhas devido a problemas estruturais dentro do programa. Embora idealmente, é melhor apenas corrigir esses problemas, mas existem casos onde isso pode não ser possível.

Como os testes do sistema podem ser demorados, pode ser impraticável executá-los muito regularmente (como várias vezes ao dia após pequenas alterações no código). Portanto, pode ser uma boa ideia executá-los todas as noites (e automatizar esse processo), de modo que, se forem introduzidos erros que apenas os testes do sistema possam detectar o programador de forma relativamente rápida.
