(ch-style)=
# Style Guide

Para asegurar que el libro pueda ser leído fácilmente por todos, incluyendo lectores de pantalla y hablantes de inglés no nativos, hemos compilado un conjunto de directrices para mantener un estilo consistente en todos los capítulos del libro.

Seguimos la [guía de GOV K](https://www.gov.uk/guidance/content-design/writing-for-gov-uk) para mejorar la accesibilidad de los recursos en _The Turing Way_.

## Escribe cada frase en una nueva línea (saltos de línea)

Por favor, escriba todas las frases en el archivo markdown en líneas separadas. Tener cada frase en una nueva línea no marcará ninguna diferencia en la forma en que se muestra el texto, seguirá habiendo párrafos, pero esto significará que cualquier solicitud pull será más fácil de controlar; los cambios estarán en una sola línea en lugar de en algún lugar de un párrafo. Consideremos el ejemplo de abajo.

 ```
Hoy usted es usted, eso es más cierto que verdad. No hay nadie vivo que sea usted más que usted. - Dr Seuss
```

Una solicitud de extracción sobre esto corrigiéndolo para tener un «.» después del Dr. mostraría como un cambio en todo el párrafo. Contrájalo con el siguiente ejemplo que se mostrará en línea exactamente de la misma manera, pero vería un cambio en una sola línea.

 ```
Hoy usted es usted, eso es más cierto que verdad.
No hay nadie vivo que sea usted más que usted.
- Dr Seuss
```

## Las opiniones son bienvenidas, pero ...

_El libro_ de la Vía Turística pretende ser solo *ligeramente* opinado. Si bien se permite un mayor contenido de opinión, dicho contenido debería estar claramente marcado. La mejor manera de hacerlo es mostrándolo en una caja de cotizaciones. Esto puede hacerse prefijando cada línea con el símbolo más grande `>`. Tenga en cuenta que el formato se mantendrá, así que podemos dividir cada frase en una nueva línea como se recomendó anteriormente.

```
> No los comeré en una casa,
> no los comeré con el ratón,
> no los comeré en una caja que no los comeré con zorro,
> no los comeré aquí no los comeré en ninguna parte,
> No me gustan los huevos verdes y el jamón no me gustan sam am
```

## Evitar la abreviatura latina

Por favor, no utilice abreviaturas latinas. Consulte las recomendaciones de [Gov.uk](https://www.gov.uk/guidance/style-guide/a-to-z-of-gov-uk-style) para más detalles.

Algunas de estas abreviaturas son:

```{figure} ../figures/latin-abbreviation.png
---
height: 400px
name: latin-abbreviation
alt: an image with a list of 3 latin abbreviations
---
A list of latin abbreviations for *exempli gratia* (for example), *et-cetera* (así sucesivamente), y *id est* (eso lo es).
Captura de pantalla de parte de la [lista de abreviaturas latinas comunes para el estilo APA](https://blog.campatyle.org/files/apa-latin-abbreviations-table-2.pdf).
```

En lugar de la primera abreviatura en la tabla de *exempli gratia*, que a veces pueden leer en voz alta como 'huevo' por software de lectura de pantalla, por favor use "por ejemplo" o "tales como" o "me gusta" o "incluido" - quienquiera que funcione mejor en el contexto específico.

En lugar de la segunda abreviación en la tabla de *et-cetera* para indicar lista de finalización abierta, por favor inicie la lista con palabras como "por ejemplo" o "tales como" o "me gusta" o "incluyendo".

En lugar de una tercera abreviación en la tabla para *id est* que se utiliza a menudo para aclarar una oración, intente (re)escribir oraciones para evitar la necesidad de usarlo. Si esto no es posible, utilice una alternativa como «significado» o «eso es».

Cualquier capítulo que contenga una abreviación latina fallará el flujo de trabajo de integración continua (CI) del repositorio _The Turing Way_ de GitHub de pasar con éxito, que es probado por este script [de Python](https://github.com/alan-turing-institute/the-turing-way/blob/main/tests/no-bad-latin.py).

*Para evitar que el CI falle, incluso en este capítulo hemos evitado escribir esas abreviaturas y en su lugar hemos usado una imagen para ilustrar los ejemplos anteriores.*

## Consejos

### Sangría

Sangrar el contenido siguiendo cada elemento de una lista numerada. Si el contenido no está sangrado, la numeración de la lista se restablecerá.

Por ejemplo, por favor evite:
1. Primer elemento de lista
```
Este contenido pertenece al primer elemento de la lista.
```
2. Segundo elemento de lista

En su lugar, se recomienda lo siguiente:
1. Primer elemento de lista
   ```
   Este contenido pertenece al primer elemento de la lista.
   ```

2. Segundo elemento de lista


### Enlaces externos

Escribir enlaces externos usando "http://" en lugar de "www". Esto asegura que se les reconozca correctamente como hipervínculos.
