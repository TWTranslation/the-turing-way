(rr-testing-overview)=
# Visão geral dos Tipos de Teste

Há vários tipos de testes, que serão aqui discutidos.

Em primeiro lugar, há testes positivos e testes negativos. Testes positivos verificam se algo funciona, por exemplo, testando que uma função que multiplica alguns números juntos produz a resposta correta. Testes negativos verificam que algo gera um erro quando deveria. Por exemplo, nada pode ser mais rápido do que a velocidade da luz. então um código de simulação da física de plasma pode conter um teste de que um erro é gerado se houver alguma partícula mais rápido que isso, conforme indica que existe um problema mais profundo no código.

Para além destes dois tipos de testes, existem também diferentes níveis de testes que testam diferentes aspectos de um projecto. Estes níveis estão descritos abaixo e tanto os testes positivos como os negativos podem estar presentes em qualquer um destes níveis. Um conjunto de testes completo conterá testes a todos estes níveis (embora alguns níveis precisem de poucos).

## Tipos de Teste

[Teste de fumaça](#Smoke_testing): Verificações iniciais muito breves que garantem os requisitos básicos necessários para executar a retenção do projeto. Se estas falhas, não vale a pena avançar para níveis adicionais de testes até que sejam fixados.

[Teste unitário](#Unit_tests): Um nível do processo de teste de software onde unidades individuais de um software são testadas. O objetivo é validar que cada unidade do software funciona conforme projetado.

[Teste de integração](#Integration_testing): um nível de teste de software onde unidades individuais são combinadas e testadas como um grupo. O objectivo deste nível de testes é expor as falhas na interacção entre unidades integradas.

[Teste de sistema](#System_tests): Um nível do processo de teste de software onde um sistema completo e integrado é testado. O objectivo deste teste é avaliar se o sistema no seu conjunto dá as saídas corretas para determinadas entradas.

[Teste de aceitação](#Acceptance_testing): Um nível do processo de teste de software onde um sistema é testado para aceitabilidade. O objectivo deste teste é avaliar a conformidade do sistema com os requisitos do projecto e avaliar se é aceitável para o fim.

Aqui está uma analogia: durante o processo de fabricação de uma caneta balística, a tampa, o corpo, a cauda, o cartucho de tinta e o balão são produzidos separadamente e a unidade são testados separadamente. Quando duas ou mais unidades estão prontas, são montadas e os testes de integração são realizados, por exemplo, um teste para verificar a tampa se encaixa no corpo. Quando a caneta completa é integrada, os testes do sistema são feitos para verificá-lo podem ser usados para escrever como qualquer caneta deve ser. O teste de aceitação poderia ser uma verificação para garantir que a caneta seja a cor pedida pelo cliente.

Há também um outro tipo de teste chamado teste de regressão. O teste de regressão é um tipo de teste que pode ser executado em qualquer um dos quatro principais níveis e compara os resultados dos testes antes e depois que uma alteração for feita no código. e dá um erro se estes forem diferentes.

Estes diferentes tipos de testes são discutidos de forma mais pormenorizada nos subcapítulos seguintes.
