(rr-testing-types-integrationtest)=
# Prueba de Integración

Las pruebas de integración son un nivel de prueba de software donde las unidades individuales se combinan y prueban como grupo. Mientras que las pruebas unitarias validan la funcionalidad del código de forma aislada, las pruebas de integración aseguran que los componentes cooperen cuando se interrelacionan entre sí. El propósito de este nivel de pruebas es exponer fallos en la interacción entre unidades integradas.

Por ejemplo, tal vez una unidad que lee en algunos datos está funcionando y pasa sus pruebas unitarias, y la siguiente unidad que limpia los datos una vez que ha sido leída también está funcionando y pasa sus pruebas. Sin embargo, digamos que la primera unidad produce los datos como (time_data, temperature_data) pero la función que limpia los datos espera la entrada de la forma (temperature_data, time_data). Obviamente, esto puede conducir a errores. Mientras que las unidades son correctas allí en un error en su integración.

Un ejemplo de una prueba de integración para este caso podría ser proporcionar un archivo de datos de prueba, use estas funciones para leerlas y limpiarlas, y para comprobar los datos que resulten limpiados contra lo que se esperaría. Si un error como este está presente, entonces los datos limpiados resultados serían muy improbables de coincidir con el resultado esperado. y se levantaría un error.

Las pruebas de integración son particularmente importantes en proyectos de colaboración donde diferentes personas trabajan en diferentes partes del código. Si dos personas diferentes completan unidades separadas y luego necesitan integrarse, entonces los problemas de integración son más probables ya que ninguno de ellos puede entender el código del otro. Un ejemplo famoso de esto es un satélite de varios millones de dólares que [se estrelló](https://en.wikipedia.org/wiki/Mars_Climate_Orbiter) porque una pieza de código produjo datos de distancia en los pies, mientras que otro suponía datos en metros. Este es otro ejemplo de una cuestión de integración.

Un subtipo de prueba de integración es la prueba de integración del sistema. Esto prueba la integración de sistemas, paquetes y cualquier interfaz a organizaciones externas (tales como Intercambio de Datos Electrónicos, Internet). Dependiendo de la naturaleza de una prueba de integración del sistema de proyecto puede o no ser aplicable.

## Ensayos de integración

Existen varios enfoques diferentes para las pruebas de integración. Big Bang es un enfoque para las pruebas de integración donde todas o la mayoría de las unidades se combinan y prueban de una sola vez. Este enfoque se toma cuando el equipo de pruebas recibe todo el software en un paquete. Entonces, ¿cuál es la diferencia entre las pruebas de integración de Big Bang y las pruebas de sistema? Bueno, el primero prueba sólo las interacciones entre las unidades mientras que el segundo prueba todo el sistema.

Top Down es un método para las pruebas de integración donde las secciones de nivel superior del código (que ellos mismos contienen muchas unidades más pequeñas) se prueban primero y las unidades de nivel inferior se prueban paso a paso después. Así es que un código puede dividirse en los pasos principales A, B y C y cada uno de estos contienen pasos para completarlos, y estos pasos pueden tener subpasos como:

- A
- R.1
  - A.1.1
  - A. 1.2
- R.2
- B
- B.1
- B.2
  - B.2.1
  - B.2.2
  - B.2.3
- B.3

- C
- C.1
  - C.1.1
  - C. 1.2
- C.2
  - C2.1
  - C2.2

Así que en el enfoque de arriba hacia abajo la integración entre secciones en el nivel superior (A, B y C son probados, luego la integración entre las secciones en el siguiente nivel (por ejemplo, A. -> A.2) y así sucesivamente. Probando unidades de nivel superior ejecutando todo el código que contienen, incluyendo el de nivel más bajo, puede llevar a que se rompan las pruebas de nivel superior debido a errores en unidades de nivel bajo. Esto es inasumible, así que para evitar esto no deben ejecutarse las secciones de nivel inferior, pero [se deben usar los stubs de prueba](#Use_test_doubles_stubs_mocking_where_appropriate) para simular las salidas de ellos.

Bottom Up es un método para las pruebas de integración donde la integración entre las secciones de nivel inferior se prueban primero y las secciones de nivel superior paso a paso. Una vez más se deben utilizar los trozos de prueba, en este caso para simular entradas de secciones de alto nivel.

Sandwich/Hybrid es un método para las pruebas de integración que es una combinación de los enfoques Top Down y Bottom Up.

El enfoque que usted debe utilizar dependerá de cuál se adapte mejor a la naturaleza/estructura de su proyecto.

## Consejos de pruebas de integración

- Asegúrese de tener un documento de diseño de detalles adecuado donde las interacciones entre cada unidad estén claramente definidas. Es difícil o imposible realizar pruebas de integración sin esta información.
- Asegúrese de que cada unidad está probada y arregla cualquier error antes de comenzar a probar la integración. Si hay un error en las unidades individuales, es casi seguro que las pruebas de integración fallarán incluso si no hay ningún error en la forma de integrarlas.
- Usar mocking/stubs cuando sea apropiado.
