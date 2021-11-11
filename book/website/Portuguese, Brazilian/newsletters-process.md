# Processo de criação de um boletim informativo

Este documento fornece uma visão geral do processo que usamos em _The Turing Way_ para desenhar, analisar e publicar boletins informativos. Embora escritas para _O jeito de viragem_, estas etapas podem ser adaptadas para documentar o boletim informativo de qualquer projeto.

Sugerimos apenas usar essas recomendações como guias. Estas regras não devem ser consideradas como um conjunto de regras fixas ou a forma "única" de criar boletins informativos. Como autores individuais, você deve permitir que sua personalidade seja exibida nos seus rascunhos da newsletter. Afinal, esses boletins informativos caem na caixa de correio pessoal de alguém e provavelmente eles conhecem você (ou sua comunidade).

## Passos para redigir _The Turing Way_ newsletters

### Criar uma issue no GitHub para coletar itens

Crie uma nova issue no GitHub onde ao longo do mês você e outros membros da comunidade podem sugerir notícias como um comentário. Por exemplo, em [essa issue](https://github.com/alan-turing-institute/the-turing-way/issues/1037), vários membros poderiam sugerir notícias para incluir na próxima newsletter , neste caso para Junho de 2020. Tal GitHub podem ser publicadas na newsletter atual convidando contribuições de leitores e membros da comunidade para o próximo mês.

### Começar um rascunho

Há várias maneiras de iniciar um rascunho:

1. Crie um novo ramo de _The Turing Way_ [GitHub repositório](https://github.com/alan-turing-institute/the-turing-way/) dentro do diretório apropriado (explicado no próximo subcapítulo em {ref}`guia de estilo do boletim <ch-newsletters-style>`).

Você pode trabalhar localmente ou online nesta branch do GitHub através de um pull request (PR). Se estiver trabalhando online, por favor, mantenha o modo rascunho ligado para seu PR ou adicione "\[WIP\](trabalho em andamento) no título.

2. Crie o primeiro rascunho em um HackMD compartilhado ao trabalhar com outros para escrever seu rascunho de forma colaborativa antes de transferi-los em um ramo do GitHub.

Aqui está um exemplo de HackMD onde Malvika cria atualmente o primeiro rascunho: https://hackmd.io/@malvikasharan/tw-newsletter.

### Colete itens para a newsletter como pontos de balas

Com base no que publicamos atualmente, colete informações dos recursos listados para os tópicos descritos abaixo:

1. **Reuniões da comunidade**: consulte o [calendário da comunidade](https://calendar.google.com/calendar/embed?src=theturingway%40gmail.com&ctz=Europe%2FLondon) para eventos futuros, como Colaboração Cafect, , livro traço e workshops.

2. **Notícias da comunidade**: verifique no Twitter se há atualizações sobre a [conta oficial](https://twitter.com/turingway) e o [#TuringWay Hashtag](https://twitter.com/hashtag/TuringWay?src=hashtag_click), ver o repositório do Github para [problemas](https://github.com/alan-turing-institute/the-turing-way/issues) para discussões em andamento, recentemente [merge de PRs](https://github.com/alan-turing-institute/the-turing-way/pulls?q=is%3Apr+is%3Aclosed+sort%3Aupdated-desc) e novos capítulos. Você também pode perguntar no [canal do Slack](https://theturingway.slack.com) se alguém gostaria de adicionar algo à newsletter. Nesta parte, destacam-se também quaisquer marcos importantes do projecto que foram ou estabelecidos ou alcançados ao longo do último mês.

4. **Recursos relevantes para a comunidade**: verifique o Twitter e posts on-line para qualquer publicação recente dos membros da comunidade, recursos para formação ou criação de habilidades ou qualquer outro material, como posts de blog ou artigos publicados na rede que possam ser úteis para os outros.

5. **Dicas & truques para novos contribuidores**: isto inclui qualquer recurso no projeto que pode fazer novos membros aprenderem maneiras de interagir identificar caminhos para começar como contribuidores e encontrar conteúdo relativo como histórias de impacto de membros existentes, perfis dos contribuintes ou outros aspectos relacionados à comunidade.

6. **Seção de Reconhecimento e celebração**: este é o lugar para dar gritos aos nossos membros que ajudaram o projeto ou outros de alguma forma, comemore marcos pessoais e destaque quaisquer anúncios relevantes dos membros da comunidade. Este é também um lugar para compartilhar tweets da comunidade ou mencionar outras interações online, como publicações de reuniões recentes onde alguém falou sobre _The Turing Way_.

A newsletter deve se concentrar mais nos contribuidores e novos membros e destacar apenas conteúdo digno de nota dos membros principais da _The Turing Way_.

### Colete imagens associadas com o item de notícias

Seguindo as recomendações no guia de estilo {ref}`para a comunidade<ch-style>` e {ref}`guia de estilo para newsletters<ch-newsletters-style>` para usar imagens, coletar algumas imagens (máximo de 2 por seção). Certifique-se de que estas imagens estão disponíveis sob uma licença gratuita (como CC-BY), coletada com o link de suas fontes, e nomeada claramente conforme sugerido no guia de estilo.

Para as menções ao Twitter, não há um número fixo de screenshots, mas 4-6 tweets parecem menos lotados no boletim informativo. Eles podem ser editados juntos em uma imagem (explicado no guia de estilo da newsletter).

### Escreva sobre cada item de notícia

Baseado nos pontos de balas coletados para cada item de notícia, criar 1-2 pequenos parágrafos usando as recomendações para o idioma e formato descrito no subcapítulo seguinte.

Forneça links quando útil, dar créditos de forma justa aos membros da comunidade que possam estar associados à notícia e terminar o parágrafo com uma frase e link para mais informações.

### Revisando seu rascunho

Antes de compartilhar seu rascunho, você deve fazer um revisor de gramática e erro de digitação. Um aplicativo online como [Ginger Grammar Checker](https://www.gingersoftware.com/grammarcheck), [Grammarly](https://app.grammarly.com) versão gratuita, [GrammarCheck](https://www.grammarcheck.net/editor/) ou [Reverso Speller](https://www.reverso.net/spell-checker/english-spelling-grammar/) pode ajudar a corrigir quaisquer erros gramaticais e de ortografia.

Você também deve verificar novamente se os links mencionados no rascunho não estão quebrados. Você pode usar ferramentas online, como o [verificador de links do W3C](https://validator.w3.org/checklink) ou versão gratuita do [Dr. Link Check](https://www.drlinkcheck.com/).

Se possível, obtenha seu rascunho analisado por 1-2 membros.

### Atualizando seu rascunho no repositório online

Se você já elaborou sua newsletter em uma agência local, antes de criar uma PR, adicione todas as imagens mencionadas no boletim informativo para o local do arquivo da direita: `the-turing-way/communications/newsletters/images`. Mais detalhes sobre o uso de imagens foram discutidos no próximo subcapítulo, {ref}`guia de estilo<ch-newsletters-style>`.

Se você está trabalhando em um PR no GitHub, envie todas as imagens e verifique se elas estão ligadas corretamente.

Se você criou seu rascunho da newsletter em um HackMD, copie e cole o conteúdo para criar/atualizar seu PR GitHub e carregue todas as imagens vinculadas.

Quando estiver pronto, marque seu PR como "Pronto para Revisão" e marque alguns membros contribuidores, De preferência, aqueles que foram mencionados no projecto para que possam rever e aprovar o seu texto.

### Revisar processo

Os revisores da newsletter podem rever o texto para linguagem, relevância, tipos, precisão (verificação de fatos), adequação do uso de imagens e do tom geral.

Os revisores podem fornecer feedback construtivo sobre o rascunho da newsletter e adicionar qualquer item ausente que gostaria de destacar, sugerir alterações apropriadas e aprovar o PR quando estiver pronto para o rascunho ser publicado.

Após o processo de revisão, o nome de cada revisor pode ser adicionado sob as menções especiais pelo autor para reconhecer seu trabalho.

### Processo de publicação

Atualmente estamos usando o [TinyLetter](https://tinyletter.com/) para publicar os nossos boletins informativos. TinyLetter é uma subsidiária do [MailChimp](https://mailchimp.com/), que oferece um serviço gratuito simplificado para configurar uma newsletter por e-mail e compartilhá-lo com os inscritos.

Aqui estão as etapas para publicar o rascunho da newsletter on-line e enviar por e-mail para os membros inscritos:

- Converta o conteúdo Markdown do rascunho da newsletter em HTML usando o [browserling. om](https://www.browserling.com/tools/markdown-to-html) copiando o conteúdo Markdown para a caixa de texto no aplicativo web e pressionando "Converter para o botão HTML".
- Se autorizado, faça login na conta do TinyLetter e clique no botão "Escrever um boletim informativo".
- Cole o conteúdo HTML do seu rascunho gerado pelo navegador.
- Certifique-se de que o assunto esteja escrito na caixa de texto correta.
- Clique em "Visualizar" para ver como será a versão renderizada de sua mensagem.
- Envie uma versão de pré-visualização para o seu e-mail ou _The Turing Way_ email (theturingway@gmail.com) para verificar se tudo está OK.
- Uma vez confirmado o seu formato e conteúdo, o boletim informativo é enviado para os membros registrados clicando em "Enviar para todos".
- Os [boletins informativos on-line](https://tinyletter.com/TuringWay/) são compartilháveis pelos links e também podem ser lidos por membros não inscritos.

*(Ganhe para fazer sua newsletter [aqui](https://www.sitepoint.com/how-start-a-newsletter-in-minutes-with-tinyletter/).)*

 **Ele é publicado, e agora?**

- Atualize a tabela de índice no [arquivo README.md](https://github.com/alan-turing-institute/the-turing-way/blob/main/communications/newsletters/README.md) com os detalhes da nova newsletter publicada.
- Tweet sobre isso em [@turingway](https://twitter.com/turingway).
- Envie uma notificação nos canais [Gitter](https://gitter.im/alan-turing-institute/the-turing-way) e [Slack](https://theturingway.slack.com).
- Faça uma dança comemorativa! (Isso é obrigatório! 💃)
