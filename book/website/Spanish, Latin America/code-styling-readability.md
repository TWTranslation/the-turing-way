(pd-code-estilo-legibilidad)=
# Escribir Código Legible Humano

Escribir código claro, bien comentado, legible y reutilizable beneficia no sólo a usted, sino también a la comunidad (o al público) para la que lo está desarrollando. Este puede ser su laboratorio, colaboradores externos, partes interesadas, o puede estar escribiendo software de código abierto para la distribución global. Sea cual sea la escala en la que trabajes, la legibilidad cuenta!

Aquí hay algunos aspectos a tener en cuenta al hacer que tu código sea fácil de leer por otros.

## Longitud de línea

Existe cierto acuerdo sobre la longitud de las líneas de codificación. PEP8 sugiere un máximo de 79 caracteres por línea y 80 por la guía de estilo R. Esto significa que las líneas pueden caber fácilmente en una pantalla, y se pueden abrir múltiples ventanas de codificación. Se argumenta que si su línea es más larga que ésta, entonces su función es demasiado compleja y debería separarse. Este es el quid del método Tidy de programación R, que incluso tiene un operador especial `%>%` que pasa el objeto anterior a la siguiente función, para que sean necesarios menos caracteres:

```r
recoded_melt_dat <- read_csv('~/files/2019-05-17_dat.csv') %>%
recode() %>%
melt() #Ahora tenemos un nombre de datos recobrado y fundido llamado recoded_melt_dat
```

## Comentando

Los comentarios han sido descritos como "Love letters to your future self" por Jon Peirce, creador de PsychoPy. Los comentarios pueden ser bloqueados o en línea.  
Las directrices PEP8 tienen sugerencias firmes de que los comentarios de bloque deben ser oraciones completas. tienen dos espacios después de un periodo, y siguen una guía de estilo de fecha (Strunk y Blanco). Afortunadamente, los elementos del estilo ya no "requieren" un énfasis injusto en los pronombres masculinos. Cuando los comentarios en línea deben ser utilizados con esparcimiento. Mantener comentarios claros y concisos no sólo le permite hacer un seguimiento de las decisiones que ha tomado. qué funciones particulares hacen, y qué variables se utilizan, también permite a otras personas ver sus procesos de pensamiento. La sintaxis para comentarios varía con lenguajes de programación. En R y Python, se utiliza un hashtag mientras que en C y Java se utilizan los corchetes `/* /*` y en C++/C# una doble barra `//` comenta una sola línea.

En Python:
```python
veces = 10 # Establecer entero
mi_variable = "mi variable es %s veces mejor que la suya" %times #Establecer mi_variable en una cadena
print(mi_variable) #imprimir el valor
```

En R:
```r
my_func = function(number){ #R function

(número * 5) - 2
}
print(my_func(2))
```

Para comentarios más largos, la información puede ser incluida sobre el bloque de código. En Python, puedes usar las marcas de triple voz como paréntesis. Esto comentará cualquier cosa intermedia.

```python
"""
La siguiente función toma un número, lo multiplica por 5 y resta 2.
Esto puede parecer inútil, pero es sencillo para la manifestación.
"""
def myfunc(numb): #python function
      return((numb*5)-2)
print(myfunc(8))
```
Los bloques más largos de comentarios no están disponibles en R. Hay maneras de evitar esto, como configurar una cadena, o una declaración if(false):

```r
"1 - Esta es una cadena. No será evaluado por R, y no planteará
y excepción"

if(false){
2 - Todo tu comentario puede ir aquí y nunca será evaluado.
También significa que se mantiene la sugerencia de 80 caracteres de longitud de línea.
También, en RStudio puede plegar el comentario usando la flecha junto al
número de línea de la proposición si.
}
```

O comentando las líneas individuales:

```r
#Este es también un comentario muy largo
#que cubre muchas líneas.
```
Su IDE probablemente tendrá un atajo de teclado para comentar los bloques.

## Sangría

La guía de estilo R sugiere que las líneas deben separarse:
```r
por
  dos espacios
```
Y no
```r
 una mezcla
   de
    pestañas
      y espacios.
```

Obviamente, a veces los argumentos de una función pueden expandir 80 caracteres. En este caso, se recomienda que la segunda línea se indente al principio de los argumentos:

```r
my_variable <- a_really_long_function(data = "2019-05-17_Long_File_Name_2",
                                      encabezado = TRUE, verboso = TRUE)

```

Por supuesto, estas son sólo directrices, y deberías elegir elementos que se ajusten a tu estilo de codificación. Sin embargo, y una vez más, es importante asegurarse de que usted es consistente cuando colabora, y puede acordar un estilo común. Podría ser útil crear un archivo readme que describa tu estilo de codificación para que los colaboradores o colaboradores puedan seguir a tu liderazgo.

### ...terminar. ...terminar.  ...o final.\\n

Si está compartiendo archivos de texto o trabajando colaborativamente en manuales o documentos, entonces hay mucha controversia en torno a si utilizar uno o dos espacios después de un período. Al usar Markdown, puede ser más claro incluir una nueva línea después de cada frase. Este capítulo (y la mayoría, si no todos, de este libro) tiene una nueva línea después de cada frase que hace el texto en bruto más fácil de leer, revisar y resolver el problema del espacio.

```{figure} ../../figures/xkcd1285.png
---
height: 500px
name: xkcd1285
alt: Dos grupos con diferentes banderas y peleando, Uno dice "dos espacios después de un período" y otro dice "un espacio después de un período". Mientras que una persona está con su bandera que dice "Salto de línea después de cada frase"
---
*Salto de línea después de cada frase hace fácil revisar y comentar - [XKCD Link](https://www. xplainxkcd.com/wiki/index.php/1285:_Third_Way)*
```
