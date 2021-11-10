(rr-reviewing-recomendation)=
# Recomendações e melhores práticas

## Quem revisa?

Dentro de projetos em pequena escala onde todos os desenvolvedores normalmente já se conhecem, prática comum é que o codificador marque alguém do grupo como revisor. Quando você é marcado como revisor, primeiro verifique se você tem conhecimento suficiente sobre as novas mudanças no código para fazer um bom trabalho em uma quantidade razoável de tempo.

Em contraste, projetos de desenvolvimento em grande escala provavelmente terão regras concretas para como os revisores são alocados para pull requests individuais. Estas regras servem para equilibrar a carga de trabalho do grupo e maximizar os vários benefícios do processo para o projeto e seus participantes. Os projectos de maior envergadura podem até dispor de pessoal dedicado - ou de equipas de pessoal - para actuar como revisores. Normalmente, revisões de código só podem ser realizadas por um subconjunto autorizado de contribuidores dentro de projetos maiores.

Para projetos onde múltiplas rodadas de revisão em material semelhante são prováveis e são esperados ciclos de desenvolvimento longos, um certo grau de pensamento estratégico sobre quem completa as revisões é sensato. É provável que um único revisor seja capaz de fazer comentários no código que eles revisaram antes de muito mais eficientemente. No entanto, deixar que os pares de codificadores revisores como esta persistam é geralmente uma má ideia. uma vez que pode levar aos mesmos tipos de grupo que o processo de revisão foi concebido para evitar em primeiro lugar.

## Seja legal!

Como em todas as empresas de código aberto e colaborativo, a boa etiqueta da internet torna todo o processo mais suave. Talvez o mais importante seja sempre assumir a boa fé de ambos os lados da interacção de revisão, e ser sempre construtivos. Estes princípios são válidos para o processo de revisão para além de praticamente qualquer outro aspecto do projecto, uma vez que envolve necessariamente críticas, potencialmente entre dois estranhos completos.

## Mantenha-o colaborativo

Ao contrário da revisão por pares, de estilo acadêmico, a maioria dos sistemas de revisão de código tem várias vantagens: eles raramente são anônimos, elas são encaradas publicamente, e sem o intermediário de um editor, o contato entre revisor e reviewee pode ser direto e rápido. Isso significa que a revisão de código é tipicamente um processo rápido, flexível e interativo. Uma boa avaliação por pares será totalmente colaborativa, onde uma vez que uma consulta potencial tenha sido sinalizada por um revisor, as duas partes envolvidas podem trabalhar em conjunto para encontrar uma solução. Também não é atípico que terceiros se envolvam durante os tópicos de discussão que podem crescer sob mais comentários detalhados, ou voluntariamente ou por pedido. Tudo isto é positivo.

## Evitar ser subjetivo

As revisões de código devem procurar ser o mais objetivas possível. Claro, preferências de codificação subjetivas podem aparecer em qualquer projeto. No entanto, tais preferências devem ser previamente decididas a nível do projecto. Assim, podemos evitar uma situação em que uma opinião possa ser emitida como factos. Em vez disso, as sugestões podem ser apoiadas apontando para preferências documentadas que foram configuradas com antecedência. Se você encontrar preferências sem documentação discuta-os com a equipe novamente e concorde se você gostaria de adicionar a preferência à lista de verificação do seu processo de revisão de código.

## Especifique alterações cruciais versus opcionais

Talvez você queira diferenciar as mudanças que são cruciais e as mudanças que são agradáveis de ter. Por exemplo, comentários que comecem "Pode..." poderiam ser usados para expressar sugestões que os revisores querem que o codificador considere, mas não são essenciais. Estes podem ser particularmente úteis para guiar programadores inexperientes para escrever código melhor enquanto não são muito exigentes. O codificador pode então decidir ignorar esses comentários não cruciais se eles não concordarem. Os revisores podem usar comentários que comecem "Você deve..." para especificar aqueles que não são opcionais.

## Revise o código em pequenos chunks

Rever código em pequenos chunks incrementalmente como o projeto está sendo desenvolvido pode ajudar a tornar o processo de revisão de código muito mais eficiente. É muito mais difícil rever uma enorme base de código uma vez introduzidos erros significativos. Se erros podem ser encontrados cedo no processo, eles são muito mais fáceis de corrigir e isso vai ajudar no processo geral de desenvolvimento do código.

Aqui estão alguns conselhos gerais sobre como integrar revisões de código em nosso processo de trabalho:

- Aproveite o tempo, leia com cuidado. Reveja tudo, nada é muito curto ou simples.
- Tente ter outra coisa para fazer e espalhe a carga por todo seu dia útil. Não reveja por mais de uma hora de cada vez, depois disso o ritmo de sucesso cai rapidamente.
- Não reveja mais de 400 linhas de código (LOC) por vez, menos de 200 LOC é melhor. Não revise mais de 500 LOC/hora.

## Fique bem em levar a discussão offline

Algumas vezes, com análises de código mais complexas, a comunicação on-line pode levar a conversas improdutivas. A criação de um encontro presencial pode ajudar a resolver algumas das questões mais complicadas de uma forma mais colaborativa e amigável. Como alternativa, a equipe de desenvolvimento/pesquisa pode definir reuniões regulares para fazer análises de código com todos os membros da equipe. Por exemplo, veja a abordagem tomada por um professor organizando [laboratório de reuniões para o código](http://fperez.org/py4science/code_reviews.html).
