(hardware-rr-abertura)=
# Abrir Hardware

"Abrir hardware", ou "hardware de código aberto" [{term}`def<Open Source Hardware>`], refere-se às especificações de design de um objeto físico que são licenciadas de tal forma que esse objeto pode ser estudado, modificado, criado e distribuído por qualquer pessoa. Como o software de código aberto, o "código fonte" para hardware aberto - diagramas, diagramas, desenhos lógicos, Desenhos ou ficheiros ou desenhos de design assistidos por computador com Auxílio (CAD) e afins, estão disponíveis para modificação ou melhoria por qualquer pessoa. Usuários com acesso às ferramentas que podem ler e manipular esses arquivos fonte podem atualizar e melhorar o dispositivo físico e o código subjacente, e, se quiserem, vão partilhar essas modificações.

O código-fonte do hardware aberto deve ser facilmente acessível e seus componentes são de preferência fáceis de obter. Essencialmente, o hardware aberto elimina os bloqueios comuns ao desenho e fabrico de bens físicos; fornece ao maior número possível de pessoas a capacidade de construir, remixar e compartilhar o seu conhecimento sobre design e função de hardware.

Vale a pena notar que hardware aberto não significa necessariamente gratuito. Unidades ainda podem ser vendidas (pelo designer original ou por outros), mas usuários *poderiam* construí-las a partir do zero. Se escolhem ou não comprar a unidade, Os usuários ainda podem obter uma compreensão completa de como o hardware funciona a partir de documentação, projetos e similares disponíveis.

(rr-hardware-porquê)=
## Porquê Abrir Hardware?

O hardware aberto permite que os pesquisadores entendem o que seus equipamentos estão fazendo, como está fazendo, e para verificar se está a fazê-lo correctamente, em vez de ter de estender um certo grau de confiança. Estar ciente de como o equipamento que gera um resultado funciona coloca os investigadores numa base mais firme na avaliação desses resultados. O hardware aberto também torna a pesquisa mais reprodutível à medida que pesquisadores buscam verificar os resultados podem fazer a mesma coisa.

Outros benefícios do hardware aberto incluem a proteção contra o bloqueio. O software proprietário da infraestrutura central aumenta o risco de ficar bloqueado pelo vendedor ou pela tecnologia. Se isso acontecer, Os investigadores podem ficar à mercê dos aumentos de preços dos vendedores e da falta de flexibilidade a que não podem escapar facilmente e com facilidade. Além disso, se os investigadores quiserem modificar o seu equipamento para melhor satisfazer as suas necessidades. é muito mais fácil fazê-lo (e pode ser apenas legal) no caso de hardware de código aberto.

(elementos-hardware-rr-abertos)=
## Elementos de um projeto de hardware de código aberto

Aqui estão alguns arquivos que você deve considerar compartilhar ao publicar seu projeto de hardware de código aberto. Você não precisa postar todos eles, mas quanto mais compartilhar, mais a comunidade beneficia. Há aqui muito cruzamento com arquivos para incluir em projetos de software de código aberto.

(rr-hardware-elementos-visão geral)=
### Visão geral e introdução
Seu projeto de hardware de código aberto deve incluir uma descrição geral da identidade e finalidade do hardware, tanto quanto possível para um público em geral. Ou seja, explique o que é o projeto e para que serve antes de entrar nos detalhes técnicos.

(rr-open-hardware-elementos-licença)=
### Uma Licença
Uma licença apropriada no projeto de hardware aberto e seu conteúdo concede permissão legal a qualquer pessoa para reutilizar, modificar e distribuir os diferentes componentes de um projeto de acordo com os termos referidos (por exemplo, eles precisam reconhecer sua contribuição).

(rr-hardware-elements-design)=
### Arquivos de Design originais

Estes são os arquivos de origem que você usaria para fazer modificações no design do hardware. O ato de compartilhar esses arquivos é a prática principal do hardware de código aberto.
- Idealmente, seu projeto de hardware de código aberto seria projetado usando um aplicativo de software livre e de código aberto para maximizar a capacidade de outros de visualizá-lo e editá-lo.

Para melhor ou pior, os arquivos de design de hardware são frequentemente criados em programas proprietários e armazenados em formatos proprietários. Ainda é essencial compartilhar esses arquivos de design originais; eles constituem o "código-fonte" original do hardware. São os mesmos ficheiros de que alguém precisará para contribuir com alterações para um determinado design.
- Tente facilitar os arquivos de design para outra pessoa entender. Em particular, organize-as de uma forma lógica, comente aspectos complexos e registe quaisquer procedimentos de fabrico invulgares.
- Exemplos de arquivos de design originais incluem desenhos 2D e arquivos de design com suporte a computador (CAD).

(rr-open-hardware-elements-auxiliar)=
### Arquivos de design auxiliar

Além dos arquivos de design originais, muitas vezes é útil compartilhar seu design em formatos adicionais e mais acessíveis. Por exemplo, a melhor prática de abrir o design de um CAD é compartilhar o design não apenas em seu formato de arquivo nativo, mas também em uma gama de formatos intercambiáveis e exportáveis que podem ser abertos ou importados por outros programas CAD.
- Também é útil fornecer saídas prontas para visualização que podem ser facilmente visualizadas por usuários finais que desejam entender (mas não necessariamente modificar) o design. Tal saída poderia ser um PDF de um esquema de placa de circuito. Esses arquivos de design auxiliares permitem que as pessoas estudem o design do hardware, e, por vezes, até fabrica-o, mesmo sem acesso a pacotes de software proprietários específicos. No entanto, note que arquivos de design auxiliares nunca são recomendados como substitutos para arquivos de design original.

(rr-open-hardware-elementos-desenhos)=
### Desenhos Técnicos Adicionais
É útil fornecer quaisquer desenhos técnicos adicionais em seus formatos originais, caso sejam necessários para fabricar o dispositivo. Estes podem ser fornecidos em um formato legível como PDF.

(rr-hardware-elementos-materiais)=
### Conhecimento de Materiais

Embora possa ser possível inferir dos arquivos de design que fazem parte de um hardware, é essencial fornecer uma factura separada de materiais. Uma fatura de materiais pode ser uma planilha (por exemplo, CSV, XLS, Google Doc) ou simplesmente um arquivo de texto com uma peça por linha. As coisas úteis a serem incluídas na fatura de materiais são números de partes, fornecedores, custos e uma breve descrição de cada parte. Facilite dizer qual item na fatura de materiais corresponde a qual componente nos arquivos de design: use designers de referência correspondentes em ambos os lugares, fornecer um diagrama indicando qual parte vai para onde, ou de outra forma, explicar a correspondência.

(rr-hardware-elements-software)=
### Software e Firmware

Você deve compartilhar qualquer código ou firmware necessário para operar seu hardware. Isso permitirá que outros o usem com seu hardware ou o modifiquem juntamente com as modificações no seu hardware. Documente o processo necessário para construir seu software, incluindo links para quaisquer dependências (por exemplo, bibliotecas ou ferramentas de terceiros). Também é útil fornecer uma visão geral do estado do software (por exemplo, "estável" ou "beta" ou "freio de mau trabalho").

(rr-open-hardware-elementos-fotos)=
### Fotos
Fotos ajudam as pessoas a entender o que é seu projeto e como colocá-lo. É bom publicar fotografias de vários pontos de vista e em várias fases de reunião. Se você não tem fotos, postar renderizações 3D do seu design é uma boa alternativa. De qualquer forma, é bom fornecer legendas ou texto que explique o que é mostrado em cada imagem e por que é útil.

(rr-open-hardware-elementos-instruções)=
### Instruções e outras explicações

Além dos próprios arquivos de projeto, há uma variedade de explicações que são inestimáveis para ajudar outras pessoas a fazer ou modificar seu hardware:
- Criando hardware: para ajudar outros a fazer e modificar o design do seu hardware, você deve fornecer instruções para ir de seus arquivos de design para o hardware físico funcional. Como parte das instruções, é útil vincular a fichas técnicas para os componentes/partes do seu hardware e listar as ferramentas necessárias para montá-lo. Se o design requer ferramentas especializadas, diga às pessoas para onde consegui-las.
- Usando o hardware: Uma vez que alguém tenha feito o hardware, ele precisará saber como utilizá-lo. Forneça instruções que expliquem o que faz, como configurá-lo e como interagir com ele.
- Razão do Design: Se alguém quiser modificar seu design, vai querer saber por que é assim. Explique o plano geral do design do hardware e por que você fez as escolhas específicas que fez.
- Limite de jargão: Tenha em mente que essas instruções podem ser lidas por alguém cujo conhecimento especializado ou treinamento seja diferente do seu. Tente escrever no público em geral, tanto quanto possível. verifique suas instruções para jargões industriais, e seja explícito sobre o que você assume que o usuário sabe.
- Formato: As instruções podem estar em vários formatos, como uma wiki, arquivo de texto, Google Doc, ou PDF. Lembre-se, porém, que outros podem querer modificar as suas instruções à medida que modificam o seu design de hardware, então é bom fornecer os arquivos editáveis originais para a sua documentação, e não apenas formatos de saída como PDF.

(rr-open-hardware-processes)=
## Práticas e processos de hardware de código aberto

(rr-open-hardware-processes-designing)=
### Projetando seu hardware

Se você está planejando abrir um determinado hardware, seguir certas boas práticas em seu design tornará mais fácil para outros criar e modificar o hardware:

- Use ferramentas de design de software livre e de código aberto (CAD) quando possível: Se isso não for possível, tente usar pacotes de software de baixo custo e/ou amplamente utilizados.
- Use componentes padrão e amplamente disponíveis, materiais, e processos de produção: tente evitar peças que não estão disponíveis para clientes individuais ou processos que requerem custos de configuração caros.

(rr-open-hardware-processes-hosting)=
### Hospedando seus arquivos de design

Uma maneira primária de compartilhar seus arquivos é com um arquivo zip em seu site. Embora este seja um excelente começo, torna difícil para outros seguirem o vosso progresso ou contribuírem para melhorias. Usar um repositório de código-fonte on-line (como GitHub, GitLab ou NotaBug) pode ser um lugar melhor para armazenar seus projetos de hardware de código aberto.

(rr-open-hardware-processes-distribuição)=
### Distribuição de Hardware Open-Source

- Fornece links para a fonte (arquivos de design originais) para o hardware do próprio produto, sua embalagem ou sua documentação.
- Facilite o localizar a fonte (arquivos de design original) do site para um produto.
- Rotule o hardware com um número de versão ou data de lançamento para que as pessoas possam combinar o objeto físico com a versão correspondente dos seus arquivos de design.
- Em geral, indica claramente quais partes de um produto são de código aberto (e quais não são).
