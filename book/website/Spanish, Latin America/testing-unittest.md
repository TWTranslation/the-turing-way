(rr-testing-unittest)=
# Prueba unitaria

Las pruebas unitarias son responsables de probar elementos individuales de código de una manera aislada y altamente dirigida. La funcionalidad de las funciones individuales y las clases son probadas por sí solas. El propósito es validar que cada unidad del software realiza como está diseñado. Una unidad es la parte más pequeña de prueba de cualquier software. En programación de procedimientos, una unidad puede ser un programa, función o procedimiento individual. En la programación orientada a objetos, la unidad más pequeña es típicamente un método. Normalmente tiene una o unas pocas entradas y generalmente una sola salida. Cualquier dependencia externa debe ser reemplazada con implementaciones stub o mock para enfocar la prueba completamente en el código en cuestión.

Las pruebas unitarias son esenciales para comprobar la exactitud de los componentes individuales de código para la consistencia interna y la corrección antes de que se coloquen en contextos más complejos. El alcance limitado de las pruebas y la eliminación de las dependencias facilitan la búsqueda de la causa de cualquier defecto. También es el mejor momento para probar una variedad de entradas y ramas de código que podrían ser difíciles de golpear más adelante. Por ejemplo, las pruebas del sistema suelen consumir mucho tiempo para ejecutarse y es probable que no sea práctico tener pruebas del sistema para cada ruta posible a través de un código que tiene más de unas pocas sentencias condicionales. Las pruebas unitarias son más pequeñas, más rápidas, por lo que es más práctico cubrir todos los casos posibles con ellas.

A menudo, después de cualquier prueba de humo, las pruebas unitarias son las primeras pruebas que se ejecutan cuando se hacen cambios.

## Benefits of Unit Testing

Si un investigador hace un cambio en una pieza de código o cómo se ejecuta entonces ¿cómo pueden estar seguros de que no ha roto algo? Pueden ejecutar algunas pruebas, pero sin probar cada pequeño código individualmente, ¿cómo pueden estar seguros? Las pruebas unitarias brindan a los investigadores esa certeza, y les permiten estar seguros a la hora de cambiar y mantener su código.

He aquí un pequeño ejemplo. Decir que un investigador tiene una pequeña función que hace una cosa simple (aquí sólo una línea por brevedad). En este ejemplo esto aumentará un número a la quinta potencia:

```
def take_fifth_power(x):
  resultado = x * x * x * x * x * x
  resultado de retorno
```

La prueba unitaria para esta función podría verse así:
```
def test_take_fifth_power():
  afirmación take_fifth_power(1.5) == 7.59375
```

Por lo tanto, comprueba que el resultado correcto se obtenga para una entrada determinada. Si no es así, la prueba fallará. El investigador continúa con su trabajo. En medio de ella deciden cansar esta función, multiplicar el número cinco veces es un poco crudo. Cambian el resultado `= x * x * x * x * x` línea a `resultado = x * 5`. La próxima vez que ejecuten sus pruebas unitarias, esta prueba fallará, porque simplemente cometieron un error. Tal vez necesitaban un café, tal vez el dedo se deslizaba, tal vez su compañero les disparó en la oreja con un dardo nervioso y los distraía, pero cuando estaban ordenando esta función deberían haber escrito `resultado = x ** 5` *no* `resultado = x * 5`. La prueba fallida marcará el error y puede corregirse rápidamente. Si un error como este no se observara, podría conducir a graves errores en el trabajo del investigador.

Así que las pruebas unitarias conducen a un código más fiable, pero también hay otros beneficios. En primer lugar, hace que el desarrollo sea más rápido haciendo que los errores sean más fáciles de encontrar. Pruebas a gran escala que prueban grandes trozos de código (aunque todavía útiles) tienen la desventaja de que si fallan es difícil identificar la fuente del error. Porque las pruebas unitarias por su propia definición prueban pequeñas piezas de código, ayudan a los desarrolladores a encontrar la causa de un error mucho más rápido que pruebas de alto nivel o código sin ninguna prueba. Las pruebas unitarias también hacen que la corrección de errores sea más rápida y fácil porque captan errores con antelación, mientras que el impacto se limita a unidades individuales pequeñas. Si los errores no se detectan temprano a través de pruebas unitarias, entonces puede pasar mucho tiempo antes de que sean descubiertos, impactando el trabajo posterior que se construyó sobre el código defectuoso. Esto significa que hay mucho más código en riesgo y que la corrección del error consume más tiempo.

El otro gran beneficio de las pruebas unitarias es que incentivar fuertemente a los investigadores a escribir código modular porque el código modular es mucho más fácil de escribir pruebas unitarias. El código modular es el código que se divide en pedazos manejables que cada uno de ellos realiza tareas sencillas. Esto se logra dividiendo el código en funciones y grupos de funciones. En contraste, un script que es sólo una larga serie continua de líneas que produce un resultado es altamente no-modular.

El código modular también es mucho más fácil de reutilizar. Por ejemplo, si un investigador tiene una función individual que hace algo útil y en un proyecto futuro necesitan hacer eso otra vez es trivial copiar o importar la función. En contraste, si el código que hace esto Useful Thing está entrelazado con una gran cantidad de otro código en un script largo, es mucho más difícil separarlo para reutilizarlo.

## Consejos de pruebas unitarias

- Muchos frameworks de pruebas tienen herramientas específicamente engranadas hacia la escritura y ejecución de pruebas unitarias.
- Aislar el entorno de desarrollo del entorno de prueba.
- Escribir casos de prueba que sean independientes unos de otros. Por ejemplo, si una unidad A utiliza el resultado proporcionado por otra unidad B, debes probar la unidad A con un [doble prueba](#Use_test_doubles_stubs_mocking_where_appropriate), en lugar de llamar a la unidad B. Si no lo haces, tu prueba fallida puede deberse a un fallo en la unidad A *o* unidad B, haciendo que el error sea más difícil de rastrear.
- Aim a cubrir todos los caminos a través de una unidad. Preste especial atención a las condiciones del ciclo.
- Además de escribir casos para verificar el comportamiento, escribir casos para asegurar el rendimiento del código. Por ejemplo, si una función que se supone que añade dos números toma varios minutos para ejecutarse, es probable que haya un problema.
- Si encuentras un defecto en tu código, escribe una prueba que lo expone a él. ¿Por qué? En primer lugar, más adelante podrá atrapar el defecto si no lo arregla correctamente. En segundo lugar, su suite de pruebas es ahora más ambiciosa. Tercero, muy probablemente será demasiado perezoso para escribir la prueba después de que ya haya arreglado el defecto. Decir que un código tiene una función simple para clasificar a las personas como adultos o niños:

```
def adult_or_child(age):

  # Si la edad es mayor o igual a 18 los clasifique como un adulto
  if age >= 18:
    person_status = 'Adulto'

  # Si la persona no es adulta la clasifica como un niño
  else:
    person_status = 'Child'

  return person_status
```

Y decir que este código tiene una prueba unitaria como esta:

```
def test_adult_or_child():

  # Prueba que un adulto está correctamente clasificado como un adulto
  asertar adult_or_child(22) == 'Adulto'

  # Prueba que un niño está correctamente clasificado como un hijo
  assert adult_or_child(5) == 'Child'

  return
```

Hay un problema con este código que no está siendo probado: si se suministra una edad negativa, felizmente clasificará a la persona como un niño a pesar de que no es posible tener edades negativas. El código debe arrojar un error en este caso.

Así que una vez que el error ha sido corregido:
```
def adult_or_child(age):

# Verificar que la edad es válida
si la edad < 0:
  elevar ValueError, 'No es posible tener una edad negativa'

# Si la edad es mayor o igual a 18 los clasifique como adulto
si la edad >= 18:
  person_status = 'Adulto'

# Si la persona no es un adulto los clasifica como un niño
más:
  person_status = 'Child'

return person_status
```

Sigue adelante y escribe una prueba para asegurar que los futuros cambios en el código no puedan causar que vuelva a ocurrir:
```
def test_adult_or_child():

#Prueba que un adulto está correctamente clasificado como un adulto
asertar adult_or_child(22) == 'Adulto'

# Prueba que un niño está correctamente clasificado como un hijo
assert adult_or_child(5) == 'Child'

# Prueba que suministrar una edad inválida da como resultado un error
con pitest. aises(ValueError):
    adult_or_child(-10)
```
