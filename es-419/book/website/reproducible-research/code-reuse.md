(rr-code-reuse)=

# Código reutilizable

Tu proyecto de software puede ser desde un pequeño script que utilices para el procesamiento de datos hasta un cuaderno utilizado para el análisis de datos, o una biblioteca de software que implemente tus algoritmos.
Independientemente de lo grande o pequeño que sea tu proyecto de software, es importante que tu código sea reutilizable.

Diferentes tipos de software tienen diferentes requisitos para ser reutilizables: para un script pequeño, tener suficiente documentación podría ser suficiente, mientras que para una misión crítica de la biblioteca de software, podría ser necesario realizar pruebas exhaustivas.
En el nivel más básico, lo único que tienes que hacer es poner tu código en línea en algún lugar que probablemente dure mucho tiempo.
A more elaborate approach to making your research software more reusable is by following the FAIR Principles for Research Software (FAIR4RS Principles) {cite:ps}`ChueHong2021FAIR4RS`.

Cuando hablamos de hacer que el código sea reutilizable, es útil aclarar lo que queremos.
In the {ref}`Table of Definitions for Reproducibility<rr-overview-definitions-reproducibility>` we defined reproducible research as using the same data and the same code.
However, when we talk about code reuse this can take many forms: we may want to run the exact same code (for compiled programming languages, this could even mean the exact same binary file), or we may want to modify the source code and extend it in some particular way to fit our needs.
Freire and Chirigati {cite:ps}`Freire2018Reproducibility` provide a framework of different levels of reproducibility, depending on what can be modified.
Definen los siguientes niveles de reproducibilidad: repetible, reutilizable, portátil, ampliable y modificable.

Podemos mapear las definiciones de reproducibilidad en el marco de Freire de la siguiente manera:

| El marco de Freire | Definiciones de reproducibilidad                                                                           |
| ------------------ | ---------------------------------------------------------------------------------------------------------- |
| Repetible          | Reproducible (mismos datos, mismo análisis)                                             |
| Reproducible       | Robust & Replicable (same code, different data/analysis/parameters) |
| Portátil           | _Not considered_ (same code/data, different environment)                                |
| Ampliable          | (parcialmente) Generalizable                                                            |
| Modificable        | (parcialmente) Generalizable                                                            |

La portabilidad no se había tenido en cuenta anteriormente, pero en el caso de los programas informáticos, un entorno diferente (como un hardware diferente, un sistema operativo distinto o incluso una nueva instalación en un hardware comparable) puede afectar a la capacidad de funcionamiento del programa (por ejemplo, puede afectar a las dependencias).

Además, Generalizable encierra dos conceptos: Extensible (la capacidad de integrarse con otro software)
y Modificable (la capacidad de cambiar parte de la implementación para ampliar su funcionalidad).

En el resto de este capítulo ofrecemos una lista de recomendaciones que puedes seguir para asegurarte de que tu código es reutilizable.
