(rr-testing-challenges)=
# Desafíos y casos excepcionales en pruebas

(rr-testing-challenges-stochastic-code)=
## Probando código estocástico

A veces el código contiene un elemento de aleatoria, un ejemplo común es el código que hace uso de [métodos de Monte Carlo](https://en.wikipedia.org/wiki/Monte_Carlo_method). Probar este tipo de código puede ser muy difícil porque si se ejecuta varias veces generará diferentes respuestas, Todo lo cual puede ser "correcto", incluso es que no contiene errores. Hay dos formas principales de abordar el código estocástico de prueba:

### Usar semillas de números aleatorios

El número aleatorio de semillas son un poco difíciles de explicar, así que aquí hay un ejemplo. Aquí hay un pequeño script Python que imprime tres números aleatorios.

    ```
    importar al azar

    # Imprime tres números aleatorios
    print(random.random())
    print(random.random())
    print(random.random())
    ```

Este script no tiene fallos, pero si lo ejecuta repetidamente recibirá respuestas diferentes cada vez. Ahora vamos a establecer una semilla de número aleatorio.

    ```
    importar al azar

    # Establecer una semilla de números aleatoria
    random.seed(1)

    # Imprimir tres números aleatorios
    print(random.random())
    print(random.random())
    print(random.random())
    ```

Ahora si ejecuta este script saldrá

    ```
    0.134364244112
    0.847433736937
    0.763774618977
    ```

y cada vez que ejecutes este script obtendrás la *misma* salida, imprimirá *los mismos* tres números aleatorios. Si se cambia la semilla de números aleatorios obtendrás tres números aleatorios diferentes:

    ```
    0.956034271889
    0.947827487059
    0.0565513677268
    ```
pero de nuevo obtendrá esos mismos números cada vez que el script se ejecute en el futuro.

Las semillas de números aleatorios son una forma de hacer las cosas de manera fiable al azar. Sin embargo, un riesgo con pruebas que dependen de las semillas de números aleatorios puede ser alto. Digamos que tienes una función estructurada algo como esto:

    ```
    def my_function()

      a = cálculo_that_uses_two_random_numbers()

      b = cálculo_that_uses_cinve_random_numbers()

      c = a + b
    ```

Si estableces la semilla de números aleatoria siempre obtendrás el mismo valor de `c`, para que se pueda probar. Pero, digamos que el modelo se cambia y la función que calcula `un` utiliza un número diferente de números aleatorios que hizo anteriormente. Ahora no sólo será `un` diferente sino `b` también porque como se muestra por encima de los números aleatorios mostrados dado una semilla de número aleatorio están en un orden fijo. Como resultado, los números aleatorios producidos para calcular `b` habrán cambiado. Esto puede llevar a que las pruebas fallen cuando de hecho no hay error.

#### Medir la distribución de resultados

Otra forma de probar código con una salida aleatoria es ejecutarlo muchas veces y probar la distribución de los resultados. Tal vez el resultado pueda fluctuar un poco, pero siempre se espera alrededor de 10 dentro de cierta tolerancia. Esto se puede poner a prueba. Cuantas más veces se ejecute el código, más confiable será el promedio y así el resultado. Sin embargo, cuantas más veces corres un pedazo de código más tardará tus pruebas en ejecutarse, que pueden llevar a cabo pruebas que consuman mucho tiempo si se quiere obtener un resultado fiable. Además, siempre habrá un elemento de incertidumbre y si los números aleatorios caen de una manera determinada se puede obtener resultados fuera de la tolerancia esperada incluso si el código es correcto.

Ambos enfoques para probar código estocástico todavía pueden ser muy útiles, pero también es importante ser conscientes de sus posibles caídas.

(rr-testing-challenges-difícil-quatify)=
## Pruebas difíciles de cuantificar

A veces (particularmente en investigación) las salidas de código se prueban de acuerdo a si "miran" bien. Por ejemplo, digamos que tenemos un código que modele los niveles de agua en un depósito con el paso del tiempo.

El resultado puede verse así:

```{figure} ../../figures/eyeball-test1.jpg
---
nombre: eyeball-test1
alt:
---
```

En un día con lluvia, podría verse así:

```{figure} ../../figures/eyeball-test2.jpg
---
nombre: eyeball-test2
alt:
---
```

y en un día seco podría verse así:

```{figure} ../../figures/eyeball-test3.jpg
---
nombre: eyeball-test3
alt:
---
```

Todas estas salidas son muy diferentes, pero son válidas. Sin embargo, si un investigador ve un resultado así:

```{figure} ../../figures/eyeball-test-error.jpg
---
nombre: eyeball-test-error
alt:
---
```

que fácilmente podrían concluir que hay un fallo ya que un lago es poco probable triplicar su volumen y luego perderlo de nuevo en el espacio de unas pocas horas. Las pruebas "Eyeballing" como estas consumen mucho tiempo, ya que deben ser realizadas por un ser humano. Sin embargo, el proceso puede ser parcial o completamente automatizado, creando "comprobaciones de sanidad" básicas. Por ejemplo, el nivel de agua en un momento debería estar dentro de, digamos, el 10% del nivel de agua en el paso anterior del tiempo. Otra comprobación podría ser que no hay valores negativos, ya que un lago no puede estar -30% lleno. Este tipo de pruebas no pueden cubrir de todas formas algo puede estar visiblemente mal, pero son mucho más fáciles de automatizar y sufrirán en la mayoría de los casos.

(rr-testing-challenges-non-integer)=
## Probando si los números no enteros son iguales

### Cuando 0.1 + 0.2 no es igual a 0.3

Hay una complicación con probar si la respuesta es igual a la respuesta esperada cuando los números no son enteros. Veamos este ejemplo de Python, pero ten en cuenta que este problema no es exclusivo de Python.

Si asignamos 0.1 a `a` y 0.2 a `b` e imprimimos su suma, obtenemos 0.3, como se esperaba.

    ```
    >>> a = 0.1
    >>> b = 0.2
    >>> print(a + b)
    0.3
    ```

Sin embargo, si comparamos el resultado de `a` más `b` a 0.3 obtenemos False.

    ```
    >>> print(a + b == 0.3)
    False
    ```

Si mostramos el valor de `a` más `b` directamente, podemos ver que hay un margen sutil de error.

    ```
    >>> a + b
    0.3000000000000000004
    ```

Esto se debe a que los números de punto flotante son aproximaciones de números reales. El resultado de cálculos de punto flotante puede depender del compilador o intérprete, de la arquitectura del procesador o del sistema y del número de CPUs o procesos. Obviamente, esto puede representar un obstáculo importante para la escritura de pruebas.

### Igualdad en un mundo de punto flotante

Al comparar los números de punto flotante para la igualdad, tenemos que compararlos dentro de una tolerancia determinada, llamando alternativamente umbral o delta. Por ejemplo, podríamos considerar que los valores calculados y esperados de algún número son iguales si el valor absoluto de su diferencia está dentro del valor absoluto de nuestra tolerancia.

Muchos marcos de pruebas proporcionan funciones para comparar la igualdad de números de punto flotante con una tolerancia determinada. Por ejemplo, para el pytest del marco:

    ```
    import pytest

    a = 0.1
    b = 0.2
    c = a + b
    assert c == pytest.approx(0.3)
    ```

, pero si el 0.3 se cambiara a 0.4 fallaría.

Los frameworks de prueba unitaria para otros idiomas también suelen proporcionar funciones similares:

- Unidad para C: CU_ASSERT_DOUBLE_EQUAL(actual, esperado, granularidad)
- CPPUnit para C++: CPPUNIT_ASSERT_DOUBLES_EQUAL(esperado, real, delta)
- googletest para C++: ASSERT_NEAR(val1, val2, deletre)
- FRUIT para Fortran: subroutina assert_eq_double_in_range_(var1, var2, delta, mensaje)
- JUnit para Java: org.junit.Assert.assertEquals(doble esperado, doble actual, doble delta)
- prueba para R:
  - expect_equal(real, esperado, tolerancia=DELTA) - error absoluto dentro de DELTA
  - expect_equal(real, esperado, escala=esperado, tolerancia=DELTA) - error relativo dentro de DE L T A
