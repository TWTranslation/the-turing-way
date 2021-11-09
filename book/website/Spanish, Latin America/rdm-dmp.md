(rr-rdm-dmp)=
# Plan de gestión de datos

Un plan de gestión de datos (DMP), o un plan de gestión de salidas, es un documento que describe cómo sus resultados de investigación serán generados, almacenados, utilizados y compartidos dentro de su proyecto. Un DMP es un documento vivo, que se puede actualizar a través del proyecto de investigación según sea necesario.

Un Plan de Gestión de Datos es un mapa de ruta para que usted pueda gestionar sus datos de forma eficiente y segura. Esto puede prevenir pérdidas de datos o incumplimientos. ¡Planear adelante sobre cómo gestionar sus datos de forma consistente puede ahorrarle tiempo más tarde! También puede facilitar a {ref}`compartir<rr-rdm-sharing>` sus datos con otros y, por lo tanto, hacer los datos más {ref}`FAIR<rr-rdm-fair>`

## Un plan de gestión de datos debe proporcionar información sobre cinco temas principales:

### 1. Rol y Responsibilidad
* Es importante discutir quién es responsable de diferentes tareas durante el ciclo de vida de un proyecto de investigación. Definir quién es responsable de la gestión de los datos y el código puede prevenir confusión/mala comunicación más tarde en el proyecto.
* Usted debe revisar las recomendaciones y requisitos del DMP de su instituto y fundador. El equipo de apoyo a la investigación de la biblioteca de su instituto y el sitio web de su fundador suelen ser buenos lugares para encontrar información y ayuda. Algunos de los financiadores requieren que utilice su plantilla DMP. Puede comprobar si su fundador o instituto tiene un DMP usando [DMPonline](https://dmponline.dcc.ac.uk/).

### 2. Tipo y tamaño de datos recopilados y documentación/metadatos generados
* Aquí puede enumerar los formatos de archivo que utilizará para recoger, procesar y presentar sus datos. Si quieres compartir tus resultados de investigación más adelante, se prefieren formatos de archivo estándar que se pueden utilizar abiertamente sin una licencia particular para un programa de software. Para asegurar esto, debe adaptar sus archivos o empezar a trabajar en estos formatos pronto.
* Se puede distinguir entre diferentes tipos de datos que pueden describirse en el plan por separado:
    * Datos raw/primario: datos recogidos de la fuente (siempre conserva una versión de sólo lectura de datos brutos para que puedas volver a ella más tarde!)
    * Datos procesados: una versión de los datos que han sido modificados para su análisis o visualización
    * Datos finalizados: datos listos para ser compartidos en una publicación o en un repositorio de datos (véase {ref}`Sección de intercambio y archivación de datos <rr-rdm-sharing>` para más información). Algunos repositorios de datos, como [Zenodo](https://zenodo.org/), permite la versión de conjuntos de datos para que pueda actualizar su conjunto de datos finalizado si desea liberar otra versión.
* Todos estos tipos de datos tendrán que ser descritos para ser colocados en contexto mediante el uso de metadatos (ver la sección {ref}`Documentación y metadatos<rr-rdm-metadata>`) y documentación adecuada que le permitirá el futuro, y cualquier persona en tu equipo, para interpretar los datos.
* Es útil conocer el tamaño aproximado (en el rango de MB, GB, TB o PB) de los datos en estas diferentes etapas porque esto afectará a las soluciones de almacenamiento disponibles para usted (discutidas en el siguiente punto).

### 3. Tipo de almacenamiento de datos utilizado y copia de seguridad de los procedimientos existentes
* Consulte la sección {ref}`de almacenamiento de datos y organización<rr-rdm-storage>` para encontrar soluciones de almacenamiento y copia de seguridad y formas de organizar sus archivos
* Comprueba si hay algún **coste** asociado con tu proyecto
    * Solución de almacenamiento preferida (durante y después del proyecto, ver abajo)
    * Coste del personal (si necesitas un gestor de datos para gestionar cantidades más sensibles o grandes de datos)
    * Licencias de software (como bloc de notas Electronic Lab, vea la {ref}`Open notebooks sección<rr-open-notebooks>`
    * Puedes usar esta [lista de verificación por costes](https://www.ukdataservice.ac.uk/media/622368/costingtool.pdf) como guía
* Mantener un seguimiento de quién hizo cambios específicos en sus datos/código será importante, particularmente para el código. Vea el {ref}`capítulo de Control de versiones<rr-vcs>` para más información.
* Determinar quién tiene acceso a los datos y quién concede el acceso. Al menos otra persona debería tener acceso a sus datos, como su supervisor/PI/jefe del departamento. Si está gestionando datos personales/comerciales sensibles, el acceso sólo debe darse a personas que tengan que trabajar con los datos.

### 4. Conservación de los resultados de la investigación después del proyecto
* Considere si sus resultados de investigación pueden hacerse públicos. Los datos personales o los resultados de investigación necesarios para solicitar patentes no pueden compartirse públicamente, ver {ref}`Abrir sección de datos<rr-open-data>` Si los datos no se pueden hacer públicos todavía tendrá que conservarlos durante varios años. dependiendo de las políticas de su país, instituto y fundador.
* Puede externalizar la conservación a largo plazo de sus datos a un repositorio de datos. Puede encontrar más información sobre cómo seleccionar un repositorio apropiado en {ref}`compartiendo y archivando datos<rr-rdm-sharing>` sección
    * Seleccione los repositorios utilizando, por ejemplo, [FAIRsharing](https://fairsharing.org/) o [lista de repositorio recomendada por Nature](https://www.springernature.com/gp/authors/research-data-policy/repositories/12327124), que proporcionan un identificador persistente como un DOI para su resultado de investigación. Un repositorio debe tener una política de preservación que especifique cuánto tiempo se supervisarán sus salidas. En caso de duda, póngase en contacto con el Equipo de Apoyo a Datos de su biblioteca para obtener más información sobre los depósitos de datos.

### 5. Reutilizar los resultados de tus investigaciones por otros
* Seleccione una licencia cuando haga que su salida esté disponible en un repositorio (vea los subcapítulos de licencia en {ref}`data<rr-licensing-data>` y {ref}`software<rr-licensing-software>` para más información). Al seleccionar una licencia, le dice a otros cómo pueden reutilizar sus datos. Si no selecciona una licencia, otros no podrán reutilizar sus datos sin pedirle permiso.
* Puede poner sus salidas de investigación en contexto usando y texto de introducción, como un archivo README.txt
    * Ver la sección {ref}`de documentación y metadatos<rr-rdm-metadata>`

Puedes usar esta [lista de verificación](https://ukdataservice.ac.uk/learning-hub/research-data-management/plan-to-share/checklist/) para ver si tienes todo cubierto en tu plan de gestión de datos.

## Más recomendaciones de lectura

- [Módulos educativos de DataOne](https://www.dataone.org/education-modules)
- [Información de gestión de datos del Servicio de Datos del Reino Unido](https://ukdataservice.ac.uk/learning-hub/research-data-management/)
- [Portal de Gestión de Datos de Investigación de TU Delft](https://www.tudelft.nl/en/library/research-data-management)
- [Videos (3-7 min) sobre la gestión de datos por Kristin Briney](https://www.youtube.com/watch?v=K5_ocBG5xek&list=PLEor4jq8YPgK_sgEiAcpHZLw-62mufXus)
- Briney, Kristin. Gestión de datos para investigadores: Organize, mantenga y comparta sus datos para el éxito de la investigación, Pelagic Publicación, 2015.
- Briney, K.A., Coates, H. and Goben, A., 2020 Foundational Practices of Research Data Management. Investigaciones Ideas y Outcomes 6: e56508. [https://doi.org/10.3897/rio.6.e56508](https://doi.org/10.3897/rio.6.e56508)
- Hart EM, Barmby P, LeBauer D, Michonneau F, Mount S, Mulrooney P, et al. (2016) Diez reglas sencillas para el almacenamiento de datos digitales. PLoS Comput Biol 12(10): e1005097. [https://doi.org/10.1371/journal.pcbi.1005097](https://doi.org/10.1371/journal.pcbi.1005097)
