(rr-rdm-fair)=
# Los principios de FAIR

Los principios rectores de FAIR para la gestión y administración de datos científicos {cite:ps}`Wilkinson2016fair` fueron desarrollados como pautas para mejorar la indabilidad **F**, **A**cesibilidad, ****nteroperabilidad y **R**eusabilidad de activos digitales; todas ellas apoyan la reproducibilidad de la investigación. Los principios FAIR juegan un papel importante en la puesta a disposición de sus datos para su reutilización.

Es mucho más fácil hacer FAIR de datos si usted planea hacer esto desde el comienzo de su proyecto de investigación. Puede planear esto en su Plan de Gestión de Datos (DMP) (ver los puntos 4 y 5 del capítulo {ref}`Plan de Gestión de Datos<rr-rdm-dmp>`).

Aunque los principios FAIR han sido definidos para permitir a las máquinas encontrar y usar objetos digitales automáticamente, mejoran también la reutilizabilidad de los datos por parte de los humanos. La capacidad de los sistemas computacionales para encontrar, acceder, interoperar y reutilizar datos, sin ninguna o mínima intervención humana, es esencial en la era actual impulsada por los datos donde los humanos dependen cada vez más del apoyo computacional para tratar los datos como resultado del aumento del volumen [, velocidad y variedad](https://www.zdnet.com/article/volume-velocity-and-variety-understanding-the-three-vs-of-big-data/).

Este capítulo proporciona una visión abstracta y amplia de cuáles son los principios de las FAIR. Cómo poner en práctica los principios FAIR se discute en otros subcapítulos ( {ref}`Organización de datos en hojas de cálculo<rr-rdm-fair>`, {ref}`Documentación y metadatos<rr-rdm-metadata>` y {ref}`Compartir y archivar datos<rr-rdm-sharing>`). También puede utilizar la [Guía de inicio del bienestar](https://f1000researchdata.s3.amazonaws.com/resources/FAIR_Open_GettingStarted.pdf) o el sitio web [Cómo FAIR](https://howtofair.dk/) para averiguar más sobre los principios de FAIR y cómo empezar.

```{figure} ../../figures/fair-principles.jpg
---
nombre: principios
alt: Ilustración de los principios FAIR para mostrar la definición de ser encontrable, accesible, interoperable y reutilizable.
---
_The Turing Way_ ilustración del proyecto por Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-rdm-teoría)=
## Teoría

En resumen, los datos FAIR deberían ser:

**Buscar:** ¡El primer paso en (re)usando los datos es encontrarlos! Los metadatos descriptivos (información sobre los datos como palabras clave) son esenciales.

**Accesible:** Una vez que el usuario encuentra los datos y el software que necesita saber cómo acceder a ellos. Los datos podrían estar disponibles abiertamente, pero también es posible que sean necesarios procedimientos de autenticación y autorización.

**Interoperable:** Los datos deben integrarse con otros datos e interactuar con aplicaciones o flujos de trabajo.

**Reutilizable:** Los datos deben estar bien descritos para que puedan ser utilizados, combinados y extendidos en diferentes ajustes.

Puede encontrar un [resumen más detallado de los principios de FAIR por parte de GO FAIR](https://www.go-fair.org/fair-principles) de lo que recomiendan los principios de FAIR. También puedes leer [Un cuento FAIRy](https://doi.org/10.5281/zenodo.2248200) para una explicación comprensible de cada principio.

Hacer 'FAIR' de datos no es lo mismo que hacerlo 'abierto'. Accesible significa que existe un procedimiento para acceder a los datos. Los datos deben estar tan abiertos como sea posible y tan cerrados como sea necesario.

También es importante decir que los principios FAIR son aspiracionales: no definen estrictamente cómo lograr un estado de FAIRness, sino más bien describir un continuo de características, atributos y comportamientos que acercarán un recurso digital a ese objetivo.

Los principios FAIR también se aplican al software (ver {cite:ps}`Lamprecht2020FAIRsoftware`y {cite:ps}`Hasselbring2020FAIRsoftware`).


(comunidad rr-rdm-f.)=
## Participación de la comunidad

Aunque comenzó una comunidad que opera en la ciencia de la vida, los principios FAIR han sido rápidamente adoptados por los editores, financiadores, y programas de infraestructura y sociedades pan-disciplinarios. Muchos grupos y organizaciones están trabajando para definir la orientación y las herramientas para ayudar a los investigadores y otros interesados (como los bibliotecarios, fundadores, editores y formadores) hacen que los datos sean más FAIR. Si está interesado en participar en estas comunidades, hay dos iniciativas globales que actúan como organizaciones paraguas y puntos de referencia para muchos esfuerzos específicos de disciplina: [GOFAIR](https://www.go-fair.org) y [Research Data Alliance (RDA)](https://www.rd-alliance.org).
* Bajo GOFAIR, hay muchas [Redes de Implementación (INs)](https://www.go-fair.org/implementation-networks) comprometidos con la implementación de los principios FAIR.
* En el marco de la RDA, hay varios grupos que abordan diferentes aspectos relevantes para el ciclo de vida de los RDM. Entre estos, un [grupo](https://www.rd-alliance.org/groups/fair-data-maturity-model-wg) está revisando los esfuerzos existentes, a partir de ellos para definir un conjunto estándar de criterios de evaluación comunes para la evaluación de FAIRness.
