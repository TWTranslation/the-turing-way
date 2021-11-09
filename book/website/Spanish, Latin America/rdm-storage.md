(rr-rdm-almacenamiento)=
# Almacenamiento de datos y organización

La pérdida de datos puede ser tópica para su proyecto de investigación y puede ocurrir a menudo. Usted puede prevenir la pérdida de datos escogiendo soluciones de almacenamiento adecuadas y respaldando sus datos con frecuencia.

```{figure} ../../figures/version-control.jpg
---
height: 500px
name: version-control
alt: Se muestran dos imágenes para representar los beneficios del uso del control de versión. A la izquierda, hay una imagen de dos personas que rumorean a través de una caja azul en la parte superior de una mesa. La caja está llena de documentos rebosantes y la gente parece confusa y frustrada. Los documentos se llaman "final 2" y "dejar que ésta sea la final". A la derecha, las mismas dos personas parecen felices y están buscando a través de archivos organizados claramente en un archivador azul. Hay separaciones "V1, V2, V3 y V4" organizando los archivos.
---
_The Turing Way_ ilustración del proyecto por Scriberia. Versión original sobre Zenodo. [http://doi.org/10.5281/zenodo.3695300](http://doi.org/10.5281/zenodo.3695300)
```

(rr-rdm-almacenamiento-dónde)=
## Dónde almacenar datos

- La mayoría de las instituciones proporcionarán una _unidad de red_ que se puede utilizar para almacenar datos.
- _Medios de almacenamiento portátiles_ como los dispositivos de memoria (dispositivos USB) son más arriesgados y vulnerables a pérdidas y daños.
- _Almacenamiento en la nube_ proporciona una forma conveniente de almacenar, respaldar y recuperar datos. Deberías comprobar los términos de uso antes de usarlos para tus datos de investigación.

Especialmente si está tratando datos personales o confidenciales necesita asegurarse de que la opción de la nube cumple con cualquier regla de protección de datos que los datos estén vinculados. Para añadir una capa extra de seguridad, debe cifrar dispositivos y archivos cuando sea necesario.

Su institución podría proporcionar soluciones de almacenamiento local y políticas o pautas que restringen lo que puede utilizar. Por lo tanto, le recomendamos que se familiarice con sus políticas y recomendaciones locales.

Cuando esté listo para publicar los datos a la comunidad en general. también puede buscar las bases de datos y repositorios apropiados en [FAIRsharing](https://fairsharing.org/databases), de acuerdo a su tipo de datos y tipo de acceso a los datos. Learn more about this in the {ref}`rr-rdm-sharing` subchapter.

(rr-rdm-organización-almacenamiento)=
## Organización de datos

Para organizar sus datos, puede crear una estructura de carpetas, o vuelva a utilizar una estructura anterior (ver un ejemplo más abajo), para asegurarse de que puede encontrar sus archivos.

-   Asegúrese de que tiene suficientes (sub)carpetas para que los archivos puedan almacenarse en la carpeta correcta y no estén dispersos en carpetas a las que no pertenecen, o almacenado en grandes cantidades en una sola carpeta.
-   Utilice una estructura de carpetas limpia. Puede estructurar carpetas basadas en la persona que ha generado los datos/carpetas, de forma cronológica (mes, año, sesiones), por proyecto (como se hace en el ejemplo de abajo), o basado en el método/equipo de análisis o tipo de datos.

(rr-rdm-storage-organization-examples)=
### Ejemplos de organización de datos

- Descargar [esta](http://nikola.me/folder_structure.html) estructura de carpetas de Nikola Vukovic
- Puede descargar estructuras de carpetas usando GitHub: [Esta plantilla](https://github.com/bvreede/good-enough-project) de Barbara Vreede, basado en [cookiecutter](https://github.com/cookiecutter/cookiecutter), sigue las prácticas recomendadas para la computación científica por [Wilson et al. (2017)](https://doi.org/10.1371/journal.pcbi.1005510).
- Vea [esta plantilla](https://osf.io/4sdn3/) de Chris Hartgerink para la organización de archivos en el [Open Science Framework](https://osf.io/).

(rr-rdm-convenciones-almacenamiento)=
## Convenciones de nombres de archivos

Estructure sus nombres de archivo y configure una plantilla para esto. Por ejemplo, puede ser ventajoso empezar a nombrar sus archivos con la fecha en la que se generó cada archivo (como `YYYMMDD`). Esto ordenará sus archivos de forma cronológica y creará un identificador único para cada archivo. La utilidad de este proceso es evidente cuando se generan varios archivos el mismo día que puede necesitar ser versionado para evitar sobreescribirlos.


Algunos otros consejos para nombrar archivos incluyen:
- Utilice la fecha o rango de fechas del experimento: `AAAAYMMDD`
- Usar el tipo de archivo
- Usar el nombre/iniciales del investigador
- Utilice el número de versión del archivo (v001, v002) o el idioma utilizado en el documento G)
- No hagas demasiados nombres de archivos (esto puede complicar las transferencias de archivos)
- Evitar caracteres especiales (?\!@\*%{[<>) y espacios

Puede explicar la convención de nombres de archivos en un archivo README.txt para que también se haga evidente a otros lo que significan los nombres de los ficheros.

(rr-rdm-almacenamiento-respaldos)=
## Copias de seguridad

Para evitar perder sus datos, debe seguir buenas prácticas de copia de seguridad.

- Debe tener 2 o 3 copias de sus archivos, almacenadas en
- al menos 2 medios de almacenamiento diferentes
- en diferentes lugares.

Cuanto más importantes sean los datos y más a menudo cambien los conjuntos de datos, más frecuentemente debería hacer una copia de seguridad. Si tus archivos ocupan una gran cantidad de espacio y hacen copias de seguridad de todos ellos resulta ser desafiante o caro, es posible que desee crear un conjunto de criterios para cuando realice una copia de seguridad de los datos. Esto puede ser parte de su plan de gestión de datos (DMP).
