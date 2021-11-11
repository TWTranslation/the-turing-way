(rr-reviewing-workflow)=
# Workflows típicos

*Este capítulo tem particular referência ao Github*

```{figure} ../../figures/readable-code.jpg
---
altura: 500px
: código legível
alt: Esta imagem destaca a importância da legibilidade de código.
---
_A Turing Way_ ilustração de projeto por Scriberia. Usado sob uma licença CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Avaliações Formal vs Informais

Para que um processo formal de revisão funcione de forma eficaz, é imperativo que o projeto esteja usando um bom controle de versão do {ref}`<rr-vcs>`. No entanto, é bom afirmar que **toda a análise de código é muito valiosa**, incluindo abordagens informais ou ad-hoc. Na verdade, esse tipo de revisão informal "sobre o ombro" por pares pode formar um componente preliminar fundamental, mesmo em pipelines de revisão altamente formalizadas, poupando muito estresse e argumentando assim que começar a fase formal.

Essa seção se concentra nos típicos fluxos de trabalho por trás de um processo formal de revisão, conforme comumente implementado no [Github](https://github.com/). Outros ambientes de codificação como [BitBucket](https://bitbucket.org/) ou [GitLab](https://about.gitlab.com/) podem ter mecanismos conceitualmente semelhantes, mas eles não são explicados aqui.

## Preparar o código

Antes de solicitar uma revisão, certifique-se de ter cumprido todos os padrões de qualidade óbvios para o projeto para o qual você está contribuindo. Isso significa certificar-se de que você verificou a lista de revisão (ver {ref}`checklist para o codificador<rr-checklist-for-code-review>`).

Um revisor deve verificar essas coisas (ver {ref}`lista de verificação para o codificador<rr-checklist-for-code-review>`), mas os defeitos nestas frentes deveriam ser por omissão ocasional, e não sistemática.

## Propor alterações

No sistema GitHub, a revisão é iniciada diretamente e frequentemente acessada através da [página do pull request](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request). A etapa de revisão ocorre entre os pontos nos quais o codificador acredita que sua contribuição é completa e onde essa contribuição é mesclada no tronco do projeto, e assim está intimamente associada a um único pull request.

No ambiente Github, os projetos podem ser configurados para *necessitar* de uma revisão antes que determinado pull request possa ser mesclado. Mesmo que esta opção não tenha sido selecionada, ainda é possível (e a melhor prática) solicitar manualmente uma revisão em um pull request pendente.

## Criar e debater a revisão

Neste ponto, o processo de revisão pode começar. No Github, o revisor pode fornecer comentários gerais e comentários linha por linha, consulte [Revisão de código no GitHub](https://github.com/features/code-review). Cada comentário se torna seu próprio comentário e permite uma discussão retroativa sobre cada issue conforme necessário. Esta interacção deverá permitir que se chegue a um consenso sobre todos os comentários.

Quando a análise estiver completa, você pode discutir quaisquer comentários necessários. Em seguida, procede às alterações e regista as alterações feitas em relação aos comentários pertinentes. Além disso, você verifica que o revisor sabe que acredita ter abordado completamente a avaliação.

Quando você acredita que as alterações são concluídas, o revisor verifica se elas realmente respondem a todos os comentários iniciais. Conforme necessário, o revisor se envolve construtivamente com você se eles discordarem em certos pontos para chegar a um consenso. Na maioria dos casos, o revisor tem uma última palavra se não for possível encontrar um consenso.

Uma vez feitas as alterações de pós-revisão no código, fazer as atualizações finais, conforme necessário, para completar uma história do que foi feito e o raciocínio por trás dele.

## Comunicar os resultados através do GitHub

No Github, comentários devem ser adicionados na seção `Arquivos alterados` , para que possam ser anexados a uma determinada linha de código, consulte [mudanças no GitHub revisando nos pull requests](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/reviewing-changes-in-pull-requests). Faça muitos pequenos comentários desta forma, em vez de uma grande bola de texto com tudo o que ele possui, para que diferentes issues possam ser mantidas separadas. Quando relevante, consulte Issues e documentação existentes.

Se você está revisando um código existente em vez de mudanças, ainda é útil usar as pull requests. Se você encontrar um problema que tenha uma correção óbvia, você poderá enviar um pull request com um patch da forma habitual.

Se você não tem uma correção, você pode adicionar um comentário vazio à linha relevante. e cria um pull request como um patch. O(s) linha(s) relevante(s) será(ão) exibido(s) na pull request `Arquivos alterados` e você pode adicionar seus comentários lá. Neste caso, ou o pull request nunca é feito o merge (mas os comentários processados de outra forma, ou não em tudo), ou os comentários extras são revertidos e substituídos por uma correção acordada.

Em todos os casos, arquive muitos pull requests pequenos, não um grande, já que o suporte do GitHub para revisões de código é bastante limitado. Colocar muitos issues em uma única pull request rapidamente se torna descarregado.

## Mesclar as alterações

Quando o processo de revisão é concluído, o revisor aprova as alterações e o merge pode ocorrer. Os projetos individuais normalmente têm regras e/ou diretrizes para se o codificador ou o revisor realmente pressiona o botão de merge, então verifique. Em muitos casos, fluxos de trabalho do projeto tornam a conclusão de uma revisão e seu sinal pelo revisor uma condição prévia formal para executar a fusão. Para evitar dúvidas, é provavelmente sensato adoptar este princípio, mesmo para projectos pequenos ou informais.
