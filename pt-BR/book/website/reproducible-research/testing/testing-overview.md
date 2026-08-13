(rr-testing-overview)=

# Visão geral dos Tipos de Teste

Há vários tipos de testes, que serão aqui discutidos.

Em primeiro lugar, há testes positivos e testes negativos.
Testes positivos verificam se algo funciona, por exemplo, testando que uma função que multiplica alguns números juntos produz a resposta correta.
Testes negativos verificam que algo gera um erro quando deveria.
Por exemplo, nada pode ser mais rápido do que a velocidade da luz. então um código de simulação da física de plasma pode conter um teste de que um erro é gerado se houver alguma partícula mais rápido que isso, conforme indica que existe um problema mais profundo no código.

Para além destes dois tipos de testes, existem também diferentes níveis de testes que testam diferentes aspectos de um projecto.
Estes níveis estão descritos abaixo e tanto os testes positivos como os negativos podem estar presentes em qualquer um destes níveis.
Um conjunto de testes completo conterá testes a todos estes níveis (embora alguns níveis precisem de poucos).

(rr-testing-types-of-testing)=

## Tipos de Teste

[](#rr-testing-smoketest): Very brief initial checks that ensures the basic requirements required to run the project hold.
If these fail there is no point proceeding to additional levels of testing until they are fixed.

[](#rr-testing-unittest): A level of the software testing process where individual units of a software are tested. The purpose is to validate that each unit of the software performs as designed.

[](#rr-testing-types-integrationtest): A level of software testing where individual units are combined and tested as a group.
The purpose of this level of testing is to expose faults in the interaction between integrated units.

[](#rr-testing-systemtest): A level of the software testing process where a complete, integrated system is tested.
The purpose of this test is to evaluate whether the system as a whole gives the correct outputs for given inputs.

[](#rr-testing-acceptance-regression): A level of the software testing process where a system is tested for acceptability.
The purpose of this test is to evaluate the system's compliance with the project requirements and assess whether it is acceptable for the purpose.

Aqui está uma analogia: durante o processo de fabricação de uma caneta esferográfica, a tampa, o corpo, a cauda, o cartucho de tinta e a esferográfica são produzidos separadamente e testados separadamente.
Quando duas ou mais unidades estão prontas, elas são montadas e o teste de integração é realizado, por exemplo, um teste para verificar se a tampa se encaixa no corpo.
Quando a caneta completa é integrada, o teste do sistema é realizado para verificar se ela pode ser usada para escrever como qualquer caneta deveria.
O teste de aceitação pode ser uma verificação para garantir que a caneta tenha a cor solicitada pelo cliente.

Há também outro tipo de teste chamado teste de regressão.
O teste de regressão é um tipo de teste que pode ser realizado em qualquer um dos quatro níveis principais e compara os resultados dos testes antes e depois de uma alteração ser feita no código, e apresenta um erro se esses resultados forem diferentes.

Esses diferentes tipos de testes são discutidos em mais detalhes nos próximos subcapítulos.
