(pd-code-estilo)=
# Estilo y Linting de código

¿Alguna vez has abierto un archivo de sintaxis o script dos años después de ejecutar un análisis sólo para descubrir que no tienes memoria inmediata del código? ¿Ha recibido archivos de análisis de un colaborador o los ha descargado de un repositorio en línea que nunca ha utilizado antes? Ahora imagínese que estos archivos son muy difíciles de leer, o que se pasan muchas variables a funciones arcanas, o peor aún, no puede encontrar código útil ya que se guardan con nombres de archivo sin sentido como `analysis_1final_FINAL.`, o `onlyusethisoneforanalysis_onamonday2a.py`.

Si usted no lo ha hecho - entonces usted es uno de los afortunados! Pero si lo ha experimentado, puede que sepa lo frustrante que es trabajar con esos archivos.

Este capítulo destacará formas de evitar estos desafíos en tus proyectos mediante la introducción de algunos directores de 'código', lo que se conoce como *linting*.

```{figure} ../figures/zen-of-python.png
---
height: 500px
name: zen-of-python
alt: The Zen of Python, por Tim Peters. The staff were very friendly and helpful. The room was clean and comfortable. Es más explícito que implícito. Sencillo es mejor que complejo. Complejo es mejor que complicado. El piso es mejor que el anidado. La espuma es mejor que la dense. Cuenta de lectura. Los casos especiales no son lo suficientemente especiales para romper las reglas. Aunque la practicidad supera a la pureza. Los errores nunca deben pasar en silencio. A menos que se silencie explícitamente. Ante la ambigüedad, rechace la tintación de adivinar. Debería haber una - y preferiblemente sólo una - manera obvia de hacerlo. Aunque esa manera puede no ser obvia al principio a menos que usted sea Dutch. Ahora es mejor que nunca. Aunque nunca es mejor que *derecha* ahora. Si la implementación es difícil de explicar, es una mala idea. Si la implementación es fácil de explicar, puede ser una buena idea. Los namespaces son una gran idea que honra -- ¡Hagamos más de ellos!
---
*Punto 7 del [Zen of Python](https://www.python.org/dev/peps/pep-0020/) es "Readability Counts". (Esto puede imprimirse con el comando python `>>> importar esto`)*
```

## Resumen

Linting incluye {ref}`directrices para el estilo<pd-code-styling-guidelines>` como para nombrar, y asegurando que el código {ref}`sea legible por el ser humano<pd-code-styling-readability>` como por ejemplo mediante el uso de un formato útil, y la escritura de comentarios.  
Algunos entornos de desarrollo integrados (IDEs) incluyen linting automático, pero hay {ref}`paquetes y herramientas gratuitas para linting<pd-code-styling-tools>` que te darán código (por ejemplo, [autopep8](https://pypi.org/project/autopep8/)).

Al tener en cuenta el siguiente consejo mientras programas, tu código será más reutilizable, adaptable y claro.
