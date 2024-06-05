(rr-ci-práticas)=
# Melhores Práticas e Recomendações

## Pequenas, mudanças iterativas

Uma das práticas mais importantes ao adotar a integração contínua é incentivar os membros do projeto a fazerem e comprometerem pequenas alterações. Pequenas mudanças minimizam a possibilidade e o impacto de problemas aparecendo quando eles são integrados, o que minimiza o custo de tempo e esforço da integração.

## Desenvolvimento baseado em Trunk

Com o desenvolvimento baseado em trunk, o trabalho é feito na branch principal do repositório ou é integrado novamente no repositório compartilhado a intervalos frequentes. Ramos de recursos de curta vida são permitidos desde que representem pequenas mudanças e sejam mesclados o mais rápido possível.

A ideia por trás do desenvolvimento baseado em truncas é evitar grandes commits que violam o conceito de pequenas mudanças iterativas discutidas acima. O código está disponível para os pares mais cedo para que os conflitos possam ser resolvidos quando seu escopo é pequeno.

## Mantenha as fases de construção e teste rapidamente

Uma vez que as etapas de construção e teste devem ser realizadas com frequência, é essencial que estes processos sejam racionalizados de modo a minimizar o tempo que lhes é atribuído. Os aumentos do tempo de construção devem ser tratados como um problema importante, porque o impacto é agravado pelo facto de cada commit dar um impulso a uma construção.

Quando possível, executar diferentes seções do conjunto de testes em paralelo pode ajudar a mover a compilação através do pipeline mais rapidamente. É igualmente necessário ter cuidado para garantir que a proporção de cada tipo de teste faça sentido. Os testes de unidade são tipicamente muito rápidos e têm uma cobertura mínima de manutenção. Em contrapartida, o sistema automatizado ou os testes de aceitação são muitas vezes complexos e propensos à ruptura. Para explicar isso, muitas vezes é uma boa ideia depender fortemente de testes de unidade, realize um número razoável de testes de integração e, em seguida, recue no número de testes posteriores, mais complexos.

## Custo computacional

Alguns softwares exigirão recursos significativos de computação para construir e/ou executar. Exemplos disso são modelos climáticos e meteorológicos. Isto pode tornar impraticável a utilização da integração contínua, uma vez que os testes ou demoram demasiado tempo ou utilizam demasiados recursos. Por conseguinte, é necessário encontrar um compromisso para equilibrar o risco de testes incompletos contra um processo de desenvolvimento utilizável.

Uma das abordagens consiste em utilizar diferentes níveis de ensaio, exigindo diferentes subgrupos consoante o que for alterado. Pode ser utilizado um amplo subgrupo comum em todos os casos, com a invocação de outros para testar mais pormenorizadamente determinadas áreas. Isto introduz um elemento de julgamento no processo de teste, mas pode ser aplicado com êxito.

## Rastreamento de dependências

A verificação de atualizações de dependências deve ser feita regularmente. Ele pode salvar muito tempo, evitando bugs devido ao código dependente da funcionalidade obsoleta. Serviços como o [David](https://david-dm.org/) estão disponíveis para gerenciamento de dependências.

## Consistência em todo o pipeline

Um projecto deve ser construído uma vez no início do gasoduto, devendo o software resultante ser armazenado e acessível a processos posteriores sem reconstituir. Usando exatamente o mesmo artefato em cada etapa, Pode ter a certeza de que não está a introduzir inconsistências em resultado de diferentes ferramentas de construção.
