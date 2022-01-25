(estilo rr-coder)=
# Estilo e Formatação de Código

Um estilo de codificação é um conjunto de convenções sobre como formatar código. Por exemplo, como se chama as suas variáveis? Você usa espaços ou guias para recuo? Onde você coloca os comentários? Usar consistentemente o mesmo estilo em todo o seu código facilita a leitura. Código que é fácil de ler é mais fácil de entender por você e por possíveis colaboradores. Por conseguinte, aderir a um estilo de codificação reduz o risco de erros e torna mais fácil trabalhar em conjunto em software. [Por que a codificação de estilos é importante](http://coding.smashingmagazine.com/2012/10/25/why-coding-style-matters/) é um artigo legal sobre por que os estilos de codificação importam e como eles aumentam a qualidade do software.

For example, [PEP8](https://www.python.org/dev/peps/pep-0008/) is the most widely used Python coding style and [ECMAScript 6](http://es6-features.org/) aka [ES6](http://es6-features.org/) is the scripting-language specification standardized by ECMA International for programming in Javascript.

Para guias de estilo comumente usados para vários idiomas de programação, consulte os [Guias de Idiomas](https://guide.esciencecenter.nl/best_practices/language_guides/languages_overview.html). O Google também tem um guia de estilo [](https://code.google.com/p/google-styleguide/) para vários idiomas que são usados em projetos de código aberto originários do Google.

(rr-code-style-and-formatting)=
## Formatação automática

Numerosas ferramentas existem para formatar automaticamente código, tal que segue um certo estilo. A formatação automática permite uma maior qualidade de código, especialmente quando você está colaborando em uma equipe e outras pessoas precisam ver o código que você escreveu. Muitos desenvolvedores e organizações mantêm os padrões de formatação de código como **2 espaços** ou **recuo de 4 espaços**. Usar isso é altamente recomendado já que a probabilidade de encontrar bugs (se houver) aumenta multiplicando.

[EditorConfig](https://editorconfig.org) é uma ferramenta independente de linguagem que ajuda a manter estilos consistentes de espaços em branco para várias pessoas que trabalham no mesmo projeto em vários editores. A maioria dos editores suporta EditorConfig nativa ou através de um plugin. Quase todos os IDEs e editores de texto amplamente utilizados suportam a formatação automática de código na digitação. Por exemplo: [JetBrains IDE Suite](https://www.jetbrains.com/products.html#), [VSCode](https://code.visualstudio.com/) e [Atom](https://atom.io/).

Além disso, há muitas ferramentas específicas de idioma para formatação automática de acordo com um estilo específico. Note que os editores geralmente suportam usando essas ferramentas diretamente do ambiente de edição.

| IDIOMA          | Ferramenta Formatada                                                                                        |
| --------------- | ----------------------------------------------------------------------------------------------------------- |
| C/C++           | [GNUIndent](http://www.gnu.org/software/indent/), [GreatCode](http://sourceforge.net/projects/gcgreatcode/) |
| Python          | [Preto](https://black.readthedocs.io), [yapf](https://pypi.org/project/yapf/)                               |
| Javascript      | [embelezador.io](https://beautifier.io/)                                                                    |
| Java            | [Formato Google Java](https://github.com/google/google-java-format), [JIndent](http://www.jindent.com/)     |
| PHP             | [phpStylist](http://sourceforge.net/projects/phpstylist/)                                                   |
| Perl            | [PerlTidy](http://perltidy.sourceforge.net/)                                                                |
| Concusso/Concha | [Concussão](http://www.bolthole.com/AWK.html)                                                               |
| CSS             | [CSSTidy](http://csstidy.sourceforge.net/)                                                                  |
| HTML            | [Divisor](http://tidy.sourceforge.net/)                                                                     |

**Dica Rápida**: Se você usar o VS como seu editor principal de texto, você pode ativar a formatação automática de código diretamente no seu navegador. Abra sua página de preferências no modo JSON e adicione a seguinte linha:

```
"editor.formatOnSave": true,
```

(rr-code-style-service)=
## Serviços on-line que fornecem verificações de qualidade de software

Existem vários serviços web que analisam o código e tornam a qualidade do código visível. Geralmente, esses serviços rodam uma ou mais ferramentas de análise de código estático que também podem ser usadas na linha de comando ou integradas ao seu editor no seu próprio computador. Usar um serviço de qualidade de código que se integra a um repositório GitHub/GitLab é altamente recomendado, pois ele pode detectar e comunicar problemas de qualidade em pull requests.

Os serviços de análise de qualidade de código são sites que muitas vezes oferecem os seguintes recursos:

- Analise automaticamente seu código após enviá-lo para o GitHub/GitLab
- Geralmente gratuito para projetos de código aberto
- Suporte a várias linguagens de programação, mas nem todas as linguagens terão o mesmo nível de recursos
- Nota ou pontuação para a qualidade de todo o código no repositório
- Lista de issues com o código, agrupada por severidade
- Exercício para baixo na localização da issue
- Lista padrão de verificações que o provedor de serviço encontra as melhores práticas
- Pode ser configurado para tornar a lista de verificações mais rigorosa ou relaxada
- Pode ser configurado para ignorar arquivos ou extensões
- Pode ler um arquivo de configuração do repositório
- Acompanhe problemas ao longo do tempo e envie alertas quando a qualidade se deteriorar
- Opcionalmente relatórios de cobertura de código gerados por uma compilação CI
- Implementar automaticamente o repositório e gera uma compilação pré-visualizada para revisão antes da versão final.

Para obter uma lista de escolhas, consulte [shields.io](https://shields.io/category/analysis) ou [esta lista de serviços que são gratuitos para projetos de código aberto](https://github.com/ripienaar/free-for-dev#code-quality).
