(rr-reviewing-workflow)=

# Workflows típicos

_This chapter has particular reference to Github_

```{figure} ../../../figures/readable-code.*
---
height: 500px
name: readable-code
alt: This image highlights the importance of code readability.
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Avaliações Formal vs Informais

For a formal review process to work effectively, it's imperative that the project is using good {ref}`version control<rr-vcs>`.
However, it bears stating that **all review of code is very valuable**, including informal or ad-hoc approaches. Na verdade, esse tipo de revisão informal "sobre o ombro" por pares pode formar um componente preliminar fundamental, mesmo em pipelines de revisão altamente formalizadas, poupando muito estresse e argumentando assim que começar a fase formal.

This section focuses on the typical workflows behind a formal review process, as commonly implemented within [Github](https://github.com/).
Other coding environments like [BitBucket](https://bitbucket.org/) or [GitLab](https://about.gitlab.com/) could have conceptually similar mechanisms but they are not explained here.

## Preparar o código

Antes de solicitar uma revisão, certifique-se de ter cumprido todos os padrões de qualidade óbvios para o projeto para o qual você está contribuindo.
This means making sure you have checked the review list (see {ref}`checklist for the coder<rr-checklist-for-code-review>`).

A reviewer should check these things (see {ref}`checklist for the coder<rr-checklist-for-code-review>`), but defects on these fronts should be by occasional oversight, rather than systematic.

## Propor alterações

In the GitHub system, the review is begun directly from and often accessed through the [pull request page](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request).
A etapa de revisão ocorre entre os pontos nos quais o codificador acredita que sua contribuição é completa e onde essa contribuição é mesclada no tronco do projeto, e assim está intimamente associada a um único pull request.

Within the Github environment, projects can be configured to _require_ a review before a given pull request can be merged.
Mesmo que esta opção não tenha sido selecionada, ainda é possível (e a melhor prática) solicitar manualmente uma revisão em um pull request pendente.

## Criar e debater a revisão

Neste ponto, o processo de revisão pode começar. In Github, the reviewer can provide both general comments as well as line-by-line comments, see [GitHub code review](https://github.com/features/code-review).
Cada comentário se torna seu próprio comentário e permite uma discussão retroativa sobre cada issue conforme necessário.
Esta interacção deverá permitir que se chegue a um consenso sobre todos os comentários.

Quando a análise estiver completa, você pode discutir quaisquer comentários necessários. Em seguida, procede às alterações e regista as alterações feitas em relação aos comentários pertinentes.
Além disso, você verifica que o revisor sabe que acredita ter abordado completamente a avaliação.

Quando você acredita que as alterações são concluídas, o revisor verifica se elas realmente respondem a todos os comentários iniciais. Conforme necessário, o revisor se envolve construtivamente com você se eles discordarem em certos pontos para chegar a um consenso. Na maioria dos casos, o revisor tem uma última palavra se não for possível encontrar um consenso.

Uma vez feitas as alterações de pós-revisão no código, fazer as atualizações finais, conforme necessário, para completar uma história do que foi feito e o raciocínio por trás dele.

## Comunicar os resultados através do GitHub

In Github, comments should be added in the `Files changed` section, so they can be attached to a particular line of code, see [GitHub reviewing changes in pullrequests](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/reviewing-changes-in-pull-requests). Faça muitos pequenos comentários desta forma, em vez de uma grande bola de texto com tudo o que ele possui, para que diferentes issues possam ser mantidas separadas. Quando relevante, consulte Issues e documentação existentes.

Se você está revisando um código existente em vez de mudanças, ainda é útil usar as pull requests.
Se você encontrar um problema que tenha uma correção óbvia, você poderá enviar um pull request com um patch da forma habitual.

Se você não tem uma correção, você pode adicionar um comentário vazio à linha relevante. e cria um pull request como um patch. The relevant line(s) will then light up in the pull request's `Files changed` overview, and you can add your comments there.
Neste caso, ou o pull request nunca é feito o merge (mas os comentários processados de outra forma, ou não em tudo), ou os comentários extras são revertidos e substituídos por uma correção acordada.

Em todos os casos, arquive muitos pull requests pequenos, não um grande, já que o suporte do GitHub para revisões de código é bastante limitado. Colocar muitos issues em uma única pull request rapidamente se torna descarregado.

## Mesclar as alterações

Quando o processo de revisão é concluído, o revisor aprova as alterações e o merge pode ocorrer.
Os projetos individuais normalmente têm regras e/ou diretrizes para se o codificador ou o revisor realmente pressiona o botão de merge, então verifique.
Em muitos casos, fluxos de trabalho do projeto tornam a conclusão de uma revisão e seu sinal pelo revisor uma condição prévia formal para executar a fusão.
Para evitar dúvidas, é provavelmente sensato adoptar este princípio, mesmo para projectos pequenos ou informais.
