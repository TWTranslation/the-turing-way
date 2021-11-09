(rr-licencia-compatibilidad)=
# Compatibilidad de la licencia

Si utiliza múltiples componentes externos en su programa, puede terminar con múltiples restricciones diferentes sobre la licencia del trabajo combinado. Si estas restricciones entran en conflicto, entonces no puede distribuir legalmente el resultado (si está involucrado el software propietario, entonces usted no podrá hacer legalmente el trabajo combinado en absoluto).

Si dos licencias especifican restricciones incompatibles con la licencia del trabajo combinado, entonces son _incompatibles_.

El GNU GPL, por ejemplo, es incompatible con licencias propietarias, porque requiere que el trabajo combinado sea licenciado bajo el GPL, sin restricciones adicionales permitidas. Tener una parte de la obra bajo una licencia autónoma es una restricción adicional, por lo que no puede distribuir dicha combinación (a menos que el propietario de derechos de autor del código GPL otorgue permisos especiales).

Cuando utiliza diferentes piezas de software juntos para resolver un problema, y quiere distribuir el resultado, aquí están las preguntas que tiene que responder:

- ¿Qué obras separadas están ahí, y qué se deriva de qué?
- ¿Se pueden distribuir las obras derivadas? ¿Las licencias lo permiten, y son compatibles?
- ¿Cómo se debe licenciar la(s) obra(s) obras?

La siguiente sección muestra algunos ejemplos de cómo se hace.

(rr-licencia-compatibilidad-ejemplos)=
## Ejemplos

Muchos de los ejemplos de esta sección se relacionan con [xtas](http://xtas.net). xtas es un conjunto de herramientas de procesamiento de lenguaje natural para Python que reutiliza muchas librerías de terceros, y conjuntos de datos, y por lo tanto proporciona una variedad de excelentes ejemplos.

```{figure} ../../figures/xtas-overview96.png
---
nombre: xtas-overview96
alt: Un resumen gráfico de xtas. Un gran rectángulo representa las xtas de trabajo combinadas. Dentro de este rectángulo, hay un amplio y bajo rectángulo en la parte superior que representa el código xtas Python, licenciado bajo la Apache License v2. Debajo de esto, hay tres cuadrados lado a lado, representando respectivamente bibliotecas de Python, software y datos, que son usados por xtas. Dentro del cuadrado de las bibliotecas de Python, hay tres cajas. La primera caja contiene las palabras "BSD", "MIT" y "ALv2". La segunda caja contiene "LGPLv2.1". La tercera caja contiene "GPLv2+". Dentro del cuadrado del Software, hay cuatro cajas. La primera caja contiene "Servicio Web". La segunda caja contiene "LGPL v2.1+". La tercera caja contiene "Sólo investigación", y la cuarta caja contiene "GPL 2+/3+". La plaza de datos también contiene cuatro casillas. La primera caja contiene "CC BY-SA 3.0". La segunda caja contiene "Sólo Investigación". La tercera caja contiene "Sin licencia, EE.UU." y la cuarta caja contiene "sólo CoNLL'02".
---
Un resumen gráfico de xtas.
```

xtas está escrito en Python, y utiliza una serie de bibliotecas Python que están licenciadas bajo licencias libres. Estos incluyen las licencias BSD y MIT simples, la versión 2 de la Licencia Apache permisiva. (ALv2), GNU Lesser General Public License versión 2.1 (LGPLv2.1), y GNU General Public License versión 2 o posterior (GPLv2+).

(Tenga en cuenta que la dependencia de la librería GPLv2+ Python está obsoleta, pero por el bien de estos ejemplos, asumiremos que todavía está ahí.)

El código Python de xtas se distribuye bajo la licencia Apache versión 2.0. Puesto que los autores de xtas poseen los derechos de autor, pueden licenciarlo de cualquier manera que les guste (aunque hay un área gris en relación a las dependencias GPL, véase abajo). Los autores de xtas no distribuyen ninguna obra combinada o binarios, sino en los ejemplos siguientes, suponemos que hay un trabajo combinado, para que podamos considerar cómo debe ser autorizado.

En los siguientes ejemplos, simplificaremos la mayor parte de esto y analizaremos una o algunas dependencias a su vez.

(rr-licencia-compatibilidad-ejemplos-apachevsbsd)=
### Apache vs. BSD

```{figure} ../../figures/xtas-snowball96.png
---
name: xtas-snowball96
alt: Una ilustración del ejemplo xtas vs. Snowball.  Un gran rectángulo representa las xtas de trabajo combinadas. Dentro de este rectángulo, hay un amplio y bajo rectángulo en la parte superior que representa el código xtas Python, licenciado bajo la Apache License v2. Debajo de ese es un cuadrado que contiene las palabras "Snowball Stemmer" y "Python lib BSD".
---
Una ilustración del ejemplo xtas vs. Bola de nieve.
```

xtas usa [Snowball](https://snowballstem.org/), una librería basada en Python. Snowball se publica bajo la licencia BSD de 3 cláusulas. Considerando solo xtas y Snowball, podemos responder a las tres preguntas de la siguiente manera:

#### ¿Qué obras separadas están ahí, y qué se deriva de qué?

Hay tres obras: Snowball, el código xtas Python y el trabajo combinado xtas. El trabajo combinado se deriva del código Snowball y xtas Python, ambos trabajos independientes.

Tenga en cuenta que el ALv2 y el LGPL v2. indica explícitamente que el código fuente que está destinado a funcionar en combinación con una biblioteca no es un trabajo derivado, mientras que el binario resultante (estática o dinámicamente) de unir las piezas juntas. Otras licencias, incluyendo el GPL, no hacen ninguna declaración explícita al respecto.

Que yo sepa, no hay jurisprudencia al respecto; suponemos que así es en estos ejemplos.

#### ¿Se pueden distribuir las obras derivadas? ¿Las licencias lo permiten, y son compatibles?

Snowball está licenciado bajo una licencia permisiva. Puede redistribuirse bajo esa licencia, y no hay restricciones a la licencia de obras derivadas. Los autores de xtas pueden licenciarlo como quieran.

#### ¿Cómo se debe licenciar la(s) obra(s) obras?

El código xtas Python y el trabajo combinado xtas están licenciados bajo la Apache License v2.0.

Si los autores xtas redistribuyen Snowball, deben hacerlo bajo la licencia BSD otorgada por autores de Snowball. (No pueden dar permisos adicionales para Snowball, ya que no poseen los derechos de autor, y las restricciones adicionales no se podrían aplicar por la misma razón.)

(rr-licencia-compatibilidad-ejemplos-apachevslgpl)=
### Apache vs. LGPL

```{figure} ../../figures/xtas-chardet96.png
---
nombre: xtas-chardet96
alt: Una ilustración del ejemplo xtas vs. chardet. Un gran rectángulo representa las xtas de trabajo combinadas. Dentro de este rectángulo, hay un amplio y bajo rectángulo en la parte superior que representa el código xtas Python, licenciado bajo la Apache License v2. Debajo de eso hay un cuadrado que contiene las palabras "chardet" y "Python lib LGPLv2.1".
---
Una ilustración del ejemplo xtas vs. chardet.
```

xtas usa [chardet](https://pypi.org/project/chardet/), una biblioteca de Python para detectar el conjunto de caracteres usado en una cadena de texto. Chardet está publicado bajo la Licencia Pública General Lesser GNU v2.1. Considerando sólo xtas y chardet, podemos responder las tres preguntas de la siguiente manera.

#### ¿Qué obras separadas están ahí, y qué se deriva de qué?

Hay tres obras: chardet, el código xtas Python y el trabajo combinado. El trabajo combinado se deriva del código chardet y xtas Python. Los demás son obras independientes.

#### ¿Se pueden distribuir las obras derivadas? ¿Las licencias lo permiten, y son compatibles?

Chardet está licenciado bajo una licencia de copyleft débil, por lo que puede ser redistribuida bajo los términos de dicha licencia. Las obras derivadas pueden ser licenciadas bajo cualquier licencia. Sin embargo, el LGPL v2.1 requiere que el destinatario pueda (y esté autorizado) modificar la biblioteca y utilizar la biblioteca modificada con el trabajo derivado.

#### ¿Cómo se debe licenciar la(s) obra(s) obras?

xtas en su conjunto, y el código xtas Python, pueden ser licenciados de la forma que deseen los autores, así que usaron la Apache License v2.0. Si distribuyen chardet, deben hacerlo bajo la licencia LGPL v2.1 otorgada por sus propietarios de derechos de autor.

(rr-licencia-compatibilidad-ejemplos-apachevsgplv2)=
### Apache vs. GPLv2

```{figure} ../../figures/xtas-unidecode96.png
---
name: xtas-unidecode96
alt: Una ilustración del ejemplo xtas vs. unidecode. El gran rectángulo representa las xtas de trabajo combinadas. Dentro de este rectángulo, hay un amplio y bajo rectángulo en la parte superior que representa el código xtas Python, licenciado bajo la Apache License v2. Debajo de eso hay un cuadrado que contiene las palabras "unidecode" y "Python lib GPLv2+".
---
Una ilustración del ejemplo xtas vs. unidecode.
```

xtas previamente usó [unidecode](https://pypi.org/project/Unidecode/), una biblioteca de Python para convertir texto codificado de acuerdo a The Unicode® Standard a una aproximación ASCII de él. Unidecode se publica bajo la Licencia Pública General GNU versión 2 o posterior (GPLv2+). Considerando sólo xtas y unidecode, podemos responder las tres preguntas de la siguiente manera.

#### ¿Qué obras separadas están ahí, y qué se deriva de qué?

Hay tres obras: unidecode, el código xtas Python y el trabajo combinado. El trabajo combinado deriva de unidecode y el código Python xtas.

Si el código de Python xtas es un trabajo derivado de unidecode no está claramente definido por la ley, y no hay jurisprudencia al respecto. La licencia Apache y la LGPL afirman explícitamente que no es para el propósito de esas licencias, pero la GPL no contiene tal cláusula.

A medida que se desarrollan por separado, y no hay código de unidecode en el código xtas, partimos de la base de que no se trata de un trabajo derivado.

#### ¿Se pueden distribuir las obras derivadas? ¿Las licencias lo permiten, y son compatibles?

Unidecode está licenciado bajo una fuerte licencia de copyleft, por lo que se redistribuye bajo los términos de dicha licencia. Las obras derivadas deben ser licenciadas bajo la misma licencia.

Unidecode está licenciado bajo la GPL versión 2 o posterior. Esto es conocido como una licencia _disyuntiva_. Los propietarios de derechos de autor de unidecode ofrecen a todos una licencia GPLv2, pero también una licencia GPLv3, e incluso proactivamente cualquier versión posterior de la GNU GPL que pueda ser creada en el futuro. Un usuario potencial puede optar por aceptar cualquiera de estas licencias, o una combinación de ellos, si quieren copiar la obra o hacer trabajos derivados.

#### ¿Cómo se debe licenciar la(s) obra(s) obras?

Si los autores xtas distribuyen unidecode, deben hacerlo bajo la versión 2 de GPL o superior, ya que la eliminación arbitraria de licencias del código de otra persona no tiene sentido. Las xtas de trabajo combinadas deben ser distribuidas bajo las mismas licencias o un subconjunto de ellas. El código xtas Python puede ser licenciado de la manera que quieran.

Los autores de xtas deben elegir una licencia para el código de xtas Python que sea compatible con al menos una de las licencias bajo las cuales se puede distribuir unidecode para que otros puedan ensamblar y distribuir trabajos combinados. El ALv2 es compatible con el GPLv3 (pero no con el GPLv2, por razones técnicas), por lo que pueden usarlo aquí.

El trabajo combinado debe ser licenciado bajo la versión 3 de GPL o posterior. Si es importante que se pueda utilizar también bajo el GPLv2 entonces los autores de xtas pueden licenciar el código Python xtas bajo ALv2 y el GPLv2 (significado, ofrecen ambas licencias, y el usuario puede optar por aceptar cualquiera o ambos), y el trabajo combinado bajo la versión 2 de la GPL o posterior.

Por último, puede decidirse más tarde que el código fuente xtas Python es un trabajo derivado de unidecode porque lo llama. Incluso si ninguno de los códigos unidecode está incluido en el trabajo, entonces los autores de xtas deben distribuir el código xtas Python bajo al menos una de las licencias GPL bajo las que se distribuye unidecode. En ese caso, pueden ofrecer xtas bajo el conjunto de licencias ALv2 y GPLv2+.

La solución más simple, en este caso, sería simplemente licenciar el código xtas Python y el trabajo derivado bajo el GPLv3.

Como probablemente está claro hasta ahora, las dependencias que están bajo una licencia fuerte de copyleft complican su vida si quiere que la gente pueda hacer obras propietarias basadas en su software.

(rr-licencia-compatibilidad-ejemplos-apachevsall)=
### Apache vs BSD vs LGPL vs GPLv2

```{figure} ../../figures/xtas-all-python-libs96.png
---
name: xtas-all-python-libs96
alt: Una ilustración de xtas y de todas las librerías Python. Un gran rectángulo representa las xtas de trabajo combinadas. Dentro de este rectángulo, hay un amplio y bajo rectángulo en la parte superior que representa el código xtas Python, licenciado bajo la Apache License v2. Debajo de esto hay tres cuadrados. El primer cuadrado contiene las palabras "Snowball" y "Python lib BSD". El segundo cuadrado contiene "chardet" y "Python lib LGPLv2.1". El tercer cuadrado contiene las palabras "unidecode" y "Python lib GPLv2+".
---
Una ilustración de las xtas y todas las librerías de Python.
```

Ahora consideraremos los tres ejemplos mencionados al mismo tiempo.

#### ¿Cuántas obras separadas existen y qué se derivan de qué?

Hay cinco obras: Snowball, chardet, unidecode, el código xtas Python y xtas el trabajo combinado. El trabajo combinado se deriva de todos sus componentes.

#### ¿Se pueden distribuir las obras derivadas? ¿Las licencias lo permiten, y son compatibles?

Los cuatro componentes que no son xtas están bajo licencias de software libre, y los autores de xtas poseen los derechos de autor del código xtas Python, para que los cinco componentes puedan ser distribuidos por los autores xtas. El BSD, LGPLv2. y GPLv2+ permiten licenciar el trabajo combinado bajo la versión 2 de GPL o superior, para que haya al menos una licencia bajo la que el trabajo combinado puede ser licenciado.

#### ¿Cómo se debe licenciar la(s) obra(s) obras?

El código xtas Python debe ser licenciado bajo la Licencia Apache v2 y el trabajo combinado bajo la versión 3 de GPL o superior. (See the {ref}`unicode example <rr-licensing-compatibility-examples-apachevsgplv2>` above for alternatives.)


### Llamar al programa externo

xtas puede ejecutar el [programa Stanford CoreNLP](https://stanfordnlp.github.io/CoreNLP/), que está escrito en Java y distribuido bajo la versión 3 de GNU GPL o posterior. Cuando el usuario llama a la función xtas correspondiente, CoreNLP es iniciado por xtas, la entrada del usuario se envía a ella a través de una tubería, y luego la salida CoreNLP se devuelve al usuario o se procesa más adelante.

```{figure} ../../figures/xtas-corenlp1-96.png
---
nombre: xtas-corenlp1-96
alt: Una ilustración del ejemplo xtas vs. CoreNLP. El cuadrado representa las xtas de trabajo combinadas. Dentro de este cuadrado, hay un amplio y bajo rectángulo en la parte superior que representa el código xtas Python, licenciado bajo la Apache License v2. Debajo de ese es un cuadrado que contiene las palabras "Stanford CoreNLP" y "Java program GPLv3+".
---
Una ilustración del ejemplo xtas vs. CoreNLP.
```

Una interpretación de esta situación es que no es diferente de llamar a una función en una biblioteca y que cualquier distribución de xtas, en su conjunto, incluida CoreNLP, debería estar por tanto bajo el GPLv3+. Contribuir a esta interpretación es el hecho de que xtas descargará e instalará CoreNLP automáticamente si es necesario.

```{figure} ../../figures/xtas-corenlp2-96.png
---
nombre: xtas-corenlp2-96
alt: Otra ilustración del ejemplo xtas vs. CoreNLP. El cuadrado a la izquierda representa las xtas de trabajo combinadas. Dentro de este cuadro, hay un rectángulo que representa el código xtas Python, licenciado bajo la Apache License v2. A la derecha es un cuadrado separado que representa a CoreNLP, con el texto "Stanford CoreNLP" y "Java programa GPLv3+". Entre los cuadrados hay dos flechas, una en la parte superior apuntando de xtas a CoreNLP, y otra en la parte inferior apuntando de CoreNLP a xtas.
---
Otra ilustración de las xtas contra CoreNLP.
```

Otra interpretación es que xtas y CoreNLP son trabajos separados y que xtas simplemente se comunica con CoreNLP sobre su interfaz de usuario estándar.

En esta interpretación xtas es un programa separado que ayuda al usuario a utilizar el programa CoreNLP del lenguaje Python, y no una obra derivada de CoreNLP. Se puede considerar xtas análoga a un instalador de paquetes y a un intérprete de comandos aquí, que claramente no son trabajos derivados de los paquetes que instalan o de los programas que inician.

Bajo esta interpretación, xtas en su conjunto (sin incluir CoreNLP) puede ser distribuido bajo cualquier licencia dada (sujeto a restricciones impuestas por sus otras dependencias, por supuesto).

En la práctica, los autores de xtas no distribuyen en absoluto CoreNLP; sólo distribuyen el código de xtas Python, bajo la Licencia Apache versión 2.


### GPLv3 vs Licencia Propietaria

En este proyecto de ejemplo queremos combinar el [modelo de circulación global OpenIFS](https://confluence.ecmwf.int/display/OIFS) con el [modelo de simulación DALES de eddy](https://github.com/dalesteam/dales). Ambos modelos están disponibles como bibliotecas, por lo que el proyecto implica combinar las bibliotecas OpenIFS y Dales en un solo programa.

(Este es un ejemplo simplificado, la realidad de este proyecto es un poco más complicado, y lo siguiente no es exactamente lo que hacemos.)

La biblioteca OpenIFS (parte del código del modelo de tiempo ECMWF) está disponible bajo una licencia propietaria que permite ejecutar el programa y realizar modificaciones privadas, pero no permite distribuir el programa ni ningún derivado. DALES se publica bajo la versión 3 de GPL.

#### ¿Cuántas obras separadas existen y qué se derivan de qué?

Hay cuatro obras: OpenIFS, DALES, el resto del programa escrito por nosotros, y la combinación de todas ellas. El trabajo combinado se deriva de sus componentes.

#### ¿Se pueden distribuir las obras derivadas? ¿Las licencias lo permiten, y son compatibles?

La licencia OpenIFS no permite la redistribución, por lo que no se puede distribuir. Las DALES se pueden distribuir, bajo el GPLv3. El resto del programa está escrito por nosotros y puede ser licenciado por nosotros si lo deseamos.

Todo el trabajo combinado no puede ser distribuido, ya que incorpora OpenIFS. Si no incluyera OpenIFS, tendría que distribuirse bajo el GPLv3, debido a la dependencia DALES.

#### ¿Podemos trabajar en esto en privado, sin distribuir nada?

La GPL permite realizar modificaciones privadas del software cubierto por él, sin restricciones, siempre que el software modificado no se distribuya en absoluto. La licencia OpenIFS también permite realizar modificaciones privadas. Así que podemos trabajar en este proyecto (y preparar y ejecutar trabajos combinados) sin violar las licencias, mientras no compartamos los resultados con nadie.

Sin embargo, si queremos colaborar con alguien fuera de nuestra organización, esto significa que intercambiamos materiales entre diferentes entidades legales, que cuenta como distribución. Podemos hacerlo con nuestro propio código (que incluso podemos publicar abiertamente bajo el ALv2) y con DALES, pero no con OpenIFS o cualquier trabajo combinado.

#### ¿Qué otras opciones existen en este tipo de situación?

Podemos tratar de dividir el sistema en programas independientes que se ejecutan en procesos separados y se comunican entre sí a través de interfaces genéricas bien documentadas. De este modo, nunca habría un trabajo combinado, sólo unos pocos trabajos independientes que intercambian información. Sin embargo, para no ser considerado un solo trabajo, no está claro hasta qué punto tienen que estar separados los programas.

También podríamos pedir permiso a los propietarios de derechos de autor de OpenIFS y DALES para compartir trabajos combinados entre nuestra organización y el exterior. Esto eliminaría toda incertidumbre, pero puede que no sea práctica en general.

Otra opción sería reemplazar una de las dependencias por una que escribimos. Esto suele ser poco práctico, tanto por las limitaciones de tiempo como porque la nueva versión no tendría el pedigrí científico de la existente.

La cuestión fundamental aquí es que la GPL intenta hacer que todos compartan los administradores del software que usamos mientras que el software propietario intenta mantener el control en manos de un único propietario.

Combinarlos en un solo proyecto es complicado y no sin riesgo legal, y hay que evitarlo. Si esto no es posible, debería andar con cuidado.
