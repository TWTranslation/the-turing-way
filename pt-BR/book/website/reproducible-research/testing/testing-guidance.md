(rr-testing-guidance)=ramework

# Orientações gerais e boas práticas para testes

There are several different kinds of testing which each have best practice specific to them (see {ref}`rr-testing-types-of-testing`).
No entanto, há algumas orientações gerais que se aplicam a todos eles, que serão descritas aqui.

(rr-testing-write-tests)=

## Teste de escrita - Quaisquer Testes!

Começar o processo de escrever testes pode ser desafiador, especialmente se você tiver uma grande base de código. Além disso, como mencionado, há muitos tipos de testes, e a implementação de todos eles pode parecer uma montanha impossível de escalar.
That is why the single most important piece of guidance in this chapter is as follows: **write some tests**.
Testar uma pequena coisa em um código com milhares de linhas é infinitamente melhor do que não testar nada em um código com milhares de linhas.
You may not be able to do everything, but doing _something_ is valuable.

Faça melhorias onde for possível e faça o possível para incluir testes no novo código que você escrever, mesmo que não seja viável escrever testes para todo o código que já foi escrito.

## Executar os testes

O segundo conselho mais importante deste capítulo: execute os testes.
De nada adianta ter um conjunto de testes bonito e perfeito se você raramente o executa.
Deixar longos intervalos entre as execuções de teste torna mais difícil rastrear o que deu errado quando um teste falha, pois grande parte do código terá sido alterada.
Além disso, se já se passaram semanas ou meses desde que os testes foram executados e eles falharam, é difícil ou impossível saber quais resultados obtidos nesse meio tempo ainda são válidos e quais devem ser descartados, pois podem ter sido afetados pelo bug.

É melhor automatizar seus testes na medida do possível.
Se cada teste precisar ser executado individualmente, é provável que esse processo chato e minucioso seja negligenciado.
This can be done by making use of a testing framework ([discussed later](#rr-testing-use-a-testing-framework)).
[Jenkins](https://jenkins.io) is another good tool for this. O ideal é configurar seus testes para serem executados em intervalos regulares, possivelmente todas as noites.

Considere a possibilidade de configurar a integração contínua (discutida no capítulo sobre integração contínua) em seu projeto. Isso executará automaticamente os testes sempre que você fizer uma alteração no código e, dependendo do software de integração contínua usado, notificará você se algum dos testes falhar.

## Considere quanto tempo leva para executar os seus testes

Some tests, like {ref}`rr-testing-unittest` only test a small piece of code and so typically are very fast.
However other kinds of tests, such as {ref}`rr-testing-systemtest` which test the entire code from end to end, may take a long time to run depending on the code.
Dessa forma, pode ser obstrutivo executar todo o conjunto de testes após cada pequeno trabalho.
Nesse caso, é melhor executar testes mais leves, como testes de unidade, com frequência, e testes mais longos apenas uma vez por dia, durante a noite. Também é bom dimensionar o número de cada tipo de teste que você tem em relação ao tempo que eles levam para serem executados.
Você deve ter muitos testes unitários (ou outros tipos de testes que sejam rápidos), mas muito menos testes que demorem muito tempo para serem executados.

## Documente os testes e como executá-los

É importante fornecer documentação que descreva como executar os testes, tanto para você mesmo, caso volte a um projeto no futuro, quanto para qualquer outra pessoa que deseje desenvolver ou reproduzir seu trabalho.
Essa documentação também deve abranger assuntos como

- Quaisquer recursos, como arquivos de conjunto de dados de teste que são necessários
- Qualquer ajustes de configuração/configuração necessários para executar os testes
- What software (such as [testing frameworks](#rr-testing-use-a-testing-framework)) need to be installed

O ideal é que você forneça scripts para instalar e configurar todos os recursos necessários.

## Teste Casos Realíticos

Faça com que os casos testados sejam os mais realistas possíveis.
Se, por exemplo, você tiver dados fictícios para executar testes, deve se certificar de que esses dados sejam os mais semelhantes possíveis aos dados reais.
Se os seus dados reais estiverem bagunçados, com muitos valores nulos, o mesmo deverá ocorrer com o conjunto de dados de teste.

(rr-testing-use-a-testing-framework)=

## Usar um Framework de Teste

Existem ferramentas disponíveis para facilitar a criação e a execução de testes, conhecidas como frameworks de teste.
Encontre um que você goste, conheça os recursos que ele oferece e use-os. Os frameworks de teste comuns (e as linguagens às quais elas se aplicam) incluem:

- Língua agnóstica
  - Tente, executador de testes para executáveis, scripts bash e muito mais. Ótimo para endurecimento de código legado
- C++
  - Pegar
  - CppTest
  - Propulsão::Teste
  - Teste
- C
  - todos os frameworks C++
  - Verificar
  - CUnit

```{note}
While modern C++ and C are still mostly compatible, they're not completely and using test framework interchangeably may not always work.
```

- Python
  - pytest (recomendado)
  - unittest vem com uma biblioteca Python padrão
- R Testes unitários
  - testar
  - tinytest
  - svUnit (funciona com SciViews GUI)
- Testes unitários Fortran:
  - fundição
  - pfunilônio (funciona com MPI)
- julia
  - Test.jl (stdlib)
  - ReTest.jl

## Mire em ter uma boa cobertura de código

A cobertura de código é uma medida de quanto do seu código é "coberto" por testes.
Mais precisamente, é uma medida de quanto do seu código é executado quando os testes são realizados.
So for example, if you have an `if` statement but only test things where that if statement evaluates to "False" then none of the code in the if block will be run.
As a result your code coverage would be < 100%.
A cobertura de código não inclui documentação como comentários, portanto, adicionar mais documentação não afeta suas porcentagens.

Conforme discutido, qualquer teste é uma melhoria em relação à ausência de testes.
No entanto, é bom pelo menos aspirar a ter uma cobertura de código tão alta quanto possível.

A maioria das linguagens de programação tem ferramentas integradas ou que podem ser importadas, ou como parte de estruturas de teste, que medem automaticamente a cobertura do código.
There's a nice little [bot](https://codecov.io/) for measuring code coverage available too.

**Pitfall: The illusion of good coverage.** In some instances, the same code can and probably should be tested in multiple ways.
For example, coverage can quickly increase on code that applies "sanity check" tests to its output (see also {ref}<rr-testing-challenges-difficult-quatify>), but this doesn't preclude the risk that the code is producing the broadly right answer for the wrong reasons.
Em geral, os melhores testes são aqueles que isolam os pedaços menores, e não os maiores, de código coerente e, portanto, selecionam etapas individuais da lógica.
Tente se orientar pensando nas possíveis coisas que podem acontecer com um determinado trecho de código na execução do todo e teste esses casos individuais.
Muitas vezes, isso fará com que o mesmo código seja testado várias vezes - o que é bom!

(rr-testing-guidance-mocking)=

## Usar duplos/stubs/simulação quando apropriado

Se um teste falhar, ele deve ser construído de forma que seja o mais fácil possível rastrear a origem da falha.
Isso se torna problemático se uma parte do código que você deseja testar depende inevitavelmente de outras coisas.
For example if a test for a piece of code that interacts with the web fails, that could be because the code has a bug _or_ because there is a problem with the internet connection.
Da mesma forma, se um teste para um trecho de código que usa um objeto falhar, pode ser porque há um bug no código que está sendo testado ou um problema com o objeto (que deve ser testado por seus próprios testes separados).
Essas dependências devem ser eliminadas dos testes, se possível.
Isso pode ser feito usando substituições de teste (duplas de teste) no lugar das dependências reais.
As duplas de teste podem ser classificadas da seguinte forma:

- Um objeto fictício é passado em volta mas nunca é usado, o que significa que seus métodos nunca são chamados.
  Um objeto desse tipo pode, por exemplo, ser usado para preencher a lista de parâmetros de um método.
- Objetos falsos têm implementações funcionais, mas geralmente são simplificados.
  Por exemplo, usam um banco de dados de memória e não um banco de dados real.
- Um esboço é uma implementação parcial para uma interface ou classe com o objetivo de usar uma instância deste esboço durante o teste.
  Estúdios geralmente não respondem a nada fora do que está programado para o teste.
  Stubs também podem gravar informações sobre chamadas.
- Um objeto simulado é uma implementação fictícia para uma interface ou uma classe na qual você define a saída de certas chamadas de método.
  Objetos fictícios estão configurados para executar um certo comportamento durante um teste.
  Normalmente, eles registram a interação com o sistema e os testes podem validar isso.

As duplas de teste podem ser passadas para outros objetos que são testados.

Você pode criar objetos de simulação manualmente (por meio de código) ou usar uma estrutura de simulação para simular essas classes. Os frameworks de simulação permitem que você crie objetos de simulação em tempo de execução e defina seu comportamento. O exemplo clássico de um objeto de simulação é um provedor de dados.
Na produção, é usada uma implementação para conectar-se à fonte de dados real.
Mas, para testes, um objeto de simulação simula a fonte de dados e garante que as condições de teste sejam sempre as mesmas.
