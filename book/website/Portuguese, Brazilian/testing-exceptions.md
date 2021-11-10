(rr-desafios-testes)=
# Desafios e casos excepcionais em testes

(rr-testing-challenges-stochastic-code)=
## Testando código stochástico

Às vezes, o código contém um elemento de aleatoriedade, um exemplo comum de código que faz uso de [métodos Monte Carlo](https://en.wikipedia.org/wiki/Monte_Carlo_method). Testar este tipo de código pode ser muito difícil porque se for executado várias vezes, gerará diferentes respostas, tudo o que pode estar "certo", até mesmo é que não contém erros. Existem duas maneiras principais de lidar com o código estocástico de teste:

### Usar semente de números aleatórios

Número aleatório de sementes são um pouco difíceis de explicar, então aqui está um exemplo. Aqui está um pouco de script Python que imprime três números aleatórios.

    ```
    importar aleatório

    # Imprimir três números aleatórios
    print(random.random())
    print(random.random())
    print(random.random())
    ```

Este script não tem bugs, mas se você executá-lo repetidamente receberá respostas diferentes de cada vez. Agora vamos definir um número aleatório de semente.

    ```
    importar aleatório

    # Definir uma seed com número aleatório
    aleatório.seed(1)

    # Imprimir três números aleatórios
    print(random.random())
    print(random.random())
    print(random.random()) 
 print(random.random())
    ```

Se você executar este script ele será executado

    ```
    0.134364244112
    0.847433736937
    0.763774618977
    ```

e toda vez que você executar este script você receberá a *mesma* saída, ele vai imprimir o *mesmo* três números aleatórios. Se a semente do número aleatório for alterada, você receberá três números aleatórios:

    ```
    0.956034271889
    0.947827487059
    0.0565513677268
    ```
mas de novo você obterá os mesmos números toda vez que o script for executado no futuro.

Sementes numéricas aleatórias são uma maneira de tornar as coisas confiavelmente aleatórias. No entanto, um risco com testes que dependem de sementes com números aleatórios é que eles podem ser frágeis. Diga que você tem uma função estruturada algo como isto:

    ```
    def minha_function()

      a = calculation_that_uses_two_random_numbers()

      b = calculation_that_uses_five_random_numbers()

      c = a + b
    ```

Se você definir a semente de número aleatório você sempre terá o mesmo valor de `c`, para que possa ser testada. Mas, diga que o modelo é alterado e a função que calcula `um` usa um número diferente de números aleatórios que ele fez anteriormente. Agora não só `um` será diferente, mas `b` também, também. porque como mostrado acima os números aleatórios retornados dado um número aleatório de semente está em uma ordem fixa. Como resultado, os números aleatórios produzidos para calcular `b` terão sido alterados. Isso pode levar a testes falhando quando na verdade não há nenhum erro.

#### Medir a distribuição dos resultados

Outra maneira de testar o código com uma saída aleatória é executá-lo várias vezes e testar a distribuição dos resultados. Talvez o resultado possa flutuar um pouco, mas espera-se sempre que cerca de 10, dentro de alguma tolerância. Isso pode ser testado. Quanto mais vezes o código for executado mais confiável a média e, portanto, o resultado. No entanto, quanto mais vezes você executar um trecho de código, mais tempo ele levará seus testes para executar, que pode fazer com que os testes custem tempo proibitivo para poderem conduzir se for possível obter um resultado fiável. Além sempre haverá um elemento de incerteza e se os números aleatórios caírem de uma certa forma, você pode obter resultado fora da tolerância esperada, mesmo se o código estiver correto.

Ambas as abordagens para testar o código estocástico podem ainda ser muito úteis, mas é importante também estar ciente das suas potenciais armadilhas.

(rr-testing-challenges-difficult-quatify)=
## Testes que são difíceis de quantificar

Às vezes (especialmente em pesquisa) as saídas do código são testadas de acordo com se elas "olham para a direita". Por exemplo, diz-se que temos um código que modela o nível da água num reservatório ao longo do tempo.

O resultado pode ficar assim:

```{figure} ../../figures/eyeball-test1.jpg
---
nome: eyeball-test1
alt:
---
```

Em um dia com chuva, pode ficar assim:

```{figure} ../../figures/eyeball-test2.jpg
---
nome: eyeball-test2
alt:
---
```

e em um dia seco, pode ficar assim:

```{figure} ../../figures/eyeball-test3.jpg
---
nome: eyeball-test3
alt:
---
```

Todos estes resultados parecem muito diferentes, mas são válidos. No entanto, se um pesquisador ver um resultado como este:

```{figure} ../../figures/eyeball-test-error.jpg
---
nome: erro de e-yeball-test-error
alt:
---
```

eles poderiam facilmente concluir que há um erro, pois é improvável que um lago tripla seu volume e depois o perca novamente no espaço de algumas horas. Testes de "sombola" como estes consomem tempo e devem ser feitos por um ser humano. No entanto, o processo pode ser parcialmente ou totalmente automatizado criando "verificações básicas de sanidade". Por exemplo, o nível da água numa determinada altura deveria estar, por exemplo, entre 10% do nível da água no período anterior. Outra verificação poderia ser a de que não existem valores negativos, uma vez que um lago não pode estar -30% cheio. Este tipo de testes não pode cobrir todas as maneiras possíveis de algo ser visivelmente errado. mas são muito mais fáceis de automatizar e serão suficientes para a maioria dos casos.

(rr-testing-desafios-não-inteiro)=
## Testando se os números não-inteiros são iguais

### Quando 0.1 + 0.2 não é igual a 0.3

Há uma complicação com o teste se a resposta um pedaço de saídas de código é igual à resposta esperada quando os números não são inteiros. Vamos ver este exemplo do Python, mas note que este problema não é exclusivo do Python.

Se atribuirmos 0.1 a `um` e 0.2 a `b` e imprimirmos o seu som, ficaremos 0.3, como esperado.

    ```
    >>> a = 0.1
    >>> b = 0.2
    >>> impressão (uma + b)
    0.3
    ```

Se, no entanto, compararmos o resultado de `um` mais `b` com 0.3, ficamos falsos.

    ```
    >>> print(a + b == 0.3)
    Falso
    ```

Se nós mostrarmos o valor de `um` mais `b` diretamente, podemos ver que existe uma margem de erro sutil.

    ```
    >>> a + b
    0.30000000000000004
    ```

Isso porque os números de ponto flutuante são aproximações de números reais. O resultado dos cálculos do ponto flutuante pode depender do compilador ou interpretador, processador ou arquitetura do sistema e número de CPUs ou processos sendo utilizados. É evidente que isto pode constituir um obstáculo importante para a elaboração de testes.

### Igualdade em um mundo de ponto flutuante

Quando comparamos números de pontos flutuantes para a igualdade, temos de comparar com uma determinada tolerância, ou seja, com um limiar ou um delta. Por exemplo, podemos considerar os valores calculados e esperados de algum número como iguais se o valor absoluto de sua diferença estiver dentro do valor absoluto de nossa tolerância.

Muitos quadros de ensaio fornecem funções para comparar a igualdade de números de pontos flutuantes com uma determinada tolerância. Por exemplo, para o framework pytest:

    ```
    import pytest

    a = 0,1
    b = 0{,}2
    c = a + b
    assert c == pytest.approx(0{,}3)
    ```

isso passa, mas se os 0,3 fossem alterados para 0,4 falharia.

Quadros de teste unitários para outras línguas também frequentemente fornecem funções semelhantes:

- Cunit for C: CU_ASSERT_DOUBLE_EQUAL(real, esperado, granularidade)
- CPPUnit for C++: CPPUNIT_ASSERT_DOUBLES_EQUAL(esperado, atual, delta)
- googletest para C++: ASSERT_NEAR(val1, val2, abs_error)
- FRUIT para Fortran: subrotinine assert_eq_double_in_range_(var1, var2, delta, mensagem)
- JUnit for Java: org.junit.Assert.assertEquals(double expected, double real delta)
- teste para R:
  - expect_equal(atual, esperado, tolerance=DELTA) - erro absoluto dentro do DELTA
  - expect_equal(real, esperada, scale=expected, tolerance=DELTA) - erro relativo dentro do DE T A
