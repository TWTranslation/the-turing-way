(rr-barreras-descripción)=
# Barrera a la reproducibilidad

Hasta ahora hemos explicado {ref}`lo que queremos decir<rr-overview-definitions>` por investigación reproducible y explicado algunos de los {ref}`beneficios adicionales<rr-overview-benefits>`.

En esta sección cubrimos algunas de las barreras (reales y asfixiadas) que usted puede enfrentar para hacer que su trabajo sea reproducible.

```{figure} ../../figures/barriers-reproducibility.png
---
ancho: 500px
name: reproducibility-barriers
alt: Desliza desde la presentación mostrando las diferentes barreras a la reproducibilidad. El texto en el centro dice "Barreras a la investigación reproducible" y las siguientes barreras están organizadas en sentido horario alrededor de la diapositiva - No se considera para la promoción, Mantenido a un nivel más alto que otros, Publicación sesgada hacia los hallazgos novedosos, Plead el 5, Toma el tiempo, Soporte a usuarios adicionales, Requiere habilidades adicionales.
---
Un diapositiva que describe algunas de las barreras para la investigación reproducible de Kirstie Whitaker [habla sobre _The Turing Way_](https://youtu.be/wZeoZaIV0VE?t=312) en [csv,conf,v4](https://csvconf.com/2019) en mayo de 2019.
Utilizado bajo una licencia CC-BY 4.0.
DOI: [10.5281/zenodo.2669547](https://doi.org/10.5281/zenodo.2669547).
```

Este capítulo describe algunas de esas barreras y algunas sugerencias para eludirlas. Las barreras a la investigación reproducible se pueden describir en tres grupos principales. La primera, y lo más difícil de superar son las relacionadas con la estructura actual de incentivos en la investigación académica: {ref}`incentivos limitados para dar evidencia contra ti mismo<rr-overview-barriers-incentives>` (o "Pliega el quinto"), el sesgo de publicación conocido de {ref}`hacia nuevos hallazgos<rr-overview-barriers-publication>`, el hecho de que la investigación reproducible o abierta puede ser {ref}`mantenida con estándares más altos que otros<rr-overview-barriers-standards>`, y que todo este esfuerzo es {ref}`no considerado para la promoción<rr-overview-barriers-promotion>`. Luego están los retos técnicos y teóricos de trabajar con {ref}`grandes datos e infraestructura computacional compleja<rr-overview-barriers-infrastructure>` y recordar que {ref}`ser reproducible no significa que la respuesta sea correcta<rr-overview-barriers-notright>`. Terminamos con tres barreras teniendo en cuenta las presiones de los científicos de datos individuales: que este trabajo puede ser percibido en {ref}`tomar tiempo adicional<rr-overview-barriers-time>`, para que puedas ser requerido para {ref}`soportar usuarios adicionales<rr-overview-barriers-support>` (spoiler: ¡ya estás! , y que tú y los miembros de tu equipo puedan {ref}`requieren habilidades adicionales<rr-overview-barriers-skills>`. ¡La buena noticia es que ayudarte a aprender esas habilidades es exactamente para lo que _La Vía Turística_ está aquí!

(rr-overview-barriers-incentives)=
## Incentivos limitados para dar evidencia contra ti

La [sexta Enmienda](https://en.wikipedia.org/wiki/Fifth_Amendment_to_the_United_States_Constitution) a la Constitución de los Estados Unidos incluye una cláusula que dice que nadie "será obligado en ningún caso penal a ser testigo contra [them]sel[ves]". (Editado al lenguaje neutral de género.) "abogar por el quinto paso" significa que alguien opta por no dar pruebas de que podría haber habido algo mal en su comportamiento pasado. Tienen derecho a permanecer en silencio.

Sabemos que nadie quiere incriminarse a sí mismo, y también que nadie es infalible. Poner tu código y datos en línea puede ser muy revelador e intimidante, y forma parte de la condición humana ser nervioso de ser juzgado por otros. Aunque no hay ninguna _ley_ que regule la comunicación de la investigación reproducible - a menos que cometa fraude explícito en su trabajo - compartir errores que encuentre en su trabajo está fuertemente disociado.

```{figure} ../../figures/make-ok-to-be-human.jpg
---
height: 500px
name: make-ok-to-be-human
alt: Una caricatura de una mujer que sostiene una carpeta de archivos y que parece preocupada. Según la burbuja de pensamiento, si comparto mis datos, la gente podría encontrar errores. El título de las imágenes lee la necesidad de hacer que sea humano.
---
Una ilustración de la barrera "suplicar la quinta" donde nuestra cultura actual desincentiva el reconocimiento y la corrección de errores.
Illustration by The Ludic Group LLP from Kirstie Whitaker keynote presentation at Scientific Data in 2017.
Utilizado bajo una licencia CC-BY 4.0.
DOI: [10.6084/m9.figshare.5577340.v1](https://doi.org/10.6084/m9.figshare.5577340.v1).
```

Dar evidencia contra ti mismo, especialmente si encuentras errores en el material publicado, es difícil y estresante. Pero necesitamos equilibrar ese costo individual con el hecho de que el código de liberación puede ayudar a otros investigadores a proporcionar retroalimentación, aprende y puede ayudarles en su investigación. De hecho, casi con toda seguridad encontrará que la publicación de su código y documentación de datos le motiva a llevar a cabo sus análisis a un nivel más alto. Ser cuidadoso con lo que escribes y documentar tus decisiones, también puede ayudar a generar nuevas ideas para ti y para los demás.

Lo que es más importante, necesitamos alejarnos de una cultura en la que publicar nada es más seguro que publicar _algo_. _La Vía Turística_ está aquí para ayudarte a dar pequeños pasos hacia ser más reproducible a medida que tu carrera progresa. No queremos que nadie se sienta solo, o "no lo suficientemente bueno" a medida que empiecen y continúen sus investigaciones abiertas.

(rr-overview-barrers-publication)=
## Población de la publicación hacia los nuevos hallazgos

¡Los nuevos resultados no son necesariamente precisos o interesantes, pero son recompensados en el mundo académico! Los papeles que no encuentran relaciones estadísticamente significativas son difíciles de publicar, especialmente si los resultados *no* reproducen los resultados publicados previamente. (Esto incluye hallazgos estadísticamente significativos que van en la dirección opuesta al trabajo ya publicado.) Del mismo modo, un artículo podría ser menos probable que sea aceptado en una revista o conferencia si reproduce con éxito resultados ya publicados en lugar de producir un nuevo conjunto. Hay una buena posibilidad de que los revisores digan "ya sabemos esto" y rechacen la presentación.

El sesgo hacia la novela en la ciencia de la información significa que muchos investigadores están disociados de hacer el trabajo para documentar, probar y compartir su código y datos. John Ioannidis publicó un artículo influyente en 2005 titulado "Why Most Published Research False" {cite:ps}`Ioannidis2005False` que discute los muchos factores que contribuyen al sesgo de la publicación. Dados estos sesgos, es muy probable que haya mucho trabajo duplicado en las ciencias de los datos. Demasiados investigadores diferentes están formulando la misma pregunta, no obtener la respuesta que esperan o desean, y luego no decir a nadie lo que han encontrado.

Esta barrera no es específica a la reproducibilidad computacional ya que la definimos en _The Turing Way_. Sin embargo, es una importante barrera cultural para {ref}`comunicación transparente<cm>`y afecta a {ref}`diseño de proyecto<pd>`. _La comunidad de Turing Way_ está defendiendo en todos los lugares que podemos, para el cambio de cultura sistémica que se requiere para desmantener la publicación actual y los sesgos académicos de crédito hacia la novela sobre el rigor.

(rr-overview-barrers-standards)=
## Mantener estándares más altos que otros

Un investigador que haga que su trabajo sea reproducible al compartir su código y sus datos puede ser considerado como un estándar más alto que el de otros investigadores. Si los autores no comparten nada en absoluto, entonces todos los lectores de un manuscrito o papel de conferencia pueden hacer es confianza (o no confianza) los resultados.

Si hay código y datos disponibles, los revisores de pares pueden ir buscando diferencias en la implementación. Pueden volver con nuevas ideas sobre cómo analizar los datos porque han sido capaces de experimentar con el trabajo. Existe el riesgo de que luego requieran cambios adicionales por parte de los autores del manuscrito presentado antes de que sea aceptado para la revisión por pares.

Como hemos descrito en la sección {ref}`"Pliegue el cuarto"<rr-overview-barriers-incentives>` de arriba, la solución a este desafío es alinear incentivos profesionales para que hacer lo mejor para _ciencia_ también beneficie a las personas involucradas.

(rr-vista-barreras-promoción)=
## No se considera para la promoción

En el actual sistema académico, la principal consideración para la promoción es la capacidad demostrada para recibir becas y reclutar estudiantes. Tanto los organismos de financiación como los futuros estudiantes valoran la noveldad y este comportamiento se refleja en papeles de recompensa preferencial con un alto [factor de impacto en el diario](https://en.wikipedia.org/wiki/Impact_factor). Es probable que parte de la condición humana esté motivada por cosas nuevas o sorprendentes, pero como {ref}`discutió arriba<rr-overview-barriers-publication>`, este sesgo hacia la novela causa un sesgo sistemático de publicación.

En términos más generales, el sistema de promoción en el mundo académico tiende a recompensar a las personas que han demostrado ser diferentes de otras en su campo. Esto significa compartir código y datos para facilitar a los "competidores" hacer el mismo trabajo termina siendo desalentado por la promoción y la financiación de los paneles de selección. Un buen ejemplo de este sesgo es el premio Nobel que solo llega a un pequeño número de investigadores cada año. y como tal ["pasa por alto a muchos de sus colaboradores importantes"](https://www.theatlantic.com/science/archive/2017/10/the-absurdity-of-the-nobel-prizes-in-science/541863/) (Ed Yong, The Atlantic, 2017). Una de las metas de _The Turing Way_ es llamar la atención sobre el mal alineamiento del proceso de inicio y promoción con la ciencia de datos colaborativa y reproducible.

(rr-vista-barreras-infraestructura)=
## Grandes datos e infraestructura computacional compleja

Los grandes datos son conceptualizados de diferentes maneras por diferentes investigadores. Los datos "grandes" pueden ser complejos, provienen de una variedad de fuentes de datos, son grandes en volumen de almacenamiento y/o ser transmitidos a una resolución temporal muy alta. Aunque hay formas de establecer semillas aleatorias y tomar instantáneas de un conjunto de datos en un momento determinado en el tiempo, puede ser difícil tener datos idénticos a través de diferentes ciclos de un tubería de análisis. Esto es particularmente relevante en el contexto de las herramientas para la computación paralela. Por ejemplo, algunos datos tales como seguimiento de vuelos o tráfico de Internet es tan grande que no puede ser almacenado y debe ser procesado como se transmite en tiempo real.

Un desafío más común para los investigadores de "grandes datos" es la variabilidad del rendimiento del software en los sistemas operativos y la rapidez con que las herramientas cambian con el tiempo. Hay disponible un ecosistema de tecnologías de ciencias de la información que cambia casi constantemente lo que significa que la reproducción de resultados en el futuro es altamente variable y depende del uso de herramientas perfectamente compatibles a medida que se desarrollan. Muy a menudo, los resultados de las pruebas estadísticas variarán en función de la configuración de la infraestructura que se utilizó en cada uno de los experimentos, haciendo que sea muy difícil reproducir un resultado de forma independiente. Los expertos suelen depender de la inicialización aleatoria de algoritmos iterativos y no todos los programas informáticos incluyen la capacidad de corregir un número pseudoraleatorio sin limitar las capacidades de paralelización (por ejemplo en Tensorflow). Estas herramientas pueden requerir en profundidad habilidades técnicas que no están ampliamente disponibles para los científicos de datos. El framework [Apache Hadoop](https://hadoop.apache.org/) , por ejemplo, es extremadamente complejo para implementar experimentos de ciencias de datos sin un fuerte conocimiento de software e ingeniería de hardware.

Incluso la informática "estándar" de alto rendimiento, puede ser difícil de configurar para ser perfectamente reproducible, particularmente a través de diferentes proveedores de computación en la nube o configuraciones institucionales. _La Vía Turística_ contiene capítulos para ayudar a los científicos de datos a aprender habilidades en {ref}`ambientes computacionales reproducibles<rr-renv>` incluyendo {ref}`contenedores<rr-renv-containers>` como acoplador y formas de {ref}`versión controla sus bibliotecas de software<rr-renv-package>`. Siempre estamos [abiertos a más contribuciones](https://github.com/alan-turing-institute/the-turing-way/blob/main/CONTRIBUTING.md) a medida que la tecnología para apoyar la investigación reproducible en conjuntos de datos muy grandes o para evolucionar modelos complejos.

(rr-overview-barrers-notright)=
## Ser reproducible no significa que la respuesta sea correcta

Al hacer que el código y los datos utilizados para producir un resultado abiertamente disponible para otros, nuestros resultados pueden ser **reproducidos** pero se pueden llevar a cabo errores cometidos por el autor inicial. Obtener la misma respuesta incorrecta cada vez es un paso en la dirección correcta, ¡pero aún así una **respuesta** equivocada!

Esta barrera no es realmente una barrera __ a la investigación reproducible tanto como una advertencia que invertir tiempo en reproducibilidad no necesariamente significa que estás haciendo mejor la ciencia. Puede considerar la reproducibilidad computacional como necesaria pero no suficiente para la investigación de alta calidad. Se necesita un enfoque crítico, en lugar de utilizar ingenuamente el software existente o implementar métodos estadísticos sin entender lo que hacen. Véase, por ejemplo, [una discusión](https://ryxcommar.com/2019/08/30/scikit-learns-defaults-are-wrong) en agosto de 2019 sobre si la configuración predeterminada para la implementación de la regresión logística de Scikit-learn es engañosa para los nuevos usuarios. La capacidad de interacción y la interoperabilidad son necesarias para evaluar adecuadamente la investigación original y para fortalecer los hallazgos.

(rr-overview-barriers-time)=
## Toma tiempo

Hacer un análisis reproducible requiere tiempo y esfuerzo, especialmente al inicio del proyecto. Esto puede incluir el acuerdo sobre un {ref}`framework de pruebas<rr-testing>`, configurando {ref}`control de versión<rr-vcs>` como un repositorio de Github y {ref}`integración continua<rr-ci>`, y {ref}`administrando datos<rr-rdm>`. A lo largo del proyecto se puede requerir tiempo para mantener la pipelina reproducible.

También puede dedicarse tiempo a comunicarse con los colaboradores para acordar qué partes del proyecto pueden ser de código abierto y cuándo y cómo se comparten estos resultados. Los investigadores pueden encontrar que necesitan "habilidad superior" a sus colegas para permitir que el equipo se beneficie de herramientas de reproducibilidad como git y GitHub, contenedores, cuadernos de Jupyter, o bases de datos.

```{figure} ../../figures/help-you-of-the-future.jpg
---
ancho: 500px
nombre: help-you-future
alt: Una caricatura de una mujer que pasa una carpeta de documentos de vuelta a sí misma. La burbuja de voz dice que en el futuro principalmente tienes registros para ti.
---
Aunque dejar clara la documentación puede sentir que está tomando mucho tiempo en este momento, estás ayudando a tus colaboradores y a tus colaboradores a recordar lo que has hecho para que sea fácil reutilizar el trabajo o hacer cambios en el futuro.
Illustration by The Ludic Group LLP from Kirstie Whitaker keynote presentation at Scientific Data in 2017.
Utilizado bajo una licencia CC-BY 4.0.
DOI: [10.6084/m9.figshare.5577340.v1](https://doi.org/10.6084/m9.figshare.5577340.v1).
```

Sin embargo, _la comunidad de Turing Way_ defiende que esta vez está más que compensada al final del proyecto. Tome como experimento de pensamiento un revisor que pide "sólo un análisis más" cuando la publicación ha sido enviada a una revista. En muchos casos, esta solicitud llegará de 6 a 12 meses después de que el equipo de investigación haya trabajado con los datos crudos. Puede ser muy difícil volver atrás en el tiempo para encontrar la parte del pipeline que el revisor le ha pedido que cambie. Si el trabajo es totalmente reproducible, incluyendo los datos controlados por la versión y el código de generación de figuras, este análisis será muy rápido de correr e incorporar en el resultado de la investigación final. El pipeline de análisis se puede adaptar fácilmente según sea necesario en respuesta a las solicitudes de coautor y revisor. También se puede reutilizar fácilmente para futuros proyectos de investigación.

(rr-overview-barrers-support)=
## Soporte a usuarios adicionales

Mucha gente se preocupa de que al hacer que su análisis sea reproducible, se les requerirá que respondan a muchas preguntas de los futuros usuarios de su código. Estas preguntas pueden cubrir la incompatibilidad de software entre sistemas operativos y el cambio de dependencias con el tiempo (ver {ref}`Grandes datos y compleja infraestructura computacional<rr-overview-barriers-infrastructure>` barrera anterior). También pueden incluir preguntas acerca de cómo ajustar el código para un propósito diferente.

Esta barrera se basa en parte en la mitigación "reproducible" con la investigación "abierta". La _Vía Turística_ {ref}`definición de "reproducible"<rr-overview-definitions>` no requiere que los autores soporten la expansión y reutilización de los datos y el código más allá de ejecutar los análisis exactos que generan los resultados publicados en el manuscrito adjunto.

En casi todos los casos, hacer código y datos de código abierto requiere una mejor documentación de la que un investigador escribiría para sí mismo. Esto puede sentirse como una barrera adicional, aunque - como se discutió en la sección anterior sobre la investigación reproducible {ref}`tomando tiempo extra<rr-overview-barriers-time>` es probable que los principales beneficiarios de un código bien comentado y probado con documentación detallada sean el equipo de investigación - particularmente el investigador principal del proyecto - ellos mismos.

(rr-vista-barreras-habilidades)=
## Requiere habilidades adicionales

Como puedes saber por el número cada vez mayor de capítulos en _The Turing Way_, trabajar reproduciblemente requiere habilidades que no siempre se enseñan en programas de formación. Usted - o alguien de su equipo - podría necesitar desarrollar experiencia en ingeniería de datos, Ingeniería de software de investigación, escritura técnica para documentación o gestión de proyectos en GitHub. Esa es una barrera importante cuando las estructuras de incentivo actuales no están alineadas con el aprendizaje de estas habilidades (ver las barreras en {ref}`suplicar la quinta<rr-overview-barriers-incentives>`, {ref}`sesgo de publicación hacia nuevos hallazgos<rr-overview-barriers-publication>`, {ref}`mantenida con estándares más altos que otros<rr-overview-barriers-standards>`, y {ref}`no considerados para una promoción<rr-overview-barriers-promotion>`!) Sin embargo, esta es la barrera principal que en _The Turing Way_ estamos trabajando para desmantenderse contigo. Esperamos que disfrutes aprendiendo estas habilidades con nosotros y que nos ayudes a mejorar el libro como tú lo haces.

> "Un viaje de miles de millas comienza con un solo paso" (chino: [Lao Tzu](https://en.wikipedia.org/wiki/A_journey_of_a_thousand_miles_begins_with_a_single_step)).

Esperamos que trabajando para ayudarte a aprender algunas de estas valiosas habilidades también eliminemos algunas de las barreras más estructurales a la investigación reproducible.

## Lectura adicional y recursos adicionales

Puedes ver cómo Kirstie Whitaker describe algunas de estas barreras en [su charla sobre _The Turing Way_](https://youtu.be/wZeoZaIV0VE?t=312) en [csv, onf,v4](https://csvconf.com/2019) en mayo de 2019. Puede usar y reutilizar sus diapositivas bajo una licencia CC-BY a través de Zenodo (doi: [10.5281/zenodo.2669547](https://doi.org/10.5281/zenodo.2669547)). La sección que describe la diapositiva de abajo comienza alrededor de 5 minutos en el vídeo.
