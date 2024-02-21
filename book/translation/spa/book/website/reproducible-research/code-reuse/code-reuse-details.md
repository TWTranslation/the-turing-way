
(rr-código-reutilizar-detalles)=
# Recomendaciones detalladas para la reutilización de código

Asegúrese de que usted (o alguien más) puede reutilizar su código para hacer lo mismo exacto que hizo. Esta sección contiene una simple lista de recomendaciones para hacer su software más reutilizable. En esta sección encontrará una explicación más detallada de cada una de estas recomendaciones, con indicaciones a otras partes relevantes de esta guía.

## Recomendaciones repetibles

En esta etapa, puede que ni siquiera necesites ser capaz de abrir el código y leerlo, sólo quiere asegurarse de que puede volver a ejecutar todos los pasos necesarios y obtener los mismos resultados que ha obtenido.

### 1. Asegúrese de encontrarlo (en el espacio)

Tu código debe ser almacenado públicamente y compartido con los colaboradores. Tiene un identificador persistente único, para que todo el mundo pueda encontrarlo y acceder a él.

**Ver también**: {ref}`rrr-vcs`

### 2. Asegúrate de encontrarlo (en el tiempo)

Idealmente la evolución temporal del código se documenta con el control de versiones. Esto le permite recuperar una versión específica del pasado.

**Ver también**: {ref}`rrr-vcs`

### 3. Asegúrese de que puede ejecutar la misma secuencia de operaciones

A menudo el humano que configura el medio ambiente es también el que escribió el código y el que conoce el orden exacto de los pasos necesarios para poder volver a ejecutar el código y reproducir los resultados. Sin duda, esto podría documentarse cuidadosamente para que otro humano lo rehiciera.

**Ver también**: [lección de Refinería sobre Investigación Reproducible](https://coderefinery.github.io/reproducible-research/)

### 4. Asegúrese de que su entorno y secuencia de operaciones son robustas y no se necesita ningún humano para replicar lo que se hizo

No quieren depender de los seres humanos. Tienden a cometer errores incluso si no tienen malas intenciones. Así que quiere que su entorno se escriba y se vuelva a crear cuando sea necesario y desea que su secuencia de operaciones sea ejecutada por un script pipeline que junte toda la secuencia de pasos. Un buen efecto lateral de scripting de la secuencia de operaciones es que esto a menudo puede servir como documentación de los pasos.

**Ver también**: {ref}`rrr-renv-options`

### 5. Licencia de tu código

Asegúrese de adjuntar una licencia a su código y especificar cómo quiere que se cite cuando la gente vuelva a utilizarlo. Considere usar una licencia permisiva que permita reutilizarla. Además, debe elegir una licencia que sea compatible con las licencias de bibliotecas o paquetes de los que depende su software.

**Ver también**: {ref}`rrr-licensing-software`, {ref}`rr-licensing-software-permissive`, {ref}`rrr-licensing-compatibility`

### 6. Asegúrese de que es citable

Asegúrese de especificar cómo quiere que se cite cuando la gente vuelva a usarlo.

**Ver también**: {ref}`cm-citable-cite-software`

### 7. Incluye datos necesarios

Si el software depende de cualquier tipo de datos, los datos deben estar disponibles

**Ver también**: {ref}`rrr-rdm-data`

## Recomendaciones reejecutables

Asegúrese de que usted (o otros) puede reutilizarlo para hacer lo que hizo, pero con diferentes datos/parámetros

### 1. Remueve bits codificados y crea el código modular
No quiere tener detalles específicos de sus datos o parámetros de análisis codificados en el código. Si algo puede convertirse en una función reutilizable, separarlo de los parámetros codificados en hardcoded y convertirlo en algo (re)utilizable por sí solo. Hacer los módulos puros: dada la misma entrada, una función pura siempre devuelve el mismo valor. En lugar de especificar rutas de archivos dentro de los scripts, considere pasarlos como argumentos de línea de comandos para un script más portátil y general y reutilizable.

**Ver también**: [lección de desarrollo de código Modular de CodeRefinery](https://cicero.xyz/v3/remark/0.14.0/github.com/coderefinery/modular-code-development/master/talk.md/#1)

### 2. Comprueba que los módulos que has realizado pueden tomar diferentes tipos de datos de entrada o parámetros
Puede que aún no sepas cómo se reutilizará tu código en el futuro, pero puede prevenir cómo no debe ser usado si puede probar qué parámetros están permitidos.

**Ver también**: [Clase de Refinería de Codefinería sobre Pruebas Automáticas](https://coderefinery.github.io/testing/motivation/)

### 3. Convierte los módulos en un paquete/caja de herramientas
Separe aún más las especificaciones de su proyecto con los bits que pueden ser reutilizados en otros de sus proyectos o por otras personas.

**Ver también**: {ref}`rr-renv-package`, [Software de empaquetado](https://scicomp.aalto.fi/scicomp/packaging-software/), [Paquete de software en Python](https://aaltoscicomp.github.io/python-for-scicomp/packaging/)

## Recomendaciones portátiles
La portabilidad se refiere a la capacidad de transferir software a un nuevo entorno. Esto podría referirse a una máquina idéntica (pero no la misma), pero también puede referirse a una nueva arquitectura de hardware, sistema operativo y tales. Ambos son importantes para la reutilización de software.

### 1. Asegúrate de que puedes recrear el ambiente en el que viviste
El entorno es una instantánea frágil en el tiempo que acompaña silenciosamente el código. Puede incluir al humano que operó el software, los pasos que el humano hizo para preparar los datos, el hardware, el sistema operativo, las bibliotecas, paquetes externos, cajas de herramientas/dependencias. Todo esto puede ser documentado cuidadosamente para que otro humano vuelva a hacer los mismos pasos exactos.

**Ver también**: {ref}`rr-renv`

## Recomendaciones extendibles y modificables
Asegúrate de que otros puedan construir tu código para ampliarlo y mejorarlo.

### 2. Asegúrese de que su código es legible por los humanos
A menudo paga más por escribir código para otros seres humanos para que puedan leerlo (incluyendo tu futuro mismo). Un oneliner críptico con nombres de variables oscuros no es más rápido o más eficiente que dividir el liner único en múltiples pasos con nombres de variables legibles que tengan sentido. Además, el uso de convenciones de codificación ayudará a otros lectores.

**Ver también**: {ref}`rrr-code-style-and-formatting`, {ref}`rr-code-quality-advantages`

### 3. Asegúrate de que los comentarios estén presentes
Escribe comentarios antes de escribir el código real. Imagina que alguien podría leer los comentarios y omitir todos los bits de código entre los comentarios y obtener una imagen completa de lo que está pasando como si leyera el código completo.
