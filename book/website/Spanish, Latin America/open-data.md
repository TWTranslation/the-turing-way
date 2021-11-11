(rr-open-data)=
# Abrir datos

El mundo está siendo testigo de una importante transformación global, facilitada por la tecnología y los medios digitales, y alimentada por datos e información. Esta transformación tiene un enorme potencial para fomentar una investigación más transparente, responsable, eficiente, receptiva y eficaz. Sólo una proporción muy pequeña de los datos originales se publica en revistas convencionales. A pesar de las políticas existentes sobre archivar datos, en la práctica actual los datos se almacenan principalmente en archivos privados, no en depósitos institucionales seguros, y efectivamente se pierden para el público (y a menudo incluso para el investigador que generó los datos).

Esta falta de intercambio de datos es un obstáculo para la investigación internacional (ya sea académica, gubernamental o comercial) por dos razones principales:

1. Por lo general es difícil o imposible reproducir un estudio sin los datos originales.
2. Los datos no pueden ser reutilizados o incorporados en el nuevo trabajo de otros investigadores si no pueden acceder a ellos.

En consecuencia, existe una revolución global en curso que busca promover la colaboración y la creación y expansión de programas de investigación eficaces y eficientes. Abrir datos [{term}`def<Open data>`] es crucial para cumplir estos objetivos. Los datos abiertos están disponibles libremente en Internet. Cualquier usuario puede descargarla, copiarla, analizarla, volver a procesarla y reutilizarla para cualquier otro fin con barreras económicas, legales y técnicas mínimas.

Esto representa un cambio real en la forma en que funciona la investigación. Los financiadores están empezando a exigir a los investigadores que pongan sus datos a disposición y envíen los planes de gestión de datos {ref}`Planes de gestión de datos<rr-rdm-dmp>` como parte de las propuestas del proyecto. Por el momento, cualquiera que desee utilizar los datos de un investigador a menudo tiene que ponerse en contacto con ese investigador y hacer una solicitud. "Abrir por defecto" remedia esto con una presunción de publicación para todos. Si se restringe el acceso a los datos, por ejemplo, por razones de seguridad, la justificación debería quedar clara. El libre acceso a los datos y su posterior uso tienen un valor significativo para la sociedad y la economía. Por lo tanto, esos datos deberían estar abiertos por defecto y solo tan cerrados como sea necesario.

Puedes encontrar más información sobre los pasos prácticos para que tus datos estén disponibles en la sección que describe {ref}`Pasos para compartir tus datos <rr-rdm-sharing-steps>` en el subcapítulo: {ref}`Compartir y Archivar datos<rr-rdm-sharing>`.

(rr-abrir-barreras-datos)=
## Barreras para compartir datos
A muchos académicos les resulta difícil compartir datos. Las encuestas recientes {cite:t}`Stuart2018sharing` realizadas entre los investigadores listan las siguientes razones:

- Organizar datos de forma presentable y útil es un reto (mencionado por el 46%)
- Los investigadores no están seguros sobre derechos de autor y licencias (mencionadas por 37%)
- Los investigadores no saben qué repositorio usar para diferentes tipos de datos (elevado 33%)

Se trata de retos culturales que podrían abordarse a la hora de cambiar la práctica en el futuro. Sin embargo, también existen razones jurídicas, éticas o contractuales que a veces impiden que los datos estén disponibles públicamente en su totalidad o incluso en partes. Debajo discutimos algunas razones que explican por qué puede ser así.

```{figure} ../../figures/data-privacy.jpg
---
height: 500px
name: data-privacy
alt: Una imagen que detalla por qué se deben usar datos privados. Una persona se encuentra al lado de un pozo con 'datos privados' escritos en él y un candado alrededor de él. Es blanco y negro y azul. El texto enumera que "las personas merecen dignidad, agencia, privacidad, derechos, consentimiento confirmado".
---
_The Turing Way_ ilustración del proyecto por Scriberia. Versión original sobre Zenodo. [http://doi.org/10.5281/zenodo.3695300](http://doi.org/10.5281/zenodo.3695300)
```

(rr-open-data-barrers-privacidad)=
### Privacidad y protección de datos

Muchos campos de investigación implican trabajar con datos personales sensibles, siendo la investigación médica el ejemplo más evidente. Los individuos deben ser protegidos de (re)identificación a través de sus datos utilizados para la investigación. La anonimización de los datos puede ser suficiente en algunos casos, pero garantizar que (re)identificación no sea posible se está haciendo cada vez más difícil debido al progreso técnico, creciente poder computacional, y –irónicamente- más datos abiertos. Por ejemplo, la (re)identificación puede ser posible a través de la extracción de datos accesibles y los denominados cuasi-identificadores, un conjunto de propiedades (comunes) que son – en su combinación – tan específicas – que pueden ser utilizadas para identificar individuos.

La conservación de la privacidad puede ser posible si se proporcionan conjuntos de datos parciales o generalizados. Por ejemplo, puede proporcionar bandas de edad en lugar de fecha de nacimiento o sólo los dos primeros dígitos de códigos postales. También puede ser posible proporcionar los datos en tal formato que los investigadores puedan consultarlos manteniendo los datos cerrados por sí mismos. Por ejemplo, un usuario puede enviar una consulta para recuperar la media de un conjunto de datos, pero no se puede acceder a ninguno de los puntos de datos individuales.

Muchos ámbitos de las disciplinas científicas implican trabajar con datos personales delicados. Su gestión está bien regulada en la legislación sobre protección de datos (en Europa, mediante la aplicación nacional del Reglamento General de Protección de Datos) y procedimientos éticos, ya que se establecen en la mayoría de las instituciones de investigación. {cite:t}`Protección EURO 2016`.

(rr-open-data-barrers-consentimiento)=
### Consentimiento

Para que los datos de investigación anónimos estén disponibles para su futura reutilización, los formularios de consentimiento deben incluir el intercambio de estos datos con otros investigadores. La investigación hasta ahora sugiere que los participantes del estudio normalmente están menos preocupados por los datos que se archivan y comparten de lo que los investigadores piensan {cite:t}`archivar Kuula2010`. Las hojas de información del participante y los formularios de consentimiento deben incluir cómo se almacenarán los datos de investigación, preservado y utilizado a largo plazo, y cómo se protegerá la confidencialidad cuando sea necesario.

(rr-open-data-barrers-anonimización)=
### Anonymisation

Los individuos deben estar protegidos de (re)identificación a través de sus datos La anonimización de los datos puede ser suficiente en algunos casos, pero asegurarse de que no sea posible la reidentificación es cada vez más difícil. Incluso podría ser imposible debido al progreso técnico, al creciente poder computacional y -irónicamente- a más datos abiertos.

Por ejemplo, la reidentificación puede ser posible a través de la extracción de datos accesibles y los denominados cuasi-identificadores, un conjunto de propiedades (comunes) que son, en su combinación, tan específicas que pueden ser utilizadas para identificar a un individuo. La conservación de la privacidad puede ser posible si se proporcionan conjuntos de datos parciales o generalizados, como los grupos de edad en lugar de la fecha de nacimiento, o sólo los dos primeros dígitos de los códigos postales. También puede ser posible proporcionar los datos en tal formato que los investigadores puedan consultar, manteniendo los datos cerrados en sí mismos. Por ejemplo, un usuario puede enviar una consulta para recuperar la media de un conjunto de datos, pero no se puede acceder a ninguno de los puntos de datos individuales. Otra forma de proporcionar datos anónimos es proporcionar [datos sintéticos](https://en.wikipedia.org/wiki/Synthetic_data), datos generados para reflejar las condiciones y propiedades de los datos brutos, sin incluir ninguna información personal.

(rr-open-data-barrers-nacional)=
### Datos sensacionales nacionales y comerciales

En muchos casos, es comprensible que las empresas no estén dispuestas a publicar gran parte de sus datos. El razonamiento dice que si se divulga información comercial sensible de una empresa, perjudicará los intereses comerciales de la empresa y socavará la competitividad. Esto se basa en la idea de que en los mercados competitivos la innovación sólo se producirá con cierta protección de la información. Si una empresa gasta tiempo y dinero desarrollando algo nuevo, cuyos detalles se hacen públicos a continuación. entonces sus competidores pueden copiarlo fácilmente sin tener que invertir los mismos recursos. El resultado es que nadie innovaría en primer lugar. De la misma manera, en lo que respecta a la seguridad pública, los gobiernos a menudo no están dispuestos a publicar datos relacionados con cuestiones como la seguridad nacional. En tales casos, es posible que no sea posible abrir los datos, o que sólo sea posible compartir conjuntos de datos parciales u ocultos.

***Etiquetas de capítulo**: Este capítulo está supervisado para el `Grupo de estudio de datos de Turing` (`turing-dsg`).*
