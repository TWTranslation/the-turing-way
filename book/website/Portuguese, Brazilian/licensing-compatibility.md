(Compatibilidade de licenças-rr)=
# Compatibilidade de Licença

Se você utiliza vários componentes externos no seu programa, então você poderá acabar com várias restrições diferentes na licença do trabalho combinado. Se estas restrições colidirem, não será possível distribuir legalmente o resultado (se estiver envolvido um software proprietário. então talvez não possam, juridicamente, fazer o trabalho combinado).

Se duas licenças especificam restrições incompatíveis na licença da obra combinada, elas são _incompatíveis_.

A GNU GPL, por exemplo, é incompatível com licenças proprietárias, porque exige que o trabalho combinado seja licenciado ao abrigo da GPL, sem que sejam permitidas restrições adicionais. Ter uma parte do trabalho sob uma licença de propriedade é uma restrição adicional, então você não pode distribuir tal combinação (a menos que o proprietário dos direitos autorais do código GPL dê permissão especial).

Quando você usa diferentes peças de software juntas para resolver um problema, e quer distribuir o resultado, aqui estão as perguntas que você tem de responder:

- Quais obras separadas existem, e o que é derivado de quê?
- As obras derivadas podem ser distribuídas? As licenças permitem isso e são compatíveis?
- Como o(s) trabalho(s) deve ser licenciado?

A próxima seção mostra alguns exemplos de como isso é feito.

(rr-licensing-compatibility-exemplos)=
## Exemplos

Muitos dos exemplos nesta seção dizem respeito a [xtas](http://xtas.net). xtas é um conjunto de ferramentas de processamento de linguagem natural para Python que reutiliza muitas bibliotecas de terceiros, programas e conjuntos de dados e, portanto, fornece uma variedade de excelentes exemplos.

```{figure} ../../figures/xtas-overview96.png
---
nome: xtas-overview96
alt: Uma visão gráfica de xtas. Um retângulo grande representa as xtas de trabalho combinadas. Dentro deste retângulo, há um retângulo baixo no topo representando o código xtas Python, licenciado sob a Licença Apache v2. Por baixo disso, há três quadrados ao lado, representando respectivamente bibliotecas de Python, software e dados, que são usados por xtas. Dentro do quadrado das bibliotecas Python, há três caixas. A primeira caixa contém as palavras "BSD", "MIT" e "ALv2". A segunda caixa contém "LGPLv2.1". A terceira caixa contém "GPLv2+". Dentro do quadrado de software, há quatro caixas. A primeira caixa contém o "Serviço Web". A segunda caixa contém "LGPL v2.1+". A terceira caixa contém "Apenas Pesquisa", e a quarta caixa contém "GPL 2+/3+". O banco de dados também contém quatro caixas. A primeira caixa contém "CC BY-SA 3.0". A segunda caixa contém "Somente Pesquisa". A terceira caixa contém "Nenhuma licença, EUA" e a quarta caixa contém "CoNLL'02 apenas".
---
Uma visão gráfica de xtas.
```

O xtas em si é escrito em Python, e usa várias bibliotecas do Python que são licenciadas sob licenças comuns e gratuitas. Estes incluem as licenças simples de BSD e MIT permissivas, a Licença do Apache permissivo 2. (ALv2), a GNU Lesser General Public License versão 2.1 (LGPLv2.1) e a GNU General Public License versão 2 ou posterior (GPLv2+).

(Note que a dependência da biblioteca GPLv2+ Python está obsoleta, mas, por estes exemplos, partimos do princípio de que ainda lá estam.)

xtas' Código Python é distribuído sob a Licença Apache versão 2.0. Desde que os autores de xtas possuem os direitos autorais, eles podem licenciá-lo da maneira que quiserem (embora exista uma área cinza relacionada a dependências GPL, veja abaixo). Os autores de xtas não distribuem quaisquer obras combinadas ou binários, mas nos exemplos abaixo, partiremos do princípio de que existe um trabalho combinado, de modo a podermos reflectir sobre a forma de o licenciar.

Nos seguintes exemplos, simplificaremos a maior parte deste processo e analisaremos uma ou algumas dependências separadamente.

(rr-licensing-compatibiliity-examples-apachevsbsd)=
### Apache vs. BSD

```{figure} ../../figures/xtas-snowball96.png
---
nome: xtas-snowball96
alt: Uma ilustração dos xtas vs. Exemplo de Snowball.  Um retângulo grande representa as xtas de trabalho combinadas. Dentro deste retângulo, há um retângulo baixo no topo representando o código xtas Python, licenciado sob a Licença Apache v2. Abaixo está um quadrado contendo as palavras "Nevasca Stemmer" e "Python lib BSD".
---
Uma ilustração dos xtas vs. Exemplo Snowball.
```

xtas usam [Snowball](https://snowballstem.org/), uma biblioteca baseada em Python. Snowball é publicada sob a licença BSD com 3 cláusulas. Considerando apenas xtas e Snowball, podemos responder às três perguntas da seguinte forma:

#### Quais obras separadas existem, e o que é derivado de quê?

Existem três obras: Snowball, xtas Python code e a combinação de xtas. O trabalho combinado é derivado do código Snowball e xtas Python, que são ambos trabalhos independentes.

Observe que o ALv2 e o LGPL v2. explicitamente indicar que o código-fonte que se destina a funcionar em combinação com uma biblioteca não é uma obra derivada, enquanto o binário resultante de (estática ou dinâmica) ligar as peças está junto. Outras licenças, incluindo a GPL, não fazem qualquer declaração explícita a este respeito.

Tanto quanto sei, não há jurisprudência nesta matéria; partimos do princípio de que é esse o caso nestes exemplos.

#### As obras derivadas podem ser distribuídas? As licenças permitem isso e são compatíveis?

O Snowball é licenciado sob uma licença permissiva. Ela pode ser redistribuída sob essa licença, e não há restrições na licença das obras derivadas. Os autores do xtas podem licenciá-lo da maneira que quiserem.

#### Como o(s) trabalho(s) deve ser licenciado?

O código xtas Python e o trabalho combinado xtas são licenciados sob a Licença Apache v2.0.

Se autores de xtas redistribuírem o Snowball, eles devem fazê-lo sob a licença BSD concedida pelos autores de Snowball. (Eles não podem conceder permissões adicionais para o Snowball, uma vez que não são donos dos direitos de autor, e restrições adicionais seriam inexequíveis pelo mesmo motivo.)

(rr-licensing-compatibility-examples-apachevslgpl)=
### Apache vs. LGPL

```{figure} ../../figures/xtas-chardet96.png
---
nome: xtas-chardet96
alt: Uma ilustração do xtas vs. exemplo de chardet. Um retângulo grande representa as xtas de trabalho combinadas. Dentro deste retângulo, há um retângulo baixo no topo representando o código xtas Python, licenciado sob a Licença Apache v2. Abaixo está um quadrado contendo as palavras "chardet" e "Python lib LGPLv2.1".
---
Uma ilustração do exemplo de xtas vs. chardet.
```

xtas usa [gráfico](https://pypi.org/project/chardet/), uma biblioteca Python para detectar o conjunto de caracteres usado em uma sequência de texto. O gráfico é publicado sob a GNU Lesser General Public License v2.1. Tendo em conta apenas os xtas e o gráfico, podemos responder às três perguntas que se seguem.

#### Quais obras separadas existem, e o que é derivado de quê?

Existem três obras: o gráfico, o código xtas Python e o trabalho combinado. O trabalho combinado é derivado do código do gráfico e xtas Python. Os outros são obras independentes.

#### As obras derivadas podem ser distribuídas? As licenças permitem isso e são compatíveis?

O gráfico é licenciado sob uma licença autoral fraca, podendo ser redistribuído nos termos dessa licença. As obras derivativas podem ser licenciadas sob qualquer licença. No entanto, a LGPL v2.1 requer que o destinatário possa (e seja permitido) modificar a biblioteca e use a biblioteca modificada com o trabalho derivado.

#### Como o(s) trabalho(s) deve ser licenciado?

xtas como um todo, e o xtas código Python, podem ser licenciados da maneira que os autores quiserem, então eles usaram a Licença Apache v2.0. Se eles distribuírem o gráfico, devem fazê-lo sob a licença LGPL v2.1 concedida pelos seus titulares de direitos autorais.

(rr-licensing-compatibility-examples-apachevsgplv2)=
### Apache vs. GPLv2

```{figure} ../../figures/xtas-unidecode96.png
---
nome: xtas-unidecode96
alt: Uma ilustração do xtas vs. exemplo de unidecode. O retângulo grande representa as xtas de trabalho combinadas. Dentro deste retângulo, há um retângulo baixo no topo representando o código xtas Python, licenciado sob a Licença Apache v2. Abaixo está um quadrado contendo as palavras "unidecode" e "Python lib GPLv2+".
---
Uma ilustração dos xtas vs. exemplo de unidecode.
```

xtas usadas anteriormente [unidecode](https://pypi.org/project/Unidecode/), uma biblioteca Python para converter texto codificado de acordo com o The Unicode® Standard em uma aproximação ASCII da mesma. O Unidecode é publicado sob a GNU General Public License versão 2 ou posterior (GPLv2+). Considerando apenas xtas e unidecodificação, podemos responder às três perguntas da seguinte forma.

#### Quais obras separadas existem, e o que é derivado de quê?

Existem três obras: unidecode, código xtas Python e trabalho combinado. O trabalho combinado deriva do unidecode e do código xtas Python.

Se o código xtas Python é uma derivada de unidecode não está claramente definida pela lei, e não existe jurisprudência nesta matéria. A licença do Apache e a LGPL afirmam explicitamente que não é para o propósito dessas licenças, mas o GPL não contém essa cláusula.

Como eles são desenvolvidos separadamente, e não há código do unidecode no código xtas, partimos do princípio de que não se trata de um trabalho derivado.

#### As obras derivadas podem ser distribuídas? As licenças permitem isso e são compatíveis?

A Unidecode é licenciada sob uma licença com fortes direitos autorais, por isso é redistribuída sob os termos dessa licença. As obras derivativas devem ser licenciadas sob a mesma licença.

A unidecode é licenciada sob a GPL versão 2 ou posterior. Isto é conhecido como uma _licença disjuntiva_. Os detentores de direitos autorais da unidecode oferecem a todos uma licença GPLv2, mas também uma licença GPLv3, e mesmo proativamente qualquer versão mais recente do GNU GPL que possa ser criada no futuro. Um potencial usuário pode optar por aceitar qualquer uma destas licenças, ou uma combinação delas, se eles quiserem copiar a obra ou fazer trabalhos derivados.

#### Como o(s) trabalho(s) deve ser licenciado?

Se os autores de xtas distribuem o unidecode, eles devem fazê-lo sob a versão GPL 2 ou maior, como arbitrariamente remover licenças de outro código não faz sentido. A combinação de xtas de trabalho deve ser distribuída sob as mesmas licenças ou um subconjunto deles. O código xtas Python pode ser licenciado da maneira que quiser.

Os autores de xtas devem escolher uma licença para o código xtas Python que seja compatível com pelo menos uma das licenças que o unidecode possa ser distribuído para que outros possam montar e distribuir obras combinadas. O ALv2 é compatível com a GPLv3 (mas não com a GPLv2, por razões técnicas), para que possam usá-la aqui.

O trabalho combinado deve ser licenciado sob a versão 3 ou posterior. Se é importante que também possa ser utilizado no âmbito da GPLv2 então os autores do xtas podem licenciar o código do xtas Python sob o ALv2 e o GPLv2 (significado, eles oferecem ambas as licenças, e o usuário pode optar por aceitar qualquer ou ambos) e o trabalho combinado sob a versão 2 ou posterior.

Finalmente, pode ser decidido mais tarde que o código-fonte xtas do Python é uma obra derivada do unidecode porque ele o chama. Mesmo que nenhum dos unidecode esteja incluído no trabalho, então os autores de xtas devem distribuir o código xtas Python sob pelo menos uma das licenças GPL em que o unidecode é distribuído abaixo. Nesse caso, podem oferecer xtas sob o conjunto de licenças ALv2 e GPLv2+.

A solução mais simples, neste caso, seria simplesmente licenciar o código xtas Python e o trabalho derivado sob o GPLv3.

Como provavelmente está claro neste momento, Dependências que estão sob uma forte licença de cópia de segurança complicam sua vida se você quiser que as pessoas sejam capazes de fazer obras proprietárias com base no seu software.

(rr-licensing-compatibiliity-examples-apachevsall)=
### Apache vs BSD vs LGPL vs GPLv2

```{figure} ../../figures/xtas-all-python-libs96.png
---
name: xtas-all-python-libs96
alt: Uma ilustração dos xtas e de todas as bibliotecas de Python. Um retângulo grande representa as xtas de trabalho combinadas. Dentro deste retângulo, há um retângulo baixo no topo representando o código xtas Python, licenciado sob a Licença Apache v2. Abaixo disto, há três quadrados. O primeiro quadrado contém as palavras "Bola de Neve" e "Python lib BSD". O segundo quadrado contém "chardet" e "Python lib LGPLv2.1". O terceiro quadrado contém as palavras "unidecode" e "Python lib GPLv2+".
---
Uma ilustração dos exemplos de xtas e todas as bibliotecas de Python.
```

Agora, vamos considerar os três exemplos acima ao mesmo tempo.

#### Quantas obras separadas existem e o que é derivado de quê?

Existem cinco trabalhos: Bola de Neve, Carteiras, Unidecodificação, código xtas Python e xtas o trabalho combinado. O trabalho combinado é derivado de todos os seus componentes.

#### As obras derivadas podem ser distribuídas? As licenças permitem isso e são compatíveis?

Os quatro componentes não-xtas estão sob licenças de software gratuitas e os autores de xtas detêm os direitos autorais do código xtas Python, para que todos os cinco componentes possam ser distribuídos pelos autores de xtas. A BSD, LGPLv2. e o GPLv2+ permitem licenciamento de trabalhos combinados sob a versão 2 ou maior, portanto, há pelo menos uma licença pela qual o trabalho combinado pode ser licenciado.

#### Como o(s) trabalho(s) deve ser licenciado?

O código xtas Python deve ser licenciado sob a licença Apache v2 e o trabalho combinado sob a versão 3 ou superior. (Veja o exemplo {ref}`unicode <rr-licensing-compatibility-examples-apachevsgplv2>` acima para alternativas.)


### Ligar para programa externo

xtas pode executar o [programa Stanford CoreNLP](https://stanfordnlp.github.io/CoreNLP/), que é escrito em Java e distribuído sob a GNU GPL versão 3 ou posterior. Quando o usuário chama a função xtas correspondente, CoreNLP é iniciado por xtas, a entrada do usuário é enviada através de um tubo e depois a saída CoreNLP é devolvida ao usuário ou processada posteriormente.

```{figure} ../../figures/xtas-corenlp1-96.png
---
nome: xtas-corenlp1-96
alt: Uma ilustração dos xtas vs. Exemplo CoreNLP. A praça representa as xtas de trabalho combinadas. Dentro deste quadrado, há um amplo retângulo baixo representando o código xtas Python, licenciado sob a Licença Apache v2. Abaixo está um quadrado contendo as palavras "Stanford CoreNLP" e "Java program GPLv3+".
---
Uma ilustração dos xtas vs. Exemplo CoreNLP.
```

Uma interpretação desta situação é que não difere de chamar uma função em uma biblioteca e de qualquer distribuição de xtas, no seu conjunto, incluindo a CoreNLP, deve ser abrangida pelo GPLv3+. Contribuir para esta interpretação é o fato de que os xtas irão baixar e instalar o CoreNLP automaticamente, se necessário.

```{figure} ../../figures/xtas-corenlp2-96.png
---
nome: xtas-corenlp2-96
alt: Outra ilustração dos xtas vs. Exemplo CoreNLP. O quadrado à esquerda representa as xtas de trabalho combinadas. Dentro deste quadrado, há um retângulo representando o código xtas Python, licenciado sob a Licença Apache v2. À direita está um quadrado separado que representa CoreNLP, com o texto "Stanford CoreNLP" e "Java program GPLv3+". Entre os quadrados há duas setas, uma no topo apontando de xtas para CoreNLP, e uma no fundo apontando de CoreNLP para xtas.
---
Outra ilustração dos xtas vs. Exemplo CoreNLP.
```

Outra interpretação é que o xtas e o CoreNLP são obras separadas e que o xtas se limita a comunicar com a CoreNLP sobre a sua interface padrão de utilizador.

Nesta interpretação xtas é um programa separado que ajuda o usuário a usar o programa CoreNLP a partir da linguagem Python. e não uma obra derivada da CoreNLP. Pode-se considerar xtas analíticas para um instalador de pacotes e um shell de comando aqui, que claramente não são trabalhos derivados dos pacotes que eles instalam ou dos programas que eles começam.

Sob esta interpretação, xtas como um todo (não incluindo o CoreNLP) podem ser distribuídos sob qualquer licença específica (sujeito a restrições impostas por suas outras dependências, é claro).

Na prática, os autores de xtas não distribuem CoreNLP; eles apenas distribuem o código xtas Python, sob a Licença Apache versão 2.


### Licença GPLv3 vs Propriedade

Neste projeto de exemplo, queremos combinar o [modelo de circulação global OpenIFS](https://confluence.ecmwf.int/display/OIFS) com o [modelo de simulação de grandes quantidades](https://github.com/dalesteam/dales). Ambos esses modelos estão disponíveis como bibliotecas, então o projeto envolve a combinação de bibliotecas OpenIFS e Dales em um único programa.

(Este é um exemplo simplificado, a realidade deste projeto é um entalhe ou dois mais complicado, e o abaixo não é exatamente o que fazemos.)

A biblioteca OpenIFS (parte do código do modelo climático ECMWF) está disponível sob uma licença proprietária que permite executar o programa e fazer modificações privadas, mas não permite distribuir o programa ou quaisquer derivados. Os dados são publicados sob a versão 3 do GPL.

#### Quantas obras separadas existem e o que é derivado de quê?

São quatro os trabalhos: OpenIFS, DALES, o resto do programa por nós escrito e a combinação de todos eles. O trabalho combinado é derivado de seus componentes.

#### As obras derivadas podem ser distribuídas? As licenças permitem isso e são compatíveis?

A licença do OpenIFS não permite a redistribuição, portanto não pode ser distribuída. Os DALES podem ser distribuídos, sob a GPLv3. O resto do programa foi escrito por nós e pode ser licenciado por nós, se quisermos.

Todo o trabalho combinado não pode ser distribuído, uma vez que incorpora o OpenIFS. Se não incluísse a OpenIFS, teria de ser distribuída sob a dependência da GPLv3, devido à dependência da DALES.

#### Podemos trabalhar com isto a título privado, sem distribuir nada?

O GPL permite fazer modificações privadas de software cobertos por ele, sem restrições, desde que o software alterado não seja distribuído de todo. A licença OpenIFS também permite fazer modificações privadas. Assim, podemos trabalhar neste projeto (e preparar e executar trabalhos combinados) sem violar as licenças, Enquanto não partilharmos os resultados com ninguém.

No entanto, se quisermos colaborar com alguém que está fora da nossa organização, isso significa que trocamos materiais entre diferentes entidades jurídicas, que têm de ser distribuídos. Podemos fazer isso com o nosso próprio código (que podemos até publicar abertamente sob o ALv2) e com o DALES, mas não com OpenIFS ou quaisquer obras combinadas.

#### Que outras opções existem neste tipo de situação?

Podemos tentar dividir o sistema em programas independentes que executam processos separados e se comunicam entre si através de interfaces genéricas bem documentadas. Desta forma, nunca haveria um trabalho conjunto, apenas algumas obras independentes que trocam informações. No entanto, para não ser considerado um único trabalho, a diferença que os programas têm de ser separados não é clara.

Poderíamos também pedir aos proprietários de direitos autorais OpenIFS e DALES permissão para compartilhar trabalhos combinados entre nossa organização e o exterior. Isso eliminaria toda a incerteza, mas pode não ser prático em geral.

Outra opção seria substituir uma das dependências por uma que escrevemos. Isso é geralmente impraticável, devido a restrições de tempo e porque a nova versão não teria a pregreia científica da actual.

A questão fundamental aqui é que o GPL tenta fazer com que todos partilhem os administradores do software que utilizamos. enquanto o software proprietário tenta manter o controle nas mãos de um único proprietário.

Combiná-las num único projecto é complicado e não isento de riscos legais, e há que evitá-lo. Se tal não for possível, deverá ser prudente.
