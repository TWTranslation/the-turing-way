(rr-compendio)=
# Compendia de Investigación

## Prerrequisito

| Prerrequisito                                | Importancia | Notas                                                    |
| -------------------------------------------- | ----------- | -------------------------------------------------------- |
| {ref}`Control de versiones<rr-vcs>`    | Útil        | Se puede utilizar para versionar el compendio            |
| {ref}`Abrir Investigación<rr-open>`    | Útil        | Los componentes son parte del compendio                  |
| {ref}`Entornos Reproducibles<rr-renv>` | Útil        | Se puede usar para hacer el compendio reproducible       |
| {ref}`Binder Hub<rr-binderhub>`        | Útil        | Se puede utilizar para publicar el compendio             |
| {ref}`Hacer<rr-make>`                  | Útil        | Se puede utilizar para la automatización en el compendio |

## Summary

Un compendio de investigación es una recopilación de todas las partes digitales de un proyecto de investigación incluyendo datos, código, textos (protocolos, informes, cuestionarios, meta data). La colección se crea de tal manera que la reproducción de todos los resultados es directa {cite:ps}`Compendio Nuest2017,leman2007estadística`.

Este capítulo tiene muchos requisitos previos, ya que reúne todos los componentes digitales de un proyecto en un paquete de investigación reproducible. Dicho esto, un compendio de investigación se puede construir con un conocimiento técnico mínimo. El propósito principal es que todos los elementos de un proyecto se publiquen juntos, por lo que una estructura de carpetas básica que combine todos los componentes puede ser suficiente.

```{figure} ../figures/research-compendium.jpg
---
height: 500px
name: research-compendium
alt: Una ilustración que muestra a una persona queriendo una máquina grande que toma información científica de varios papeles y da una salida de archivo legible.
---
_The Turing Way_ ilustración del proyecto por Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Motivación

Un compendio de investigación [{term}`def<Research Compendia>`] combina todos los elementos de tu proyecto, permitir a otros reproducir su trabajo, y debería ser el producto final de su proyecto de investigación. Publicar tu documento de investigación junto con un compendio de investigación permite a otros acceder a tu entrada, probar su análisis, y, si el compendio puede ser ejecutado, vuelva a ejecutar para evaluar la salida resultante. Esto no sólo infunde confianza en su investigación, sino que le puede dar más visibilidad. Otros pueden usar tu investigación de maneras inesperadas algunas de las cuales se discuten a continuación (consulte la sección: {ref}`Usando un compendio de investigación<rr-compendia-using>`).

## Fondo

Un compendio de investigación en su más básico es un conjunto completo de archivos que combina todos los componentes de un proyecto. Este compendio se puede descargar y ejecutar localmente para recrear el trabajo hecho, o puede contener elementos que le permiten ser ejecutado en un servidor remoto. Compendia de investigación ejecutable apunta a hacer que la parte computacional de una publicación científica se reproduzca proporcionando todos los bloques de construcción disponibles y dar una descripción de cómo el usuario puede ejecutar el código contenido.


### Estructura de un Compendio de Investigación

Tres principios deben ser tenidos en cuenta al construir un compendio de investigación {cite:ps}`Marwick2018compendia`.

- Los archivos deben organizarse en una estructura de carpetas convencional;
- Data, métodos y salida deben estar claramente separados;
- Se debe especificar el entorno computacional.

Con estos principios es posible una amplia variedad de compendias. Empecemos con la versión más básica.


#### Compendio básico

Un compendio básico sigue estos tres principios. Separa los datos y los métodos en una estructura de carpetas convencional, y describe el entorno computacional en un archivo designado. Además, cualquier compendio debe tener una página de destino en forma de documento README.

```text
compendium/
├── data
│   ├── my_data.csv
├── analysis
│   └── my_script.R
├── DESCRIPTION
└── README.md
```

#### Compendio Ejecutivo

La siguiente carpeta puede considerarse un compendio de investigación ejecutable. Contiene todas las partes digitales del proyecto de investigación (código, datos, texto, cifras) y toda la información sobre cómo obtener los resultados. El entorno de cómputo se describe en `Dockerfile`, las dependencias de archivos y cómo generar automáticamente los resultados se describen en el `Makefile`. Adicionalmente tenemos un `README. d` describiendo de qué trata el compendio y un archivo `LICENSE` con información sobre cómo se puede utilizar.

```text
compendio/
→ CITACIÓN
CITUDES (Codigo de tencia)
(codigo de tencia)
(t.). analyse_data.R
(t.). Limpieza_datos.
→ data_clean
Ninguno: datos_clean.csv
Ninguno: datos_raw
tórax. son
✫ ✓ Datos de data_raw.csv
→ Dockerfile
Ninguno: figuras
diagrama. flow_chart. peg
★ LICENSE
✓ ★ Makefile
→ → Papel.Rmd
Ningunos: README.md
```

#### Métodos separados, Data, Salida

Los principios de un compendio de investigación afirman que debe separar claramente Methods, Data y Salida. Dicho de forma diferente, esto significa que debemos distinguir entre tres tipos de archivos y carpetas:

- **Solo lectura**: datos crudos (``data_raw\`), metadatos (``datapackage.json`,`CITACIÓN`)
- **Generado humanamente**: código (`clean_data.R`, `analyse_data.`), papel (`paper.Rmd`), documentación (`README.md`)
- **Project-generated**: limpia datos (``data_clean\`, figuras (``figuras\`), otro resultado

Los ejemplos mencionados aquí no son exhaustivos y algunos pueden ser "generados por el hombre" y en algún momento convertirse en "solo lectura" (por ejemplo, un humano puede generar el paquete de datos `de metadatos de datos. hijo`, pero una vez que se haga puede convertirse en algo que no se toque). En otras palabras, si una carpeta contiene archivos en cualquiera de estas categorías, puede depender del ciclo de vida del proyecto.


### Creando un Compendio

Si ya utiliza algunas de las herramientas de este libro - tales como el control de versiones, Makefiles, y/o ambientes reproducibles - puede venir naturalmente a usted crear un compendio de investigación. Esto es, porque un repositorio de control de versiones puede ser un compendio de investigación; Un Makefile lo hace ejecutable; Un entorno reproducible hace que sea reproducible. Crear un compendio de investigación, Recomendamos primero pensar en *cuáles son los componentes de su proyecto* y crear la estructura de carpetas en consecuencia. Utilice nombres para archivos y carpetas que hagan más fácil que otros entiendan lo que contienen. Es una buena idea pensar en esto temprano en el proceso de investigación y comenzar su proyecto con la mentalidad de que el resultado final es un compendio de investigación en lugar de un simple documento de investigación.


### Publicando un Compendio

Hay varias opciones para publicar un compendio de investigación:

- En una plataforma de versiones como GitHub o GitLab (potencialmente con un enlace a Binder).
- En un archivo de investigación como Zenodo o el Open Science Framework (OSF).
- Como material complementario de una publicación en papel.

Por ejemplo, vea la etiqueta/etiqueta/comunidad "research-compendium" (aplicada en GitHub, Zenodo, OSF) o como sustituto del término "compendio de investigación" en la descripción (usada en GitLab). Para más información, vea también [Compendio de Investigación](https://research-compendium.science).

En el futuro, el compendio de investigación puede ser incluso la propia publicación que permite la revisión por pares de todo el proyecto de investigación.

(rr-compendia-using)=
### Usando un Compendio

Un compendio de investigación puede ser utilizado de varias formas, incluyendo (pero no limitado a):

- Revisión de pares: Si los pares pueden comprobar lo que han hecho, pueden revisarlo mucho más a fondo.
- Entendida investigación: Si realmente quieres entender lo que alguien ha hecho en su proyecto de investigación, el compendio de investigación es lo que se necesita ver.
- Enseñar: La compendia de investigación puede ser un buen ejemplo para ser utilizada en la enseñanza.
- Estudios de reproducibilidad / hacks repro: Un compendio de investigación permite que otros investigadores intenten (y esperemos que tengan éxito) rehacer sus cálculos.


## Checklist

Para crear un compendio de investigación, siga estos pasos:

- Piensa en una buena estructura de carpetas (ver ejemplo arriba)
- Crear estructura de carpetas (directorios principales y subdirectorios)
- Opcional: Hacer el compendio en un repositorio git
- Añadir todos los archivos necesarios para reproducir los resultados del proyecto
- Intenta tener el compendio lo más limpio y fácil de usar posible cuando lo publique para que otros lo usen
- Opcional: Haga que un par compruebe el compendio y compruebe si funciona correctamente
- Publica tu compendio

## Leyendo más

- El sitio web [Compendio de Investigación](https://research-compendium.science) contiene enlaces a más recursos y publicaciones sobre compendia de investigación, así como enlaces a ejemplos.


<!---
> top 3/5 resources to read on this topic (if they weren't licensed so we could include them above already) at the top, maybe in their own box/in bold.
> less relevant/favourite resources in case someone wants to dig into this in detail
-->
