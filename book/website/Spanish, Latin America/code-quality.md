(rr-código-calidad)=
# Calidad del código

| Prerrequisito                                                                                     | Importancia |
| ------------------------------------------------------------------------------------------------- | ----------- |
| [Experiencia con la línea de comandos](https://programminghistorian.org/en/lessons/intro-to-bash) | Útil        |

## Summary

Hay varias maneras de mejorar la calidad del software que requieren relativamente poco esfuerzo. Siguiendo un estilo de codificación, el código será más fácil de entender para ti y para otros y, por lo tanto, contendrá menos errores. Las herramientas para el análisis de código estático pueden reportar errores así como problemas de estilo sin siquiera ejecutar el código.

## Análisis de código estático

El análisis de código estático es un método que examina código y detecta vulnerabilidades de software antes de que se ejecute el código o se construya y ejecute el proyecto. Este análisis es capaz de identificar problemas de calidad, incluyendo debilidades de seguridad y errores. Además de encontrar errores, muchas de estas herramientas también pueden ayudar a mantener un estilo de codificación consistente.

### Ventajas del análisis de código estático

- Escribe un código de alta calidad: La detección temprana de posibles errores de programación ayuda a los desarrolladores a saber dónde han ido mal.

- Alcanzar la conformidad reglamentaria: Conseguir el cumplimiento de software es crucial para la estabilidad y seguridad de los productos. Con esto, los desarrolladores pueden probar de forma exhaustiva su código en un entorno no ejecutable, asegurándose de que todos los estándares de código se cumplen y de que se alcanza la seguridad empresarial.

- Acelerar ciclos de vida de desarrollo de software: El análisis de código estático asegura que el código de alta calidad llegue a los testers en menos tiempo. Esto significa que incluso los probadores tardan mucho menos tiempo en probar el producto, acelerando así los ciclos de vida del desarrollo de software.

Algunos de los `linters` más utilizados se mencionan en la tabla de abajo:

| Idioma        | Herramienta de análisis de código estático                                                                                          |
| ------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| C/C++         | [Cppcheck](http://cppcheck.sourceforge.net/), [cpplint](https://github.com/cpplintcpplint)                                          |
| Python        | [Pylint](https://pypi.org/project/pylint/), [prospector](https://prospector.readthedocs.io)                                         |
| Javascript    | [ESLint](https://eslint.org/), [JSlint](https://jslint.com/), [JSHint](https://jshint.com/)                                         |
| Java          | [Estilo de control](https://checkstyle.sourceforge.io/), [FindBugs](http://findbugs.sourceforge.net), [PMD](https://pmd.github.io/) |
| Perl          | [PerlTidy](https://metacpan.org/pod/perltidy)                                                                                       |
| R             | [lintr](https://github.com/jimhester/lintr)                                                                                         |
| Congelar/Bash | [shellcheck](https://www.shellcheck.net)                                                                                            |
