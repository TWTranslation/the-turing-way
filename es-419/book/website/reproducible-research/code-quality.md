(rr-code-quality)=

# Calidad del código

| Prerequisite                                                               | Importance |
| -------------------------------------------------------------------------- | ---------- |
| {ref}`Experience with the command line<rr-overview-resources-commandline>` | Helpful    |

## Summary

Hay varias formas de mejorar la calidad del software que requieren relativamente poco esfuerzo.
Al seguir un estilo de codificación, el código será más fácil de entender para ti y para los demás y, por tanto, contendrá menos errores.
Herramientas para análisis de código estático pueden reportar errores así como problemas de estilo sin siquiera ejecutar el código.

## Análisis de código estático

El análisis de código estático es un método que examina código y detecta vulnerabilidades de software antes de que se ejecute el código o se construya y ejecute el proyecto.
Este análisis es capaz de identificar problemas de calidad, incluyendo debilidades de seguridad y errores.
Además de encontrar errores, muchas de estas herramientas también pueden ayudar a mantener un estilo de codificación consistente.

(rr-code-quality-advantages)=

### Ventajas del análisis de códigos estáticos

- Escribir código de alta calidad: La detección temprana de posibles errores de programación ayuda a los desarrolladores a saber en qué se equivocaron.

- Lograr el cumplimiento de la normativa: Lograr la conformidad del software es crucial para la estabilidad y la seguridad de los productos.
  Con esto, los desarrolladores pueden probar exhaustivamente su código en un entorno que no es de tiempo de ejecución, lo que garantiza el cumplimiento de todas las normas de código y la seguridad de la empresa.

- Acelerar ciclos de vida de desarrollo de software: El análisis de código estático asegura que el código de alta calidad llegue a los testers en menos tiempo.
  Esto significa que incluso los testers tardan mucho menos tiempo en probar el producto, acelerando así los ciclos de vida del desarrollo de software.

Some of the most widely used `linters` are mentioned in the below table:

| Language   | Herramienta de análisis del código estático                                                                                  |
| ---------- | ---------------------------------------------------------------------------------------------------------------------------- |
| C/C++      | [Cppcheck](http://cppcheck.sourceforge.net/), [cpplint](https://github.com/cpplintcpplint)                                   |
| Python     | [Pylint](https://pypi.org/project/pylint/), [prospector](https://prospector.readthedocs.io)                                  |
| Javascript | [ESLint](https://eslint.org/), [JSlint](https://jslint.com/), [JSHint](https://jshint.com/)                                  |
| Java       | [Checkstyle](https://checkstyle.sourceforge.io/), [FindBugs](http://findbugs.sourceforge.net), [PMD](https://pmd.github.io/) |
| Perl       | [PerlTidy](https://metacpan.org/pod/perltidy)                                                                                |
| R          | [lintr](https://github.com/jimhester/lintr)                                                                                  |
| Shell/Bash | [shellcheck](https://www.shellcheck.net)                                                                                     |
