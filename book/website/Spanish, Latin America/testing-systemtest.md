(rr-testing-systemtest)=
# Pruebas del sistema

Una vez realizadas las pruebas de integración, se puede iniciar otro nivel de prueba llamado sistema de pruebas. La prueba del sistema es un nivel de prueba de software donde se prueba un software completo e integrado. El tester suministra el programa con entrada y verifica si la salida del programa es correcta. Si no lo es, entonces hay un problema en algún lugar del sistema. Tenga en cuenta que esto no tiene que hacerse manualmente, puede ser automatizado. El propósito de estas pruebas es evaluar el cumplimiento del sistema con los requisitos especificados. En muchos sentidos, las pruebas de sistemas actúan como una extensión de las pruebas de integración. El enfoque de las pruebas del sistema es asegurar que los grupos de componentes funcionen correctamente como un todo cohesivo.

Sin embargo, en lugar de centrarse en las interfaces entre componentes, las pruebas del sistema normalmente evalúan la funcionalidad exterior de una pieza completa de software. Este conjunto de pruebas ignora las partes constituyentes para medir el software compuesto como una entidad unificada. Debido a esta distinción, las pruebas del sistema generalmente se centran en las salidas accesibles al usuario o externamente.

La prueba del sistema también puede probar características del sistema que no sean correctos. Los ejemplos incluyen:

- Pruebas de rendimiento: ¿Cumple el rendimiento del programa con los requisitos mínimos? Una prueba de rendimiento puede medir cuánto tarda el sistema en ejecutarse en un caso determinado.
- Pruebas de migración: ¿funciona el programa cuando se transfiere a otro entorno computacional?
- Prueba de estrés/escala/carga: prueba cómo se comporta el programa cuando está bajo estrés, por ejemplo, cuando se requiere para procesar volúmenes muy grandes de datos.
- Pruebas de usabilidad: cuán fácil de usar es el programa (más común en software comercial, pruebas típicamente realizadas por humanos en lugar de automatizadas).
- Pruebas de recuperación: si el programa puede continuar si se producen errores (otra vez, más comunes en el software comercial).

## Consejos de Prueba del Sistema

Las pruebas de sistema, también llamadas pruebas de extremo a extremo, ejecutan el programa, bien, de extremo a fin. Como tal, estas son las pruebas que consumen más tiempo para ejecutar. Por lo tanto, sólo debe ejecutar estas pruebas si todas las pruebas de nivel inferior (humo, unidad, integración) ya han pasado. Si lo han hecho, arregla los problemas que han detectado antes de perder tiempo ejecutando pruebas del sistema.

Debido a su naturaleza que consume mucho tiempo, a menudo también será poco práctico tener suficientes pruebas de sistema para rastrear todas las rutas posibles a través de un programa, especialmente si hay un número significativo de declaraciones condicionales. Por lo tanto, debe considerar los casos de prueba del sistema que ejecute con cuidado y prioridad:

- Las rutas más comunes a través de un programa.
- Las rutas más importantes para un programa. Por ejemplo, el detector de LIGO tiene como objetivo encontrar eventos de onda gravitacionales, que son extremadamente raros. Si hay un error en ese camino a través del programa que monitorea el detector, entonces es un *gran problema*.
- Casos que son propensos a la rotura debido a problemas estructurales dentro del programa. Aunque idealmente es mejor solucionar esos problemas, pero existen casos en los que esto puede no ser factible.

Debido a que las pruebas del sistema pueden estar consumiendo tiempo, puede ser poco práctico ejecutarlas muy regularmente (como varias veces al día después de pequeños cambios en el código). Por lo tanto, puede ser una buena idea ejecutarlos cada noche (y automatizar este proceso) de manera que si se introducen errores que sólo la prueba del sistema puede detectar al programador se le hará consciente de ellos relativamente rápidamente.
