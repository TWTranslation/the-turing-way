# Orientações gerais e boas práticas para testes

Há uma série de testes que cada um deles tem boas práticas específicas para eles. No entanto, há algumas orientações gerais que se aplicam a todos eles, e que serão aqui delineadas.

## Teste de escrita - Quaisquer Testes!

Iniciar o processo de escrita de testes pode ser esmagador, especialmente se você tem uma grande base de código. Além disso, como foi referido, há muitos tipos de testes, e a implementação de todos eles pode parecer uma montanha impossível de escalar. Isso é o motivo pelo qual a peça de orientação mais importante neste capítulo é a seguinte: **escreva alguns testes**. Testar uma coisa minúscula em um código que é milhares de linhas de comprimento é infinitamente melhor do que testar nenhuma coisa num código que é milhares de linhas de comprimento. Você pode não ser capaz de fazer tudo, mas fazer *alguma coisa* é valioso.

Faça melhorias onde puder, e faça o seu melhor para incluir testes com o novo código que você escreve, mesmo se não for possível escrever testes para todo o código que já está escrito.

## Executar os testes

O segundo conselho mais importante neste capítulo: execute os testes. Ter um conjunto de testes perfeito e bonito não é útil se você raramente o executar. Deixando longas lacunas entre execuções de testes torna mais difícil rastrear o que deu errado quando um teste falhar, porque muitas coisas no código terão mudado. Também se já passaram semanas ou meses desde que os testes foram executados e eles falharam é difícil ou impossível saber o que trabalho/resultados que foram feitos no tempo de intervenção ainda são válidos, e que têm de ser jogados fora como eles poderiam ter sido impactados pelo erro.

Como tal, é melhor automatizar o seu teste tanto quanto possível. Se cada teste precisar ser executado individualmente, então é provável que esse processo aborrecido seja negligenciado. Isso pode ser feito fazendo uso de uma framework de testes ([discutida mais tarde](#Use_a_testing_framework)). [Jenkins](https://jenkins.io) é outra ferramenta boa para isso. Idealmente configure seus testes para rodar em intervalos regulares, possivelmente todas as noites.

Considere configurar a integração contínua (discutida no capítulo de integração contínua) no seu projeto. Isso executará automaticamente os seus testes toda vez que você fizer uma alteração no seu código e, dependendo do software de integração contínua que você usa, irá notificá-lo se algum dos testes falhar.

## Considere quanto tempo leva para executar os seus testes

Alguns testes, como [testes unitários](#Unit_tests) só testam uma pequena parte do código e normalmente são muito rápidos. No entanto, outros tipos de testes, como [o sistema testa](#System_tests) que testam o código inteiro de final em fim, pode levar muito tempo para ser executado dependendo do código. Por isso, pode ser obstrutivo executar todo o conjunto de testes depois de cada pequeno trabalho. Nesse caso, é melhor fazer testes de peso mais leves, como testes unitários, com frequência, e testes mais longos apenas uma vez por dia durante a noite. Também é bom escalar o número de cada tipo de testes que você tem em relação ao tempo que leva para correr. Você deve ter um monte de testes unitários (ou outros tipos de testes que são rápidos), mas muito menos testes que levam muito tempo para serem executados.

## Documente os testes e como executá-los

É importante fornecer documentação que descreva como executar os testes, ambos para si caso volte a um projeto no futuro. e para qualquer outra pessoa que deseje desenvolver ou reproduzir o seu trabalho. Esta documentação deve abranger também assuntos como

- Quaisquer recursos, como arquivos de conjunto de dados de teste que são necessários
- Qualquer ajustes de configuração/configuração necessários para executar os testes
- Que software (como [frameworks de teste](#Use_a_testing_framework)) precisa ser instalado

Idealmente, você forneceria scripts para configurar e configurar quaisquer recursos que são necessários.

## Teste Casos Realíticos

Faça os casos que você testar o mais realista possível. Se por exemplo, tem dados fictícios para executar testes em você deve garantir que os dados sejam o mais parecidos possível com os dados reais. Se seus dados reais forem confusos com muitos valores nulos, o seu conjunto de dados de teste também deve ser.

## Usar um Framework de Teste

Existem ferramentas disponíveis para facilitar a escrita e a execução de testes, estes são conhecidos como frameworks de teste. Encontre um que você gosta, aprenda sobre os recursos que ela oferece e faça uso deles. Quadros de teste comuns (e as línguas em que se aplicam) incluem:

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
Enquanto C++ e C modernos ainda são principalmente compatíveis, eles não são completamente e usar o framework de testes intermutavelmente pode nem sempre funcionar.
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

## Mire em ter uma boa cobertura de código

A cobertura do código é uma medida do quanto do seu código está "coberto" por testes. Mais precisamente, uma medida de quanto do seu código é executado quando os testes são realizados. Assim, por exemplo, se você tem uma instrução `se` mas apenas testar as coisas onde essa instrução se resulta em "Verdadeiro", então nenhum do código que vem sob "Falso" será executado. Como resultado, sua cobertura de código seria < 100% (o número exato dependeria de quanto código vem sob os casos verdadeiro e falso ). Cobertura de código não inclui documentação como comentários, então adicionar mais documentação não afeta suas percentagens.

Como foi discutido, todos os testes representam uma melhoria em relação a não realização de testes. No entanto, é bom pelo menos aspirar a ter a cobertura do seu código tão alta quanto possível.

A maioria das linguagens de programação tem ferramentas incorporadas ou que podem ser importadas, ou como parte dos frameworks de teste, que medem automaticamente a cobertura de código. Há também um pequeno bot [](https://codecov.io/) para medir a cobertura de código disponível.

**Pitfall: A ilusão de uma boa cobertura.** Em alguns casos, o mesmo código pode e provavelmente deve ser testado de várias maneiras. Por exemplo, cobertura pode aumentar rapidamente no código que aplica testes de "verificação de sanidade" à sua saída ([veja abaixo](#tests-that-are-difficult-to-quantify)), mas isso não exclui o risco de o código estar produzindo a resposta amplamente certa por razões erradas. Em geral, os melhores testes são aqueles que isolam as partes menores em vez de grandes partes de código coerente. e assim escolhe etapas individuais de lógica. Tente ser guiado pensando sobre as coisas possíveis que podem acontecer a um determinado pedaço de código na execução de todo o site. e testar esses casos individuais. Muitas vezes, isso resultará em que o mesmo código seja testado várias vezes - isso é bom!

## Usar duplos/stubs/simulação quando apropriado

Se um teste falhar, deve ser construído de modo a que seja tão fácil identificar a origem do fracasso quanto possível. Isso se torna problemático se um pedaço de código que você deseja testar inevitavelmente depende de outras coisas. Por exemplo, se um teste para um pedaço de código que interage com a web falhar, isso pode ser porque o código tem um bug *ou* porque há um problema com a conexão com a internet. Da mesma forma, se um teste para um trecho de código que usa um objeto falhar, pode ser porque há um bug no código sendo testado, ou um problema com o objeto (que deve ser testado por seus próprios testes, separados). Estas dependências devem ser eliminadas dos testes, se possível. Isso pode ser feito usando substituições de teste (duelos de teste) no lugar das dependências reais. Os duplicos de teste podem ser classificados da seguinte forma:

- Um objeto fictício é passado em volta mas nunca é usado, o que significa que seus métodos nunca são chamados. Um objeto desse tipo pode, por exemplo, ser usado para preencher a lista de parâmetros de um método.
- Objetos falsos têm implementações funcionais, mas geralmente são simplificados. Por exemplo, usam um banco de dados de memória e não um banco de dados real.
- Um esboço é uma implementação parcial para uma interface ou classe com o objetivo de usar uma instância deste esboço durante o teste. Estúdios geralmente não respondem a nada fora do que está programado para o teste. Stubs também podem gravar informações sobre chamadas.
- Um objeto simulado é uma implementação fictícia para uma interface ou uma classe na qual você define a saída de certas chamadas de método. Objetos fictícios estão configurados para executar um certo comportamento durante um teste. Normalmente, eles registram a interação com o sistema e os testes podem validar isso.

Duplos de teste podem ser passados para outros objetos que são testados.

Você pode criar objetos fictícios manualmente (via código) ou usar uma estrutura fictícia (mock, em inglês) para simular essas classes. Os frameworks fictícios permitem que você crie objetos fictícios em tempo de execução e defina seu comportamento. O exemplo clássico para um objeto simulado é um provedor de dados. Em produção uma implementação para conectar à fonte real de dados é usada. Mas para testar um objeto de simulação simula a fonte de dados e garante que as condições de teste são sempre as mesmas.
