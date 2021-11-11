(rr-testing-overview)=
# Resumen de los tipos de pruebas

Hay una serie de diferentes tipos de pruebas, que se debatirán aquí.

En primer lugar, hay pruebas positivas y pruebas negativas. Las pruebas positivas comprueban que algo funciona, por ejemplo pruebas de que una función que multiplica algunos números juntos produce la respuesta correcta. Las pruebas negativas comprueban que algo genera un error cuando debería. Por ejemplo, nada puede ir más rápido que la velocidad de la luz, por lo que un código de simulación física de plasma puede contener una prueba de que un error es producido si hay partículas más rápido que este, ya que indica que hay un problema más profundo en el código.

Además de estos dos tipos de pruebas, existen diferentes niveles de pruebas que prueban diferentes aspectos de un proyecto. Estos niveles se describen a continuación y se pueden presentar pruebas positivas y negativas en cualquiera de estos niveles. Una suite de pruebas completa contendrá pruebas en todos estos niveles (aunque algunos niveles necesitarán muy pocos).

## Tipos de pruebas

[Pruebas de humo](#Smoke_testing): Comprobaciones iniciales muy breves que garantizan los requisitos básicos necesarios para ejecutar el proyecto. Si estos fallan no tiene sentido pasar a niveles adicionales de pruebas hasta que se corrigan.

[Prueba unitaria](#Unit_tests): Un nivel del proceso de prueba de software donde se prueban las unidades individuales de un software. El propósito es validar que cada unidad del software realiza como está diseñado.

[Prueba de integración](#Integration_testing): Un nivel de prueba de software donde las unidades individuales se combinan y prueban como un grupo. El propósito de este nivel de pruebas es exponer fallos en la interacción entre unidades integradas.

[Prueba del sistema](#System_tests): Un nivel del proceso de prueba de software donde se prueba un sistema completo e integrado. El propósito de esta prueba es evaluar si el sistema en su conjunto da las salidas correctas para las entradas dadas.

[Pruebas de aceptación](#Acceptance_testing): Un nivel del proceso de prueba de software donde un sistema es probado para ser aceptado. El propósito de esta prueba es evaluar el cumplimiento del sistema con los requisitos del proyecto y evaluar si es aceptable para ese propósito.

Aquí hay una analogía: durante el proceso de fabricación de un bolígrafo, la tapa, el cuerpo, la cola, el cartucho de tinta y el punto de pelota se producen por separado y la unidad de prueba por separado. Cuando dos o más unidades están listas, se ensamblan y se realizan pruebas de integración, por ejemplo una prueba para comprobar que la tapa encaja en el cuerpo. Cuando la pluma completa está integrada, las pruebas del sistema se realizan para comprobar que se pueden utilizar para escribir como cualquier bolígrafo. Las pruebas de aceptación podrían ser una comprobación para asegurar que el bolígrafo es el color que el cliente ha pedido.

También hay otro tipo de pruebas llamadas pruebas de regresión. Las pruebas de Regresión son un tipo de prueba que se puede realizar en cualquiera de los cuatro niveles principales y compara los resultados de las pruebas antes y después de que se haga un cambio en el código, y da un error si son diferentes.

Estos diferentes tipos de pruebas se discuten con más detalle en los subcapítulos siguientes.
