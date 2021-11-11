# Guía general y buenas prácticas para probar

Hay una serie de pruebas que tienen cada una de las mejores prácticas específicas para ellas. Sin embargo, hay algunas directrices generales que se aplican a todas ellas, que se esbozarán aquí.

## Escribir Pruebas - ¡Cualquier Prueba!

Iniciar el proceso de escritura de pruebas puede ser amplio, especialmente si usted tiene una base de código grande. Además de eso, como se ha mencionado, hay muchos tipos de pruebas, y la aplicación de todas puede parecer una montaña imposible de escalar. Por eso la guía más importante en este capítulo es la siguiente: **escribe algunas pruebas**. Probar una cosa pequeña en un código que tiene miles de líneas de longitud es infinitamente mejor que probar cosas en un código que tiene miles de líneas de longitud. Puede que no puedas hacer todo, pero hacer *algo* es valioso.

Haz mejoras donde puedas, y haz todo lo posible para incluir pruebas con el nuevo código que escribas incluso si no es factible escribir pruebas para todo el código que ya está escrito.

## Ejecutar las pruebas

El segundo consejo más importante en este capítulo: ejecutar las pruebas. Tener una bonita suite de pruebas perfecta no sirve de nada si rara vez lo ejecutas. Dejar largas brechas entre las ejecuciones de pruebas hace más difícil rastrear lo que ha ido mal cuando una prueba falla, porque mucho en el código habrá cambiado. También si han pasado semanas o meses desde que se han ejecutado las pruebas y fallan, es difícil o imposible saber qué trabajo/resultados se han hecho en el tiempo intermedio siguen siendo válidos, y que tienen que ser desechados ya que podrían haber sido impactados por el error.

Como tal, es mejor automatizar las pruebas en la medida de lo posible. Si cada prueba necesita ser ejecutada individualmente, es probable que ese aburrido proceso de minuciosidad sea descuidado. Esto se puede hacer haciendo uso de un framework de pruebas ([discutido más adelante](#Use_a_testing_framework)). [Jenkins](https://jenkins.io) es otra buena herramienta para esto. Idealmente configura tus pruebas para funcionar en intervalos regulares, posiblemente cada noche.

Considere establecer una integración continua (discutida en el capítulo de integración continua) en su proyecto. Esto ejecutará automáticamente tus pruebas cada vez que hagas un cambio en tu código y, dependiendo del software de integración continua que utilice, le notificará si alguna de las pruebas fallan.

## Considera cuánto tiempo tardan tus pruebas en ejecutarse

Algunas pruebas, como [unit tests](#Unit_tests) sólo prueban una pequeña pieza de código y por lo general son muy rápidas. Sin embargo, otros tipos de pruebas, como [pruebas del sistema](#System_tests) que prueban todo el código de extremo a extremo, puede tardar mucho en ejecutarse dependiendo del código. Como tal, puede ser obstructivo ejecutar toda la suite de pruebas después de cada pequeño trabajo. En ese caso es mejor realizar pruebas de peso más ligero, como las pruebas unitarias con frecuencia, y pruebas más largas sólo una vez al día de la noche. También es bueno escalar el número de cada tipo de pruebas que tienes en relación con el tiempo que tardan en realizarse. Deberías tener muchas pruebas unitarias (u otros tipos de pruebas que son rápidas), pero muchas menos pruebas que tardan mucho en ejecutarse.

## Documentar las pruebas y cómo ejecutarlas

Es importante proporcionar documentación que describa cómo ejecutar las pruebas, ambos por ti mismo en caso de que vuelvas a un proyecto en el futuro, y para cualquier otra persona que desee construir o reproducir su obra. Esta documentación también debería abarcar temas como

- Cualquier recurso, como archivos de datos de prueba que sean requeridos
- Cualquier ajuste de configuración/configuración necesario para ejecutar las pruebas
- Qué software (como [testing frameworks](#Use_a_testing_framework)) necesita ser instalado

Idealmente, proporcionaría scripts para configurar y configurar cualquier recurso que se necesite.

## Probar casos realistas

Haga que los casos que prueba sean lo más realistas posible. Si por ejemplo, tiene datos ficticios para ejecutar pruebas en usted debe asegurarse de que los datos son lo más similares posible a los datos reales. Si sus datos reales son desordenados con muchos valores nulos, así debería ser su conjunto de datos de prueba.

## Usar un framework de pruebas

Existen herramientas disponibles para facilitar la escritura y ejecución de pruebas, conocidas como frameworks de pruebas. Encuentra uno que te guste, aprende sobre las características que ofrece, y haz uso de ellas. Los marcos de prueba comunes (y los idiomas a los que se aplican) incluyen:

- Agnóstico de idioma
  - CTest, corredor de pruebas para ejecutables, scripts bash y más. Ideal para endurecimiento de código heredado
- C++
  - Captura
  - CppTest
  - Optimizar
  - prueba de google
- C
  - todos los frameworks de C++
  - Comprobar
  - CUnit
```{note}
Aunque los modernos C++ y C siguen siendo en su mayoría compatibles, no están completamente y pueden no funcionar de forma intercambiable y usar el framework de pruebas.
```
- Python
  - pytest (recomendado)
  - unitest viene con la librería estándar de Python
- R pruebas unitarias
  - prueba
  - tinytest
  - svUnit (funciona con SciViews GUI)
- Fortran unit-tests:
  - divertido
  - pfunit (funciona con MPI)

## Aim para tener una buena cobertura de código

La cobertura del código es una medida de la cantidad de su código "cubierto" por pruebas. Más precisamente es una medida de la cantidad de código que se ejecuta cuando se realizan pruebas. Así que, por ejemplo, si tienes una sentencia `si` pero sólo prueba cosas donde eso si la sentencia evalúa a "Verdadero", entonces no se ejecutará ningún código que se incluye en "False". Como resultado, la cobertura de su código sería < 100% (el número exacto dependería de cuánto código se encuentra en los casos True y False). La cobertura del código no incluye documentación como comentarios, así que añadir más documentación no afecta a sus porcentajes.

Como se ha comentado, cualquier prueba es una mejora en comparación con ninguna prueba. Sin embargo, es bueno al menos aspirar a tener la cobertura de su código tan alta como feasible.

La mayoría de los lenguajes de programación tienen herramientas integradas en ellas, o que pueden importarse, o como parte de marcos de prueba, que miden automáticamente la cobertura de código. También hay un pequeño [bot](https://codecov.io/) para medir la cobertura de código también disponible.

**Pitfall: La ilusión de la buena cobertura.** En algunos casos, el mismo código puede y debería probarse de múltiples maneras. Por ejemplo, la cobertura puede aumentar rápidamente en el código que aplica pruebas de "verificación de sanidad" a su salida ([ver debajo](#tests-that-are-difficult-to-quantify)), pero esto no excluye el riesgo de que el código esté produciendo la respuesta ampliamente correcta por razones equivocadas. En general, las mejores pruebas son las que aíslan los pedazos más pequeños y no más grandes del código coherente, y así elegir los pasos individuales de la lógica. Trate de guiarse pensando en las posibles cosas que puedan pasar a un trozo de código en particular en la ejecución del todo, y probar estos casos individuales. A menudo, esto resultará en que el mismo código sea probado varias veces - ¡esto es bueno!

## Usar pruebas dobles/stubs/mocking cuando sea apropiado

Si una prueba falla, debería construirse de tal forma que sea tan fácil localizar el origen del fracaso como sea posible. Esto se vuelve problemático si una pieza de código que quieres probar depende inevitablemente de otras cosas. Por ejemplo, si una prueba de un trozo de código que interactúa con la web falla, que podría ser porque el código tiene un error *o* porque hay un problema con la conexión a Internet. Del mismo modo, si una prueba para una pieza de código que usa un objeto falla, podría ser porque hay un error en el código que se está probando, o un problema con el objeto (que debería ser probado por sus propias pruebas separadas). Estas dependencias deben ser eliminadas de las pruebas, si es posible. Esto se puede hacer usando reemplazos de pruebas (prueba doble) en el lugar de las dependencias reales. Las pruebas dobles pueden clasificarse de la siguiente manera:

- Un objeto tonto se transmite pero nunca se utiliza, lo que significa que sus métodos nunca se llaman. Tal objeto puede ser usado por ejemplo para llenar la lista de parámetros de un método.
- Los objetos falsos tienen implementaciones funcionales, pero generalmente se simplifican. Por ejemplo, utilizan una base de datos en memoria y no una base de datos real.
- Un stub es una implementación parcial para una interfaz o clase con el propósito de usar una instancia de este stub durante la prueba. Los estúbos normalmente no responden a nada fuera de lo programado para la prueba. Los Stubs también pueden registrar información sobre las llamadas.
- Un objeto simulado es una implementación tonta para una interfaz o una clase en la que se define la salida de ciertas llamadas de método. Los objetos simulados se configuran para realizar un determinado comportamiento durante una prueba. Normalmente registran la interacción con el sistema y las pruebas pueden validarlo.

La prueba puede pasar dos veces a otros objetos que son probados.

Puede crear objetos simulados manualmente (a través de código) o utilizar un marco simulador para simular estas clases. Los frameworks simulados permiten crear objetos simulados en tiempo de ejecución y definir su comportamiento. El ejemplo clásico para un objeto simulado es un proveedor de datos. En producción se utiliza una implementación para conectarse a la fuente de datos real. Pero para probar un objeto simulado simula la fuente de datos y asegura que las condiciones de prueba son siempre las mismas.
