(rr-code-reuse-recomendaciones)=
# Resumen de reutilización de código

Esta sección contiene una lista de recomendaciones para hacer su software más reutilizable. La sección {ref}`rr-code-reuse-details` contiene una explicación más detallada de cada una de estas recomendaciones. Puede seguir las recomendaciones más adecuadas para su tipo de software y omitir las que no sean relevantes en su caso.

## Recomendaciones repetibles

1. Asegúrese de encontrarlo (en el espacio; significando: ser capaz de localizar el repositorio/proyecto)
1. Asegúrese de encontrarlo (en el tiempo; significando: ser capaz de localizar una versión en particular)
1. Asegúrese de que puede ejecutar la misma secuencia de operaciones
1. Asegúrese de que su entorno y secuencia de operaciones son robustas y no se necesita ningún humano para replicar lo que se hizo
1. Licencia de tu código
    - con una licencia que permite reutilizar;
    - con una licencia compatible con las licencias de las dependencias
1. Asegúrese de que es citable
1. Incluye datos necesarios
1. Escribe documentación útil*

## Recomendaciones reejecutables

1. Remueve bits codificados (tales como rutas que sólo existían en el disco duro donde se ejecutaba el pipeline) y crea el código modular
1. Comprueba que los módulos que has realizado pueden tomar diferentes tipos de datos de entrada o parámetros
1. Convierte los módulos en un paquete/caja de herramientas
1. Escribe documentación útil*

## Recomendaciones portátiles
1. Asegúrate de que puedes recrear el ambiente en el que viviste
1. Escribe documentación útil*

## Recomendaciones extendidas
1. Escribe documentación útil*

## Recomendaciones modificables
1. Asegúrese de que su código es legible por los humanos
1. Asegúrate de que los comentarios estén presentes
1. Escribe documentación útil*

El lector observante puede notar que `La documentación útil de escritura` se menciona para cada nivel de reutilización. Esto se debe a que se requieren diferentes niveles de documentación para diferentes niveles de reutilización.

## Documentación

*Diferentes requisitos de documentación para diferentes niveles de reutilización*

Escribir documentación útil es un requisito importante para todos los niveles de reutilización. Sin embargo, para los diferentes niveles de reutilización hay diferentes requisitos de documentación:

La documentación:
- explica el uso, especificando:
  - lo que hace el software; (requerido para repetir)
  - cómo se puede utilizar; (requerido para repetir)
  - qué opciones/parámetros están disponibles. (obligatorio para repetir)
- contiene ejemplos de cómo ejecutarlo. (obligatorio para repetir)
- tiene instrucciones de instalación, incluyendo buenas descripciones de:
  - el hardware del que depende (por ejemplo GPUs); (requerido para portátil)
  - el sistema operativo en el que el software ha sido probado; (requerido para portátil)
  - requerimientos de software (como librerías y ajustes de shell). (requerido para portátil)
