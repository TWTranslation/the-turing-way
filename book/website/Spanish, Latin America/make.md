(rr-make)=
# Reproducibilidad con Hacer

(rr-make-requisitos)=
## Prerrequisitos

| Prerrequisito                                                                                     | Importancia | Notas                                                  |
| ------------------------------------------------------------------------------------------------- | ----------- | ------------------------------------------------------ |
| [Experiencia con la línea de comandos](https://programminghistorian.org/en/lessons/intro-to-bash) | Necesario   |                                                        |
| {ref}`Control de versiones<rr-vcs>`                                                         | Útil        | La experiencia usando git es útil para seguir ejemplos |

Nivel de habilidad recomendado: intermedio

(rr-make-Resumen)=
## Summary

Un proyecto de ciencia de datos o investigación puede verse como un árbol de dependencias: el reporte depende de las cifras y tablas, y estos a su vez dependen de los datos y los scripts de análisis utilizados para procesar estos datos (ilustrados en la figura de abajo).  Make es una herramienta para crear archivos de salida a partir de sus dependencias a través de reglas preespecificadas.  Es posible combinar estas dos ideas para crear un proyecto reproducible con Make.  En este capítulo le damos una introducción a Hacer y ofrecemos un tutorial sobre cómo Hacer puede ser utilizado para un canalizador de análisis de datos .  También describimos un proyecto de investigación reproducible en el mundo real que utiliza Make para pasar de los datos de entrada en bruto a los experimentos todos el camino al archivo pdf del papel.

```{figure} ../figures/make-research-dag.png
---
nombre: make-research-dag
alt: Esquema de un proyecto de investigación.
---
Esquema de un proyecto de investigación.
```

(rr-make-intro)=
## Una introducción a crear

Make es una herramienta de automatización de construcción. Utiliza un archivo de configuración llamado Makefile que contiene las *reglas* para qué construir. Haz construcciones *objetivos* usando *recetas*.  Los objetivos pueden tener *prerrequisitos* opcionales.  Los prerrequisitos pueden ser archivos en su computadora u otros objetivos. Hacer determina qué construir basado en el árbol de dependencias de los objetivos y requisitos previos (técnicamente, esto es un {ref}`rrr-make-resources-tools`). Utiliza el *tiempo de modificación* de requisitos previos para actualizar objetivos solo cuando sea necesario.

(rr-make-why
### ¿Por qué usar Make for Reproducibility?

Hay varias razones por las que Make es una buena herramienta para su reproducibilidad:

1. Hacer es fácil de aprender
1. Hacer está disponible en muchas plataformas
1. Hacer es flexible
1. Muchas personas ya están familiarizadas con Make
1. Los Makefiles reducen la carga cognitiva porque siempre que los objetivos comunes `estén presentes` y `limpios` (explicados a continuación), puedes estar funcionando y sin tener que leer largas instrucciones. Esto es especialmente útil cuando trabajas en el proyecto de otra persona o en uno que no has usado en mucho tiempo.
1. Los Makefiles son archivos de texto legibles por el ser humano y legibles por la máquina. Así que en lugar de escribir instrucciones a un humano para cómo construir un informe o una salida, puede proporcionar un Makefile con instrucciones que pueden ser leídas por un humano *y* ejecutadas por una computadora.
1. Debido a que los Makefiles son archivos de texto son fáciles de compartir y mantener en el control de la versión .
1. Usar Make no excluye el uso de otras herramientas como Travis y Docker.

Con un Makefile inteligente, puedes compartir un análisis completo (código, datos, y flujos de trabajo computacionales) y deje que los colaboradores o lectores de su documento recalculen sus resultados. Utilizando herramientas como LaTeX, ¡incluso puede generar un manuscrito completo que incluye figuras y resultados recién calculados! Esto puede aumentar la confianza en el resultado de la investigación que generas, puede hacer que tu investigación sea más accesible, y puede hacer que la colaboración sea más fácil. Este capítulo puede mostrarte cómo empezar.
