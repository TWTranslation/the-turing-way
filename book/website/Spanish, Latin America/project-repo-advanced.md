# Estructura Avanzada para Análisis de Datos

## Nivel de Prerrequisitos / Habilidad Recomendada

| Prerrequisito                                | Importancia | Notas                                                 |
| -------------------------------------------- | ----------- | ----------------------------------------------------- |
| {ref}`Control de versiones<rr-vcs>`    | Útil        | Conocimiento de usar git para el control de versiones |
| {ref}`Abrir Investigación<rr-open>`    | Útil        | Los componentes son parte del compendio               |
| {ref}`Entornos Reproducibles<rr-renv>` | Útil        | Se puede usar para hacer el compendio reproducible    |

## Summary

Al planificar un estudio de investigación, un componente crucial y a menudo olvidado es la creación de un depósito. En esta sección, se describirán los beneficios y consideraciones de diseñar un repositorio, junto con una estructura de ejemplo y recursos adicionales para guiar su flujo de trabajo.

Los requisitos previos para este capítulo pueden variar en función de las necesidades organizativas de un proyecto. Crear un repositorio con un diseño de proyecto de investigación simple puede requerir un conocimiento técnico mínimo (como administrar sólo los datos de entrada y los resultados de salida). Mientras tanto, se pueden requerir diseños avanzados de repositorios para proyectos más complicados (como proyectos con dependencias de otros proyectos).

## Fondo

Un repositorio (o un "repo") es una ubicación de almacenamiento para su proyecto de investigación. Un repositorio puede contener una gama de objetos digitales y puede ser utilizado para almacenar su proyecto usando plataformas en línea como GitHub. El objetivo de un repositorio es organizar su proyecto de tal forma que sea accesible a otros y eficiente de usar.

Hasta ahora, vimos los documentos clave que se deberían añadir al iniciar o configurar un repositorio de proyectos. Si sigues la lista, tu proyecto debería contener los siguientes archivos:

```
Carpeta del Proyecto/
Ningundo CODE_OF_CONDUCT          <- Código de Conducta para proyectos comunitarios
Adicionalmente CONTRIBUTING             <- Guía de Contribución para colaboradores
Adicionalmente LICENSE                  <- licencia de software
Adicionalmente. .                      <- cualquier otro archivo que hayas añadido para tu proyecto
―README. d                <- información sobre el repositorio
```

En este subcapítulo, esbozamos los beneficios y consideraciones de diseñar un repositorio, junto con una estructura de ejemplo y recursos adicionales para guiar su flujo de trabajo.

```{note}
El principal beneficio de diseñar su repositorio añadiendo documentación de forma intencionada, los recursos y la información relevante permite crear una infraestructura para la investigación ética, abierta y de alta calidad desde el punto de vista.
```

## Consideraciones principales

Cuando comparta sus recursos a través de su repositorio, considere los siguientes aspectos de reproducibilidad en su investigación:

- Transparencia y apertura
- Sistema de control de versiones (no más archivos como final_v1_FINAL.R, final_v2_FINAL.R, ...)
- Haz fácil navegar para que ahorres tiempo para todos los involucrados
- Considere los aspectos de {ref}`pd-overview-repro`
- Asegúrate de proporcionar suficientes detalles para que otros puedan construir sobre tu trabajo

## Recomendaciones principales

Siempre considere diseñar su proyecto para la colaboración añadiendo documentos clave que describan los objetivos del proyecto, la visión, la ruta, la contribución y el proceso de comunicación (como se describe en subcapítulos anteriores).
- Incluye detalles en {ref}`archivo README<pd-project-repo-readme>`describiendo _para qué es_ el repositorio y _cómo_ navegarlo
- Proveer visión, objetivos y mapa de ruta siempre que sea posible (ver [el mapa de desarrollo de Kamran Ahmet](https://github.com/kamranahmedse/developer-roadmap) por ejemplo)
- La estructura general debe separar la entrada (datos), los métodos (scripts) y la salida (resultados, cifras, manuscritos)
- Especifique lo que no debería rastrearse en el archivo `.gitignore` , como archivos sensibles/privados, grandes dataset o notas personales
- Incluya información sobre su entorno computacional {ref}`Entornos Reproducibles<rr-renv>` para asegurar la reproducibilidad (esto también puede especificarse en el README)

## Ejemplo de estructura de repositorio

### Ejemplo de un proyecto de investigación

Aquí hay sugerencias de archivos y carpetas que un proyecto de investigación debe tener.

```
Carpeta del Proyecto/
★ Documentos                     <- documentación
Ninguno
. Codelist.txt 
Ninguno/es_de_proyecto_plan.txt
Ninguno/dokumento/dokumento/s ...
│   └── deliverables.txt
├── data
│   └── raw/
│       └── my_data.csv
│   └── clean/
│       └── data_clean.csv
├── analysis                 <- scripts
│   └── my_script.R
├── results                  <- analysis output     
│   └── figures
├── .gitignore               <- files excluded from git version control 
├── install.R                <- environment setup
├── CODE_OF_CONDUCT          <- Code of Conduct for community projects
├── CONTRIBUTING             <- Contribution guideline for collaborators
├── LICENSE                  <- software license
├── README.md                <- information about the repo
└── report.md                <- report of project
```

### Ejemplo con todas las carpetas posibles

Este ejemplo muestra diferentes archivos y directorio que un proyecto puede contener al construir una aplicación de software o herramientas de ingeniería de investigación.

```
Carpeta de Proyecto/                        
Ningun análisis                 <- secuencias de comandos
mañana: my_script.
► Compilación                    <- archivos construidos, Makefile
| mañanotidiano debug
| mañana: lanzamiento
mañanos-datos
mañana/raw/
mañana-mi_data. sv
→ Limpieza/
tópica_limpia de datos. sv
→ Documentos                     <- documentación
✓ Codelist. xt 
→ Gestión de proyectos       <- Documentos relacionados con la gestión de proyectos
- Comunicación. d
ochté.md
oz. project-report.md
ooz. tools. d
✫ :/=$ res                      <- recursos estáticos (imágenes y archivos de audio)
mañanas: figuras
ful. itignore               <- archivos excluidos del control de la versión de git 
✓ CODE_OF_CONDUCT          <- Código de Conducta para los proyectos de la comunidad
aficiones             <CONTRIBUTING < - Guía de colaboración para los colaboradores
lib de facto                      <- dependencias (componentes compartidos que pueden ser utilizados a través de una aplicación o a través de proyectos, código que soporta la aplicación básica)
registros. xt                 <- historial de todas las actualizaciones importantes como versión de características, corrección de errores, Actualizaciones
✓ ejemplo                  <- aplicación de código de ejemplo
→ LICENSE                  <- licencia de software
✓ ambiente. ml          <- configuración de entorno anaconda   
☆ install.                <- Configuración de entorno R
Requisitos de 2020. xt         <- configuración de entorno de python
(tiempo de ejecución). xt              <- R en la configuración de binder
report. d                <- informe de análisis
☆ README. d                <- información sobre el repo
☆ src                      <- archivos fuente
→ Prueba                     <- pruebas unitarias  
```

## Recursos

### Paquetes R y Python

| R                                                                 | Python                                                       |
| ----------------------------------------------------------------- | ------------------------------------------------------------ |
| [rrtools](https://annakrystalli.me/rrresearch/10_compendium.html) | [compendium-dodo](https://pypi.org/project/compendium-dodo/) |
| [plantilla](https://github.com/Pakillo/template)                  | [css-compendium](https://pypi.org/project/ccs-compendium/)   |
| [rcompendia](https://github.com/FRBCesab/rcompendium)             |                                                              |
| [rehacer](https://github.com/richfitz/remake)                     |                                                              |

### Ejemplos conservados de los repositorio de GitHub

- [_La Vía Turística_ repositorio del proyecto](https://github.com/alan-turing-institute/the-turing-way)
- [Repo del proyecto de Jupyter Book](https://github.com/executablebooks/jupyter-book)
- [Repo Pandas Paquete](https://github.com/pandas-dev/pandas)
- [Repo del editor de texto Atom](https://github.com/atom/atom)

Para más detalles, por favor sigue {ref}`project-repo-recommendations-advanced`.
