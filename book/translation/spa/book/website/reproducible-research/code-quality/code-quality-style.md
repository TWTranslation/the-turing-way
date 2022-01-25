(estilo de código rr)=
# Estilo de código y formato

Un estilo de codificación es un conjunto de convenciones sobre cómo formatear el código. Por ejemplo, ¿a qué llamas tus variables? ¿Utiliza espacios o pestañas para la sangría? ¿Dónde ponen sus comentarios? El uso consistente del mismo estilo a lo largo de su código hace que sea más fácil de leer. El código que es fácil de leer es más fácil de entender por usted, así como por posibles colaboradores. Por lo tanto, adherirse a un estilo de codificación reduce el riesgo de errores y hace más fácil trabajar juntos en software. [¿Por qué Coding Style Matters](http://coding.smashingmagazine.com/2012/10/25/why-coding-style-matters/) es un buen artículo sobre por qué los estilos de codificación importan y cómo aumentan la calidad del software.

Por ejemplo, [PEP8](https://www.python.org/dev/peps/pep-0008/) es el estilo de codificación Python más utilizado y [ECMAScript 6](http://es6-features.org/) aka [ES6](http://es6-features.org/) es la especificación de script estandarizado por ECMA Internacional para la programación en Javascript.

Para guías de estilo comúnmente usadas para varios lenguajes de programación vea las Guías de idioma [](https://guide.esciencecenter.nl/best_practices/language_guides/languages_overview.html). Google también tiene una guía de estilo [](https://code.google.com/p/google-styleguide/) para muchos idiomas que se utilizan en proyectos de código abierto originarios de Google.

(rr-código-estilo-y-formato)=
## Formato automático

Existen numerosas herramientas para formatear automáticamente el código de tal forma que siga un estilo determinado. El formato automático permite una mayor calidad de código, especialmente cuando estás colaborando en un equipo y otras personas necesitan mirar el código que has escrito. Muchos desarrolladores y organizaciones mantienen estándares de formato de código como **2 espacios** o **4 espacios de sangría**. El uso de estos es altamente recomendable, ya que la probabilidad de encontrar errores (si los hay) aumenta múltiple.

[EditorConfig](https://editorconfig.org) es una herramienta independiente de lenguaje que ayuda a mantener estilos consistentes de espacios en blanco para varias personas que trabajan en el mismo proyecto en varios editores. La mayoría de los editores soportan EditorConfig ya sea nativamente o a través de un plugin. Casi todos los IDEs y editores de texto ampliamente utilizados soportan el formato automático de código al teclear. Por ejemplo: [JetBrains IDE Suite](https://www.jetbrains.com/products.html#), [VSCode](https://code.visualstudio.com/) y [Atom](https://atom.io/).

Además de eso, hay muchas herramientas específicas de lenguaje para formatear código de forma automática de acuerdo a un estilo particular. Tenga en cuenta que los editores a menudo soportan el uso de estas herramientas directamente desde el entorno de edición.

| Idioma        | Herramienta de Forma                                                                                            |
| ------------- | --------------------------------------------------------------------------------------------------------------- |
| C/C++         | [GNUindent](http://www.gnu.org/software/indent/), [Codigo genial](http://sourceforge.net/projects/gcgreatcode/) |
| Python        | [Negro](https://black.readthedocs.io), [yapf](https://pypi.org/project/yapf/)                                   |
| Javascript    | [hermoso.io](https://beautifier.io/)                                                                            |
| Java          | [formato Google Java](https://github.com/google/google-java-format), [JIndent](http://www.jindent.com/)         |
| PHP           | [phpStylist](http://sourceforge.net/projects/phpstylist/)                                                       |
| Perl          | [PerlTidy](http://perltidy.sourceforge.net/)                                                                    |
| Congelar/Bash | [Sangría](http://www.bolthole.com/AWK.html)                                                                     |
| CSS           | [CSSTidy](http://csstidy.sourceforge.net/)                                                                      |
| HTML          | [Dibujo](http://tidy.sourceforge.net/)                                                                          |

**Consejo rápido**: Si utiliza el código VS como su editor de texto principal, puede habilitar el formato automático de código directamente en su navegador. Abre tu página de preferencias en modo JSON y añade la siguiente línea:

```
"editor.formatOnSave": verdadero,
```

(rr-código-servicio-estilo)=
## Servicios en línea que proporcionan comprobaciones de calidad de software

Existen varios servicios web que analizan código y hacen visible la calidad del código. Generalmente estos servicios ejecutan una o más herramientas estáticas de análisis de código que también pueden ser usadas desde la línea de comandos o integradas en su editor en su propio equipo. El uso de un servicio de calidad de código que se integra con un repositorio de GitHub/GitLab es altamente recomendable, ya que puede detectar y comunicar problemas de calidad en solicitudes de extracción.

Los servicios de análisis de calidad de código son sitios web que a menudo ofrecen las siguientes características:

- Analiza automáticamente tu código después de presionarlo en GitHub/GitLab
- Generalmente gratis para proyectos de código abierto
- Soporta múltiples lenguajes de programación, pero no todos los idiomas tendrán el mismo nivel de características
- Calificación o puntuación para la calidad de todo el código en el repositorio
- Lista de problemas con el código, agrupados por gravedad
- Perforar hasta la ubicación de la incidencia
- Lista predeterminada de comprobaciones que el proveedor de servicios encuentra la mejor práctica
- Puede configurarse para hacer la lista de comprobaciones más estricta o relajada
- Se puede configurar para ignorar archivos o extensiones
- Puede leer un archivo de configuración desde el repositorio
- Rastrear problemas con el tiempo y enviar alertas cuando la calidad se disuelve
- Informes opcionales sobre la cobertura de código generada por un CI build
- Despliega automáticamente el repositorio y genera una previsualización de compilación para su revisión antes de la versión final.

Para una lista de opciones vea [shields.io](https://shields.io/category/analysis) o [esta lista de servicios gratuitos para proyectos de código abierto](https://github.com/ripienaar/free-for-dev#code-quality).
