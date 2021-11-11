(rr-testing-aceptación-regresión)=
# Pruebas de aceptación y regeneración

(rr-prueba-aceptación)=
## Pruebas de aceptación

Las pruebas de aceptación son uno de los últimos tipos de pruebas que se realizan en el software antes de la entrega. Las pruebas de aceptación se utilizan para determinar si una pieza de software satisface todos los requisitos desde la perspectiva del negocio o del usuario. ¿Esta pieza de software hace lo que necesita hacer? Estas pruebas a veces se construyen según la especificación original.

Dado que el software de investigación es escrito típicamente por el investigador que lo utilizará (o al menos con un aporte significativo de ellos) las pruebas de aceptación pueden no ser necesarias.

(rr-prueba-regresión)=
## Prueba de Regresión

Regression testing es un estilo de prueba que se enfoca en retesting después de realizar cambios. Los resultados de las pruebas después de los cambios se comparan con los resultados anteriores, y se producen errores si son diferentes. Las pruebas de regresión tienen por objeto asegurarse de que los cambios (mejoras o correcciones de defecto) del software no lo hayan afectado de forma negativa. La probabilidad de que cualquier cambio de código afecte a las funcionalidades que no están directamente asociadas con el código está siempre ahí y es esencial que se realicen pruebas de regresión para asegurarse de que la corrección de una cosa no ha roto otra. Las pruebas de Regresión se pueden realizar durante cualquier nivel de prueba (unidad, integración, sistema o aceptación), pero son principalmente relevantes durante las pruebas del sistema. Cualquier prueba puede ser reutilizada, por lo que cualquier prueba puede convertirse en una prueba de regresión.

Las pruebas de regresión son obviamente especialmente importantes en el trabajo en equipo, pero es sorprendentemente fácil romper tu propio código sin notarlo, incluso si estás trabajando por ti mismo. Y como las pruebas de regresión son casi imposibles de hacer satisfactoriamente a mano (es simplemente demasiado tediosas), es un caso obvio para la automatización.

Las pruebas de Regresión se escriben ejecutando primero (o parte del código) para las entradas dadas y registrando las salidas. Esto se podría hacer escribiendo archivos de entrada y guardando los archivos de salida correspondientes. Estas salidas sirven como las salidas esperadas del programa dadas las entradas correspondientes. Las pruebas de regresión se escriben entonces. Cada prueba de regresión ejecuta el código para el conjunto de entradas. Luego compara la salida del código con las salidas esperadas, y plantea un error si éstas no coinciden.

Los enfoques de las pruebas de regresión difieren en su enfoque.

Ejemplos comunes incluyen:
- Regresión de errores: Reprobamos un error específico que supuestamente ha sido corregido.
- Prueba de regresión de arreglos antiguos: Reprobamos varios errores antiguos que fueron corregidos, para ver si están de vuelta. (Esta es la noción clásica de regresión: el programa ha regresado a un mal estado.)
- Regresión funcional general: Reprobamos ampliamente el proyecto, incluyendo áreas que funcionaron antes, para ver si los cambios más recientes han desestabilizado el código de trabajo.
- Conversión o prueba de puerto: El programa se porta a una nueva plataforma y se ejecuta una suite de pruebas de regresión para determinar si el puerto fue exitoso.
- Pruebas de configuración: El programa se ejecuta con un nuevo dispositivo o en una nueva versión del sistema operativo o junto con una nueva aplicación. Esto es como pruebas de puertos excepto que el código subyacente no ha sido cambiado--sólo los componentes externos con los que el software bajo prueba debe interactuar.

### Limitaciones de pruebas de Regresión

Las pruebas de regresión no están garantizadas para probar todas las partes del código. Lo más importante es que las pruebas de regresión no prueban si el resultado obtenido por una pieza de código es *correcto*, sólo que no ha cambiado. Este es el cometido de otros tipos de pruebas, aunque las pruebas de regresión pueden servir como punto de partida para la introducción de pruebas de corrección, por el uso de soluciones analíticas, y a través de funciones de prueba que leen los archivos de salida y comprueben la exactitud de los datos, tal y como los define un investigador.
