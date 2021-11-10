(rr-code-quality)=
# Qualidade do código

| Pré-requisito                                                                                   | Importância |
| ----------------------------------------------------------------------------------------------- | ----------- |
| [Experimente com a linha de comando](https://programminghistorian.org/en/lessons/intro-to-bash) | Útil        |

## Summary

Existem várias maneiras de melhorar a qualidade do software que requerem relativamente pouco esforço. Seguindo um estilo de codificação, o código será mais fácil de entender para você e para outros e, portanto, ele conterá menos bugs. Ferramentas para análise de código estático podem reportar erros, bem como problemas de estilo sem mesmo executar o código.

## Análise de código estático

Análise de código estático é um método que examina o código e detecta vulnerabilidades de software antes do seu código ser executado ou do projeto ser construído e implantado. Esta análise é capaz de identificar questões de qualidade, incluindo fragilidades e erros de segurança. Além de encontrar bugs, muitas dessas ferramentas também podem ajudar a manter um estilo de codificação consistente.

### Vantagens da análise de código estático

- Escreva código de alta qualidade: detecção precoce de possíveis erros de programação ajuda os desenvolvedores a saber onde eles deram errado.

- Atingir a conformidade regulamentar: alcançar a conformidade de software é crucial para a estabilidade e segurança dos produtos. Com isso, os desenvolvedores podem testar seu código de forma abrangente em um ambiente não em tempo de execução, garantindo que todos os padrões de código sejam cumpridos e que a segurança da empresa seja alcançada.

- Acelerar os ciclos de desenvolvimento de software: Análise de código estático garante que código de alta qualidade chegue aos testadores em menos tempo. Isso significa que até os testadores levam muito menos tempo para testar o produto, acelerando assim o desenvolvimento de ciclos vitalícios.

Alguns dos `linters mais utilizados` são mencionados na tabela abaixo:

| IDIOMA          | Ferramenta de análise de código estática                                                                                           |
| --------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| C/C++           | [Cppcheck](http://cppcheck.sourceforge.net/), [cpplint](https://github.com/cpplintcpplint)                                         |
| Python          | [Pylint](https://pypi.org/project/pylint/), [prospector](https://prospector.readthedocs.io)                                        |
| Javascript      | [ESLint](https://eslint.org/), [JSlint](https://jslint.com/), [JSHint](https://jshint.com/)                                        |
| Java            | [Checkstyle](https://checkstyle.sourceforge.io/), [Encontrar Bugs](http://findbugs.sourceforge.net), [PMD](https://pmd.github.io/) |
| Perl            | [PerlTidy](https://metacpan.org/pod/perltidy)                                                                                      |
| R               | [lintr](https://github.com/jimhester/lintr)                                                                                        |
| Concusso/Concha | [shellcheck](https://www.shellcheck.net)                                                                                           |
