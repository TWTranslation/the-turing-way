(rr-testing-acceptance-regression)=
# Teste de Aceitação e Regressão

(rr-testing-acceptance)=
## Testes da aceitação

Testes de aceitação são um dos últimos tipos de testes que são executados no software antes da entrega. Testes de aceitação são usados para determinar se um software satisfaz todos os requisitos na perspectiva da empresa ou do usuário. Este software faz o que precisa fazer? Estes testes são, por vezes, feitos contra a especificação original.

Uma vez que o software de pesquisa é tipicamente escrito pelo pesquisador que o utilizará (ou pelo menos com contributos significativos) testes de aceitação podem não ser necessários.

(rr-testing-regression)=
## Teste de regressão

O teste de revogação é um estilo de teste que se concentra na busca de retornos após as alterações serem feitas. Os resultados dos testes após as alterações são comparados aos resultados anteriores, e os erros são detectados se forem diferentes. O teste de regressão destina-se a garantir que mudanças (melhorias ou correções de defeitos) para o software não o tenham afetado negativamente. A probabilidade de qualquer mudança de código nas funcionalidades de impacto que não estejam diretamente associadas ao código sempre existe e é essencial que os testes de regressão sejam realizados para garantir que a correção de uma coisa não tenha quebrado outra. Os testes de regressão podem ser realizados durante qualquer nível de teste (unidade, integração, sistema ou aceitação), mas é principalmente relevante durante os testes do sistema. Qualquer teste pode ser reutilizado e, portanto, qualquer teste pode tornar-se um teste de regressão.

Os testes de regressão são, obviamente, especialmente importantes no trabalho em equipa, mas é surpreendentemente fácil quebrar seu próprio código sem notá-lo, mesmo que você esteja trabalhando por conta própria. E porque o teste de regressão é quase impossível de fazer satisfatoriamente (é muito tedioso), é um caso óbvio para a automatização.

Testes de agressão são escritos pela primeira vez executando o código (ou parte do) para entradas determinadas e gravando as saídas. Isto pode ser feito escrevendo os arquivos de entrada e salvando os arquivos de saída correspondentes. Estas saídas servem como as saídas esperadas do programa dadas as entradas correspondentes. Os testes de regressão são então escritos. Cada teste de regressão executa o código para o conjunto de entradas. Em seguida, compara a saída do código com as saídas esperadas, e cria um erro se eles não correspondem.

As abordagens do teste de regressão diferem em seu foco.

Exemplos comuns incluem:
- Regressividade de bug: Nós retratamos um bug específico que foi supostamente corrigido.
- O antigo teste de regressão de correção: nós retestamos vários erros antigos que foram corrigidos, para ver se eles estão de volta. (Esta é a noção clássica de regressão: o programa regressou para um estado negativo.)
- Regressão funcional geral: Retomamos o projeto em termos gerais, incluindo áreas que funcionaram antes, para ver se mudanças mais recentes desestabilizaram o código de trabalho.
- Teste de conversão ou da porta: O programa é portado para uma nova plataforma e um conjunto de testes de regressão é executado para determinar se a porta foi bem sucedida.
- Teste de configuração: O programa é executado em um novo dispositivo ou em uma nova versão do sistema operacional ou em conjunto com um novo aplicativo. Isto é como teste do porto, exceto que o código subjacente não foi alterado, apenas os componentes externos com os quais o software sob teste deve interagir.

### Limitações de teste de regressão

Não é garantido que os testes de regressão testem todas as partes do código. O mais importante, testes de regressão não testam se o resultado gerado por um pedaço de código está *correto*, apenas que não mudou. Esse mandato de outros tipos de testes, embora os testes de regressão possam servir como ponto de partida para introduzir testes de correção, através da utilização de soluções analíticas e através de funções de teste que leem os arquivos de saída e verifiquem os dados de exatidão, conforme definido por um investigador.
