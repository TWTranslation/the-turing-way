(rr-vcs-git-merge)=
# Combinando ramas en Git

(rr-vcs-merge-command)=
## La combinación de `git` Comando

Una vez que hayas terminado algo de trabajo en una rama y estarás listo para integrarlo a tu proyecto principal (o a cualquier otra sucursal), puede fusionar la rama en la que trabajó en la rama principal o cualquier otra rama de destino de su interés. También puedes usar la fusión para combinar el trabajo que otras personas han hecho con el tuyo y viceversa.

Para combinar una rama, branch_A, en otra rama, branch_B, cambie a branch_A vía:
```
git checkout branch_A
```
Fusionarlo en branch_B por:

```
fusionar rama_B git
```

La fusión no será posible si hay cambios en su directorio de trabajo o en el área de puesta en escena que puedan ser escritos por los archivos en los que se está fusionando. Si esto sucede, no hay conflictos de fusión en archivos individuales. Necesita confirmar o guardar los archivos que lista y luego vuelva a intentarlo. Los mensajes de error son los siguientes:

```
error: La entrada 'su_nombre_archivo' no se actualiza. No se puede combinar. (Cambios en el directorio de trabajo)
```

o

```
error: La entrada 'your_file_name' sería sobrescrita por fusión. No se puede combinar. (Cambios en el área de escena)
```

(rr-vcs-merge-command-practice)=
### Buenas prácticas

En primer lugar, tu rama principal **debe ser siempre estable**. Únicamente combina el trabajo que está terminado y probado (por ejemplo, en una rama diferente). Si tu proyecto es colaborativo, entonces es una buena idea combinar los cambios que otros hacen en su propio trabajo con frecuencia o compartir sus cambios con sus colaboradores. Si no lo hace a menudo, es muy fácil fusionar conflictos que surgen (siguiente sección).

(rr-vcs-merge-conflicts)=
## Combinar conflictos

Cuando se hacen cambios en el mismo archivo en diferentes ramas, a veces esos cambios pueden ser incompatibles. Esto ocurre más comúnmente en proyectos colaborativos, pero también en proyectos solos. Decir que hay un proyecto que contiene un archivo con esta línea de código:

```
print('Hola mundo')
```

Supongamos que una persona, en su rama, decide "pep up" un poco y cambia la línea a:

```
print('¡¡hola mundo!!!')
```

mientras que alguien más, en otra rama, decide cambiarla:

```
print('Hola Mundo')
```

Siguen trabajando en sus respectivas ramas y finalmente deciden fusionarse. Su software de control de versiones luego pasa y combina sus cambios en una sola versión del archivo; *pero*, cuando llega a la declaración `hola world` , no sabe qué versión usar. Se trata de un conflicto de fusiones: se han hecho cambios incompatibles en el mismo archivo.

Cuando surja un conflicto de fusión, se marcará durante el proceso de fusión. Dentro de los archivos con conflictos, los cambios incompatibles serán marcados para que puedas arreglarlos:

```
<<<<<<< HEAD
print('hola mundo!!!')
=======
print('Hola Mundo')
>>>>>>> principal
```
`<<<<<<<`: Indica el inicio de las líneas que tenían un conflicto de fusión. El primer conjunto de líneas son las líneas del archivo en el que intentaba combinar los cambios.

`=======`: Indica el punto de interrupción utilizado para la comparación. Separa los cambios que el usuario ha confirmado (arriba), de los cambios que provienen de la fusión (abajo), para comparación visual.

`>>>>>>>`: Indica el final de las líneas que tenían un conflicto de fusión.

Resuelve un conflicto editando el archivo para combinar manualmente las partes del archivo que Git tuvo problemas para fusionar. Esto puede significar descartar los cambios o los cambios de otra persona o hacer una mezcla de ambos. También necesitará eliminar el `<<<<<<<`, `=======`, y `>>>>>>>>` en el archivo. En este proyecto, los usuarios pueden decidir a favor de un `mundo hola` sobre otro. o pueden decidir reemplazar el conflicto con:

```
print('Hola Mundo!!!')
```

Una vez que haya solucionado los conflictos, confirme la nueva versión. Ahora ha resuelto el conflicto. Si durante el proceso, necesitas un recordatorio de los archivos en los que se encuentran los conflictos, puedes usar `git status` para averiguarlo.

Si encuentras conflictos particularmente desagradables y quieres abortar la fusión que puedes usar:
```
fusión git --abort
```

(rr-vcs-merge-conflicts-practice)=
### Buenas prácticas

Antes de empezar a intentar resolver conflictos, asegúrese de entender totalmente los cambios y cómo son incompatibles para evitar el riesgo de hacer las cosas más enredadas. Los conflictos de fusión pueden ser intimidantes de resolver, especialmente si se fusionan ramas que divergían hace mucho y ahora tienen numerosas incompatibilidades. Sin embargo, vale la pena recordar que sus versiones anteriores están seguras y que puede solucionar este problema sin afectar a las versiones anteriores. Esta es la razón por la que es una buena práctica **fusionar los cambios de otros en su trabajo con frecuencia**.

Existen herramientas disponibles para ayudar a resolver los conflictos de fusión, algunos son libres; otros no. Encuéntrate y familiarizate con uno que funcione para ti. Las herramientas de fusión usadas por empresas incluyen [KDiff3](http://kdiff3.sourceforge.net/), [Beyond Compare](https://www.scootersoftware.com/), [Meld](http://meldmerge.org/)y [P4Merge](https://www.perforce.com/products/helix-core-apps/merge-diff-tool-p4merge). Para establecer una herramienta como su valor predeterminado:

```
git config --global merge.tool name_of_the_tool
```

y lanzarlo con:

```
git mergetool
```

En términos generales, la mejor manera de abordar los conflictos de fusión es, en la medida de lo posible, intentar evitarlos en primer lugar. Puedes mejorar tus probabilidades de esto manteniendo las ramas limpias y centradas en un solo problema e involucrando el menor número posible de archivos. Antes de fusionarse, asegúrese de saber lo que hay en ambas ramas. Si no eres el único que ha trabajado en las ramas, entonces mantén las líneas de comunicación abiertas, así que todos ustedes son conscientes de lo que están haciendo los demás.
