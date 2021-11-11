(rr-licencia-datos)=
# Licencias de datos

Como una licencia de software, una licencia de datos regula lo que otra persona puede hacer con los datos que usted crea o posee y que hace accesible a otros a través de la misma, por ejemplo, un repositorio de datos. Las licencias de datos varían en función de diferentes criterios, tales como:
* Atribución al propietario original
* Permiso para redistribuir o modificar el original
* Incluir la misma licencia con derivados o redistribuciones

Como resultado, la accesibilidad a tus datos se ve afectada por la licencia de datos que elijas.

(rr-licensing-data-cc)=
## Licencias Creative Commons

Creative Commons o CC proporciona una serie de licencias que pueden ser usadas con una amplia variedad de creaciones que de otro modo podrían estar sujetas a restricciones de copyright, incluyendo música, arte, libros y fotografías. Aunque no está diseñado para datos, las licencias CC se pueden utilizar como licencias de datos porque son fáciles de entender. Su sitio web incluye una [página de resumen](https://creativecommons.org/about/cclicenses/){cite:ps}`creativecommons2020licens` describiendo todas las licencias disponibles, explicadas con símbolos visuales simples.

(rr-licensing-data-cc-permissions)=
### Niveles de permisos

El nivel de permisos proporcionado por una licencia de datos de Creative Commons puede entenderse por su nombre, que es una combinación de dos letras "marcas de permisos". La única excepción a este esquema de nombres es CC0, que se introducirá en la siguiente sección.

| **Marca de permiso** | **¿Qué puedo hacer con los datos?** |
| -------------------- | ----------------------------------- |
|                      |                                     |
 BY | El creador debe ser acreditado SA | Los derivados o redistribuciones deben tener una licencia idéntica NC | Sólo los usos no comerciales están permitidos ND | No se permiten derivados


Por ejemplo, la licencia CC BY-ND especifica que los usuarios deben acreditar al creador de los datos y no pueden crear ningún derivado.

(rr-licensing-data-cc-cc0)=
### Dedicar tu trabajo al público con CC0

CC0 sirve como mecanismo de dedicación pública, en el que renuncia a todos los derechos de autor de sus datos. Esto significa que cualquiera puede modificar, redistribuir o construir a partir de su trabajo. Además, al usar CC0, se pierde el derecho a la atribución. En cambio, hay que confiar en normas tales como buenas prácticas de citación en comunidades académicas para ser reconocido como el creador. Varias organizaciones, como museos, organismos gubernamentales y editores científicos, han elegido C0 para acceder al menos a una parte de sus datos. En muchos casos, los repositorios de datos mantenidos por las universidades recomiendan CC0 como opción predeterminada, como el [4TU.Centre for Research Data](https://researchdata.4tu.nl/en/use-4turesearchdata/archive-research-data/upload-your-data-in-our-data-archive/licencing/).

(rr-licencia-odc)=
## Abrir Commons de Datos

Open Data Commons proporciona tres licencias que se pueden aplicar específicamente a los datos. Las [páginas web](https://opendatacommons.org/licenses/index.html) {cite:ps}`odk20odc` de cada una de estas licencias incluyen resúmenes legibles, con las ramificaciones de los legaleses explicadas en un formato conciso.

(rr-licencia-data-odc-pddl)=
### Dedicación de dominio público y licencia o PDDL

La PDDL es análoga a CC0, donde renuncia a todos sus derechos a los datos que pone en el dominio público. Viene con un [conjunto de normas comunitarias recomendadas](https://opendatacommons.org/licenses/pddl/norms.html), los cuales no son obligatorios para incluir y no forman un contrato legal pero pueden ser útiles para tener como guía para fomentar la equidad, compartir datos abiertos. También es posible crear un conjunto de normas personalizadas que sirvan mejor a su comunidad de intercambio de datos.

(rr-licencia-data-odc-odc-por)=
### La Atribución o Licencia ODC-BY

Esta licencia protege sus derechos de atribución como propietario o creador de datos, al igual que la marca de permisos **POR** de las licencias CC. Cualquier uso o distribución de su base de datos también debe incluir información sobre la licencia utilizada con el original.

(rr-licencia-data-odc-odbl)=
### La licencia Open Database u ODbL

El ODbL añade dos restricciones más a la licencia ODC-BY. La primera es que cualquier uso público de sus datos debe ser compartido con la misma licencia, similar a la marca de permisos CC **SA**. La segunda es que si alguna versión de sus datos se redistribuye en un formato "cerrado" (por ejemplo, con medidas de protección tecnológica), es obligatorio que esta redistribución también esté disponible en una versión libre de tales medidas de cierre.

(rr-licencia-diferencias)=
## Una nota sobre las diferencias entre las licencias CC y ODC

Aunque puede parecer que las opciones de licencias ofrecidas por Creative Commons y Open Data Commons son exactamente las mismas, hay algunas diferencias importantes.

Una diferencia es el alcance de los derechos que están cubiertos por la licencia, que está bien explicada [aquí](https://wiki.creativecommons.org/wiki/Data#What_is_the_difference_between_the_Open_Data_Commons_licenses_and_the_CC_4.0_licenses.3F). Las licencias del ODC se hicieron específicamente para ser aplicadas a los datos, y normalmente sólo cubren los derechos de base de datos. Por otra parte, las licencias CC tienen un propósito más general y pueden aplicarse a otros materiales. Las licencias CC también cubren los derechos de autor y otros derechos vecinos.

Otra diferencia es la disponibilidad de un documento normalizado de las Normas Comunitarias con el PDDL. La falta de tal documento con CC0 significa que tienes que confiar en las normas comunitarias, que a menudo pueden ser tácitas o no escritas y pueden variar de comunidad a comunidad, para asegurar una atribución justa. Se proporciona una comparación entre el PDDL y el CC0 [aquí](https://opendatacommons.org/faq.1.html).

(rr-licencia-opciones-datos)=
## Otras opciones de licencia

También es posible elegir otras licencias de datos que hayan sido desarrolladas teniendo en cuenta un caso de uso específico o una comunidad o que no estén en uso global generalizado. Estas incluyen licencias que fueron desarrolladas por gobiernos nacionales, tales como la [Licencia Norwegian para Datos de Gobierno Abierto](https://data.norge.no/nlod/en/) {cite:ps}`(d2020governmentdata`). A menudo, dichas licencias son la opción recomendada de licencia de datos dentro del país correspondiente, especialmente para los datos creados o propiedad de sus organismos públicos. Otro ejemplo es la [Licencia de Gobierno Abierto](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/) u OGL, que fue desarrollada por The National Archives, Reino Unido.

La guía de [Data Curation Center (DCC)](https://www.dcc.ac.uk/guidance/how-guides/license-research-data) {cite:ps}`ball2011license` sobre cómo licenciar datos de investigación expatiados en las licencias que se discuten en este capítulo, y proporciona más información sobre [Licencias Preparadas](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-6000), [Licencias Bespoke](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-7000), [Licencia Múltiple](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-13000) y [Mecanismo para la obtención de licencias de datos](https://www.dcc.ac.uk/guidance/how-guides/license-research-data#x1-14000).

Si desea leer más sobre los desafíos y los mejores puntos de licencia, [este articulo](https://research.okfn.org/avoiding-data-use-silos/) es un gran recurso para empezar.

***Etiquetas de capítulo**: Este capítulo está supervisado para el `Grupo de estudio de datos de Turing` (`turing-dsg`).*
