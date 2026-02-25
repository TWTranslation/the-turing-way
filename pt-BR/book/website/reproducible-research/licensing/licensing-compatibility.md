(Compatibilidade de licenças-rr)=

# Compatibilidade de Licença

Se você utiliza vários componentes externos no seu programa, então você poderá acabar com várias restrições diferentes na licença do trabalho combinado.
Se estas restrições colidirem, não será possível distribuir legalmente o resultado (se estiver envolvido um software proprietário. então talvez não possam, juridicamente, fazer o trabalho combinado).

If two licenses specify incompatible constraints on the license of the combined work, then they are _incompatible_.

(rr-licensing-software-derivative)=

## Derivative Software

Within the category of free software, there are several subcategories, which are distinguished by what is allowed when making derivative software.
There are two basic ways of making a derivative work of a program or library: modifying it (forking), or combining it with other software (for example using a library in your program).
Of course, you can modify and then combine as well.

Modifying a program leads to a new program that is derived from the original.
This is similar to deriving the new edition of a textbook from the original.
Both the original and modified versions are works under copyright law, and both of them may be licensed.

Como um exemplo de combinação de software, imagine um programa A que usa duas bibliotecas preexistentes B e C. O programa completo A será composto por B, biblioteca C, e algum código D que conecta as bibliotecas e talvez adiciona funcionalidades adicionais.
Each of these four items is a work of authorship with a license.
Program A can sometimes be referred to as the "Combined work", "Work as a whole" or "Larger work".

Different free software licenses place different constraints on how modified versions and combined works can be licensed.

Copyleft licenses add some restrictions to the licensing of derivative works.
Like permissive licenses, they let you distribute the software unchanged under that license.
However, if you distribute a binary, then you have to include the source code as well.
Modified versions have to be distributed under the same license as the original; you are not allowed to change the license.

A GNU GPL, por exemplo, é incompatível com licenças proprietárias, porque exige que o trabalho combinado seja licenciado ao abrigo da GPL, sem que sejam permitidas restrições adicionais.
Ter uma parte do trabalho sob uma licença de propriedade é uma restrição adicional, então você não pode distribuir tal combinação (a menos que o proprietário dos direitos autorais do código GPL dê permissão especial).
However, GPL codebases often have many contributors and you need all of their permission. This is an intended feature of the license which is by design hostile to being re-licensed in a proprietary fashion.
{ref}`Contributor License Agreements (CLAs)<rr-licensing-edge-clas>` can be used by GPL projects circumvent this by empowering a single party to make decisions about relicensing if they want to allow for dual licensing of GPL or AGPL codebases.

When creating a combined work, a further distinction can be made.
_Strong_ copyleft licenses on a component require a combined work to be licensed under the same license as the component.
In the example above, if library B is distributed under a strong copyleft license such as the GNU GPL, then program A must be distributed under that same license.

_Weak_ copyleft licenses allow the combined work (A) to be distributed under any license, as long as the source for the licensed component (B) is also made available under its original license.
They may also require that the recipient of the combined work can re-link the modules after modifying the component.

(rr-licensing-software-overview)=

## Permission Overview

<table>
    <thead>
        <tr>
            <th rowspan="2"></th>
            <th colspan="2">Copyleft</th>
            <th rowspan="2">Permissive</th>
            <th rowspan="2">Proprietary</th>
        </tr>
        <tr>
            <th>Strong</th>
            <th>Weak</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th>Use for anything</th>
            <td>Yes</td>
            <td>Yes</td>
            <td>Yes</td>
            <td>Sometimes</td>
        </tr>
        <tr>
            <th>Private changes</th>
            <td>Yes</td>
            <td>Yes</td>
            <td>Yes</td>
            <td>Rarely</td>
        </tr>
        <tr>
            <th>Distribute original</th>
            <td>Same license, with source</td>
            <td>Same license, with source</td>
            <td>Same license, also binary-only<sup>1</sup></td>
            <td>Rarely</td>
        </tr>
        <tr>
            <th>Distribute modified</th>
            <td>Same license, with source</td>
            <td>Same license, with source<sup>2</sup></td>
            <td>Any license, also binary-only</td>
            <td>Rarely</td>
        </tr>
        <tr>
            <th>Distribute combined</th>
            <td>Same license, with source</td>
            <td>Any license, binary additions</td>
            <td>Any license, also binary-only</td>
            <td>Rarely</td>
        </tr>
    </tbody>
    <caption>
      <div class="footnote"><sup>1</sup>Under any license for the MIT license <sup>2</sup>Relicensing LGPL to GPL is allowed
      </div>
      Permissive licenses grant the largest set of permissions to users. Copyleft licenses require redistribution of the original or modified source to use the same license, with weak copyleft licences allowing a different choice of license for the combined work. Proprietary licenses rarely provide any permissions beyond the right to use the software.
    </caption>
</table>

Quando você usa diferentes peças de software juntas para resolver um problema, e quer distribuir o resultado, aqui estão as perguntas que você tem de responder:

- Quais obras separadas existem, e o que é derivado de quê?
- As obras derivadas podem ser distribuídas? As licenças permitem isso e são compatíveis?
- Como o(s) trabalho(s) deve ser licenciado?

A próxima seção mostra alguns exemplos de como isso é feito.

(rr-licensing-compatibility-exemplos)=

## Exemplos

Many of the examples in this section relate to [xtas](http://xtas.net).
xtas é um conjunto de ferramentas de processamento de linguagem natural para Python que reutiliza muitas bibliotecas de terceiros, programas e conjuntos de dados e, portanto, fornece uma variedade de excelentes exemplos.

```{figure} ../../../figures/xtas-overview96.*
---
name: xtas-overview96
alt: A graphical overview of xtas. A large rectangle represents the combined work xtas. Within this rectangle, there is a wide low rectangle at the top representing the xtas Python code, licensed under the Apache License v2. Underneath this, there are three side-by-side squares, representing respectively Python libraries, software, and data, that are used by xtas. Within the Python libraries square, there are three boxes. The first box contains the words "BSD", "MIT" and "ALv2". The second box contains "LGPLv2.1". The third box contains "GPLv2+". Within the Software square, there are four boxes. The first box contains "Web Service". The second box contains "LGPL v2.1+". The third box contains "Research only", and the fourth box contains "GPL 2+/3+". The Data square also contains four boxes. The first box contains "CC BY-SA 3.0". The second box contains "Research Only". The third box contains "No license, US" and the fourth box contains "CoNLL'02 only".
---
A graphical overview of xtas.
```

Os quatro componentes não-xtas estão sob licenças de software gratuitas e os autores de xtas detêm os direitos autorais do código xtas Python, para que todos os cinco componentes possam ser distribuídos pelos autores de xtas.
(ALv2), a GNU Lesser General Public License versão 2.1 (LGPLv2.1) e a GNU General Public License versão 2 ou posterior (GPLv2+).

(Note que a dependência da biblioteca GPLv2+ Python está obsoleta, mas, por estes exemplos, partimos do princípio de que ainda lá estam.)

xtas' Código Python é distribuído sob a Licença Apache versão 2.0.
Desde que os autores de xtas possuem os direitos autorais, eles podem licenciá-lo da maneira que quiserem (embora exista uma área cinza relacionada a dependências GPL, veja abaixo).
Os autores de xtas não distribuem quaisquer obras combinadas ou binários, mas nos exemplos abaixo, partiremos do princípio de que existe um trabalho combinado, de modo a podermos reflectir sobre a forma de o licenciar.

Nos seguintes exemplos, simplificaremos a maior parte deste processo e analisaremos uma ou algumas dependências separadamente.

(rr-licensing-compatibiliity-examples-apachevsbsd)=

### Apache vs. BSD

```{figure} ../../../figures/xtas-snowball96.*
---
name: xtas-snowball96
alt: An illustration of the xtas vs. Snowball example.  A large rectangle represents the combined work xtas. Within this rectangle, there is a wide low rectangle at the top representing the xtas Python code, licensed under the Apache License v2. Below that is a square containing the words "Snowball Stemmer" and "Python lib BSD".
---
An illustration of the xtas vs. Snowball example.
```

xtas uses [Snowball](https://snowballstem.org/), a Python-based stemming library. Snowball é publicada sob a licença BSD com 3 cláusulas.
Considerando apenas xtas e Snowball, podemos responder às três perguntas da seguinte forma:

#### Quais obras separadas existem, e o que é derivado de quê?

Existem três obras: Snowball, xtas Python code e a combinação de xtas.
O trabalho combinado é derivado do código Snowball e xtas Python, que são ambos trabalhos independentes.

Observe que o ALv2 e o LGPL v2. explicitamente indicar que o código-fonte que se destina a funcionar em combinação com uma biblioteca não é uma obra derivada, enquanto o binário resultante de (estática ou dinâmica) ligar as peças está junto.
Outras licenças, incluindo a GPL, não fazem qualquer declaração explícita a este respeito.

Tanto quanto sei, não há jurisprudência nesta matéria; partimos do princípio de que é esse o caso nestes exemplos.

#### As obras derivadas podem ser distribuídas? As licenças permitem isso e são compatíveis?

O Snowball é licenciado sob uma licença permissiva.
Ela pode ser redistribuída sob essa licença, e não há restrições na licença das obras derivadas.
Os autores do xtas podem licenciá-lo da maneira que quiserem.

#### Como o(s) trabalho(s) deve ser licenciado?

O código xtas Python e o trabalho combinado xtas são licenciados sob a Licença Apache v2.0.

Se autores de xtas redistribuírem o Snowball, eles devem fazê-lo sob a licença BSD concedida pelos autores de Snowball.
(Eles não podem conceder permissões adicionais para o Snowball, uma vez que não são donos dos direitos de autor, e restrições adicionais seriam inexequíveis pelo mesmo motivo.)

(rr-licensing-compatibility-examples-apachevslgpl)=

### Apache vs. LGPL

```{figure} ../../../figures/xtas-chardet96.*
---
name: xtas-chardet96
alt: An illustration of the xtas vs. chardet example. A large rectangle represents the combined work xtas. Within this rectangle, there is a wide low rectangle at the top representing the xtas Python code, licensed under the Apache License v2. Below that is a square containing the words "chardet" and "Python lib LGPLv2.1".
---
An illustration of the xtas vs. chardet example.
```

xtas uses [chardet](https://pypi.org/project/chardet/), a Python library for detecting the character set used in a string of text. O gráfico é publicado sob a GNU Lesser General Public License v2.1.
Tendo em conta apenas os xtas e o gráfico, podemos responder às três perguntas que se seguem.

#### Quais obras separadas existem, e o que é derivado de quê?

Existem três obras: o gráfico, o código xtas Python e o trabalho combinado.
O trabalho combinado é derivado do código do gráfico e xtas Python.
Os outros são obras independentes.

#### As obras derivadas podem ser distribuídas? As licenças permitem isso e são compatíveis?

O gráfico é licenciado sob uma licença autoral fraca, podendo ser redistribuído nos termos dessa licença.
As obras derivativas podem ser licenciadas sob qualquer licença.
However, the LGPLv2.1 requires that the recipient can (and is allowed to) modify the library and use the modified library with the derivative work.

#### Como o(s) trabalho(s) deve ser licenciado?

xtas como um todo, e o xtas código Python, podem ser licenciados da maneira que os autores quiserem, então eles usaram a Licença Apache v2.0.
If they distribute chardet, they must do so under the LGPLv2.1 license granted by its copyright owners.

(rr-licensing-compatibility-examples-apachevsgplv2)=

### Apache vs. GPLv2

```{figure} ../../../figures/xtas-unidecode96.*
---
name: xtas-unidecode96
alt: An illustration of the xtas vs. unidecode example. The large rectangle represents the combined work xtas. Within this rectangle, there is a wide low rectangle at the top representing the xtas Python code, licensed under the Apache License v2. Below that is a square containing the words "unidecode" and "Python lib GPLv2+".
---
An illustration of the xtas vs. unidecode example.
```

xtas previously used [unidecode](https://pypi.org/project/Unidecode/), a Python library for converting text encoded according to The Unicode® Standard into an ASCII approximation of it.
O Unidecode é publicado sob a GNU General Public License versão 2 ou posterior (GPLv2+).
Considerando apenas xtas e unidecodificação, podemos responder às três perguntas da seguinte forma.

#### Quais obras separadas existem, e o que é derivado de quê?

Existem três obras: unidecode, código xtas Python e trabalho combinado. O trabalho combinado deriva do unidecode e do código xtas Python.

Se o código xtas Python é uma derivada de unidecode não está claramente definida pela lei, e não existe jurisprudência nesta matéria.
A licença do Apache e a LGPL afirmam explicitamente que não é para o propósito dessas licenças, mas o GPL não contém essa cláusula.

Como eles são desenvolvidos separadamente, e não há código do unidecode no código xtas, partimos do princípio de que não se trata de um trabalho derivado.

#### As obras derivadas podem ser distribuídas? As licenças permitem isso e são compatíveis?

A Unidecode é licenciada sob uma licença com fortes direitos autorais, por isso é redistribuída sob os termos dessa licença. As obras derivativas devem ser licenciadas sob a mesma licença.

A unidecode é licenciada sob a GPL versão 2 ou posterior. This is known as a _disjunctive license_.
Os detentores de direitos autorais da unidecode oferecem a todos uma licença GPLv2, mas também uma licença GPLv3, e mesmo proativamente qualquer versão mais recente do GNU GPL que possa ser criada no futuro.
Um potencial usuário pode optar por aceitar qualquer uma destas licenças, ou uma combinação delas, se eles quiserem copiar a obra ou fazer trabalhos derivados.

#### Como o(s) trabalho(s) deve ser licenciado?

Se os autores de xtas distribuem o unidecode, eles devem fazê-lo sob a versão GPL 2 ou maior, como arbitrariamente remover licenças de outro código não faz sentido.
A combinação de xtas de trabalho deve ser distribuída sob as mesmas licenças ou um subconjunto deles.
O código xtas Python pode ser licenciado da maneira que quiser.

Os autores de xtas devem escolher uma licença para o código xtas Python que seja compatível com pelo menos uma das licenças que o unidecode possa ser distribuído para que outros possam montar e distribuir obras combinadas.
O ALv2 é compatível com a GPLv3 (mas não com a GPLv2, por razões técnicas), para que possam usá-la aqui.

O trabalho combinado deve ser licenciado sob a versão 3 ou posterior.
Se é importante que também possa ser utilizado no âmbito da GPLv2 então os autores do xtas podem licenciar o código do xtas Python sob o ALv2 e o GPLv2 (significado, eles oferecem ambas as licenças, e o usuário pode optar por aceitar qualquer ou ambos) e o trabalho combinado sob a versão 2 ou posterior.

Finalmente, pode ser decidido mais tarde que o código-fonte xtas do Python é uma obra derivada do unidecode porque ele o chama.
Mesmo que nenhum dos unidecode esteja incluído no trabalho, então os autores de xtas devem distribuir o código xtas Python sob pelo menos uma das licenças GPL em que o unidecode é distribuído abaixo.
Nesse caso, podem oferecer xtas sob o conjunto de licenças ALv2 e GPLv2+.

A solução mais simples, neste caso, seria simplesmente licenciar o código xtas Python e o trabalho derivado sob o GPLv3.

Como provavelmente está claro neste momento, Dependências que estão sob uma forte licença de cópia de segurança complicam sua vida se você quiser que as pessoas sejam capazes de fazer obras proprietárias com base no seu software.

(rr-licensing-compatibiliity-examples-apachevsall)=

### Apache vs BSD vs LGPL vs GPLv2

```{figure} ../../../figures/xtas-all-python-libs96.*
---
name: xtas-all-python-libs96
alt: An illustration of the xtas and all Python libraries example. A large rectangle represents the combined work xtas. Within this rectangle, there is a wide low rectangle at the top representing the xtas Python code, licensed under the Apache License v2. Below this, there are three squares. The first square contains the words "Snowball" and "Python lib BSD". The second square contains "chardet" and "Python lib LGPLv2.1". The third square contains the words "unidecode" and "Python lib GPLv2+".
---
An illustration of the xtas and all Python libraries example.
```

Agora, vamos considerar os três exemplos acima ao mesmo tempo.

#### Quantas obras separadas existem e o que é derivado de quê?

Existem cinco trabalhos: Bola de Neve, Carteiras, Unidecodificação, código xtas Python e xtas o trabalho combinado. O trabalho combinado é derivado de todos os seus componentes.

#### As obras derivadas podem ser distribuídas? As licenças permitem isso e são compatíveis?

Os quatro componentes não-xtas estão sob licenças de software gratuitas e os autores de xtas detêm os direitos autorais do código xtas Python, para que todos os cinco componentes possam ser distribuídos pelos autores de xtas.
A BSD, LGPLv2. e o GPLv2+ permitem licenciamento de trabalhos combinados sob a versão 2 ou maior, portanto, há pelo menos uma licença pela qual o trabalho combinado pode ser licenciado.

#### Como o(s) trabalho(s) deve ser licenciado?

O código xtas Python deve ser licenciado sob a licença Apache v2 e o trabalho combinado sob a versão 3 ou superior.
(See the {ref}`unicode example <rr-licensing-compatibility-examples-apachevsgplv2>` above for alternatives.)

### Ligar para programa externo

xtas can run the [Stanford CoreNLP program](https://stanfordnlp.github.io/CoreNLP/), which is written in Java and distributed under the GNU GPL version 3 or later. Quando o usuário chama a função xtas correspondente, CoreNLP é iniciado por xtas, a entrada do usuário é enviada através de um tubo e depois a saída CoreNLP é devolvida ao usuário ou processada posteriormente.

```{figure} ../../../figures/xtas-corenlp1-96.*
---
name: xtas-corenlp1-96
alt: An illustration of the xtas vs. CoreNLP example. The square represents the combined work xtas. Within this square, there is a wide low rectangle at the top representing the xtas Python code, licensed under the Apache License v2. Below that is a square containing the words "Stanford CoreNLP" and "Java program GPLv3+".
---
An illustration of the xtas vs. CoreNLP example.
```

Uma interpretação desta situação é que não difere de chamar uma função em uma biblioteca e de qualquer distribuição de xtas, no seu conjunto, incluindo a CoreNLP, deve ser abrangida pelo GPLv3+.
Contribuir para esta interpretação é o fato de que os xtas irão baixar e instalar o CoreNLP automaticamente, se necessário.

```{figure} ../../../figures/xtas-corenlp2-96.*
---
name: xtas-corenlp2-96
alt: Another illustration of the xtas vs. CoreNLP example. The square on the left represents the combined work xtas. Within this square, there is a rectangle representing the xtas Python code, licensed under the Apache License v2. On the right is a separate square representing CoreNLP, with the text "Stanford CoreNLP" and "Java program GPLv3+". Between the squares are two arrows, one at the top pointing from xtas to CoreNLP, and one at the bottom pointing from CoreNLP to xtas.
---
Another illustration of the xtas vs. CoreNLP example.
```

Outra interpretação é que o xtas e o CoreNLP são obras separadas e que o xtas se limita a comunicar com a CoreNLP sobre a sua interface padrão de utilizador.

Nesta interpretação xtas é um programa separado que ajuda o usuário a usar o programa CoreNLP a partir da linguagem Python. e não uma obra derivada da CoreNLP.
Pode-se considerar xtas analíticas para um instalador de pacotes e um shell de comando aqui, que claramente não são trabalhos derivados dos pacotes que eles instalam ou dos programas que eles começam.

Sob esta interpretação, xtas como um todo (não incluindo o CoreNLP) podem ser distribuídos sob qualquer licença específica (sujeito a restrições impostas por suas outras dependências, é claro).

Na prática, os autores de xtas não distribuem CoreNLP; eles apenas distribuem o código xtas Python, sob a Licença Apache versão 2.

### Licença GPLv3 vs Propriedade

In this example project we want to combine the [OpenIFS global circulation model](https://confluence.ecmwf.int/display/OIFS) with the [DALES large-eddy simulation model](https://github.com/dalesteam/dales).
Ambos esses modelos estão disponíveis como bibliotecas, então o projeto envolve a combinação de bibliotecas OpenIFS e Dales em um único programa.

(Este é um exemplo simplificado, a realidade deste projeto é um entalhe ou dois mais complicado, e o abaixo não é exatamente o que fazemos.)

A biblioteca OpenIFS (parte do código do modelo climático ECMWF) está disponível sob uma licença proprietária que permite executar o programa e fazer modificações privadas, mas não permite distribuir o programa ou quaisquer derivados.
Os dados são publicados sob a versão 3 do GPL.

#### Quantas obras separadas existem e o que é derivado de quê?

São quatro os trabalhos: OpenIFS, DALES, o resto do programa por nós escrito e a combinação de todos eles. O trabalho combinado é derivado de seus componentes.

#### As obras derivadas podem ser distribuídas? As licenças permitem isso e são compatíveis?

A licença do OpenIFS não permite a redistribuição, portanto não pode ser distribuída. Os DALES podem ser distribuídos, sob a GPLv3.
O resto do programa foi escrito por nós e pode ser licenciado por nós, se quisermos.

Todo o trabalho combinado não pode ser distribuído, uma vez que incorpora o OpenIFS.
Se não incluísse a OpenIFS, teria de ser distribuída sob a dependência da GPLv3, devido à dependência da DALES.

#### Podemos trabalhar com isto a título privado, sem distribuir nada?

O GPL permite fazer modificações privadas de software cobertos por ele, sem restrições, desde que o software alterado não seja distribuído de todo.
In the case of the AGPL, running a server interacted with in some way by users over a network is equivalent to distribution under the GPL and you would be required to provide any users with the source code.
A licença OpenIFS também permite fazer modificações privadas.
Assim, podemos trabalhar neste projeto (e preparar e executar trabalhos combinados) sem violar as licenças, Enquanto não partilharmos os resultados com ninguém.

No entanto, se quisermos colaborar com alguém que está fora da nossa organização, isso significa que trocamos materiais entre diferentes entidades jurídicas, que têm de ser distribuídos.
Podemos fazer isso com o nosso próprio código (que podemos até publicar abertamente sob o ALv2) e com o DALES, mas não com OpenIFS ou quaisquer obras combinadas.

#### Que outras opções existem neste tipo de situação?

Podemos tentar dividir o sistema em programas independentes que executam processos separados e se comunicam entre si através de interfaces genéricas bem documentadas.
Desta forma, nunca haveria um trabalho conjunto, apenas algumas obras independentes que trocam informações.
No entanto, para não ser considerado um único trabalho, a diferença que os programas têm de ser separados não é clara.

Poderíamos também pedir aos proprietários de direitos autorais OpenIFS e DALES permissão para compartilhar trabalhos combinados entre nossa organização e o exterior.
Isso eliminaria toda a incerteza, mas pode não ser prático em geral.

Outra opção seria substituir uma das dependências por uma que escrevemos.
Isso é geralmente impraticável, devido a restrições de tempo e porque a nova versão não teria a pregreia científica da actual.

A questão fundamental aqui é que o GPL tenta fazer com que todos partilhem os administradores do software que utilizamos. enquanto o software proprietário tenta manter o controle nas mãos de um único proprietário.

Combiná-las num único projecto é complicado e não isento de riscos legais, e há que evitá-lo.
Se tal não for possível, deverá ser prudente.
