(palavra-chave-coerência)=
# Mantendo a consistência

_A Modo de Turing_ é um projeto de código aberto que capacita os contribuidores ao redor do mundo para alavancar suas habilidades, conhecimento e conhecimento especializado para construir e expandir o seu conteúdo. _Os guias_ da Vila de Turing estão continuamente evoluindo, com vários capítulos co-desenvolvidos por indivíduos de vários meios - que são todos apaixonados por compartilhar conhecimento sobre ciência de dados e pesquisa. Para sustentar e apoiar esta comunidade vibrante, _O livro The Turing Way_ deve permanecer consistente e acessível à medida que evolui. O capítulo {ref}`ch-style` já fornece orientações para manter um estilo consistente em todo o livro. No entanto, nem todos os capítulos seguem essas sugestões, já que muitas vezes são escritos de forma assíncrona por diferentes autores. Rever consistências entre _A Viva de Turing_ sozinha, é razoavelmente desafiador. This points towards a need to encourage and support our contributors to maintain consistency throughout the chapters in _The Turing Way_ guides. Portanto, este capítulo irá esboçar uma lista de verificação de consistência passo a passo que irá guiar os nossos colaboradores. Cada etapa enfatizará uma verificação de consistência para olhar enquanto projetam e desenvolvem capítulos em _A Via de Turing_ ou trazem consistência aos capítulos existentes.

(ch-consistência-requisitos)=
## Rígido vs Requisitos Macio

Os itens da lista de verificação de consistência são categorizados em requisitos rígidos e vagos. Requisitos difíceis são consistência essencial para verificar se um capítulo deve passar para que _O Caminho de Turing_ se acumule sem erros. Além disso, tornam o capítulo legível e acessível a todos.

Exigências suaves, por outro lado, são boas verificações de consistência que um capítulo deve passar. Essas verificações reforçam grandemente o visual geral do livro, mas podem ser ignoradas com segurança se não puderem ser integradas na sua contribuição. Você sempre pode voltar para revisar suas contribuições anteriores e melhorar o conteúdo deles.

Uma visão geral destes requisitos está descrita {ref}`abaixo de <ch-consistency-requirements-checklist>`. Para a descrição fácil, essas verificações de consistência são classificadas pelo formato, estrutura e linguagem. Os subcapítulos explicam-nas de forma mais detalhada e descrevem como podem ser alcançados.

```{important} Please note that these requirements are not exhaustive or definitive, and neither are their classifications rigid.
Além disso, nenhum item é, por natureza, mais importante do que o outro.

Se você identificar mais problemas de consistência que precisam ser abordados, junte-se à conversa [here](https://github.com/alan-turing-institute/the-turing-way/issues/1174).

```

```{figure} ../figures/theturingway-consistency.jpg
---
altura: 400px
nome: teturingway-consisty-consist
alt: Esta ilustração mostra uma escada indicando o caminho para manter a consistência que tem três pilares - formatação, estrutura e linguagem. Uma pessoa está guiando dois novos colaboradores no estar.
---
Pathway para manter a consistência. _O projeto Turing Way_ ilustração por Scriberia. Usado sob uma licença CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(ch-consistência-requisitos-checklist)=
### Checklist de Consistência

#### Formatação

| OBRIGATÓRIO | VERIFICAR                                                                                                                                                                                                     |
| ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Difícil     | Use Markdown para criar o seu conteúdo (consulte esta [trapilha do WordPress](https://wordpress.com/support/markdown-quick-reference/)).                                                                      |
| Difícil     | Use os cabeçalhos em ordem sequencial. Por exemplo, iniciando o nível superior com a tag h1 `#`, segundo nível de cabeçalho com a tag h2 `##` e assim por diante.                                             |
| Difícil     | Adicionar etiquetas aos capítulos, sub-capítulos e imagens para permitir referências cruzadas conforme descrito no estilo {ref}`<ch-style-crossref>`                                                    |
| Difícil     | Use `MyST` para formatação de imagem, tal como descrito no guia de estilo {ref}`<ch-style-figures>` Aprenda Usar imagens de domínio público que tenham menos de 1MB de tamanho e citem apropriadamente. |
| Suave       | Certifique-se de que os nomes dos capítulos/subcapítulos são curtos e mapeie exatamente como eles são classificados no `_toc.yml`                                                                             |
| Suave       | Assegure que os cabeçalhos disponham das primeiras, últimas e "importantes" palavras de cada título, por exemplo, "Branca de Neve e os Sete Dwars".                                                           |


#### Estrutura

| OBRIGATÓRIO | VERIFICAR                                                                                                                                                                                             |
| ----------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Difícil     | Certifique-se de que os capítulos sigam a estrutura conforme descrita no novo [modelo de capítulo](https://github.com/alan-turing-institute/the-turing-way/tree/main/book/templates/chapter-template) |
| Difícil     | Não adicione uma 'tabela de conteúdo' nos capítulos ou subcapítulos, como é gerada automaticamente pelo Livro Júyter                                                                                  |
| Difícil     | Certifique-se de que fontes externas sejam referenciadas corretamente e incluídas no arquivo BibTeX centralizado, conforme recomendado no guia de estilo {ref}`<ch-style-citing>`               |
| Difícil     | Não adicione nenhum arquivo vazio no `_toc.yml`, em vez disso, crie um problema para novos capítulos                                                                                                  |
| Suave       | Certifique-se que cada capítulo tem um bom resumo de sua página inicial junto com links para seus subcapítulos.                                                                                       |
| Suave       | Dividir capítulos longos em subcapítulos menores, então eles são modulares.                                                                                                                           |


#### IDIOMA

| OBRIGATÓRIO | VERIFICAR                                                                                                                               |
| ----------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| Difícil     | Certifique-se de que os capítulos não usem qualquer abreviação latina conforme discutido no guia de estilo {ref}`<ch-style>`      |
| Difícil     | Certifique-se de corrigir gramática e um tom consistente em todo o livro com a ajuda de 1-2 revisores                                   |
| Difícil     | Garanta que os capítulos usam um idioma consistente, por exemplo, se você optar por escrever em inglês britânico, mantenha isso em todo |

Estas verificações são mais explicadas no {ref}`Formatação<ch-consistency-formatting>`, {ref}`Estrutura<ch-consistency-structure>`e {ref}`Idioma<ch-consistency-language>` subcapítulos.
