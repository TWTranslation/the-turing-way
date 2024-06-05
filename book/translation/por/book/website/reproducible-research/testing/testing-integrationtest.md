(rr-testing-types-integrationtest)=
# Teste de integração

Teste de integração é um nível de teste de software onde unidades individuais são combinadas e testadas como um grupo. Enquanto testes unitários validam a funcionalidade de código isoladamente, testes de integração garantem que os componentes cooperem quando interlidam uns com os outros. O objectivo deste nível de testes é expor as falhas na interacção entre unidades integradas.

Por exemplo, talvez uma unidade que lê em alguns dados esteja funcionando e passe seus testes de unidade, e a unidade a seguir que limpa os dados depois de serem lidos também está funcionando e passa nos seus testes. No entanto, diz que a primeira unidade produz os dados como (time_data, temperature_data) mas a função que limpa os dados espera entrada do formulário (temperature_data, time_data). Isso pode obviamente levar a erros. Enquanto as unidades estão corretas, aí há um erro na sua integração.

Um exemplo de teste de integração para este caso pode ser para fornecer um arquivo de dados de teste. use essas funções para lê-la e limpá-la, e verifique os dados limpos resultantes com o que seria esperado. Se um erro como este estiver presente, então os dados limpos originados não corresponderão muito provavelmente ao resultado esperado. e seria cometido um erro.

Os testes de integração são particularmente importantes em projectos de colaboração, em que diferentes pessoas trabalham em diferentes partes do código. Se duas pessoas diferentes completarem unidades separadas e depois precisarem de integrar, as questões de integração são mais prováveis, uma vez que nenhum deles compreende o código do outro. Um exemplo famoso disto é um satélite de vários milhões de dólares que [quebrou](https://en.wikipedia.org/wiki/Mars_Climate_Orbiter) porque um pedaço de código gerou dados de distância em pés, enquanto outro usuário assumiu os dados em metros. Este é mais um exemplo de uma questão de integração.

Um subtipo de teste de integração é teste de integração do sistema. Isso testa a integração de sistemas, pacotes e quaisquer interfaces para organizações externas (como Electronic Data Interchange, Internet). Dependendo da natureza de um teste de integração do sistema de projetos pode ou não ser aplicável.

## Aproximações de Teste de Integração

Existem várias abordagens diferentes dos testes de integração. O Big Bang é uma abordagem dos testes de integração, onde todas ou a maioria das unidades são combinadas e testadas de uma só vez. Essa abordagem é tomada quando a equipe de testes recebe todo o software em um pacote. Qual é, então, a diferença entre os testes de integração do Big Bang e os testes de sistema? Pois bem, os primeiros testam apenas as interacções entre as unidades, enquanto os últimos testam todo o sistema.

TopDown é uma abordagem para testes de integração onde seções de nível superior do código (que contêm muitas unidades menores) são testadas passo a passo as unidades de nível inferior são testadas passo a passo. Portanto, um código pode ser dividido em principais etapas A, B e C, e cada um desses passos contém etapas para completá-las, e essas etapas podem ter subetapas como:

- Um
- A.1
  - A.1.1
  - A.1.2
- A.2
- B
- a.1
- a.2
  - a.2.1
  - a.2.2
  - a.2,3
- a.3

- C
- d.1
  - C.1,1
  - C.1,2
- d.2
  - C.2,1
  - C.2.2

Então, na abordagem de cima para baixo, a integração entre seções no nível superior (A, B e C) são testados, em seguida, integração entre seções ao próximo nível (por exemplo, A. -> A.2) e assim por diante. Testar unidades de nível superior executando todo o código que elas contêm, incluindo a execução de unidades de nível inferior pode levar a testes de nível superior quebrando devido a bugs de unidades de nível baixo. Isso é indesejável, então evitar que as seções de nível inferior não devam ser executadas, mas [stubs de teste](#Use_test_doubles_stubs_mocking_where_appropriate) deve ser usado para simular as saídas deles.

O baixo para cima é uma abordagem ao teste de integração, onde a integração entre seções de nível inferior é testada passo a passo por seções de nível superior depois disso. Tubos de teste mais uma vez devem ser usados, neste caso, para simular entradas a partir de seções de nível mais alto.

Sandwich/Hybrid é uma abordagem dos testes de integração, que é uma combinação de abordagens do Top Down e do Bottom Up.

Qual abordagem você deve usar dependerá de qual melhor se encaixa na natureza/estrutura do seu projeto.

## Dicas de Teste de Integração

- Certifique-se de que você tenha um documento de Design detalhado adequado onde as interações entre cada unidade sejam claramente definidas. É difícil ou impossível realizar testes de integração sem essa informação.
- Certifique-se de que cada unidade é testada por unidade e corrija quaisquer bugs antes de iniciar os testes de integração. Se houver um erro nas unidades individuais, os testes de integração irão quase certamente falhar, mesmo que não haja erro na forma como são integrados.
- Use mocking/stubs quando apropriado.
