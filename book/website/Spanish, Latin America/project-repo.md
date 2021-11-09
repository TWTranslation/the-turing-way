(pd-project-repo)=
# Creando Repositorios de Proyecto

## Prerrequisitos

| Prerrequisito           | Importancia |
| ----------------------- | ----------- |
| {ref}`cl-github-novice` | Útil        |


## Summary

Este capítulo introduce una guía paso a paso sobre cómo configurar un repositorio de proyectos. Específicamente, describimos documentos clave que debería agregar a su repositorio para mantener la documentación y asegurar una colaboración efectiva. Proporcionamos ejemplos del repositorio de GitHub alojado y mantenido por investigadores en ciencia abierta, sin embargo, los principios son aplicables a cualquier repositorio en línea dirigido por equipo.

## Motivación

Los repositorios de proyectos en línea requieren documentación para que todos los colaboradores estén informados de las actualizaciones y los colaboradores estén provistos de los detalles que necesitan para contribuir eficientemente. Los documentos compartidos pueden ayudarle a transmitir sus ideas a nuevos o potenciales colaboradores. Las contribuciones pueden ser desde nuevas ideas hasta informes de errores y contribuciones reales de código. Las prácticas científicas abiertas descritas aquí también le harán más fácil dirigir proyectos de código cerrado de forma colaborativa y transparente para sus equipos.

```{figure} ../figures/file-management-manual.jpg
---
name: file-management-manual
alt: imagen muestra dos personas organizando archivos. Una persona mantiene un archivo README y otra persona está leyendo los detalles para configurar los datos y los archivos de análisis en el cajón
---
Illustración sobre la gestión de archivos en un repositorio.
_The Turing Way_ proyecto de ilustración por Scriberia. Utilizado bajo una licencia CC-BY 4.0. DOI: 10.5281/zenodo.3332807.
```

En este capítulo, hemos descrito los siguientes documentos que deberían ser añadidos al repositorio del proyecto:
- {ref}`Página de acceso - Archivo README<pd-project-repo-readme>`
- {ref}`Mapeo de ruta<pd-project-repo-roadmapping>`
- {ref}`Rutas de colaborador<pd-project-repo-contributors>`
- {ref}`Directrices de Participación<pd-project-repo-participation>`

(pd-project-repo-license)=
## Empezar añadiendo una licencia

Uno de los documentos más importantes para tu proyecto es una licencia.

```{note}
Sin una licencia, todos los derechos son con el autor del código, y eso significa que nadie más puede usar, copiar, distribuir o modificar el trabajo sin consentimiento.
Una licencia da este consentimiento.
Si usted no tiene una licencia para su software, es efectivamente inutilizable por toda la comunidad investigadora.

**Mira el capítulo {ref}`rr-licensing` para más detalles**
```

El primer archivo que puede agregar al repositorio de su proyecto es un archivo 'LICENSE'. Puede seleccionar un tipo de licencia basado en el nivel de libertad que le gustaría dar a sus usuarios para usar y construir a partir de su proyecto, visita [elealicense. om](https://choosealicense.com/). Por favor, siga la {ref}`Lista de verificación de licencias<rr-licensing-checklist>` al agregar una licencia al repositorio de su proyecto.
