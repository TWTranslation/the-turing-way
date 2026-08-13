(rr-make)=

# Reproducibility with Make

(rr-make-prerequisites)=

## Prerequisites

| Prerequisite                                                               | Importance | Notes                                                        |
| -------------------------------------------------------------------------- | ---------- | ------------------------------------------------------------ |
| {ref}`Experience with the command line<rr-overview-resources-commandline>` | Necessary  |                                                              |
| {ref}`Version Control<rr-vcs>`                                             | Helpful    | Experience using git is useful to follow along with examples |

Recommended skill level: intermediate

(rr-make-summary)=

## Summary

Un proyecto de ciencia de datos o investigación puede verse como un árbol de dependencias: el reporte depende de las cifras y tablas, y estos a su vez dependen de los datos y los scripts de análisis utilizados para procesar estos datos (ilustrados en la figura de abajo).  Make es una herramienta para crear archivos de salida a partir de sus dependencias a través de reglas preespecificadas.  Es posible combinar estas dos ideas para crear un proyecto reproducible con Make.  En este capítulo le damos una introducción a Hacer y ofrecemos un tutorial sobre cómo Hacer puede ser utilizado para un canalizador de análisis de datos .  También describimos un proyecto de investigación reproducible en el mundo real que utiliza Make para pasar de los datos de entrada en bruto a los experimentos todos el camino al archivo pdf del papel.

```{figure} ../../figures/make-research-dag.*
---
name: make-research-dag
alt: Schematic of a research project.
---
Schematic of a research project.
```

(rr-make-intro)=

## An Introduction to Make

Make is a build automation tool. It uses a configuration file called a
Makefile that contains the _rules_ for what to build. Make builds _targets_
using _recipes_.  Targets can optionally have _prerequisites_.  Los prerrequisitos pueden ser archivos en su computadora u otros objetivos. Make determines what to build
based on the dependency tree of the targets and prerequisites (technically,
this is a {ref}`rr-make-resources-tools`). It uses the _modification time_ of
prerequisites to update targets only when needed.

(rr-make-why)=

### Why use Make for Reproducibility?

There are several reasons why Make is a good tool to use for reproducibility:

1. Make is easy to learn
2. Make is available on many platforms
3. Make is flexible
4. Many people are already familiar with Make
5. Makefiles reduce cognitive load because as long as the common Make targets
   `all` and `clean` are present (explained below), you can be up and
   running without having to read lengthy instructions. This is especially
   useful when you work on someone else's project or on one that you haven't
   used in a long time.
6. Makefiles are human-readable and machine-readable text files. So instead of
   writing instructions to a human for how to build a report or output, you
   can provide a Makefile with instructions that can be read by a human _and_
   executed by a computer.
7. Because Makefiles are text files they are easy to share and keep in version
   control.
8. Using Make doesn't exclude using other tools such as Docker.

Con un Makefile inteligente, puedes compartir un análisis completo (código, datos, y flujos de trabajo computacionales) y deje que los colaboradores o lectores de su documento recalculen sus resultados.
Utilizando herramientas como LaTeX, ¡incluso puede generar un manuscrito completo que incluye figuras y resultados recién calculados! Esto puede aumentar la confianza en el resultado de la investigación que generas, puede hacer que tu investigación sea más accesible, y puede hacer que la colaboración sea más fácil.
This can increase the trust in the research output that you generate, it can
make your research more accessible, and it can make collaborating easier.
This chapter can show you how to get started.
