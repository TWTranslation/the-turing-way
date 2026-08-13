(rr-code-style-and-formatting)=

# Automatic Formatting

Numerosas ferramentas existem para formatar automaticamente código, tal que segue um certo estilo.  A formatação automática permite uma maior qualidade de código, especialmente quando você está colaborando em uma equipe e outras pessoas precisam ver o código que você escreveu.
Many developers and organisations maintain standards of code formatting like **2-space** or **4-space indentation**. Usar isso é altamente recomendado já que a probabilidade de encontrar bugs (se houver) aumenta multiplicando.

[EditorConfig](https://editorconfig.org) is a language independent tool that helps maintain consistent whitespace styles for multiple people working on the same project across various editors.
A maioria dos editores suporta EditorConfig nativa ou através de um plugin.
Quase todos os IDEs e editores de texto amplamente utilizados suportam a formatação automática de código na digitação.  For example: [JetBrains IDE Suite](https://www.jetbrains.com/products.html#) and [VSCode](https://code.visualstudio.com/).

Além disso, há muitas ferramentas específicas de idioma para formatação automática de acordo com um estilo específico.
Note que os editores geralmente suportam usando essas ferramentas diretamente do ambiente de edição.

| Language      | Ferramenta de Formatação                                                                                    |
| ------------- | ----------------------------------------------------------------------------------------------------------- |
| C/C++         | [GNUIndent](http://www.gnu.org/software/indent/), [GreatCode](http://sourceforge.net/projects/gcgreatcode/) |
| Python        | [Black](https://black.readthedocs.io), [yapf](https://pypi.org/project/yapf/)                               |
| Javascript    | [beautifier.io](https://beautifier.io/)                                                     |
| Java          | [Google Java format](https://github.com/google/google-java-format), [JIndent](http://www.jindent.com/)      |
| MATLAB/Octave | [MISS_HIT](https://florianschanda.github.io/miss_hit/)                                 |
| PHP           | [phpStylist](http://sourceforge.net/projects/phpstylist/)                                                   |
| Perl          | [PerlTidy](http://perltidy.sourceforge.net/)                                                                |
| R             | [formatR](https://yihui.org/formatr/)                                                                       |
| Shell/Bash    | [ShellIndent](http://www.bolthole.com/AWK.html)                                                             |
| CSS           | [CSSTidy](http://csstidy.sourceforge.net/)                                                                  |
| HTML          | [Tidy](http://tidy.sourceforge.net/)                                                                        |

**Quick Tip**: If you use VS Code as your primary text editor, you can enable automatic code formatting right into your browser. Open your preferences page in JSON mode and add the following line:

```
"editor.formatOnSave": true,
```

(rr-code-style-linting-tools)=

## Linting Tools

Linting tools, also known as linters, analyze your code to find potential errors, style violations, and other issues without running the code.
These tools help maintain code quality and consistency across your projects.

### lintr (R)

[lintr](https://cran.r-project.org/web/packages/lintr/lintr.pdf) is an R package that checks your code using a variety of style guidelines.
Ele pode ser instalado a partir do CRAN.
The function `lint` takes a filename as an argument and a list of 'linters' that it should check your code against.
These range from whitespace conventions to checking that curly brackets do not have their own lines.
A saída fornece uma lista de marcadores com recomendações para alterar a formatação do seu código linha por linha, o que significa que é mais usado cedo e frequentemente no seu projeto.

```{figure} ../../../figures/lintr-output.png
---
height: 500px
name: lintr_output
alt: lintr output showing recommendations to add space, remove commented code, remove training whitespace, have character size per line less than 80 where needed in the input code.
---
An example of how the lintr output may look like for an input file with R code.
```

For more details, please visit the [GitHub repository](https://github.com/jimhester/lintr).

### Autopep8 (Python)

[Autopep8](https://pypi.org/project/autopep8/) is a Python module that can be run from the terminal and automatically formats a file to [pycodestyle](https://github.com/PyCQA/pycodestyle) (formerly called pep8) guidelines.  
It is available on [pypy](https://pypi.org) and can be installed using pip.

```
# Install autopep8
pip install --upgrade autopep8
```

Você pode modificar um arquivo no lugar executando o seguinte comando:

```
autopep8 --in-place --aggressive --aggressive <filename>
```

Até certo ponto, o módulo também pode ser usado em scripts R!

### Black (Python)

[Black](https://black.readthedocs.io/en/stable/) is an auto-formatting package for Python.
Isso significa que vai mudar automaticamente seu código para aderir a certas diretrizes, como espaços em torno de operadores e remover espaços em branco desnecessários.
It is also consistent, so that the code that you and your collaborators work on will look the same once black formats it.
Isso não muda o que o código faz.
Isso pode reduzir o tempo gasto fazendo as alterações acima no código.

### Static Code Analysis Tools

Static code analysis tools examine code and detect software vulnerabilities before your code is executed or the project is built and deployed.
In addition to finding bugs, many of these tools can also help maintain a consistent coding style.

Some of the most widely used static analysis tools are mentioned in the table below:

| Language   | Static code analysis tool                                                                                                    |
| ---------- | ---------------------------------------------------------------------------------------------------------------------------- |
| C/C++      | [Cppcheck](http://cppcheck.sourceforge.net/), [cpplint](https://github.com/cpplintcpplint)                                   |
| Python     | [Pylint](https://pypi.org/project/pylint/), [prospector](https://prospector.readthedocs.io)                                  |
| Javascript | [ESLint](https://eslint.org/), [JSlint](https://jslint.com/), [JSHint](https://jshint.com/)                                  |
| Java       | [Checkstyle](https://checkstyle.sourceforge.io/), [FindBugs](http://findbugs.sourceforge.net), [PMD](https://pmd.github.io/) |
| Perl       | [PerlTidy](https://metacpan.org/pod/perltidy)                                                                                |
| R          | [lintr](https://github.com/jimhester/lintr)                                                                                  |
| Shell/Bash | [shellcheck](https://www.shellcheck.net)                                                                                     |

(rr-code-style-service)=

## Online Services Providing Software Quality Checks

Existem vários serviços web que analisam o código e tornam a qualidade do código visível.
Geralmente, esses serviços rodam uma ou mais ferramentas de análise de código estático que também podem ser usadas na linha de comando ou integradas ao seu editor no seu próprio computador.
Usar um serviço de qualidade de código que se integra a um repositório GitHub/GitLab é altamente recomendado, pois ele pode detectar e comunicar problemas de qualidade em pull requests.

Serviços de análise da qualidade do código são sites que geralmente oferecem os seguintes recursos:

- Analisam automaticamente o código após ele ser enviado para o GitHub/GitLab.
- Geralmente são gratuitos para projetos de código aberto.
- Suportam várias linguagens de programação, mas nem todas terão o mesmo nível de recursos.
- Atribuem uma nota ou pontuação para a qualidade do código no repositório.
- Geram uma lista de problemas no código, agrupados por gravidade.
- Permitem detalhar a localização exata de cada problema.
- Utilizam uma lista padrão de verificações baseadas nas melhores práticas recomendadas pelo provedor do serviço.
- Podem ser configurados para tornar a lista de verificações mais rigorosa ou mais flexível
- Podem ser configurados para ignorar arquivos ou extensões
- Podem ler um arquivo de configuração diretamente do repositório.
- Acompanham problemas ao longo do tempo e enviam alertas quando a qualidade do código piora
- Opcionalmente, geram relatórios sobre a cobertura de código a partir de uma build de integração contínua (CI).
- Implantam automaticamente o repositório e geram uma build de prévia para revisão antes do lançamento final.

For a list of choices see [shields.io](https://shields.io/badges) or [this list of services that are free for open source projects](https://github.com/ripienaar/free-for-dev#code-quality).