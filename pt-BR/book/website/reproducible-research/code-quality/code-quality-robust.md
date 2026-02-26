(rr-code-error)=

# Escrevendo código robusto

Todos nós já passamos por isso: você acabou de escrever um novo trecho de código, mas ao testá-lo, ele não funciona como esperado.
Talvez haja um erro de digitação, um bug ou você apenas passou o parâmetro errado para uma função.
Não é um grande problema, desde que você perceba!
Perceber que algo está errado é o primeiro passo para corrigir.

## Erros silenciosos

Você fará muitas suposições ao escrever um programa.
Por exemplo, o tipo de dado dos seus imports, a estrutura de um arquivo de dados, mas também o comportamento de quaisquer dependências, desde funções individuais, bibliotecas inteiras até a linguagem de programação usada e como ela funciona em diferentes sistemas operacionais.
É natural ter suposições como base.
No entanto, isso pode se tornar problemático quando essas suposições estão incorretas para um caso específico e o programa continua rodando mesmo assim.
Isso é o que se chama  "falha silenciosa".

Falhas silenciosas podem levar a problemas no futuro, provavelmente resultando em mensagens de erro estranhas e ininteligíveis que não têm nada a ver com o problema real.
Uma falha silenciosa que permanece silenciosa gerará resultados incorretos, e será necessário um olhar atento para detectá-la.
Para garantir que isso não aconteça, seu programa precisa de verificações e equilíbrios internos.
Ter boas práticas de gerenciamento de erros reduz drasticamente a possibilidade de que um problema ocorra e, especialmente, que passe despercebido.
O principal objetivo deste capítulo é ajudar você a tornar seu código robusto e capaz de lidar com diferentes problemas potenciais.

(rr-code-error-workflow)=

## Workflow

(rr-code-error-workflow-step1)=

### Passo 1: Descreva suas suposições

Seu código contém muitas suposições.
Por exemplo, uma função que realiza uma operação matemática simples pressupõe que sua entrada seja numérica.
O que acontece se essa função for usada em um trecho de texto?
Ou em um dataframe?
Ou em um arquivo aberto?

Em outro exemplo, vamos imaginar um fluxo de trabalho de ciência de dados.
Como parte desse fluxo, uma coluna chamada "Idade" é selecionada.
O que acontece se essa coluna não existir?
O fluxo de trabalho plota a coluna "Idade", mas o gráfico é cortado na idade 100.
O que acontece se os dados contiverem idades acima de 100?
Ou se essa coluna tiver números negativos?

Ao tomar decisões sobre casos como esses, o primeiro passo é ser explícito sobre as suposições feitas.
Para identificar suposições em seu código, você pode se perguntar:

- Que tipo de objeto/dado eu espero aqui?
- Quais arquivos precisam existir para que meu fluxo de trabalho funcione, e onde?
- Ao chamar uma função, estou confiando nas configurações padrão dos argumentos?
- Quando uma função retorna múltiplas saídas, eu garanto que estão na ordem correta?

Se você pensar de forma crítica, não há fim para as suposições que faz.
Por exemplo, você supõe que uma função embutida funciona de um jeito específico.
Rotular todas essas suposições talvez tomasse seu tempo para sempre, e esse não é o objetivo deste exercício.
Em vez disso, tente focar nas suposições que faz sobre os dados e/ou arquivos que alguém insere em seu fluxo de trabalho ou código.

(rr-code-error-workflow-step2)=

### Passo 2: Verifique/afirme as suposições

Uma vez que você identificou suposições, pode verificar se elas são verdadeiras.
This is also called '**asserting**'.
Dependendo da linguagem de programação e da natureza da suposição, há muitas formas criativas de fazer isso.
Um bom ponto de partida para verificar uma suposição pode ser uma estrutura if/else:

```
if my_assumption is not TRUE:
    do something
else:
    continue
```

If the assumption is `TRUE`, nothing happens and your code executes as usual.

No entanto, a simples existência desse bloco if/else pode alertar quem estiver usando o código caso uma condição importante não seja atendida.
Por exemplo, se estiverem tentando selecionar uma coluna que não existe.
Ou se estiverem tentando fazer operações matemáticas em trechos de texto.

Você também pode aproveitar os erros que são gerados pela linguagem de programação utilizada.
We will go into that in more detail in [Error handling](#rr-code-error-handling).

(rr-code-error-workflow-step3)=

### Passo 3: Lide com suposições não atendidas

O que você pode fazer quando uma condição não é atendida?

Existem basicamente três formas de lidar com uma suposição não atendida:

- Redirecionar: você pode enviar o programa em uma direção diferente com base nas informações recebidas;
- Reportar: você pode informar à pessoa usuária que algo está diferente do que o programa esperava;
- Abortar: você pode interromper a execução do programa.

Todas as linguagens de programação têm a opção de lançar um erro.
Esses erros podem vir em diferentes tipos.
Dois tipos principais que você encontrará na maioria das linguagens de programação são “aviso” e “erro”.
A '**warning**' is less severe than an 'error'; it indicates a potential problem, but does not stop the program.
An '**error**' is thrown when the program needs to halt.

Assim, os tipos de erro se encaixam bem com as diferentes formas de lidar com suposições não atendidas:

|                  | Tipo de erro | Ação                    |
| :--------------- | :----------- | :---------------------- |
| Redirecionamento | None         | Escolha o próximo passo |
| Reportar         | Aviso        | Nenhuma ação            |
| Abortar          | Erro         | Parar a execução        |

(rr-code-error-handling)=

## Tratamento de erros

Independentemente da linguagem de programação usada, os erros já existem.
A parte boa de um erro aparecer é que algo deu errado e quem estiver usando o programa fica sabendo.
A parte ruim é que a mensagem provavelmente não será informativa para quem usa o programa:

```output
object of type 'closure' is not subsettable
```

Você pode capturar esses erros no seu fluxo de trabalho e lidar com eles da mesma forma que lida com suposições não atendidas: redirecionar, reportar ou abortar.
Redirecting from an error has a technical term: '**exception handling**'.
Nesse caso, você espera que um certo erro seja lançado, mas em vez de interromper o programa, muda o rumo da execução.
In many programming languages, this is done in a `try... except` or `try... catch` block:

```
try:
    do_something_that_might_fail()
except ErrorType:
    do_something_else()
```

Reportar ou abortar a partir de um erro pode ser feito da mesma forma, mas em vez de usar o erro padrão, você pode gerar o seu próprio.
O mais importante é que, ao gerar uma mensagem de aviso ou erro pelo seu próprio programa, você tem controle sobre a qualidade da mensagem.
E, ao contrário da maioria dos erros embutidos, ela pode oferecer instruções para quem usa o programa saber como corrigir o problema.

(rr-code-error-messages)=

## Escrevendo boas mensagens de erro

Ao gerar um erro (ou aviso), você deve incluir informações sobre o problema na mensagem de erro.
Essa é uma informação importante para quem está tentando usar seu programa e se depara com um problema.
As informações fornecidas podem ajudar na depuração: fazer as mudanças necessárias para executar o programa com sucesso.

> "Garanta que, quando [seu programa] falhar, ele falhe de forma informativa."
>
> [Jenny Bryan](https://github.com/jennybc/debugging#readme)

Escrever boas mensagens de erro é uma habilidade que vem com muita prática.
Você provavelmente já recebeu mensagens de erro que foram pouco úteis e, em vez de ajudar a resolver o problema, só geraram confusão.
Uma mensagem de erro não ajuda quando é genérica demais, vaga ou pouco clara sobre os próximos passos.
Ao tornar seu programa mais robusto, é importante pensar bem nas informações incluídas em cada mensagem de erro.

```{figure} ../../../figures/error-management.*
---
name: error-management
alt: Three stages of error management. Left, a person working on a computer that is smoking, but the screen is clear and the person is unaware that there is a problem. Middle, a person with a computer that is smoking, displaying an error message. The person does not understand the message and is confused. Right, a person with a smoking computer that is presenting a clear error message. The person can now fix the problem and is happy.
---
Three stages of error management: silent failures (left) leave a user blissfully unaware of problems; unintelligible errors (middle) show there is a problem, but confuse the user; informative errors (right) both show a user there is a problem, and how to solve it.
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

Essas qualidades fazem uma boa mensagem de erro:

- Ela identifica claramente o problema.
- Ela mostra os próximos passos: itens a verificar ou ações que podem ajudar a entender ou corrigir o problema.
- Ela usa jargões de forma apropriada, e tem em mente o seu público-alvo.
- Ela é honesta sobre o que sabe e o que não sabe.

## Leia mais

As práticas descritas neste capítulo não são a mesma coisa que testar seu código.
Na verdade, elas se complementam e podem ser usadas em conjunto.
For example:

- Use testes para passar dados inesperados ao seu fluxo de trabalho e confirme se ele redireciona, reporta ou aborta como esperado.
- Use testes para confirmar que você recebe as mensagens de erro esperadas.

To read more about how to implement code testing in your project, see the dedicated chapter on {ref}`rr-testing`.