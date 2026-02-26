(rr-code-reuse-recomendaciones)=

# Resumen de reutilización de código

Esta sección contiene una lista de recomendaciones para hacer que su software sea más reutilizable.
The {ref}`rr-code-reuse-details` section contains a more in-depth explanation of each of these recommendations.
Puedes seguir las recomendaciones más adecuadas para tu tipo de software y omitir las que no son relevantes en tu caso.

## Repeatable Recommendations

1. Asegúrese de encontrarlo (en el espacio; significando: ser capaz de localizar el repositorio/proyecto)
2. Asegúrese de encontrarlo (en el tiempo; significando: ser capaz de localizar una versión en particular)
3. Asegúrate de que puedes ejecutar la misma secuencia de operaciones
4. Asegúrate de que tu entorno y la secuencia de operaciones son robustos y de que no se necesita ningún humano para replicar lo que se hizo
5. Licencia tu código
   - con una licencia que permite su reutilización;
   - con una licencia compatible con las licencias de las dependencias
6. Asegúrate de que se puede citar
7. Incluye los datos necesarios
8. Escribe documentación útil\*

## Recomendaciones reejecutables

1. Remueve bits codificados (tales como rutas que sólo existían en el disco duro donde se ejecutaba el pipeline) y crea el código modular
2. Test that the modules you made can take different types of input data or parameters
3. Turn the modules into a package/toolbox
4. Escribe documentación útil\*

## Portable Recommendations

1. Make sure you can recreate the environment where it lived
2. Escribe documentación útil\*

## Recomendaciones extendidas

1. Escribe documentación útil\*

## Recomendaciones modificables

1. Make sure your code is readable by humans
2. Make sure comments are present
3. Escribe documentación útil\*

The observant reader might will notice that `Write useful documentation` is mentioned for every level of reuse.
This is because different levels of documentation are required for different levels of reuse.

## Documentation

_Different documentation requirements for different levels of reuse_

Writing useful documentation is an important requirement for all levels of reuse.
However, for the different levels of reuse, there are different documentation requirements:

The documentation:

- explains usage, specifying:
  - what the software does; (required for repeatable)
  - how it can be used; (required for repeatable)
  - what options/parameters are available. (required for repeatable)
- contains examples of how to run it. (required for repeatable)
- has installation instructions, including good descriptions of:
  - the hardware it depends on (for example GPUs); (required for portable)
  - the operating system the software has been tested on; (required for portable)
  - software requirements (such as libraries and shell settings). (required for portable)
