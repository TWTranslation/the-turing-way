(rr-testing)=
# Teste de Código

| Pré-requisito                                                                                   | Importância |
| ----------------------------------------------------------------------------------------------- | ----------- |
| [Experimente com a linha de comando](https://programminghistorian.org/en/lessons/intro-to-bash) | Necessário  |

## Summary

O código escrito pelo pesquisador agora faz parte de uma enorme porção de pesquisas, e se há erros no código, os resultados podem ser parcialmente ou inteiramente não confiáveis. O teste de código minucioso e frequente é vital para garantir uma investigação fiável e reprodutível. Este capítulo irá fornecer orientações gerais para escrever testes e descrever uma série de diferentes tipos de testes, as suas utilizações e a forma de as implementar.

```{figure}  ../figures/error-management.jpg
---
nome: gestão de erros
alt: Uma pessoa está alegremente programando, em seguida, um erro lança um erro e o codificador fica confuso. Então o codificador pode encontrar o erro e corrigi-lo.
---
_A Turing Way_ ilustração de projeto por Scriberia. Usado sob uma licença CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Motivação

É extremamente fácil cometer erros ao programar. Um único caractere perdido pode fazer com que a saída de um programa seja inteiramente errada. Um dos exemplos acima foi causado por um sinal de mais que deveria ter sido menos. Outro foi causado por um trecho de código funcionando em metros enquanto um trecho de código escrito por outro pesquisador trabalhava em pé. *Todos* cometem erros e ao pesquisar os resultados podem ser catastróficos. As carreiras podem ser danificadas/encerradas, grandes somas de fundos de pesquisa podem ser desperdiçadas, e pode perder-se tempo valioso para explorar caminhos incorretos. É por isso que os testes são vitais.

Aqui estão algumas ilustrações exemplificando o porquê de dever escrever testes:

```{figure}  ../figures/testing-motivation1.png
---
nome: motivação de teste1
alt:
---
```

```{figure}  ../figures/testing-motivation2.png
---
nome: motivação-teste2
alt:
---
```

Mesmo que os problemas de um programa sejam detectados antes da publicação de pesquisas, pode ser difícil descobrir quais resultados estão contaminados e devem ser refeitos. Isto representa uma enorme perda de tempo e de esforço. Capturar esses problemas o mais cedo possível minimiza a quantidade de trabalho necessária para corrigi-los, e para a maioria dos pesquisadores o tempo é, de longe, o seu recurso mais escasso. Você não deve pular a escrita de testes porque está com pouco tempo, deve escrever testes *porque* é curto no tempo. Pesquisadores não podem se dar ao luxo de ter meses ou anos de trabalho por baixo, e eles não se podem dar ao luxo de verificar repetidamente todos os pequenos detalhes de um programa que pode ter centenas ou centenas de milhares de linhas de comprimento. Escrever testes para fazer isso porque você é a opção de economia de tempo, e é a opção segura.

Como pesquisadores escrevem códigos, eles geralmente fazem alguns testes à medida que avançam, muitas vezes adicionando instruções de impressão e marcando a saída. No entanto, estes testes são muitas vezes deitados fora assim que passam e já não estão presentes para verificar o que se pretendia controlar. Comparativamente, é muito pouco trabalho colocar esses testes em funções e mantê-los para que possam ser executados a qualquer momento no futuro. O trabalho adicional é mínimo, o tempo poupado e as salvaguardas são inestimáveis. Além disso, formalizando o processo de teste num conjunto de testes que podem ser executados de forma independente e automática, você proporciona um grau muito maior de confiança de que o software se comporta corretamente e aumenta a probabilidade de serem encontrados defeitos.

Testes também proporcionam aos pesquisadores muito mais paz de espírito ao trabalhar/melhorar um projeto. Após alterar seu código, um pesquisador vai querer verificar se suas alterações ou correções não quebraram nada. Fornecer aos pesquisadores um ambiente de falha rápido permite a identificação rápida de falhas introduzidas por alterações no código. A alternativa, do pesquisador que escreve e executa quaisquer testes pequenos que tenham tempo é muito inferior a um bom conjunto de testes, que pode verificar minuciosamente o código.

Outro benefício de testes de escrita é que normalmente força um pesquisador a escrever um pesquisador mais limpo, mais código modular como esse código é muito mais fácil de escrever testes, levando a uma melhoria na qualidade do código.
{ref}`O código de boa qualidade<rr-code-quality>` é muito mais fácil (e muito mais agradável) de trabalhar com mais detalhes do que os ninhos de código de um anel de anel, tenho certeza de que encontramos (e, vamos ser honestos, escritos). Esse ponto é expandido na seção {ref}`rr-testing-unittest`.

## As vantagens dos testes de pesquisa

Além de favorecer os testes individuais de investigadores, também beneficia a investigação como um todo. Isso torna a pesquisa mais reprodutível respondendo à pergunta "como sabemos que este código funciona". Se os testes nunca forem salvos, basta fazer e eliminar a prova não pode ser reproduzida facilmente.

O teste também ajuda a evitar a concessão valiosa de dinheiro sendo gasto em projetos que podem ser parcialmente ou totalmente defeitos devido a erros no código. Pior, se os erros não forem encontrados e o trabalho for publicado, qualquer trabalho subsequente que se baseie no projeto terá falhas semelhantes.

Perhaps the cleanest expression of why testing is important for research as a whole can be found in the [Software Sustainability Institute](https://www.software.ac.uk/) slogan: better software, better research.
