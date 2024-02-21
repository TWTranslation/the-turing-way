(estilo pd-code)=
# Estilo e link de código

Você já abriu um arquivo de sintaxe ou script dois anos depois de executar uma análise apenas para descobrir que você não tem memória imediata do código? Você recebeu arquivos de análise de um colaborador ou fez o download de um repositório online que você nunca usou antes? Agora, imagine que esses arquivos são muito difíceis de ler, ou há muitas variáveis sendo passadas para funções arcanas, ou pior, você não pode encontrar um código útil, pois eles são salvos com nomes de arquivos sem sentido como `analyis_1final_FINAL.`, ou `onlyusethisoneforanalyis_onamonday2a.py`.

Se não tiver - então somos um dos afortunados! Mas se já o experimentámos, talvez se saiba como é frustrante trabalhar com esses dossiers.

Este capítulo irá destacar maneiras de evitar tais desafios em seus projetos introduzindo alguns diretores de "higiene de código", caso conhecido como *linhamento*.

```{figure} ../figures/zen-of-python.png
---
height: 500px
nome: zen-of-python
alt: The Zen of Python, por Tim Peters. Que bonito é melhor que feio. Mais vale explícito que implícito. Simples é melhor que complexo. Complexo é melhor que complicado. O plano é melhor que o aninhado. É melhor que denso. Contagem de legibilidade. Casos especiais não são especiais o suficiente para quebrar as regras. Embora a praticabilidade supere a pureza. Erros nunca devem passar silenciosamente. A menos que explicitamente silenciado. Perante a ambiguidade, recusa-se a tentação de adivinhar. Deve haver um único - e de preferência apenas um - caminho óbvio para o fazer. Embora esse modo possa não ser óbvio no início, a menos que você seja holandês. Agora é melhor do que nunca. Embora nunca seja geralmente melhor do que *direito* agora. Se a implementação é difícil de explicar, é uma má ideia. Se a implementação é fácil de explicar, talvez seja uma boa ideia. Espaços de Nomes são uma ótima ideia pra brincar -- vamos fazer mais desses!
---
*Ponto 7 do [Zen de Python](https://www.python.org/dev/peps/pep-0020/) é "Readability Counts". (Isso pode ser impresso com o comando python `>>> importar isso`)*
```

## Geral

O Linting inclui {ref}`diretrizes para o estilo<pd-code-styling-guidelines>` como para nomenclatura, e garantir que o código de {ref}`seja legível para uso humano<pd-code-styling-readability>` , por exemplo, usando uma formatação útil e escrevendo comentários.  
Alguns ambientes de desenvolvimento integrados (IDEs) incluem cunhagem automática, mas há {ref}`pacotes e ferramentas gratuitos para linhar<pd-code-styling-tools>` que vão ficar em código pra você (por exemplo, [autopep8](https://pypi.org/project/autopep8/)).

Mantendo em mente os conselhos a seguir durante a programação, seu código será mais reutilizável, adaptável e claro.
