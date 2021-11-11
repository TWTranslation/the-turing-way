(rr-renv-vm)=
# Máquinas virtuales

(rr-renv-vm-qué)=
## ¿Qué son las máquinas virtuales?

Virtual Machines (máquinas virtuales) esencialmente empaquetan una computadora entera como una aplicación que se puede ejecutar. Como ejemplo, la figura de abajo muestra un portátil de ventanas (tenga en cuenta el botón de búsqueda de ventanas en la esquina inferior izquierda) ejecutando una máquina virtual ubuntu (nota de la salida terminal del sistema operativo). La máquina que ejecuta la máquina virtual se llama la máquina anfitrión ``.

Utilizando software como [VirtualBox](https://www.virtualbox.org/) o [Vagrant](https://www.vagrantup.com/), un usuario puede crear y ejecutar cualquier número de máquinas virtuales. Como probablemente podría adivinar, tener varias máquinas virtuales corriendo a la vez puede ser un drain en la memoria. Por lo tanto, el hecho de que pueda ejecutar varias máquinas virtuales no significa que deba hacerlo.

```{figure} ../../figures/virtual-machine.png
---
nombre: virtual-machine
alt: Una captura de pantalla de una máquina virtual.
---

```

Los usuarios pueden descargar, instalar, respaldar y destruir máquinas virtuales a voluntad, por lo que son una herramienta atractiva para compartir investigaciones reproducibles. La investigación a menudo requiere piezas específicas de software o ajustes del sistema. Si un investigador desea reproducir el trabajo de otro en su computadora, hacer los cambios necesarios en su entorno para ejecutar el proyecto puede afectar su trabajo. Por ejemplo, en la sección {ref}`rr-renv-useful` de este capítulo, describimos cómo usar una versión diferente de Python puede llevar a cambios inesperados en los resultados de un análisis. Diga que un investigador instala una versión actualizada de Python para replicar un análisis porque el análisis requiere características sólo presentes en la versión actualizada. Al hacerlo, ponen en peligro su propio trabajo. Las máquinas virtuales eliminan ese riesgo; cualquier herramienta descargada o cambio de configuración sólo afectará a la máquina virtual, manteniendo a la investigación del reproductor a salvo. Si inadvertidamente rompen algo en la MV, pueden eliminarlo y hacer otra. Las máquinas virtuales son efectivamente una zona cuadrada.

(rr-renv-vm-investigación)=
## Uso de máquinas virtuales para la investigación reproducible

Las máquinas virtuales pueden ser compartidas exportándolas como archivos individuales. Otro investigador puede importar ese archivo utilizando su propio software de virtualización como [VirtualBox](https://www.virtualbox.org/) y abrir una copia de la máquina virtual que contendrá todos los archivos de software y ajustes implementados por la persona que hizo la máquina virtual. Por lo tanto, en la práctica, tendrán una versión funcional del proyecto sin el dolor de establecerlo ellos mismos.

(rr-renv-vm-investigación-configuración)=
### Configurando una máquina virtual

Primero, elija una herramienta para generar máquinas virtuales. Aquí se elige el ampliamente utilizado [VirtualBox](https://www.virtualbox.org/). Descargue e instale en su sistema. Para crear una máquina nueva, haga clic en "Nuevo" en la parte superior izquierda. Aparecerá una ventana donde podrá introducir un nombre para la máquina y seleccionar qué sistema operativo (y versión) utilizar. En la figura de abajo, se está creando una máquina llamada `demo_VM` ejecutando Ubuntu:

```{figure} ../../figures/vm-create-machine.png
---
nombre: vm-create-machine
alt: Se crea una captura de pantalla que muestra una máquina virtual.
---

```

A medida que haga clic en el botón, puede ajustar otras características de la máquina a crear, como la cantidad de memoria a la que debería tener acceso. Las opciones por defecto son adecuadas para la mayoría de los propósitos, pero este proceso permite la personalización.

(rr-renv-vm-investigación-inicio)=
### Iniciando una máquina virtual

Para iniciar una máquina virtual, seleccione la máquina de la lista de máquinas virtuales a la izquierda, y haz clic en el verde `Iniciar` flecha en la parte superior:

```{figure} ../../figures/vm-start-machine.png
---
nombre: vm-start-machine
alt: Una captura de pantalla que muestra cómo iniciar una máquina virtual.
---

```

(rr-renv-vm-investigación-compartir)=
### Compartir máquinas virtuales

Un investigador puede trabajar en su máquina virtual y luego exportarla. Para exportar una máquina virtual, haga clic en `Archivo` en la parte superior izquierda y luego `Exportar`. Esto exportará la máquina virtual como un único archivo que puede ser compartido.

```{figure} ../../figures/vm-export-machine.png
---
nombre: vm-export-machine
alt: Una captura de pantalla que muestra cómo exportar una máquina virtual.
---

```

Alguien que tenga acceso a este archivo y VirtualBox instalado solo necesita hacer clic en `Archivo` en la parte superior izquierda, luego `Importar` para seleccionar ese archivo. Una vez importado, pueden iniciar la máquina virtual como se describió anteriormente seleccionándolo del menú haciendo clic en la flecha verde de inicio en la parte superior.
