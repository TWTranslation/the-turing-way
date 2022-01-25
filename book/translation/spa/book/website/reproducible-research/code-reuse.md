(rr-código reutilizar)=
# Código reutilizable
Su proyecto de software podría ir desde un pequeño script que utiliza para el procesamiento de datos hasta un cuaderno utilizado para el análisis de datos o una biblioteca de software que implementa sus algoritmos. Independientemente de lo grande o pequeño que sea su proyecto de software, es importante hacer que su código sea reutilizable.

Diferentes tipos de software tienen diferentes requisitos para ser reutilizables: para un script pequeño, tener suficiente documentación podría ser suficiente, mientras que para una misión crítica de la biblioteca de software, podría ser necesario realizar pruebas exhaustivas. En el nivel más básico, todo lo que necesitas hacer es poner tu código en línea en algún lugar que probablemente dure mucho tiempo. Un enfoque más elaborado para hacer su software de investigación más reutilizable es siguiendo los Principios FAIR para la Investigación de Software (FAIR4RS Principios) {cite:ps}`ChueHong2021FAIR4RS`.

Cuando hablamos de hacer que el código sea reutilizable, es útil aclarar lo que queremos. En la {ref}`Tabla de Definiciones para Reproducibilidad<rr-overview-definitions-reproducibility>` definimos la investigación reproducible como usar los mismos datos y el mismo código. Sin embargo, cuando hablamos de reutilizar código esto puede tomar muchos formularios: es posible que queramos ejecutar el mismo código exactamente (para lenguajes de programación compilados, esto podría significar el mismo archivo binario), o tal vez queramos modificar el código fuente y ampliarlo de una manera particular para satisfacer nuestras necesidades. Freire y Chirigati {cite:ps}`Freire2018Reproducibility` proporcionan un marco de diferentes niveles de reproducibilidad, dependiendo de lo que se puede modificar. Definen los siguientes niveles de reproducibilidad: repetible, reejecutable, portátil, extensible y modificable.

Podemos mapear las definiciones de forma reproducible en el marco Freire de la siguiente manera:

| Freire framework | Definiciones de reproducibles                                             |
| ---------------- | ------------------------------------------------------------------------- |
| Repetible        | Reproducible (mismos datos, mismo análisis)                               |
| Ejecutable       | Robusto & Replicable (mismo código, diferentes datos/análisis/parámetros) |
| Portable         | *No considerado* (mismo código/datos, entorno diferente)                  |
| Ampliable        | (parcialmente) Generalizable                                              |
| Modificable      | (parcialmente) Generalizable                                              |

La portabilidad no se consideraba anteriormente, pero para el software un entorno diferente (como hardware diferente, el sistema operativo o incluso una instalación nueva en hardware comparable) puede afectar a la capacidad de funcionamiento del software (por ejemplo, puede afectar a las dependencias).

Además, el generalizable encapsula dos conceptos: Extendible (la capacidad de integrarse con otro software) y Modible (la capacidad de cambiar parte de la implementación para extender su funcionalidad).

En el resto de este capítulo le proporcionamos una lista de recomendaciones que puede seguir para asegurarse de que su código es reutilizable.
