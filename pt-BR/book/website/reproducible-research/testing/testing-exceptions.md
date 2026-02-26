(rr-desafios-testes)=

# Desafios e casos excepcionais em testes

(rr-testing-challenges-stochastic-code)=

## Testando código stochástico

Sometimes code contains an element of randomness, a common example being code that makes use of [Monte Carlo methods](https://en.wikipedia.org/wiki/Monte_Carlo_method).
Testar este tipo de código pode ser muito difícil porque se for executado várias vezes, gerará diferentes respostas, tudo o que pode estar "certo", até mesmo é que não contém erros. Existem duas maneiras principais de lidar com o código estocástico de teste:

### Usar semente de números aleatórios

Sementes de números aleatórios são um pouco difíceis de explicar, então aqui vai um exemplo.
Aqui está um pequeno script Python que imprime três números aleatórios.

```python
import random

# Print three random numbers
print(random.random())
print(random.random())
print(random.random())
```

Este script não tem bugs, mas se você executá-lo repetidamente, obterá respostas diferentes a cada vez.
Agora vamos definir uma semente de número aleatório.

```python
import random

# Set a random number seed
random.seed(1)

# Print three random numbers
print(random.random())
print(random.random())
print(random.random())
```

Agora, se você executar este script, ele retornará

```python
0.134364244112
0.847433736937
0.763774618977
```

and every time you run this script you will get the _same_ output, it will print the _same_ three random numbers.
Se a semente do número aleatório for alterada, você obterá três números aleatórios diferentes:

```python
0.956034271889
0.947827487059
0.0565513677268
```

mas de novo você obterá os mesmos números toda vez que o script for executado no futuro.

Sementes de números aleatórios são uma maneira de tornar as coisas confiavelmente aleatórias. No entanto, um risco com testes que dependem de sementes de números aleatórios é que eles podem ser frágeis.
Digamos que você tenha uma função estruturada mais ou menos assim:

```python
def my_function():
  a = calculation_that_uses_two_random_numbers()
  b = calculation_that_uses_five_random_numbers()
  c = a + b
```

If you set the random number seed you will always get the same value of `c`, so it can be tested.
But, say the model is changed and the function that calculates `a` uses a different number of random numbers that it did previously.
Now not only will `a` be different but `b` will be too, because as shown above the random numbers outputted given a random number seed are in a fixed order.
As a result the random numbers produced to calculate `b` will have changed.
Isso pode levar a testes falhando quando na verdade não há nenhum erro.

#### Medir a distribuição dos resultados

Outra maneira de testar o código com uma saída aleatória é executá-lo várias vezes e testar a distribuição dos resultados.
Talvez o resultado possa flutuar um pouco, mas espera-se sempre que cerca de 10, dentro de alguma tolerância. Isso pode ser testado.
Quanto mais vezes o código for executado mais confiável a média e, portanto, o resultado.
No entanto, quanto mais vezes você executar um trecho de código, mais tempo ele levará seus testes para executar, que pode fazer com que os testes custem tempo proibitivo para poderem conduzir se for possível obter um resultado fiável.
Além sempre haverá um elemento de incerteza e se os números aleatórios caírem de uma certa forma, você pode obter resultado fora da tolerância esperada, mesmo se o código estiver correto.

Ambas as abordagens para testar o código estocástico podem ainda ser muito úteis, mas é importante também estar ciente das suas potenciais armadilhas.

(rr-testing-challenges-difficult-quatify)=

## Testes que são difíceis de quantificar

Às vezes (especialmente em pesquisa) as saídas do código são testadas de acordo com se elas "olham para a direita".
Por exemplo, diz-se que temos um código que modela o nível da água num reservatório ao longo do tempo.

O resultado pode ficar assim:

```{figure} ../../../figures/eyeball-test1.*
---
name: eyeball-test1
alt: Scatter plot of water level in a reservoir measured at regular intervals over 24 hours, where level remains fairly constant.
---
```

Em um dia com chuva, pode ficar assim:

```{figure} ../../../figures/eyeball-test2.*
---
name: eyeball-test2
alt: Scatter plot of water level in a reservoir measured at regular intervals over 24 hours, where level increases steadily between 6am and 9pm before dropping slightly in the last 3-hour period.
---
```

e em um dia seco, pode ficar assim:

```{figure} ../../../figures/eyeball-test3.*
---
name: eyeball-test3
alt: Scatter plot of water level in a reservoir measured at regular intervals over 24 hours, where level decreases steadily.
---
```

Todos estes resultados parecem muito diferentes, mas são válidos. No entanto, se um pesquisador ver um resultado como este:

```{figure} ../../../figures/eyeball-test-error.*
---
name: eyeball-test-error
alt: Scatter plot of water level in a reservoir measured at regular intervals over 24 hours, where fairly constant levels flank one very high measurement taken at midday.
---
```

eles poderiam facilmente concluir que há um erro, pois é improvável que um lago tripla seu volume e depois o perca novamente no espaço de algumas horas. Testes de "observação" como esses são demorados, pois precisam ser feitos por um ser humano. No entanto, o processo pode ser parcial ou totalmente automatizado com a criação de "verificações de sanidade" básicas. Por exemplo, o nível de água em um momento deve estar dentro de, digamos, 10% do nível de água na etapa de tempo anterior. Outra verificação poderia ser a de que não existem valores negativos, uma vez que um lago não pode estar -30% cheio. Este tipo de testes não pode cobrir todas as maneiras possíveis de algo ser visivelmente errado. mas são muito mais fáceis de automatizar e serão suficientes para a maioria dos casos.

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

Isso ocorre porque números de ponto flutuante são aproximações de números reais. O resultado dos cálculos de ponto flutuante pode depender do compilador ou intérprete, da arquitetura do processador ou do sistema e do número de CPUs ou processos que estão sendo usados. Isso pode representar um grande obstáculo para a criação de testes.

### Igualdade em um mundo de ponto flutuante

Ao comparar números de ponto flutuante para igualdade, temos que comparar dentro de uma determinada tolerância, também chamada de limite ou delta. Por exemplo, podemos considerar os valores calculados e esperados de algum número como iguais se o valor absoluto de sua diferença estiver dentro do valor absoluto de nossa tolerância.

Muitos frameworks de testes fornecem funções para comparar a igualdade de números de ponto flutuante dentro de uma determinada tolerância. Por exemplo, para o framework pytest:

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
  - `Test.jl` with `≈`: `@test val1 ≈ val2 atol=abs_delta rtol=rel_delta`
