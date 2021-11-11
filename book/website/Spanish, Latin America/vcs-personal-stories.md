(rr-vcs-personal-historias)=
# Historias personales

(rr-vcs-personal-cuentos-interiores)=
## Una entrevista con Adina on Datalad

El control de la versión de los datos puede ser desafiante. Adina lo sabe porque forma parte de un equipo que desarrolla DataLad y lo utiliza para resolver los desafíos de gestión de datos. Kirstie le entrevista sobre su trabajo y por qué piensa que los datos de la versión son esenciales.


**Kirstie**: ¡Hola Adina, gracias por contribuir con el capítulo sobre el control de versiones para los datos! Sé que eres un desarrollador de DataLad, y estoy encantado de aprender más sobre el proyecto. ¿Puedes empezar diciéndome en quiénes eres y en qué estás trabajando?

**Adina**: ¡Hola Kirstie, muchas gracias por proporcionar un espacio para el tema de los datos de control de versión! Soy estudiante de doctorado en Neuroscience, y soy parte del laboratorio que desarrolla DataLad. Aparte de trabajar en cuestiones neurocientíficas, también trabajo en los desafíos de gestión de datos que son típicos para mi campo. como "Tengo 300GB de datos, ¿cómo puedo controlar o compartir esto? , o "¿Cómo puedo vincular mis análisis a la versión de datos que he usado?". Como neurcientífico, tengo el privilegio de trabajar en un campo con muchos conjuntos de datos fantásticos y abiertos, pero también es difícil manejar, compartir, y llevar un seguimiento de los datos que pueden ser fácilmente varios cientos de GB de tamaño.

**Kirstie**: Fab, ¿cómo ayuda DataLad con su trabajo?

**Adina**: DataLad me permite control de versiones y compartir datos de cualquier tamaño, y utilizo esto para adjuntar datos en versiones precisas al código y manuscritos que creo. Al realizar análisis de datos y modificar los datos subyacentes, puedo actualizar mis repositorios y recalcular mis scripts. Esto me ayuda a evaluar si mis resultados son replicables. Y al igual que Git, es una gran ayuda de memoria para recordar lo que hice con mis datos. Tiene algunas funciones frescas para la captura de procedencia, y sólo puedo comprobar mi historial de Git para averiguar a partir de qué datos se creó una determinada figura, por ejemplo.


**Kirstie**: ¡Genial, así que ¿qué hace que DataLad sea más adecuado para lo que haces que otras herramientas que controlan los datos de la versión?

**Adina**: Personalmente me gusta DataLad, porque además de la funcionalidad que proporciona Git y `git-annex` , esto facilita la vinculación y reutilización de partes modulares de mi investigación. Cuando trabajo en un análisis, publico los datos, el código + resultados, y el manuscrito como repositorios Git separados, controlados por versiones en GitHub. Pero estos depósitos están unidos para que alguien que lea mi manuscrito pueda dar marcha atrás en cada paso que se ha dado para crear este resultado. volver a los datos originales. Puedo compartir mi análisis en GitHub y puedo tener datos, código e incluso entornos de software completamente, para permitir que otros reproduzcan mis resultados, y me parece una característica muy potente.

**Kirstie**: Y como parte del equipo de DataLad, ¿cómo puedes contribuir al software?

**Adina**: Mi principal motivación es hacer el software accesible para usuarios de todos los orígenes. Si los científicos no reciben formación formal en el control de versiones o en la gestión de datos de investigación, puede ser difícil trabajar de forma reproducible. Creo que si el software es fácil de usar y bien documentado, puede ayudar a los científicos a hacer mejor la ciencia. Por lo tanto, trabajo en funciones de ayuda y de documentación y trabajo sobre tutoriales que son adecuados para usuarios independientemente del nivel de habilidades o de fondo.

**Kirstie**: ¿Cuál es el viaje de DataLad, y cómo llegaste a ser parte de él?

**Adina**: DataLad fue creado originalmente por Michael Hanke y Yarik Halchenko en 2014. Querían tener una herramienta que les permitiera instalar datos tan fácilmente como los paquetes de software y hacer un seguimiento de cómo cambian los datos. `git-anexo` ya existía en este punto, pero querían construirlo para facilitar su uso. Con el paso de los años, la herramienta se convirtió en una herramienta conjunta de control de versiones y gestión de datos para facilitar el intercambio de datos, seguimiento de revisiones y cálculos reproducibles. Me uní al laboratorio hace casi dos años como estudiante de máster en Psicología Clínica, entusiasmada por la ciencia abierta y reproducible, pero una tecnología novedosa completa: Nunca había oído hablar del control de versiones ninguna experiencia en programación, y la idea de que los datos son dinámicos me ha parecido insoportable, pero completamente nueva. Naturalmente, cuando empecé a usar DataLad, estaba completamente cubierto. Por suerte, había mucha gente que me ayudaba a empezar y me daba la información necesaria de antecedentes. Sé, sin embargo, que tal entorno de aprendizaje no es el predeterminado, así que cuando empecé mi doctorado, En realidad creé el recurso que necesitaba para empezar como estudiante: [The DataLad Handbook](http://handbook.datalad.org).

**Kirstie**: Muchas gracias por contarnos sobre esta herramienta. Así que el manual es donde la gente puede saber más, si quiere?

**Adina**: Sí, los apuntaría a [El manual de DataLad](http://handbook.datalad.org). Está pensado para ser un tutorial accesible, a lo largo del código, que es adecuado para investigadores independientes de antecedentes - creo que no debería tener que ser un informático o crank de Linux para controlar datos de versiones de control.
