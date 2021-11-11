# Avaliação de risco: complexidade e impacto

Todos nós usamos avaliações de risco o tempo todo. Às vezes são procedimentos formais para garantir a segurança de uma atividade, mas a maior parte das vezes eles estão pensando em um momento - esse café está muito quente? Há algum ônibus vindo? O software não é diferente e, usando uma abordagem de avaliação de riscos, como a descrita abaixo, pode realmente ajudar a tornar o seu trabalho bem sucedido e sustentável.

## A matriz de risco

Uma matriz de risco é uma maneira muito popular de quantificar o que está acontecendo com a coisa em que você está interessado. Um eixo mede de alguma forma a exposição e o outro o impacto de um mau acaso. Quanto mais longe for a origem, mais salvaguardas são necessárias para tornar o risco aceitável.

```{figure} ../../figures/risk-matrix.png
---
nome: matriz de risco
alt: impacto vs matriz de risco de complexidade
---
Impacto vs matriz de risco de complexidade
```

No nosso caso, utilizaremos como dois eixos a "complexidade" e o "impacto". Alguns estudos de caso mostram como funciona…

Caso 1

> Richard precisa apresentar 100 pequenas tarefas ao grupo de departamento, com os nomes das tarefas variando de acordo com um padrão simples. Isso é tedioso, e ele quer sair para brincar. Portanto, Richard decide escrever um pequeno script shell para apresentar todos os empregos. Ele pausa por alguns segundos e pergunta:

> Que complicação é essa? Será apenas cerca de 1 tela de texto.

> E se der errado? Os trabalhos não serão enviados ou executados e eu irei receber alguns e-mails com falha.

> Aqui, Richard decide que a complexidade e o impacto deste pequeno software são baixos. Portanto, usar o controle de versão e a documentação de escrita é desproporcionado neste momento. Ele decide fazer uma corrida seca, ecoando a linha de envio no terminal para que possa verificá-lo rapidamente.
> Algumas semanas depois, alguém no laboratório quer fazer a mesma coisa. Richard oferece seu script como funcionou muito bem para ele. Os golos se mudaram. Richard pausa por mais alguns segundos e reavalia o risco…
> …5 anos depois, O script de Richard evoluiu para um grande sistema de controle de fluxo de trabalho, permitindo que várias universidades gerenciem fluxos de trabalho complexos que consistem em 1000's de empregos apresentados a uma série de diferentes recursos de computação. O software agora tem um quadro de projectos formais que define a governação e a direção do software, assegurar que seja sustentável e satisfaça as necessidades dos 100 utilizadores em todo o mundo.

Caso 2...

> Jemma tem um problema com a visualização de alguns dados. A biblioteca habitual não consegue lidar com o formato dos seus dados. Ela ouviu falar do projeto de sexta-feira à tarde da Seth, onde ele escreveu um wrapper em torno dessa biblioteca para resolver o que parece ser o mesmo problema. Eles têm um café e decidem trabalhar juntos. Durante esse café, eles tomam algumas decisões sobre como vão trabalhar juntos - essa é sua avaliação de riscos. Definição concorda em ir embora e melhorar a documentação embutida e adicionar alguns exemplos de casos de uso antes de compartilhar. Jemma concorda em configurar um repositório no qual Seth colocará o código.

> Ao longo do tempo, mais pessoas começam a fazer uso deste software, com solicitações de recursos adicionando complexidade e mudanças na biblioteca subjacente causando quebras. Jemma e Seth concordam que as coisas estão a correr um pouco arriscadas porque o impacto de resultados errados pode causar problemas na publicação de resultados. Introduzem, portanto, testes de integração contínuos e um processo de revisão para garantir que as coisas continuem a ser sustentáveis.

O ponto-chave destes estudos de caso é que cada peça de software tem de ser sustentável. e estes requisitos podem ser alterados ao longo do tempo. A utilização de controle de versão, testes, documentação e outros conceitos de sustentabilidade são úteis para a gestão de risco. O uso de nenhuma dessas ferramentas deixa seu software exposto a coisas erradas, mas utilizar todos eles desde o início pode abrir caminho à inovação. A abordagem de avaliação de risco ajuda a encontrar o equilíbrio certo por enquanto. Revisite o tema de vez em quando, ou quando algo muda.

## Mais sobre a medição da complexidade

Uma medida de complexidade é a linha de contagem. Quanto mais retas você tiver mais lugares há para cometer um erro. No entanto, há outras coisas que poderão interessar-se. Quantas bibliotecas você depende? Quantas funções há? Todas estas medidas medem a complexidade do código. A complexidade também pode assumir outras formas. Quantos casos de utilização existem? Seu programa de contagem de blob é usado apenas para contar blobs nas biosciências? Existe pessoas que o usam para contar blobs em imagens CCTV? Em que tipos de computador as pessoas estão usando? CPU? GPU? Raspberry Pi? Assuma uma visão ampla do seu software.

## Mais sobre medição de impacto

O que acontece quando (não se) seu software não funciona? Às vezes, isso apenas te irrita por alguns minutos. No entanto, outro software errado pode ter enormes consequências: a retracção do seu papel seminal ou mesmo a perda de vidas. Medir o impacto requer um bom conhecimento do uso do seu software. Às vezes, pode ser difícil acompanhar isto até que as coisas corram mal. No entanto É possível tentar encabeçar esta questão fazendo perguntas como “este software que utilizo para a análise no meu papel e que serve para alguma coisa?”. Mais uma vez, tome uma opinião ampla sobre o seu software.
