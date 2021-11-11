(rr-ci)=
# Integración continua

| Prerrequisito                                                                                     | Importancia | Notas                                                                                                                                         |
| ------------------------------------------------------------------------------------------------- | ----------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| [Experiencia con la línea de comandos](https://programminghistorian.org/en/lessons/intro-to-bash) | Necesario   | La integración continua seguirá las instrucciones de línea de comandos                                                                        |
| {ref}`Control de versiones<rr-vcs>`                                                         | Necesario   | La integración continua se ejecuta cada vez que se realiza un nuevo _commit_ en tu proyecto                                                   |
| {ref}`Entornos computacionales reproducibles<rr-renv>`                                      | Necesario   | La integración continua ejecuta tus pruebas en un equipo separado (normalmente en la nube) así que necesitas configurarlo de la misma manera. |
| {ref}`Probando<rr-testing>`                                                                 | Muy útil    | Integración continua _prueba_ si algo importante ha cambiado cuando haces un cambio en tu proyecto                                            |
## Summary

La integración continua (IC) es la práctica de integrar cambios en un proyecto realizado por individuos en una gran mayoría, versión compartida con frecuencia (normalmente múltiples veces por día). El software de CI también se utiliza normalmente para identificar cualquier conflicto y error que sean introducidos por cambios, para que se encuentren y fijen pronto, minimizando el esfuerzo necesario para hacerlo. Las pruebas en ejecución regularmente también evitan que los humanos tengan que hacerlo manualmente. Al informar a los usuarios de errores tan pronto como sea posible a los investigadores (si el proyecto es un proyecto de investigación) no pierden mucho tiempo haciendo trabajos que tal vez deban ser desechados, que puede ser el caso si las pruebas se ejecutan infrequently y los resultados se producen usando código defectuoso.

```{figure} ../figures/continuous-integration-may19.jpg
---
height: 500px
name: continuous-integration-mayo19
alt: Un boceto que muestra cómo la integración continua ayuda a los desarrolladores a planear. , integra código en un repositorio compartido y observa la influencia de cualquier cambio.
---
_The Turing Way_ ilustración del proyecto por Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Cómo esto te ayudará / por qué esto es útil

El ICC tiene una serie de beneficios clave:

- Ayuda a encontrar errores temprano, minimizando su daño y haciéndolos más fáciles de arreglar
- Mantiene a los colaboradores del proyecto al día del trabajo del otro para que puedan beneficiarse de él tan pronto como sea posible
- Anima a los usuarios a escribir pruebas
- Automatiza la ejecución de pruebas
- Asegurar que las pruebas se ejecuten con frecuencia
