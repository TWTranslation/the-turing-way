(rr-open-hardware)=
# Abrir Hardware

"Abrir hardware" o "hardware de código abierto" [{term}`def<Open Source Hardware>`], se refiere a las especificaciones de diseño de un objeto físico que están licenciados de tal manera que dicho objeto puede ser estudiado, modificado, creado y distribuido por cualquiera. Como el software de código abierto, el "código fuente" para hardware abierto - esquemas, planos, diseños lógicos, Diseño Asistido por Ordenador (CAD) dibujos o archivos, y similares, está disponible para ser modificado o mejorado por cualquiera. Los usuarios con acceso a las herramientas que pueden leer y manipular estos archivos fuente pueden actualizar y mejorar el dispositivo físico y el código que lo subyace y, si lo desean, proceda a compartir dichas modificaciones.

El código fuente de Open hardware debería ser fácilmente accesible, y sus componentes son preferiblemente fáciles de obtener para cualquiera. Esencialmente, el hardware abierto elimina los bloques comunes para el diseño y la fabricación de bienes físicos; proporciona a tantas personas como sea posible la capacidad de construir, remezclar y compartir sus conocimientos de diseño y función de hardware.

Vale la pena señalar que el hardware abierto no significa necesariamente libre. Las unidades aún pueden ser vendidas (por el diseñador original o por otros), pero los usuarios *podrían* construirlas desde cero. Si eligen o no comprar la unidad, los usuarios todavía pueden comprender perfectamente cómo funciona el hardware a partir de la documentación, los diseños y los similares.

(rr-open-hardware-why ) =
## ¿Por qué Open Hardware?

El hardware abierto permite a los investigadores entender lo que su equipo está haciendo, cómo lo está haciendo, y verificar que lo está haciendo correctamente, en lugar de tener que ampliar cierto grado de confianza. Ser consciente de cómo funciona el equipo que genera un resultado sitúa a los investigadores sobre una base más firme en la evaluación de dichos resultados. El hardware abierto también hace que la investigación sea más reproducible ya que los investigadores que buscan verificar los resultados pueden hacer lo mismo.

Otros beneficios del hardware abierto incluyen la protección contra bloqueo. El software patentado para la infraestructura central aumenta el riesgo de quedar bloqueado por el proveedor o la tecnología. Si esto sucede, los investigadores pueden estar a merced de los aumentos de precios de los proveedores y experimentar una falta de flexibilidad que no pueden escapar fácil y fácilmente. Además, si los investigadores quieren modificar su equipo para que se adapte mejor a sus necesidades. es mucho más fácil hacerlo (y sólo puede ser legal) en el caso de hardware de código abierto.

(rr-open-hardware-elements)=
## Elementos de un proyecto de hardware de código abierto

Aquí están algunos archivos que debería considerar compartir cuando publique su proyecto de hardware de código abierto. No es necesario que los publiques a todos, pero cuanto más compartas, más beneficios obtendrás la comunidad. Hay mucho crossover aquí con archivos para incluir en proyectos de software de código abierto.

(rr-open-hardware-elements-overview)=
### Vista general e introducción
Su proyecto de hardware de código abierto debe incluir una descripción general de la identidad y el propósito del hardware, escrito tanto como sea posible para un público general. Es decir, explique para qué sirve el proyecto y para qué sirve antes de entrar en los detalles técnicos.

(rr-open-hardware-elements-licencia)=
### Una Licencia
Una licencia apropiada en el proyecto de hardware abierto y su contenido otorga permiso legal a cualquier persona para reutilizarlo modificar y distribuir los diferentes componentes de un proyecto de acuerdo con los términos indicados (por ejemplo, deben reconocer su contribución).

(rr-open-hardware-elements-design)=
### Archivos de diseño originales

Estos son los archivos fuente que usaría para hacer modificaciones en el diseño del hardware. El acto de compartir estos archivos es la práctica principal del hardware de código abierto.
- Idealmente, su proyecto de hardware de código abierto sería diseñado usando una aplicación de software libre y de código abierto para maximizar la capacidad de otros de verlo y editarlo.

Para bien o para mal, los archivos de diseño de hardware a menudo se crean en programas propietarios y se almacenan en formatos propios. Todavía es esencial compartir estos archivos de diseño originales; constituyen el "código fuente" original para el hardware. Son los mismos archivos que alguien necesitará para contribuir con cambios en un determinado diseño.
- Trata de hacer que tus archivos de diseño sean fáciles de entender para los demás. En particular, organizarlos de forma lógica, comentar aspectos complejos y observar cualquier procedimiento inusual de fabricación.
- Ejemplos de archivos de diseño original incluyen dibujos en 2D y archivos de diseño con ayuda de ordenador (CAD).

(rr-open-hardware-elements-auxiliary)=
### Archivos de diseño auxiliar

Más allá de los archivos de diseño originales, a menudo es útil compartir su diseño en formatos adicionales y más accesibles. Por ejemplo, la mejor práctica de Open-sourcing de un diseño CAD es compartir el diseño no sólo en su formato de archivo nativo, pero también en una gama de formatos intercambiables y exportables que pueden ser abiertos o importados por otros programas CAD.
- También es útil proporcionar salidas listas para ver que pueden ser fácilmente vistas por los usuarios finales que desean entender (pero no necesariamente modificar) el diseño. Tal salida podría ser un PDF de un esquema de placa de circuito. Estos auxiliares archivos de diseño permiten a la gente estudiar el diseño del hardware, y a veces incluso la fabrican, incluso sin acceso a determinados paquetes de software propietarios. Sin embargo, tenga en cuenta que los archivos de diseño auxiliar nunca se recomiendan como sustitutos de los archivos de diseño originales.

(rr-open-hardware-elements-drawings)=
### Dibujos técnicos adicionales
Es útil proporcionar cualquier dibujo técnico adicional en sus formatos originales si son necesarios para la fabricación del aparato. Estos se pueden suministrar en un formato común legible como PDF.

(rr-open-hardware-elements-materiales)=
### Factura de materiales

Mientras que puede ser posible infectar desde los archivos de diseño que partes componen una pieza de hardware, es esencial proporcionar una factura separada de los materiales. Una factura de materiales puede ser una hoja de cálculo (por ejemplo, CSV, XLS, Google Doc) o simplemente un archivo de texto con una parte por línea. Las cosas útiles para incluir en la factura de los materiales son los números de piezas, proveedores, costos y una breve descripción de cada parte. Haz fácil saber qué artículo de la factura de materiales corresponde a qué componente de tus archivos de diseño: utiliza los diseñadores de referencia correspondientes en ambos lugares, proporcionar un diagrama que indica qué parte va a dónde, o de otro modo explicar la correspondencia.

(rr-open-hardware-elements-software)=
### Software y firmware

Debe compartir cualquier código o firmware necesario para operar su hardware. Esto permitirá a otros usarlo con su hardware o modificarlo junto con sus modificaciones a su hardware. Documente el proceso necesario para construir su software, incluyendo enlaces a cualquier dependencia (por ejemplo, bibliotecas o herramientas de terceros). También es útil proporcionar una visión general del estado del software (por ejemplo, "estable" o "beta" o "hack" que no funcionan").

(rr-open-hardware-elements-fotos)=
### Fotos
Las fotos ayudan a la gente a entender lo que es su proyecto y cómo hacerlo juntos. Es bueno publicar fotografías desde múltiples puntos de vista y en varias etapas de ensamblaje. Si no tienes fotos, publicar renderings en 3D de tu diseño es una buena alternativa. De cualquier manera, es bueno proporcionar leyendas o texto que expliquen lo que se muestra en cada imagen y por qué es útil.

(rr-open-hardware-elements-instructions)=
### Instrucciones y otras explicaciones

Además de los propios archivos de diseño, hay una variedad de explicaciones que son invaluables para ayudar a otros a hacer o modificar su hardware:
- Creando el hardware: Para ayudar a otros a crear y modificar su diseño de hardware, debería proporcionar instrucciones para pasar de sus archivos de diseño al hardware físico funcional. Como parte de las instrucciones, es útil enlazar a hojas de datos para los componentes/partes de su hardware y listar las herramientas necesarias para ensamblarlo. Si el diseño requiere herramientas especializadas, dígale a la gente a dónde llevarlas.
- Usando el hardware: Una vez que alguien ha hecho el hardware, necesita saber cómo usarlo. Proporcione instrucciones que expliquen lo que hace, cómo configurarlo y cómo interactuar con él.
- Diseño racional: Si alguien quiere modificar su diseño, querrá saber por qué es así. Explique el plan general del diseño del hardware y por qué hizo las opciones específicas que hizo.
- jerga de límites: Ten en cuenta que estas instrucciones pueden ser leídas por alguien cuya experiencia o formación es diferente de la tuya. En la medida de lo posible, intente escribir a un público general, compruebe sus instrucciones para la jerga del sector, y sea explícito acerca de lo que usted asume que el usuario sabe.
- Formato: Las instrucciones podrían estar en una variedad de formatos, tales como un wiki, archivo de texto, Google Doc, o PDF. Recuerde, sin embargo, que otros pueden querer modificar sus instrucciones a medida que modifican su diseño de hardware, por lo que es bueno proporcionar los archivos editables originales para su documentación, no sólo los formatos de salida como PDF.

(rr-open-hardware-processes)=
## Procesos y prácticas de hardware de código abierto

(rr-open-hardware-procesos-diseñando)=
### Diseñar tu hardware

Si estás planeando abrir una pieza de hardware en particular, seguir ciertas buenas prácticas en su diseño hará más fácil que otros hagan y modifiquen el hardware:

- Utilice herramientas de diseño de software libre y de código abierto (CAD) cuando sea posible: Si eso no es factible, intente utilizar paquetes de software de bajo costo y/o ampliamente utilizados.
- Utilizar componentes, materiales estándar y ampliamente disponibles y procesos de producción: Intente evitar piezas que no estén disponibles para clientes individuales o procesos que requieran costosos costos de configuración.

(rr-open-hardware-procesos-hosting)=
### Alojando sus archivos de diseño

Una forma principal de compartir tus archivos es con un archivo zip en tu sitio web. Si bien esto es un gran comienzo, hace difícil que otros puedan seguir su progreso o contribuir con mejoras. Usar un repositorio de código fuente en línea (como GitHub, GitLab, o NotaBug) puede ser un mejor lugar para almacenar sus proyectos de hardware de código abierto.

(rr-open-hardware-proceso-distribución)=
### Distribución de hardware de código abierto

- Proporcione enlaces a la fuente (archivos de diseño originales) para su hardware en el propio producto, su embalaje o su documentación.
- Facilitar la búsqueda de la fuente (archivos de diseño originales) de la página web para un producto.
- Etiqueta el hardware con un número de versión o fecha de lanzamiento para que la gente pueda hacer coincidir el objeto físico con la versión correspondiente de sus archivos de diseño.
- En general, indica claramente qué partes de un producto son de código abierto (y cuáles no).
