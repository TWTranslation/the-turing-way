(ch-style-citing)=
# Citas y referencias

Mantenemos un archivo [BibTeX](http://www.bibtex.org/) centralizado que contiene todas las referencias. El archivo se encuentra dentro de este repositorio en el archivo [`./book/website/_bibliography/references.bib`][turingbib].

## Básicos de archivo BibTeX

Los archivos BibTeX son una forma de formatear listas de referencias de una manera estructurada. Los elementos básicos de una entrada incluyen un tipo de referencia, una clave de cita única, y una serie de pares clave-valor que describen la referencia (por ejemplo, autor o título).

Hay un número de palabras clave para diferentes tipos de referencias en BibTeX. Por suerte, hay herramientas para ayudar a formatear referencias en la sintaxis BibTeX. Si conoces el DOI para tu referencia, puedes usar [doi2bib](https://doi2bib.org/) para ayudar a poblar una entrada BibTeX lo suficientemente buena. Por ejemplo, [aquí](https://doi2bib.org/bib/https://doi.org/10.5281/zenodo.3233853) es una entrada BibTeX suficientemente buena para el propio manual de Turing Way. Otra buena herramienta es [Google Académico](https://scholar.google.com/), donde se busca una referencia, haga clic en las grandes comillas dobles `"`y luego haga clic en "BibTeX" cerca de la parte inferior.

A continuación se muestran ejemplos de una referencia con formato BibTeX.

## Añadiendo una nueva referencia en `references.bib`

Puede editar el archivo de referencia localmente utilizando un método de lo siguiente:

- Editar [`references.bib`][turingbib] directamente usando un editor de texto
- Editar [`references.bib`][turingbib] directamente usando un programa de gestión como [JabRef](http://www.jabref.org/) (Linux, Windows, macOS) o [BibDesk](https://bibdesk.sourceforge.io/) (macOS)

Utilizamos un formato bibtex estándar para añadir una nueva entrada. Por ejemplo, hay una entrada en el archivo [`references.bib`][turingbib] como:

```
@article{baker2016reproducibility,
    author={Baker, Monya},
    title={crisis de reproducibilidad? ,
    journal={Nature},
    volumen={533},
    número ={26},
    páginas={353--66},
    año ={2016}
}
```

**Termina la edición añadiendo una nueva entrada al final del archivo.**

## Guía de estilo de clave de cita

Recomendamos utilizar la siguiente estructura para las claves de cita:

```
AutorYYYword
```

Donde:

1. `Autor` es el apellido del primer autor (`Pasador` arriba)
2. `AAAAA` es el año (`2016` anterior)
3. `palabra` es la primera palabra significativa en el título (`reproducibilidad` arriba). Tenga en cuenta que esto es ·ectivo―elija un nombre que haga fácil recordar la referencia cuando vea la clave de cita.

## Añadir una nueva referencia en el texto

Para incluir una cita en su contenido, seguimos la recomendación de [Jupyter Book](https://jupyterbook.org/content/citations.html) que usa [`sphinxcontrib-bibtex`](https://sphinxcontrib-bibtex.readthedocs.io/en/latest/) extensión.

Los conceptos clave son:

- Incluye una referencia usando usando:
```
{cite:ps}`CITEKEY`

```
Aquí `CITEKEY` es la clave de cita correspondiente en [`references.bib`][turingbib].
- También puede incluir múltiples citas en una sola vez separando los CITEKEYs por una coma:
```
{cite:ps}`CITEKEY1,CITEKEY2,CITEKEY3`
```

Citaremos el artículo que editamos anteriormente en el archivo [`reference.bib`][turingbib] utilizando:

```
{cite:ps}`Kuula2010archiving`
```

Esto aparecerá en tu capítulo como {cite:ps}`baker2016reproducibility`.

La entrada completa de bibliografía está disponible al final de este libro (ver {ref}`recursos <bibliography>`) utilizando las directivas:

    ```{bibliography} ../_bibliography/references.bib

    ```

Para el uso avanzado, consulte la documentación [de sphinxcontrib-bibtex](https://sphinxcontrib-bibtex.readthedocs.io/en/latest/usage.html), que es una extensión Sphinx para citas estilo BibTeX.

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib
