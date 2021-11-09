(rr-revisión)=
# Proceso de revisión de código

(rr-revisión-prerrequisitos)=
## Prerrequisitos

| Prerrequisito                             | Importancia | Notas                                                                                                                                            |
| ----------------------------------------- | ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| {ref}`Control de versiones<rr-vcs>` | Necesario   | Entender la manera en que [Github](https://github.com) arregla sus ramas, bifurcaciones y pull requests dentro de los repositorios es necesario. |

```{figure} ../figures/bug-catching.jpg
---
height: 500px
name: bug-catching
alt: Gente captando diferentes insectos de diferentes maneras - representando errores en nuestro código o proyecto.
---
Capturando errores. _The Turing Way_ proyecto de ilustración por Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(reseña-reseña)=
## Summary

La revisión de código proporciona una forma adicional de probar la calidad del código. En lugar de depender simplemente de {ref}`pruebas<rr-testing>` que el autor original se reúne ellos mismos. la revisión de código obtiene otro programador para revisar el nuevo código y evaluarlo. El objetivo es señalar las fortalezas y también las posibles áreas de mejora.

La revisión de código a menudo se hace en parejas, y cada revisor también tiene parte de su código revisado por su pareja. Hacer esto puede ayudar a los programadores a ver y discutir temas y enfoques alternativos a las tareas, y a aprender nuevos consejos y trucos. Esto también significa que las prácticas de revisión de código están especialmente bien adaptadas a proyectos con más de un colaborador haciendo cambios, donde cada uno está trabajando en diferentes partes del código. Sin embargo, incluso los proyectos a pequeña escala pueden aprovechar estos enfoques con una gestión de proyectos creativa.

Debido a su naturaleza, las revisiones de código actúan como pruebas cualitativas - en lugar de cuantitativas - pero no son menos valiosas para ello.

Esta sección proporcionará una visión general de las racionales, las mejores prácticas y algunos posibles flujos de trabajo para la revisión de código. Algunos detalles se refieren específicamente a la funcionalidad de revisión de código de GitHub como un ejemplo poderoso y ampliamente utilizado de un sistema formal de revisión de código; sin embargo, sistemas equivalentes y muy similares están disponibles en otros lugares (por ejemplo, [GitLab](https://about.gitlab.com)), e incluso las prácticas informales de revisión de código también pueden ser muy beneficiosas para un proyecto.
