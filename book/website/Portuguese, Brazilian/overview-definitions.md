(rr-overview-definitions)=
# Definições

A definição mais comum de reprodutibilidade (e replicação) foi realçada pela primeira vez por Claerbout e Karrenbach em 1992 {cite:ps}`ClaerboutKarrenbach1992Reproducibilidade` e foi usada em literatura de ciência computacional desde então. Outra definição popular foi introduzida em 2013 pela Associação para Máquinas de Computação (ACM) {cite:ps}`Ivie2018SciComp`, que trocou o significado dos termos "reproduzível" e "replicável" em comparação com Claerbout e Karrenbach.

A tabela a seguir contrasta ambas as definições {cite:ps}`Heroux2018Reproducibility`.

| Período:     | Claerbout & Karrenbach                                                                                                                                             | MPC                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| ------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Reprodutível | Os autores fornecem todos os dados necessários e os códigos do computador para executar a análise novamente, recriando os resultados.                              | (Equipe diferente, configuração experimental diferente.) A medida pode ser obtida com precisão declarada por uma equipa diferente, um sistema de medição diferente, em um local diferente em vários testes. Para experiências computacionais, isso significa que um grupo independente pode obter o mesmo resultado usando artefatos que eles se desenvolvem completamente independentemente.                                        |
| Replicável   | Um estudo que chega às mesmas descobertas científicas que outro estudo, recolhendo novos dados (possivelmente com métodos diferentes) e concluindo novas análises. | (Equipe diferente, mesma configuração experimental.) A medida pode ser obtida com precisão declarada por uma equipe diferente usando o mesmo procedimento de medição, o mesmo sistema de medição, sob as mesmas condições de operação, na mesma ou em um local diferente em múltiplos ensaios. Para experiências computacionais, isso significa que um grupo independente pode obter o mesmo resultado usando os artefatos do autor. |

Barba (2018) {cite:ps}`Barba2018Reproducibilidade` realizou uma revisão detalhada da literatura sobre o uso de substâncias reprodutíveis / replicáveis cobrindo várias disciplinas. A maioria dos papéis e disciplinas usa a terminologia conforme definida por Claerbout e Karrenbach, enquanto a microbiologia, a imunologia e a ciência da computação tendem a acompanhar o uso de reprodutibilidade e replicação no ACM. Na literatura política científica e económica, ambos os termos são intermutavelmente utilizados.

Para além destas definições de alto nível de reprodução, alguns autores fornecem distinções mais detalhadas. Victoria Stodden {cite:ps}`Victoria2014Reproducibility`, um estudioso proeminente sobre este tópico, por exemplo, identificou as seguintes distinções:

- _Reprodução computacional_: Quando informações detalhadas são fornecidas sobre código, software, hardware e detalhes de implementação.

- _Reprodução empírica_: Quando informações detalhadas são fornecidas sobre experimentos e observações científicos não computacionais do império. Na prática, isso é possível através da disponibilização de dados e de pormenores sobre a forma como foram recolhidos livremente.

- _Reprodução estatística_: Quando informações detalhadas são fornecidas, por exemplo, sobre a escolha de testes estatísticos, parâmetros de modelo e valores limite. Trata-se sobretudo de um pré-registo de concepção dos estudos, a fim de evitar hack de valor e outras manipulações.

(rr-overview-definitions-reproducibilidade)=
## Tabela de Definições de Reprodução

No _The Turing Way_, </em>, nós definimos **pesquisa reprodutível** como trabalho que pode ser independente de um mesmo dado e o mesmo código que a equipe original usou. O reprodutor é diferente de replicável, robusto e generalista conforme descrito na figura abaixo.


```{figure} ../../figures/reproducible-matrix.jpg
---
nome: reprodutível-matrix
alt: definição de Kirstie para pesquisa reprodutível.
---
Como a Via Turing define a pesquisa reprodutível
```

As diferentes dimensões de pesquisa reprodutível descritas na matriz acima têm as seguintes definições:

- **Reproducible:** A result is reproducible when the _same_ analysis steps performed on the _same_ dataset consistently produces the _same_ answer.
- **Replicável:** Um resultado é replicável quando a _mesma_ análise realizada em _diferentes_ conjuntos de dados produzem respostas qualitativamente semelhantes.
- **Robust:** Um resultado é robusto quando o _mesmo conjunto de dados_ está sujeito a _diferentes_ fluxos de trabalho de análise para responder à mesma pergunta de pesquisa (por exemplo, um pipeline escrito em R e outro escrito em Python) e é produzida uma resposta qualitativamente similar ou idêntica. Resultados sólidos mostram que o trabalho não depende das especificidades da linguagem de programação escolhida para realizar a análise.
- **Generalizável:** Combinar descobertas replicáveis e robustas nos permitem formar resultados generalizados. Observe que executar uma análise em uma implementação de software diferente e com um conjunto de dados diferente não fornece resultados _generalizados_. Haverá muito mais passos para saber se o trabalho se aplica a todos os diferentes aspectos da questão da investigação. A generalização é um passo importante para compreender que o resultado não depende de um determinado conjunto de dados nem de uma determinada versão do gasoduto de análise.

Mais informações sobre essas definições podem ser encontradas em "Reprodutibilidade vs. Replicabilidade: Um breve histórico de uma Terminologia Confundida" por Hans E. Plesser {cite:ps}`Plesser2018Reprodutibilidade`.

```{figure} ../../figures/reproducible-definition-grid.jpg
---
nome: tabela reprodutível-definição. pg
alt: Grade de com as características de pesquisa reprodutível, replicável, robusta e generalizável
---
_A ilustração de projeto The Turing Way_ por Scriberia. Usado sob uma licença CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-overview-reproducible)=
## Reproduível, mas não aberto

_A Via Turing_ reconhece que algumas pesquisas usarão dados sensíveis que não podem ser compartilhados e este manual fornecerá guias sobre como sua pesquisa pode ser reprodutível sem que todas as peças estejam necessariamente abertas.
