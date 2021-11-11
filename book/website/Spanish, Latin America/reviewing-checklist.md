(rr-checklist-for-code-review)=
# Lista de control para el proceso de revisión de código

Esta sección presenta algunas listas de verificación tanto para el codificador como para el revisor, como parte de un proceso de revisión formal. Las listas de verificación del revisor se dividen en dos categorías: una para todo el programa, y otra para archivos individuales o cambios propuestos.

Las listas se crean con un enfoque en buenas prácticas de ingeniería de software y están destinadas a ser una fuente de inspiración. Al evaluar las listas de verificación, se recomienda considerar en qué medida se implementa el artículo mencionado. Algunos elementos de las listas pueden no aplicarse a su proyecto o lenguaje de programación, en cuyo caso deberían ser despectivos.

En todos los casos, el objetivo es utilizar su experiencia de programación para averiguar cómo mejorar el código.

## Para el codificador

- ¿Cumple el nuevo código con los estándares requeridos del proyecto? Los estándares normalmente están escritos bajo `pautas de contribución` por el proyecto al que estás contribuyendo.
- ¿Hay [documentación](#documentation) que cumpla con los estándares requeridos del proyecto?
- ¿Estás siguiendo cualquier {ref}`guía de estilo<rr-code-quality>declarada` para el proyecto?
- ¿Hay nuevas [pruebas](#tests) para el nuevo material, basadas en los estándares requeridos del proyecto?
  - ¿Pasan estas pruebas localmente?
  - ¿Las pruebas en el resto de la base de código siguen pasando localmente?
- Crear el pull request.
- Muchos sistemas de {ref}`de integración continua (CI)<rr-ci>` comprobarán si las pruebas en el proyecto principal pasan automáticamente una vez que crees una solicitud de extracción. Si el repositorio está usando un CI, asegúrese de que todas las compilaciones y pruebas se completen. Consulte los informes de CI para ver si su código está causando que las pruebas en el proyecto principal fallen.
- Si es necesario, solicite ahora formalmente una revisión.

## Para el revisor

- Compruebe los estándares requeridos del proyecto. Los estándares normalmente están escritos en `pautas de contribución` por el proyecto al que estás contribuyendo.
- Check the code meets basic project {ref}`style guide<rr-code-quality>`, if this is not automatically checked by {ref}`continuous integration (CI)<rr-ci>`.
- ¿Las [pruebas](#tests) y [documentación](#documentation) se ajustan a los estándares?
- ¿Todo el código se entiende fácilmente? Dependiendo del idioma, los archivos pueden contener interfaces, clases u otras definiciones de tipo, y funciones (ver [Archivería](#architecture)). Los conceptos arquitectónicos esenciales se pueden revisar de la siguiente manera:
  - Compruebe las listas de [interfaces](#interfaces).
  - Compruebe las [clases y tipos de listas](#classes-and-types).
  - Compruebe las listas de [declaraciones de métodos/función](#function-method-declarations).
  - Compruebe las listas de [definiciones de método/función](#function-method-definitions).
- ¿Aseguran realmente las [pruebas](#tests) que el código es robusto en su uso previsto?
  - ¿Hay algún error u otro defecto?
- ¿Son [problemas de seguridad](#security) gestionados correctamente?
  - Compruebe la seguridad [de los nuevos códigos](#security-of-new-codes).
- ¿Cumple el nuevo código con los [requisitos legales](#legal)?

## Lista de control de nivel de programa

Aquí hay una lista de cosas a tener en cuenta al considerar el programa como un todo, en lugar de mirar un archivo individual o un cambio.

### Documentación

La documentación es un requisito previo para usar, desarrollar y revisar el programa. Alguien que no esté involucrado con tu proyecto debería entender lo que hace tu código, y qué enfoque estás tomando. He aquí algunas cosas a comprobar.

- ¿Hay una descripción del propósito del programa o de la biblioteca?
- ¿Se enumeran los requisitos detallados?
- ¿Los requisitos están clasificados según [MoSCoW](https://en.wikipedia.org/wiki/MoSCoW_method)?
- ¿Se documenta el uso y la función de las bibliotecas de terceros?
- ¿Está documentada la estructura/arquitectura del programa? (ver abajo)
- ¿Hay un manual de instalación?
- ¿Hay un manual de usuario?
- ¿Hay documentación sobre cómo contribuir?
  - Incluye cómo enviar cambios
  - Incluye cómo documentar tus cambios

### Arquitectura

Estos artículos son principalmente importantes para programas más grandes, pero pueden ser buenos para considerarlos también para los pequeños.

- ¿Está el programa dividido en módulos claramente separados?
- ¿Son estos módulos tan pequeños como pueden?
- ¿Hay una estructura de dependencia clara, jerárquica o por capas, entre estos módulos?
  - Si no es así, la funcionalidad debería reorganizarse, o tal vez se deberían combinar módulos interdependientes.
- ¿Se puede simplificar el diseño?

### Seguridad

Si está haciendo software accesible al mundo exterior (por ejemplo, una aplicación web ), entonces la seguridad es importante. Los problemas de seguridad son defectos, pero no todos los defectos son problemas de seguridad. Un diseño consciente de seguridad puede ayudar a mitigar el impacto de seguridad de los defectos.

- ¿Qué módulos se ocupan de la entrada del usuario?
- ¿Qué módulos generan salida?
- ¿Están compartimentados la entrada y la salida?
  - Si no, considera hacer módulos separados que gestionan toda la entrada y la salida, así que la validación puede ocurrir en un solo lugar.
- ¿En qué módulos hay datos no confiables presentes?
  - Cuanto menos mejor.
- ¿Está compartimentado con datos no confiables?
  - Idealmente, valida en el módulo de entrada y pasa solo datos validados a otras partes.

### Legal

Como desarrollador, deberías prestar atención a los derechos legales de los creadores del código que estás usando. He aquí algunas cosas a comprobar. Cuando tengas dudas, pídele consejo a alguien con experiencia en licencias.

- ¿Están documentadas las licencias de todos los módulos/bibliotecas que se usan?
- ¿Se cumplen los requisitos establecidos por dichas licencias?
  - ¿Se incluyen las licencias cuando sea necesario?
  - ¿Se incluyen las declaraciones de derechos de autor en el código donde sea necesario?
  - ¿Se incluyen las declaraciones de derechos de autor en la documentación cuando sea necesario?
- ¿Las licencias de todas las partes son compatibles entre sí?
- ¿Es la licencia del proyecto compatible con todas las bibliotecas?

## Archivo/Cambiar lista de nivel

Cuando está comprobando cambios o archivos individuales en una solicitud de extracción, el código en sí mismo se convierte en objeto de escrutinio. Dependiendo del idioma, los archivos pueden contener interfaces, clases u otras definiciones de tipo y funciones. Todas estas deben ser revisadas.

### Interfaces

- ¿Está documentada la interfaz?
- ¿Tiene sentido el concepto que modela?
- ¿Se puede dividir aún más? (Las interfaces deben ser tan pequeñas como sea posible)

Ten en cuenta que la mayoría de los siguientes elementos asumen un estilo de programación orientada a objetos , el cual puede no ser relevante para el código que estás buscando.

### Clases y tipos

- ¿Está documentada la clase?
  - ¿Están documentados los programas externos necesarios para la clase?
- ¿Tiene una única responsabilidad? ¿Puede dividirse?
- Si está diseñado para ser ampliado, ¿puede ser?
- Si no está diseñado para ser ampliado, ¿está protegido contra eso?
- Si se deriva de otra clase, ¿se puede sustituir un objeto de esta clase por una de sus clases padres?
- ¿Es la clase testable?
  - ¿Las dependencias son claras y explícitas?
  - ¿Tiene un pequeño número de dependencias?
  - ¿Depende de las interfaces, en lugar de de las clases?

### Declaraciones de función/método

- ¿Hay comentarios que describan la intención de la función o método?
- ¿Están documentados los datos de entrada y salida? ¿Incluye unidades?
- ¿Se documentan las condiciones previas y postales?
- ¿Se comentan casos de borde y cosas inusuales?

### Definiciones de función/método

- ¿Se comentan casos de borde y cosas inusuales?
- ¿Hay algún código incompleto?
- ¿Se puede dividir esta función (¿no es demasiado larga)?
- ¿Funciona? Realizar la función prevista, lógica correcta, ...
- ¿Es fácil de entender?
- ¿Hay código redundante o duplicado? (DRY)
- ¿Los bucles tienen una longitud determinada y terminan correctamente?
- ¿Se puede eliminar el código de depuración o registro?
- ¿Se puede reemplazar alguno de los códigos por funciones de biblioteca?

### Seguridad de nuevos códigos

- Si está utilizando una biblioteca, ¿comprueba los errores que devuelve?
- ¿Están marcadas todas las entradas de datos?
- ¿Los valores de salida están marcados y codificados correctamente?
- ¿Los parámetros no son válidos?

### Tests

- ¿Las pruebas unitarias realmente prueban lo que se supone que hacen?
- ¿Se están realizando controles de límites?
- ¿Se utiliza un framework de pruebas y/o una biblioteca?
