(rr-ci-prácticas)=
# Mejores prácticas y recomendaciones

## Cambios pequeños y iterativos

Una de las prácticas más importantes a la hora de adoptar una integración continua es animar a los miembros del proyecto a realizar y realizar pequeños cambios. Los pequeños cambios minimizan la posibilidad y el impacto de los problemas que surgen cuando están integrados, lo que minimiza el costo de tiempo y esfuerzo de la integración.

## Desarrollo basado en troncos

Con el desarrollo basado en el tronco, el trabajo se realiza en la rama principal del repositorio o se fusiona de nuevo en el repositorio compartido en intervalos frecuentes. Las ramas de características de corta vida son permisibles siempre y cuando representen pequeños cambios y se fusionen lo antes posible.

La idea detrás del desarrollo basado en el tronco es evitar grandes commits que violen el concepto de pequeños cambios iterativos que se discuten anteriormente. El código está disponible para los pares temprano para que los conflictos puedan resolverse cuando su alcance es pequeño.

## Mantén el edificio y las fases de prueba rápidas

Debido a que los pasos de construcción y prueba deben realizarse con frecuencia, es esencial que estos procesos se reorganicen para minimizar el tiempo dedicado a ellos. El aumento del tiempo de construcción debe ser tratado como un problema importante porque el impacto se ve agravado por el hecho de que cada commit emite una construcción.

Cuando es posible, ejecutar diferentes secciones de la suite de pruebas en paralelo puede ayudar a mover la construcción a través del tubo más rápido. También hay que tener cuidado para garantizar que la proporción de cada tipo de ensayo tenga sentido. Las pruebas unitarias son típicamente muy rápidas y tienen una sobrecarga mínima de mantenimiento. En contraste, las pruebas automatizadas o de aceptación son a menudo complejas y propensas a la avería. Para explicar esto, a menudo es una buena idea depender en gran medida de las pruebas unitarias, llevar a cabo un buen número de pruebas de integración y luego dar la espalda al número de pruebas más tarde, más complejas.

## Gastos computacionales

Algunos programas requerirán recursos de cómputo significativos para construir y/o ejecutar. Algunos ejemplos son el clima y los modelos climáticos. Esto puede hacer que el uso de la integración continua sea poco práctico, ya que las pruebas tardan demasiado tiempo o utilizan demasiados recursos. Por lo tanto, es necesario encontrar un compromiso para equilibrar el riesgo de pruebas incompletas con un proceso de desarrollo utilizable.

Un enfoque es utilizar diferentes niveles de prueba, con diferentes subgrupos que se requieren dependiendo de lo que se está cambiando. Se puede utilizar un amplio subgrupo común en todos los casos, invocando otros para probar ciertas áreas con más detalle. Esto introduce un elemento de juicio en el proceso de prueba, pero se puede aplicar con éxito.

## Seguimiento de dependencias

La comprobación de actualizaciones de dependencias debe hacerse regularmente. Puede ahorrar mucho tiempo, evitando errores debido a que el código depende de la funcionalidad obsoleta. Servicios como [David](https://david-dm.org/) están disponibles para la gestión de dependencias.

## Consistencia a lo largo del tubo

Un proyecto debe construirse una vez al principio del pipeline, el software resultante debe ser almacenado y accesible a procesos posteriores sin reconstruir. Usando el mismo artefacto exacto en cada fase, puede estar seguro de que no está introduciendo inconsistencias como resultado de diferentes herramientas de construcción.
