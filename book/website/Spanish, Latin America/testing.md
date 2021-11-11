(rr-testing)=
# Prueba de código

| Prerrequisito                                                                                     | Importancia |
| ------------------------------------------------------------------------------------------------- | ----------- |
| [Experiencia con la línea de comandos](https://programminghistorian.org/en/lessons/intro-to-bash) | Necesario   |

## Summary

El código escrito por el investigador ahora forma parte de una gran parte de la investigación, y si hay errores en el código, los resultados pueden ser parcial o totalmente poco fiables. Probar código a fondo y con frecuencia es vital para garantizar una investigación fiable y reproducible. Este capítulo proporcionará orientación general para escribir pruebas y describirá varios tipos de pruebas, sus usos y cómo ponerlos en práctica.

```{figure}  ../figures/error-management.jpg
---
name: error-management
alt: Una persona está codificando felizmente, luego un error arroja y el codificador se confunde. Entonces el codificador puede encontrar el error y arreglarlo.
---
_The Turing Way_ ilustración del proyecto por Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Motivación

Es muy, muy fácil cometer errores al codificar. Un único carácter fuera de lugar puede causar que la salida de un programa sea totalmente errónea. Uno de los ejemplos anteriores fue causado por un signo plus que debería haber sido un menos. Otra fue causada por una pieza de código que funciona en metros, mientras que un trozo de código escrito por otro investigador trabajaba en pies. *Todos* cometen errores, y en la investigación los resultados pueden ser alfabéricos. Se pueden dañar o poner fin a las carreras, se pueden perder enormes sumas de fondos de investigación y se puede perder tiempo valioso al explorar avenues incorrectos. Por eso las pruebas son vitales.

Aquí hay un par de ilustraciones que exemplifican por qué deben escribir las pruebas:

```{figure}  ../figures/testing-motivation1.png
---
nombre: testing-motivation1
alt:
---
```

```{figure}  ../figures/testing-motivation2.png
---
nombre: testing-motivation2
alt:
---
```

Incluso si se detectan problemas en un programa antes de que se publique la investigación, puede ser difícil determinar qué resultados están contaminados y deben ser rehechos. Esto representa una enorme pérdida de tiempo y esfuerzo. Capturar estos problemas lo antes posible minimiza la cantidad de trabajo que se necesita para solucionarlos, y para la mayoría de los investigadores el tiempo es con diferencia su recurso más escaso. No debes omitir escribir pruebas porque tienes poco tiempo, debes escribir pruebas *porque* tienes poco tiempo. Los investigadores no pueden permitirse el lujo de tener meses o años de trabajo en pie, y no pueden permitirse revisar manualmente repetidamente cada pequeño detalle de un programa que podría tener cientos o cientos de miles de líneas de longitud. Escribir pruebas para hacerlo por ti es la opción que ahorra tiempo, y es la opción segura.

A medida que los investigadores escriben código, generalmente hacen algunas pruebas a medida que van saliendo , a menudo añadiendo en declaraciones impresas y comprobando la salida. Sin embargo, estas pruebas a menudo se desechan tan pronto como pasan y ya no están presentes para comprobar lo que tenían la intención de comprobar. Es relativamente poco trabajo colocar estas pruebas en funciones y mantenerlas para que puedan ejecutarse en cualquier momento en el futuro. El trabajo adicional es mínimo, el tiempo ahorrado y las salvaguardias proporcionadas son invaluables. Además, formalizando el proceso de pruebas en un conjunto de pruebas que se pueden ejecutar de forma independiente y automática, proporciona un grado mucho mayor de confianza de que el software se comporta correctamente y aumenta la probabilidad de que se encuentren los defectos que se encuentren.

Las pruebas también le dan a los investigadores mucha más tranquilidad cuando trabajan en un proyecto o mejoran su mente. Después de cambiar su código, un investigador querrá comprobar que sus cambios o correcciones no han roto nada. Proporcionar a los investigadores un entorno rápido permite la rápida identificación de fallos introducidos por cambios en el código. La alternativa, del investigador escribiendo y ejecutando cualesquiera pequeñas pruebas para las que tengan tiempo es muy inferior a una buena suite de pruebas que puede comprobar a fondo el código.

Otro beneficio de escribir pruebas es que normalmente obliga a un investigador a escribir un limpiador, más código modular, ya que dicho código es mucho más fácil de escribir pruebas, lo que conduce a una mejora en la calidad del código.
{ref}`Código de buena calidad<rr-code-quality>` es mucho más fácil (y en conjunto más agradable) para trabajar que los nidos de código enredados de la rata estoy seguro de que todos nos hemos encontrado (y, seamos honestos, escritos). Este punto se expande en la sección {ref}`rr-testing-unitest`.

## Las ventajas de las pruebas para la investigación

Además de beneficiar a los investigadores individuales, las pruebas también benefician a la investigación en su conjunto. Hace que la investigación sea más reproducible respondiendo a la pregunta "cómo sabemos incluso que funciona este código". Si nunca se guardan las pruebas, sólo se hace y se elimina, la prueba no se puede reproducir fácilmente.

Las pruebas también ayudan a evitar que se gaste dinero de subvención valioso en proyectos que pueden ser parcial o totalmente defectuosos debido a errores en el código. Peor aún, si no se detectan errores y se publica el trabajo, cualquier trabajo posterior que se base en el proyecto será igualmente errado.

Tal vez la expresión más limpia de por qué las pruebas son importantes para la investigación en su conjunto se puede encontrar en el logano del [Instituto de Sostenibilidad del Software](https://www.software.ac.uk/) : mejor software, una mejor investigación.
