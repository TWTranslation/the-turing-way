(rr-renv)=
# Entornos reproducibles

(rr-renv-requisitos)=
## Prerrequisitos

| Prerrequisito                                                                                     | Importancia | Notas                                                                                               |
| ------------------------------------------------------------------------------------------------- | ----------- | --------------------------------------------------------------------------------------------------- |
| [Experiencia con la línea de comandos](https://programminghistorian.org/en/lessons/intro-to-bash) | Necesario   | La experiencia con el software de descarga a través de la línea de comandos es particularmente útil |
| {ref}`rr-vcs`                                                                                     | Útil        | La experiencia usando git y GitHub es útil                                                          |

**Nivel recomendado**: _Intermedio-avanzado_

(rr-renv-summary)=
## Summary

Cada computadora tiene su entorno computacional único [{term}`def<Computational Environment>`] consistente en su sistema operativo, software instalado, versiones de paquetes de software instalados, y otras características que describiremos más adelante. Supongamos que un proyecto de investigación se lleva a cabo en una computadora pero se transfiere a otra computadora. No hay garantía de que el análisis sea capaz de ejecutar o generar los mismos resultados si el análisis depende de cualquiera de las consideraciones mencionadas anteriormente.

Para que la investigación sea reproducible, el entorno computacional en el que se llevó a cabo debe ser capturado de tal manera que otros puedan replicarlo. Este capítulo describe una variedad de métodos para capturar entornos computacionales y da orientación sobre sus fortalezas y debilidades.

### ¿Qué es un Entorno Computacional?

En términos generales, un entorno computacional es el sistema donde se ejecuta un programa. Esto incluye características del hardware (como el número de núcleos en cualquier CPUs) y características del software (como el sistema operativo, lenguajes de programación, soporte de paquetes, otras piezas de software instalado, junto con sus versiones y configuraciones).

Las versiones de software a menudo se definen a través de [versión semántica](https://semver.org). En este sistema, se utilizan tres números -por ejemplo, 2.12.4- para definir cada versión de una pieza de software. Cuando se hace un cambio en el software, su versión se incrementa. Estos tres números siguen el patrón _MAJOR.MINOR.PATCH_y se incrementan de la siguiente manera:

- *MAJOR*: cambios significativos
- *MINOR*: para añadir funcionalidad
- *PATCH*: para correcciones de errores

(rr-renv-useful)=
## Por qué esto es útil

Veamos un ejemplo de por qué los entornos computacionales son importantes. Digamos que tengo un script Python muy simple:

```
a = 1
b = 5
print(a/b)
```

Uno dividido entre cinco es `0.2`, y esto es lo que se imprime si el script se ejecuta usando Python 3. Sin embargo, si se utiliza una versión ligeramente anterior de Python, como Python 2, el resultado impreso es `0`. Esto se debe a que la división de enteros se aplica a enteros en Python 2, pero la división (normal) se aplica a todos los tipos, incluyendo enteros, en Python 3.

Por lo tanto, este script simple devuelve _respuestas_ diferentes dependiendo del entorno computacional en el que se ejecute. Usar la versión incorrecta de Python es fácil de hacer, y demuestra cómo una pieza de código perfectamente válida puede dar diferentes resultados dependiendo de su entorno. Si tales problemas pueden afectar a un script simple como este, imaginen cuántas podrían aparecer en un procedimiento de análisis complejo que puede implicar miles de líneas de código y docenas de paquetes dependientes.

Los investigadores necesitan entender y capturar los entornos computacionales en los que están llevando a cabo su trabajo, ya que tiene el potencial de afectar a tres partes:

### Investigadores

Los entornos de trabajo de los investigadores evolucionan a medida que actualizan el software, instalan software nuevo y se mueven a diferentes ordenadores. Si el entorno del proyecto no es capturado y los investigadores necesitan volver a su proyecto después de meses o años (como es común en investigación), no podrán hacerlo con confianza. No tendrán forma de saber qué cambios se han producido en un entorno de investigación específico y qué impacto podrían tener esos cambios en su capacidad de ejecutar el código, y sobre los resultados.

### Colaboradores

Mucha investigación es ahora colaborativa, y investigar múltiples entornos computacionales diferentes abre un campo minado de posibles errores. Intentar arreglar este tipo de problemas a menudo requiere mucho tiempo y es frustrante, ya que los investigadores tienen que averiguar cuáles son las diferencias entre los entornos computacionales. y sus efectos. Peor aún, algunos errores pueden permanecer sin ser detectados, afectando potencialmente a los resultados.

### Ciencia

La investigación académica ha evolucionado significativamente en la última década, pero no se puede decir lo mismo de los métodos por los que se capturan y divulgan los procesos de investigación. El método primario para la difusión -la publicación científica- no ha cambiado en gran medida desde la aparición de la revista científica en los años 1660. Esto ya no es suficiente para verificar, reproducir y ampliar los resultados científicos. A pesar del creciente reconocimiento de la necesidad de compartir todos los aspectos del proceso de investigación, las publicaciones científicas hoy en día a menudo están desconectadas del análisis subyacente y, fundamentalmente, del entorno computacional que produjo los hallazgos. Para que la investigación sea reproducible, los investigadores deben publicar y distribuir todo el análisis contenido, no sólo sus resultados. El análisis debe ser _móvil_. La movilidad de la computadora se define como la capacidad de definir, crear, y mantener un flujo de trabajo localmente mientras permanece seguro de que el flujo de trabajo puede ser ejecutado en otro lugar. En esencia, la movilidad de la computación significa ser capaz de contener toda la pila de software, desde los archivos de datos a través de la pila de bibliotecas, y lo mueva de forma fiable del sistema al sistema. Cualquier investigación limitada al lugar en el que se puede desplegar se limita instantáneamente en la medida en que se puede reproducir.

Este capítulo describirá cómo capturar, preservar y compartir entornos computacionales y código para asegurar que la investigación sea reproducible.
