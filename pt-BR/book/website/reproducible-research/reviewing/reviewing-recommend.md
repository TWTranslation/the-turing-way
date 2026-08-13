(rr-reviewing-recomendation)=

# Recomendações e Boas Práticas

## Quem Faz as Revisões?

Em projetos de pequena escala, nos quais os desenvolvedores normalmente já se conhecem, a prática comum é o autor do código marcar alguém do grupo como revisor.
Quando você for marcado como revisor, verifique primeiro se possui conhecimento suficiente sobre as alterações propostas para realizar uma boa avaliação em um prazo razoável.

Em contrapartida, projetos de grande porte provavelmente já têm regras concretas para alocar revisores às pull requests individuais.
Essas regras servem para equilibrar a carga de trabalho do grupo e maximizar os diversos benefícios do processo tanto para o projeto quanto para seus participantes.
Nos projetos mais volumosos, pode haver até equipes dedicadas exclusivamente às revisões.
Normalmente, em projetos grandes, somente um subconjunto de colaboradores autorizados pode realizar revisões de código.

Para projetos em que são previstas múltiplas rodadas de revisão sobre material semelhante e ciclos de desenvolvimento longos, faz sentido adotar um pensamento estratégico sobre quem deve conduzir as revisões.
Um mesmo revisor tende a comentar o código que já revisou anteriormente de forma muito mais eficiente.
Porém, manter pares fixos revisor–autor geralmente é uma má ideia, pois pode levar ao mesmo tipo de “pensamento em grupo” que o processo de revisão se propõe a evitar desde o início.

(rr-reviewing-recomendation-be-nice)=

## Seja Gentil!

Como em todo empreendimento open source e colaborativo, boas maneiras na internet tornam todo o processo mais fluido.
Talvez o mais importante seja sempre presumir boa fé de ambos os lados da interação de revisão e ser sempre construtivo.
Esses princípios valem para o processo de revisão mais do que quase qualquer outro aspecto do projeto, já que envolve necessariamente críticas, às vezes entre duas pessoas que nem se conhecem.

## Mantenha a Colaboração

Ao contrário da revisão por pares “ao estilo acadêmico”, a maioria dos sistemas de revisão de código oferece várias vantagens: raramente são anônimos, são públicos e, sem o intermediário de um editor, o contato entre revisor e autor pode ser direto e rápido.
Isso faz da revisão de código um processo ágil, flexível e interativo.
Uma boa revisão é totalmente colaborativa: quando o revisor identifica uma possível questão, as duas partes envolvidas trabalham juntas para encontrar uma solução.
Também não é incomum que terceiros entrem na discussão gerada por comentários mais “espinhosos”, seja por iniciativa própria ou a pedido dos participantes.
Tudo isso contribui positivamente para a qualidade do projeto.

## Evite Ser Subjetivo

As revisões de código devem buscar ser o mais objetivas possível.
É natural que preferências subjetivas de codificação apareçam em qualquer projeto.
Contudo, tais preferências, sempre que possível, devem ser definidas previamente em nível de projeto.
Assim, evita-se a situação em que uma opinião seja passada como fato.
Em vez disso, as sugestões podem ser fundamentadas apontando para as preferências documentadas estabelecidas anteriormente.
Se você encontrar preferências não documentadas, discuta-as novamente com a equipe e concordem se desejam adicioná-las à lista de verificação do processo de revisão de código.

## Especifique Alterações Cruciais versus Opcionais

Você pode querer diferenciar entre alterações que são cruciais e aquelas que são apenas desejáveis.
Por exemplo, comentários que comecem com “Você poderia…” podem ser usados para expressar sugestões que o revisor gostaria que o autor considerasse, mas que não são essenciais.
Esses comentários são especialmente úteis para orientar programadores menos experientes a escrever um código melhor, sem parecer excessivamente exigente.
O autor pode então decidir ignorar essas observações não cruciais caso não concorde.
Já comentários que comecem com “Você deve…” podem ser utilizados para especificar mudanças que não são opcionais.

## Revisar Código em Pequenos Trechos

Revisar o código em pequenos trechos, de forma incremental à medida que o projeto se desenvolve, pode tornar o processo de revisão muito mais eficiente.
É muito mais difícil revisar uma base de código extensa depois que erros significativos já foram introduzidos.
Se os erros forem detectados cedo no processo, tornam‑se muito mais fáceis de corrigir, o que ajuda em todo o desenvolvimento do código.

Aqui estão algumas dicas gerais sobre como integrar revisões de código em nosso processo de trabalho:

- Dedique tempo e leia com atenção. Revise tudo, nada é curto ou simples demais.
- Tente ter outras tarefas paralelas e distribua a carga ao longo do dia. Não revise por mais de uma hora consecutiva, a partir daí, a taxa de sucesso cai rapidamente.
- Não revise mais de 400 linhas de código (LDC) de uma vez; o ideal é ficar abaixo de 200 LDC.   Além disso, não ultrapasse 500 LDC por hora.

## Esteja Aberto a Levar a Discussão para o Ambiente Offline

Às vezes, em revisões de código mais complexas, a comunicação online pode gerar conversas improdutivas.
Agendar um encontro presencial pode ajudar a resolver questões mais complicadas de maneira mais colaborativa e amigável.
Como alternativa, a equipe de desenvolvimento/pesquisa pode estabelecer reuniões regulares dedicadas a revisões de código com todos os membros.
For example, see the approach taken by a professor organizing [lab meetings for code](http://web.archive.org/web/20210512053038/http://fperez.org/py4science/code_reviews.html).
