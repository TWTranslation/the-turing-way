(rr-rdm-personal)=

## Gestión de datos personales
Esta sección proporciona una visión general de las cosas a tener en cuenta cuando se trabaja con datos personales. Para obtener una visión general más práctica sobre las herramientas y prácticas que facilitan la reproducibilidad, consulte el capítulo {ref}`Proyectos de Datos Sensitivos<pd-sdp>`.

### Datos personales

Los datos personales son información sobre **personas vivas** que pueden ser identificadas utilizando los datos que está procesando, ya sea directa o indirectamente (por ejemplo, el nombre de una persona, la dirección u otro identificador único como su número de Seguro Social). "[Los datos relacionados con los fallecidos no se consideran datos personales en la mayoría de los casos bajo el RGP](https://gdpr.eu/eu-gdpr-personal-data/)." Los identificadores indirectos incluyen características sanitarias, económicas, culturales o sociales. Específicamente cuando una cierta combinación de estos identificadores puede ser utilizada para identificar a una persona, se debe tener cuidado para gestionar los datos correctamente. Los datos especialmente sensibles incluyen datos relativos a las personas:
* identidad racial/étnica
* opiniones políticas
* creencias religiosas/filósofas
* afiliación sindical
* datos genéticos y biométricos
* salud física o mental
* orientación sexual

### Políticas de datos personales
Existen diversas políticas en vigor en diferentes países para proteger los derechos de las personas sobre sus datos personales. Por ejemplo, en Australia los datos personales están regulados por la [Ley de privacidad australiana](https://www.oaic.gov.au/privacy/the-privacy-act/). En la Unión Europea, el **RGP** (Regulación General de Protección de Datos) se aplica al procesamiento de datos personales y puede requerir que realice una evaluación de impacto de protección de datos ([DPIA](https://youtu.be/YRiCb3unz3g?t=988)). Procesar significa hacer cualquier cosa con la información de una persona, incluyendo recogida, almacenamiento, análisis, compartir, eliminar y destruir. Para asegurarse de que está al día con los requisitos de gestión de datos sensibles, revise las políticas nacionales e institucionales que se aplican a su investigación. Vea {cite}`Smith2015participantdata` para las prácticas recomendadas para compartir los datos de los ensayos clínicos.


(rr-rdm-informado-consentimiento)=

### Consentimiento informado

El consentimiento informado, voluntario y justo para participar en un estudio es muy importante para cualquier proyecto de investigación que involucre a participantes humanos. Es a través de este proceso de consentimiento que los participantes en la investigación pueden entender lo que significará para ellos participar en un estudio específico. A continuación, cada persona puede elegir si desea participar utilizando el formulario de consentimiento. Vea también la {ref}`Guía para la Investigación Ética<er>`.

Tenga en cuenta que el formulario de consentimiento informado se considera como datos personales y, por lo tanto, debe tratarse con el mismo cuidado que otros datos personales. No almacene los formularios de consentimiento donde almacena el resto de los datos que recopila; usar un gabinete cerrado separado o una carpeta cifrada, por ejemplo.

En caso de que no pueda utilizar un formulario de consentimiento por escrito, intente hacer una grabación de consentimiento verbal.

**La documentación del consentimiento debe incluir:**

* una hoja de información de los participantes y

* un formulario de consentimiento firmado por el participante.

La hoja de información del participante **** se utiliza para informar a los participantes sobre el estudio. La información debe ser clara y fácil de entender y debe abarcar lo siguiente:
* De lo que trata el proyecto.
* Cuál será su participación.
* Cualquier riesgo que implique para los participantes y salvaguardas para minimizar esos riesgos.
* Garantías sobre la seguridad de los datos y confidencialidad de los participantes.
   * Mencionar quién tiene acceso a los datos
* Cómo se utilizarán los datos en el estudio (para artículos publicados, informes y presentaciones).
* Planes propuestos para archivar datos al final del estudio y la posible reutilización secundaria de los datos en el futuro.
    * El consentimiento escalado puede ser una solución aquí, permitiendo a los participantes elegir qué tipo de información se compartirá públicamente
* Detalles de la organización que supervisa la investigación.
* A quién contactar para obtener más información sobre el estudio.

El **formulario de consentimiento** se utiliza para verificar que el participante de la investigación entiende y acepta participar en el estudio. El formulario de consentimiento debe cubrir los siguientes puntos como mínimo:
* El participante
    * ha leído y entendido la hoja de información del participante
    * se le ha dado la oportunidad de hacer preguntas
    * entiende que la participación es voluntaria
    * entiende que pueden retirarse del estudio en cualquier momento sin dar razones y sin penalizar
    * entiende cómo los datos serán administrados, compartidos y archivados (como se detalla en la hoja de información)
       * para aumentar la probabilidad de que sus datos sean reutilizados, no se compromete a eliminar los datos, sino que solicita el consentimiento para retener y compartir los datos (ver {cite}`Meyer2018personaldata`)
* Firmas tanto del participante como del investigador, y la fecha de firma

Piense en el futuro y planee cómo lo harás:

* recoger, almacenar y administrar los datos (ver {ref}`Almacenamiento de datos y organización<rr-rdm-storage>`)

* controlar permisos de acceso

* preparar datos para archivar/compartir al final del proyecto si es posible (ver {ref}`Compartir y archivar datos<rr-rdm-sharing>`)


(rr-rdm-privacidad)=

Hay una serie de estrategias que puedes adoptar para **proteger la privacidad** de tus investigadores:

**1. Minimización de datos**

* Si no se necesita información personal, no la recopiles.
* Revise periódicamente si está conservando información de identificación innecesaria.
* Cuando la identificación de la información ya no es necesaria, elimina, elimina o destruye con seguridad.

**2. Límites de retención de datos**
* Decida cuánto tiempo conservará los datos identificables antes de eliminar los identificadores directos, aplicar técnicas de anonimato más complejas, o eliminar los datos completamente.
* Al eliminar datos sensibles debe tener en cuenta que los métodos estándar para eliminar archivos (por ejemplo, mover archivos a la papelera de reciclaje y vaciarla) no son seguros. Estos archivos eliminados pueden ser recuperados. Utilice software como BleachBit para eliminar los datos de forma segura.

**3. Transferencia de datos segura**
* Antes de decidir transferir datos personales, debe considerar si la transferencia de datos identificables es necesaria. Por ejemplo, ¿se pueden desidentificar o anonimizar los datos?
* Si los datos no pueden ser identificables, debe asegurarse de que tiene autoridad para transferir los datos personales y que existen salvaguardas adecuadas para proteger los datos antes, durante y después de la transacción.
* A menudo su universidad o instituto proporcionará soluciones para la transferencia segura de archivos. Contacte con su equipo de investigación de datos, privacidad o soporte informático para obtener orientación.

**4. Encriptación**
* El cifrado proporciona protección asegurando que sólo alguien con la clave de cifrado (o contraseña) pueda acceder a los contenidos.
    * Proteger en el nivel de disco: Bitlocker para Windows, FileVault para MacOS
    * Proteger en el nivel de “contenedor” (una carpeta que contiene varios archivos): Veracrypt (o Archivo para MacOS)
    * Almacenamiento portátil: Bitlocker
    * Nivel de archivo / Información de intercambio:
      * Método simple: use 7zip, y empaque con una contraseña
      * Más complicado de configurar: usar herramientas PGP (también se puede utilizar para enviar correo electrónico)
    * Consulte el manual de [Encriptación para investigadores de la Universidad de Ghent](https://osf.io/nx8km/) para más detalles y guías paso a paso

**5. Permisos de acceso**
* Gestión de permisos de carpetas compartidas.
* Protección de contraseña.


**6. Anonymisation**

La anonimización es un proceso mediante el cual se elimina la información identificativa en un conjunto de datos. Se utiliza principalmente para permitir que los datos sean compartidos o publicados sin revelar la información confidencial que contiene, limitando al mismo tiempo la pérdida de información.
* Cuando sea posible, identificadores directos (como nombres, direcciones, los números de teléfono y los números de cuenta) deben ser eliminados tan pronto como la información identificadora ya no sea necesaria. Puede eliminar los datos o reemplazarlos con seudónimos. Para datos cualitativos debería reemplazar o generalizar las características de identificación al transcribir entrevistas.
* Los datos desidentificados que pueden ser reidentificados mediante un archivo de enlace (por ejemplo, información que vincula a los sujetos de datos a individuos identificables) se conocen como datos seudónimos. NOTA: En este caso, el archivo de enlace debe ser cifrado y almacenado de forma segura y separada de los datos de investigación desidentificados.
  * La identificación de individuos en datos seudónimos o desidentificados puede ser aún posible utilizando combinaciones de identificadores indirectos (como edad, educación, empleo, área geográfica y condiciones médicas). Además, los datos y salidas que contengan un pequeño recuento de células pueden ser potencialmente reveladores, particularmente cuando las muestras se extraen de poblaciones pequeñas o incluyen casos con valores extremos o características relativamente raras.
   * Como tal, cuando se pretende compartir datos potencialmente identificables o las salidas generadas a partir de los datos, puede que necesite considerar técnicas de anonimato más avanzadas, como el control de información estadística (SDC, vea [este manual](https://securedatagroup.org/sdc-handbook/) para más información).
* Para más información sobre anonimato, puede ver [este seminario web de Enrico Glerean](https://www.youtube.com/watch?v=ILXeA4fx3cI).

**7. Compartir datos sensibles**

Si planea compartir o publicar sus datos, debe asegurarse de que sus datos son apropiados y seguros para compartirlos. Por ejemplo, debe considerar si los datos pueden ser anonimizados adecuadamente, y si los datos anónimos seguirán siendo útiles (ver también {ref}`barreras para compartir datos<rr-rdm-sharing>`Capítulo de Investigación Abierta). Después de aplicar métodos para des-identificar y anonimizar datos sensibles, todavía puede haber un riesgo de re-identificación (ver {cite}`Meyer2018personaldata`).

Una medida de seguridad adicional, o alternativa a la anonimización, está aplicando controles de acceso para garantizar que los datos se comparten de forma adecuada y segura. Esto puede implicar encontrar un repositorio de datos que pueda proporcionar controles de acceso adecuados (ver [aquí](https://osf.io/tvyxz/wiki/8.%20Approved%20Protected%20Access%20Repositories/) para una lista de repositorios de acceso protegidos). Estos repositorios pueden proporcionar acceso a los metadatos del proyecto, lo que permite a otros encontrar y {ref}`citar los datos<cm-citable-cite>`. El acceso restringido/condicional también proporciona a los re-usuarios potenciales la información que necesitan para acceder a los datos, haciendo que los datos {ref}`FAIR <rr-rdm-fair>`. Por ejemplo, las condiciones para acceder a los datos podrían requerir el potencial re-usuario de datos a:
  * Registrar y/o proporcionar datos de contacto para asegurar que los reusuarios sean genuinos y conscientes de sus responsabilidades
  * Proporcionar información sobre cómo utilizan los datos
  * Aceptar condiciones (seguridad de datos, privacidad, restricciones incluidas en los formularios de consentimiento)

**Recursos**
* [Protegiendo el curso de datos sensibles](https://mantra.edina.ac.uk/protectionrightsandaccess) por [MANTRA](https://mantra.edina.ac.uk)
* {cite}`Meyer2018personaldata`.
* [Presentaciones](https://www.youtube.com/watch?v=J9kWkzK83i4&list=PLyeHH3bEQqIbgbw75gheV27nFF2ctPPpR&index=1) de [Zosia Beckles](https://youtu.be/J9kWkzK83i4), [Michele Voznick](https://youtu.be/w5v5d6r6irs) y [Tessa Darbyshire](https://youtu.be/jEFu1ykVI_I) en la gestión de datos responsables: Legal & Aspectos Éticos como parte del [Fail to Nail it sessions](https://www.youtube.com/c/AI4ScientificDiscovery).
* [Presentación](https://www.youtube.com/watch?v=H2mv6q4WwOU&) de Rob Gommans sobre GDPR y el procesamiento de datos de imagen, audio y vídeo (identificables) para fines de investigación científica.
* [Presentación](https://youtu.be/_3bufely0c0) de Stephan Heunis sobre datos de investigación cerebral y privacidad de datos personales: consejos prácticos para compartir y proteger.
* [Presentación](https://youtu.be/eAKhI0qde2w?t=1104) de Walter Scholger en el GDPR con recursos como plantillas de consentimiento informado (18:30 - 38:50).
* [Presentación](https://www.youtube.com/watch?v=PSe2V1KTQ8w&) sobre el manejo de datos personales por Enrico Glerean y Pa)[video] ivi Lindstroä m de la Universidad de Aalto. Mira [aquí](https://www.aalto.fi/en/services/rdm-training) para el curso completo.
* [Presentación](https://www.youtube.com/watch?v=J457qBdQ3xo) sobre el RGPR por Rosalie Salameh.
* [Presentación](https://vimeo.com/362161972) y [artículo](https://www.smashingmagazine.com/2017/07/privacy-by-design-framework/) sobre **privacidad por diseño**.
* [Presentación](https://www.youtube.com/watch?v=2WebuDlzEIw&list=PLG87Imnep1Sln3F69_kBROUrIbT5iderf&index=2) sobre cuestiones éticas y legales en el intercambio de datos por Hina Zahid.
* [Desliza](https://osf.io/5xhya/) por Hanne Elsen sobre la privacidad y el GDPR en el Ciclo de Investigación de Vida.
* [Taller de materiales](https://osf.io/em3da/) sobre procedimientos de des-identificación de datos para compartir datos.
