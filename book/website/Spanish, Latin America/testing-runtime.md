(rr-testing-runtime)=
# Prueba de ejecución

Las pruebas de ejecución son pruebas que se ejecutan como parte del propio programa. Pueden tomar la forma de comprobaciones dentro del código, como se muestra a continuación:
```
population = population + peopleple_born - peopleple_died

// prueba que la población es positiva
if (population < 0):
error( 'El número de personas nunca puede ser negativo' )
```

Otro ejemplo de uso de pruebas de tiempo de ejecución son las comprobaciones internas dentro de funciones que verifican que sus entradas y salidas son válidas, como se muestra a continuación:
```
function add_arrays( array1, array2 ):

// prueba que los arrays tienen el mismo tamaño
if (array1. ize() != array2.size()):
  error ( '¡Los arrays tienen diferentes tamaños!' )

salida = array1 + array2

if (output.size() != array1.size()):
  error ( '¡El array de salida tiene un tamaño incorrecto!'' )

devuelve salida
```

Ventajas de pruebas de tiempo de ejecución:
- Ejecutar dentro del programa, así que puede detectar problemas causados por errores lógicos o casos de borde.
- Hace que sea más fácil encontrar la causa del error atrapando problemas tempranamente.
- La captura temprana de los problemas también ayuda a evitar que se intensifiquen hasta convertirse en fracasos tópicos. Reduce al mínimo el radio de explosión.

Desventajas de las pruebas de tiempo de ejecución:

- Las pruebas pueden ralentizar el programa.
- ¿Qué es lo correcto si se detecta un error? ¿Cómo se debería informar de este error? Las excepciones son una ruta recomendada para ello.
