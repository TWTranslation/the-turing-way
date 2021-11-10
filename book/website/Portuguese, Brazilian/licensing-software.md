(pr-licensing-software)=
# Licenças do Software

Uma licença de software rege a extensão do uso ou redistribuição de software, com ou sem documentação de software.

Existem muitas licenças de software. Muitos deles permitem que a licença faça muito pouco, mas outros dão a você mais liberdade para usar e reutilizar o software licenciado.

O site [https://choosealicense.com/](https://choosealicense.com/) oferece um mecanismo direto para ajudá-lo a escolher a melhor licença para seu projeto.

Para fazer algum sentido desta variedade, podemos categorizá-las da seguinte maneira.

## Categorias de licença

<table>
    <thead>
        <tr>
            <th colspan="3">Gratuito</th>
            <th rowspan="3">Proprietário</th>
        </tr>
        <tr>
            <th colspan="2">Copiaresquerda</th>
            <th rowspan="2">Permissivo</th>
        </tr>
        <tr>
            <th>Forte</th>
            <th>Fraco</th>
        </tr>
    </thead>
    <tbody>
        <tr>
        <td>GPL<sup>1</sup> CDDL<sup>2</sup></td>
        <td>LGPL<sup>3</sup> MPL<sup>4</sup></td>
        <td>BSD<sup>5</sup> MIT<sup>6</sup> Apache</td>
            <td>Pesquisa somente: Não&nbsp;copiar, Não&nbsp;modificação</td>
        </tr>
    </tbody>
    <caption>
      <div class="footnote">
        <sup>1</sup>GPL: Licença Pública Geral GNU <sup>2</sup>CDDL: Licença de Desenvolvimento e Distribuição Comum <sup>3</sup>LGPL: Licença Pública Geral Menor GNU <sup>4</sup> MPL: Mozilla Licença Pública <sup>5</sup> BSD: Distribuição de Software Berkeley <sup>6</sup> MIT: Instituto de Tecnologia Massachusetts
      </div>
      As licenças podem ser gratuitas ou proprietárias, com licenças gratuitas classificadas como Direitos Autorais ou Permissões.
    </caption>
</table>

(rr-licensing-software-free)=
## Software Livre

Licenças de software são gratuitas ou proprietárias. Software livre vem com termos de licença que lhe dão ([conforme definido por GNU](https://www.gnu.org/philosophy/free-sw.html)):

* _Liberdade 0_: A liberdade de executar o programa como você quiser, para qualquer propósito.
* _Liberdade 1_: A liberdade de estudar como o programa funciona e alterá-la, para que ele faça a sua computação como quiser. O acesso ao código fonte é uma condição prévia para isso.
* _Liberdade 2_: A liberdade de redistribuir cópias para que você possa ajudar outros em sua comunidade.
* _Liberdade 3_: A liberdade de distribuir cópias de suas versões modificadas para os outros. Ao fazer isso, você pode dar a toda a comunidade uma chance de se beneficiar das suas mudanças. O acesso ao código fonte é uma condição prévia para isso.

Em conjunto, estas quatro liberdades neutralizam efectivamente os direitos de autor; *Liberdades 0* e *2* permitem que você use o software original e compartilhe-o com outros. *Liberdades 1* e *3* permitem que você crie obras derivativas com base no software e compartilhe-as com outros.

Note que é perfeitamente aceitável vender cópias de software livre, garantia ou serviços de desenvolvimento; isto é sobre a liberdade de fazer coisas com o software, não sobre o seu preço.

Existem duas outras definições semelhantes em uso; [Open Source Definition](https://opensource.org/osd-annotated) e [Debian Free Software Guidelines](https://www.debian.org/social_contract#guidelines). A definição de software livre acima, por Richard Stallman, é a mais simples e concisa e, na prática, as categorias que eles definem são quase idênticas.

O software que não é gratuito é proprietário. Software que você não tem permissão para copiar ou modificar caem nesta categoria, tal como o software com restrições de uso, por exemplo, "Para uso da pesquisa" ou "Apenas para uso não-comercial".

Existem algumas subcategorias de software proprietário com nomes confusos. _Freeware_ é um software que pode ser copiado sem pagar ninguém, mas vem sem fonte e não pode ser modificado. _A fonte compartilhada_ vem com fonte, mas sem permissão para modificar. Nenhum destes é livre no sentido acima.

(rr-licensing-software-derivative)=
## Software Derivativo

Na categoria do software livre, existem várias subcategorias que são distinguidas pelo que é permitido quando se faz software derivado. Existem duas maneiras básicas de fazer um trabalho derivativo de um programa ou biblioteca: modificá-lo (forjando), ou combinando-o com outro software (por exemplo, usando uma biblioteca em seu programa). Claro, você pode modificar e então combinar também.

A modificação de um programa leva a um novo programa derivado do original. Isso é parecido com a nova edição de um livro de texto do original. Tanto as versões originais como as modificadas são obras nos termos da lei de direitos autorais e ambas podem ser licenciadas.

Como um exemplo de combinação de software, imagine um programa A que usa duas bibliotecas preexistentes B e C. O programa completo A será composto por B, biblioteca C, e algum código D que conecta as bibliotecas e talvez adiciona funcionalidades adicionais. Cada um destes quatro itens é uma obra de autoria com uma licença. O programa A às vezes pode ser referido como "Trabalho combinado", "Trabalho como um inteiro" ou "Trabalho maior".

Diferentes licenças de software livre colocam restrições diferentes sobre como versões modificadas e trabalhos combinados podem ser licenciados.

(rr-licensing-software-permissive)=
## Licenças de permissão

Como o nome implica, licenças de software livre permissivas são as menos restritivas. Eles permitem que você distribua o software sem alteração sob essa licença, com ou sem código-fonte. Eles também permitirão que você distribua uma versão modificada sob qualquer licença que você quiser, e permitem que você distribua uma obra combinada sob qualquer licença.

Exemplos de licenças permissivas bem conhecidas são os vários licenciamentos BSD, a licença MIT, e a Licença Apache 2.0.

(rr-licensing-software-copyleft)=
## Copiaresquerda

Copyleft licenses add algumas restrições à licença de obras derivadas. Como licenças permissivas, eles permitem que você distribua o software sem alterações sob essa licença. No entanto, se você distribui um binário, então você também terá que incluir o código-fonte. As versões modificadas devem ser distribuídas sob a mesma licença que o original; você não tem permissão para alterar a licença.

Quando se cria um trabalho combinado, pode estabelecer-se uma nova distinção. _Strong_ copyleft licenses on a component require a combined work to be licensed under the same license as the component. No exemplo acima, se a biblioteca B é distribuída sob uma forte licença copyleft como a GNU GPL, então programe A deve ser distribuída sob essa mesma licença.

_Licenças cópias fracas_ permitem a distribuição combinada do trabalho (A) sob qualquer licença, Desde que a fonte para o componente licenciado (B) também seja disponibilizada sob sua licença original. Eles também podem exigir que o destinatário do trabalho combinado possa re-vincular os módulos após modificar o componente.

(rr-licensing-software-Visão geral)=
## Resumo de Permissões

<table>
    <thead>
        <tr>
            <th rowspan="2"></th>
            <th colspan="2">Copiaresquerda</th>
            <th rowspan="2">Permissivo</th>
            <th rowspan="2">Proprietário</th>
        </tr>
        <tr>
            <th>Forte</th>
            <th>Fraco</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th>Usar para qualquer coisa</th>
            <td>sim</td>
            <td>sim</td>
            <td>sim</td>
            <td>Às vezes</td>
        </tr>
        <tr>
            <th>Mudanças privadas</th>
            <td>sim</td>
            <td>sim</td>
            <td>sim</td>
            <td>Raramente</td>
        </tr>
        <tr>
            <th>Distribuir original</th>
            <td>Mesma licença com origem</td>
            <td>Mesma licença com origem</td>
            <td>Mesma licença, também binary-only<sup>1</sup></td>
            <td>Raramente</td>
        </tr>
        <tr>
            <th>Distribuir modificado</th>
            <td>Mesma licença com origem</td>
            <td>Mesma licença, com origem<sup>2</sup></td>
            <td>Qualquer licença, também binária</td>
            <td>Raramente</td>
        </tr>
        <tr>
            <th>Distribuir combinado</th>
            <td>Mesma licença com origem</td>
            <td>Qualquer licença, adições binárias</td>
            <td>Qualquer licença, também binária</td>
            <td>Raramente</td>
        </tr>
    </tbody>
    <caption>
      <div class="footnote">
        <sup>1</sup>Sob qualquer licença da licença MIT, é permitida <sup>2</sup>Relicenciamento LGPL para GPL
      </div>
      Licenças de permissão concedem o maior conjunto de permissões aos usuários. Copyleft licenses requerem redistribuição da fonte original ou modificada para usar a mesma licença, com licenças com direitos autorais fracas, permitindo uma escolha diferente da licença para o trabalho combinado. Licenças patenteadas raramente fornecem quaisquer permissões além do direito de usar o software.
    </caption>
</table>

