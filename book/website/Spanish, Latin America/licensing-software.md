(rr-licencia-software)=
# Licencias de software

Una licencia de software regula el alcance del uso o redistribución del software, con o sin documentación de software.

Existen muchas licencias de software. Muchos de ellos permiten al Licenciatario hacer muy poco, pero algunos le dan más libertad para usar y reutilizar el software con licencia.

El sitio web [https://choosealicense.com/](https://choosealicense.com/) ofrece un mecanismo directo para ayudarle a elegir la mejor licencia para su proyecto.

Para dar sentido a esta variedad, podemos categorizarlas de la siguiente manera.

## Categorías de licencia

<table>
    <thead>
        <tr>
            <th colspan="3">Gratis</th>
            <th rowspan="3">Propietario</th>
        </tr>
        <tr>
            <th colspan="2">Copia izquierda</th>
            <th rowspan="2">Permisivo</th>
        </tr>
        <tr>
            <th>Fuerte</th>
            <th>Débil</th>
        </tr>
    </thead>
    <tbody>
        <tr>
        <td>GPL<sup>1</sup> CDDL<sup>2</sup></td>
        <td>LGPL<sup>3</sup> MPL<sup>4</sup></td>
        <td>BSD<sup>5</sup> MIT<sup>6</sup> Apache</td>
            <td>Solo investigación: No&nbsp;copiando, No&nbsp;modificación</td>
        </tr>
    </tbody>
    <caption>
      <div class="footnote">
        <sup>1</sup>GPL: GNU General Public License <sup>2</sup>CDDL: Common Development and Distribution License <sup>3</sup>LGPL: GNU Lesser General Public License <sup>4</sup> MPL: Mozilla Public License <sup>5</sup> BSD: Berkeley Software Distribution <sup>6</sup> MIT: Massachusetts Institute of Technology
      </div>
      Las licencias pueden ser Gratis o Propietarias, con Licencias Gratis aún más clasificadas como Copiadas o Permisivas.
    </caption>
</table>

(rr-licencia-libre-software)=
## Software Libre

Las licencias de software son gratuitas o privadas. El software libre viene con términos de licencia que te dan ([según lo definido por GNU](https://www.gnu.org/philosophy/free-sw.html)):

* _Libertad 0_: La libertad para ejecutar el programa como desees, para cualquier propósito.
* _Libertad 1_: La libertad de estudiar cómo funciona el programa, y cambiarlo, para que haga su computación como desee. El acceso al código fuente es una condición previa para ello.
* _Libertad 2_: La libertad de redistribuir copias para que puedas ayudar a otros en tu comunidad.
* _Libertad 3_: La libertad de distribuir copias de sus versiones modificadas a otros. Haciendo esto, usted puede dar a toda la comunidad la oportunidad de beneficiarse de sus cambios. El acceso al código fuente es una condición previa para ello.

Estas cuatro libertades neutralizan efectivamente el derecho de autor; *Utiliza 0* y *2* para usar el software original y compartirlo con otros. *Utiliza 1* y *3* para crear trabajos derivados basados en el software y compartirlos con otros.

Tenga en cuenta que es perfectamente aceptable vender copias de software libre, garantía o servicios de desarrollo; se trata de la libertad de hacer cosas con el software, no de su precio.

Hay otras dos definiciones similares en uso; la [definición de código abierto](https://opensource.org/osd-annotated) del Instituto de código abierto y las [directrices de software libre de Debian](https://www.debian.org/social_contract#guidelines). La definición de software libre anterior, de Richard Stallman, es la más directa y concisa, y en la práctica, las categorías que definen son casi idénticas.

El software que no es libre es propietario. El software que no se le permite copiar o modificar entra en esta categoría, al igual que el software con restricciones de uso, por ejemplo, "Solo para uso de investigación" o "Solo para uso no comercial".

Hay algunas subcategorías con nombre confuso de software propietario. _Freeware_ es un software que puede copiarse sin pagar a nadie, pero que viene sin código fuente y no puede ser modificado. _Compartido-fuente_ viene con fuente, pero sin permiso para modificar. Ninguna de estas dos cosas es libre en el sentido anterior.

(rr-licencia-derivado-software)=
## Software derivado

Dentro de la categoría de software libre, hay varias subcategorías, que se distinguen por lo que se permite al hacer software derivado. Hay dos formas básicas de hacer un trabajo derivado de un programa o biblioteca: modificándolo (bifurcando), o combinándolo con otro software (por ejemplo, usando una biblioteca en su programa). Por supuesto, puede modificar y luego combinar también.

Modificar un programa conduce a un nuevo programa derivado del original. Esto es similar a derivar la nueva edición de un libro de texto del original. Tanto las versiones originales como las modificadas son obras bajo la ley de derechos de autor, y ambas pueden tener licencia.

Como ejemplo de combinar software, imagínese un programa A que utilice dos bibliotecas preexistentes B y C. El programa A completo consistirá en la biblioteca B, biblioteca C, y algún código D que conecta las bibliotecas y quizás agrega funcionalidad adicional. Cada uno de estos cuatro artículos es una obra de autoría con una licencia. El programa A a veces puede ser referido como el "trabajo combinado", "Trabajo como un todo" o "trabajo mayor".

Diferentes licencias de software libre ponen diferentes restricciones sobre cómo se pueden licenciar las versiones modificadas y los trabajos combinados.

(rr-licencia-software-permisivo)=
## Licencias permisivas

Como su nombre lo indica, las licencias permisivas de software libre son las menos restrictivas. Le permiten distribuir el software sin cambios bajo esa licencia, con o sin código fuente. También le permitirán distribuir una versión modificada bajo cualquier licencia que desee, y le permitirán distribuir una obra combinada bajo cualquier licencia.

Ejemplos de licencias permisivas conocidas son las diversas licencias BSD, la licencia MIT y la Apache License 2.0.

(rr-licencia-software-copyleft)=
## Copia izquierda

Las licencias Copyleft añaden algunas restricciones a la concesión de licencias de obras derivadas. Al igual que las licencias permisivas, le permiten distribuir el software sin cambios bajo esa licencia. Sin embargo, si distribuye un binario, entonces también tendrá que incluir el código fuente. Las versiones modificadas deben ser distribuidas bajo la misma licencia que el original; no se le permite cambiar la licencia.

Al crear un trabajo combinado, se puede hacer una nueva distinción. _Fuertes_ licencias de copyleft en un componente requieren que un trabajo combinado sea licenciado bajo la misma licencia que el componente. En el ejemplo anterior, si la biblioteca B se distribuye bajo una licencia fuerte de copyleft como la GNU GPL, entonces el programa A debe ser distribuido bajo esa misma licencia.

_Débil_ licencias de copyleft permiten que el trabajo combinado (A) se distribuya bajo cualquier licencia, siempre y cuando la fuente del componente licenciado (B) también esté disponible bajo su licencia original. También pueden requerir que el receptor del trabajo combinado pueda volver a enlazar los módulos después de modificar el componente.

(rr-licencia-general-software)=
## Resumen de permisos

<table>
    <thead>
        <tr>
            <th rowspan="2"></th>
            <th colspan="2">Copia izquierda</th>
            <th rowspan="2">Permisivo</th>
            <th rowspan="2">Propietario</th>
        </tr>
        <tr>
            <th>Fuerte</th>
            <th>Débil</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th>Usar para cualquier cosa</th>
            <td>Sí</td>
            <td>Sí</td>
            <td>Sí</td>
            <td>A veces</td>
        </tr>
        <tr>
            <th>Cambios privados</th>
            <td>Sí</td>
            <td>Sí</td>
            <td>Sí</td>
            <td>Rara vez</td>
        </tr>
        <tr>
            <th>Distribuir original</th>
            <td>Misma licencia, con origen</td>
            <td>Misma licencia, con origen</td>
            <td>Misma licencia, también binary-only<sup>1</sup></td>
            <td>Rara vez</td>
        </tr>
        <tr>
            <th>Distribuir modificado</th>
            <td>Misma licencia, con origen</td>
            <td>Misma licencia, con fuente<sup>2</sup></td>
            <td>Cualquier licencia, también binaria-sólo</td>
            <td>Rara vez</td>
        </tr>
        <tr>
            <th>Distribución combinada</th>
            <td>Misma licencia, con origen</td>
            <td>Cualquier licencia, adiciones binarias</td>
            <td>Cualquier licencia, también binaria-sólo</td>
            <td>Rara vez</td>
        </tr>
    </tbody>
    <caption>
      <div class="footnote">
        <sup>1</sup>Bajo cualquier licencia para la licencia MIT <sup>2</sup>Relicensing LGPL a GPL está permitido
      </div>
      Las licencias permisivas conceden el mayor conjunto de permisos a los usuarios. Las licencias Copleft requieren la redistribución de la fuente original o modificada para utilizar la misma licencia, con licencias débiles de copyleft que permiten una elección diferente de la licencia para el trabajo combinado. Las licencias patentadas rara vez proporcionan ningún permiso más allá del derecho a usar el software.
    </caption>
</table>

