(rr-desafios-testes)=
# Desafios e casos excepcionais em testes

(rr-testing-challenges-stochastic-code)=
## Testando código stochástico

Às vezes, o código contém um elemento de aleatoriedade, um exemplo comum de código que faz uso de [métodos Monte Carlo](https://en.wikipedia.org/wiki/Monte_Carlo_method). Testar este tipo de código pode ser muito difícil porque se for executado várias vezes, gerará diferentes respostas, tudo o que pode estar "certo", até mesmo é que não contém erros. Existem duas maneiras principais de lidar com o código estocástico de teste:

### Usar semente de números aleatórios

Random number seeds are a little difficult to explain so here's an example. Here's a little Python script that prints three random numbers.

```python
import random

# Print three random numbers
print(random.random())
print(random.random())
print(random.random())
```

This script has no bugs but if you run it repeatedly you will get different answers each time. Now let's set a random number seed.

```python
import random

# Set a random number seed
random.seed(1)

# Print three random numbers
print(random.random())
print(random.random())
print(random.random())
```

Now if you run this script it outputs

```python
0.134364244112
0.847433736937
0.763774618977
```

and every time you run this script you will get the *same* output, it will print the *same* three random numbers. If the random number seed is changed you will get a different three random numbers:

```python
0.956034271889
0.947827487059
0.0565513677268
```
mas de novo você obterá os mesmos números toda vez que o script for executado no futuro.

Random number seeds are a way of making things reliably random. However a risk with tests that depend on random number seeds is they can be brittle. Say you have a function structured something like this:

```python
def my_function():
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
name: eyeball-test1
alt:
---
```

Em um dia com chuva, pode ficar assim:

```{figure} ../../figures/eyeball-test2.jpg
---
name: eyeball-test2
alt:
---
```

e em um dia seco, pode ficar assim:

```{figure} ../../figures/eyeball-test3.jpg
---
name: eyeball-test3
alt:
---
```

Todos estes resultados parecem muito diferentes, mas são válidos. No entanto, se um pesquisador ver um resultado como este:

```{figure} ../../figures/eyeball-test-error.jpg
---
name: eyeball-test-error
alt:
---
```

eles poderiam facilmente concluir que há um erro, pois é improvável que um lago tripla seu volume e depois o perca novamente no espaço de algumas horas. "Eyeballing" tests like these are time-consuming as they must be done by a human. However, the process can be partially or fully automated by creating basic "sanity checks". For example, the water level at one time should be within, say, 10% of the water level at the previous time step. Outra verificação poderia ser a de que não existem valores negativos, uma vez que um lago não pode estar -30% cheio. Este tipo de testes não pode cobrir todas as maneiras possíveis de algo ser visivelmente errado. mas são muito mais fáceis de automatizar e serão suficientes para a maioria dos casos.

(rr-testing-desafios-não-inteiro)=
## Testando se os números não-inteiros são iguais

### Quando 0.1 + 0.2 não é igual a 0.3

Há uma complicação com o teste se a resposta um pedaço de saídas de código é igual à resposta esperada quando os números não são inteiros. Vamos ver este exemplo do Python, mas note que este problema não é exclusivo do Python.

If we assign 0.1 to `a` and 0.2 to `b` and print their sum, we get 0.3, as expected.

```python
>>> a = 0.1
>>> b = 0.2
>>> print(a + b)
0.3
```

If, however, we compare the result of `a` plus `b` to 0.3 we get False.

```python
>>> print(a + b == 0.3)
False
```

If we show the value of `a` plus `b` directly, we can see there is a subtle margin of error.

```python
>>> a + b
0.30000000000000004
```

This is because floating-point numbers are approximations of real numbers. The result of floating-point calculations can depend upon the compiler or interpreter, processor or system architecture and number of CPUs or processes being used. This can present a major obstacle for writing tests.

### Igualdade em um mundo de ponto flutuante

When comparing floating-point numbers for equality, we have to compare to within a given tolerance, alternatively termed a threshold or delta. Por exemplo, podemos considerar os valores calculados e esperados de algum número como iguais se o valor absoluto de sua diferença estiver dentro do valor absoluto de nossa tolerância.

Many testing frameworks provide functions for comparing equality of floating-point numbers to within a given tolerance. For example for the framework pytest:

```python
import pytest

a = 0.1
b = 0.2
c = a + b
assert c == pytest.approx(0.3)
```

isso passa, mas se os 0,3 fossem alterados para 0,4 falharia.

Quadros de teste unitários para outras línguas também frequentemente fornecem funções semelhantes:

- Cunit for C: CU_ASSERT_DOUBLE_EQUAL(real, esperado, granularidade)
- CPPUnit for C++: CPPUNIT_ASSERT_DOUBLES_EQUAL(esperado, atual, delta)
- googletest para C++: ASSERT_NEAR(val1, val2, abs_error)
- FRUIT para Fortran: subrotinine assert_eq_double_in_range_(var1, var2, delta, mensagem)
- JUnit for Java: org.junit. Assert.assertEquals(double expected, double real delta)
- teste para R:
  - expect_equal(atual, esperado, tolerance=DELTA) - erro absoluto dentro do DELTA
  - expect_equal(real, esperado, scale=expected, tolerance=DELTA) - erro relativo dentro de DELTA
- julia:
  - `val1 ≈ val2`
  - `isapprox(val1, val2, atol=abs_delta, rtol=rel_delta)`
  - `Test.jl` com `├`: `@test val1 ├val2 atol=abs_delta rtol=rel_delta`
