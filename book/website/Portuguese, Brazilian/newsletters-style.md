(Poca-boletimas-estilo)=
# Estilo Guia do Newsletter

No subcapítulo anterior, descrevemos o processo de rascunho, revisão e publicação das notícias mensais da _The Turing Way_.

Neste documento, enumerámos algumas orientações para manter a coerência em todos os boletins informativos.

- **Formato de arquivo**: Projetar o boletim informativo em [Markdown](https://en.wikipedia.org/wiki/Markdown)
- **Nome do arquivo**: Crie um nome de arquivo com o "newsletter_serial_mêsYYYY. d " formato, onde "serial" deve ser substituído pelo número de série (em número) da newsletter, o mês deve ser substituído pelo nome curto do mês e YYYY pelo ano em numérico.
- **Local do arquivo no _The Turing Way_ GitHub**: Os newsletters estão atualmente armazenados no caminho "the-turing-way/communications/newsletters/".
    - Esse local também consiste em um arquivo "README.md" que tem uma tabela para todas as newsletters publicadas que são atualizadas após cada versão.
    - Este local tem uma pasta chamada "imagens" que contém centralmente todas as imagens e está ligada às notícias correspondentes.
- **Dates**: "DD Meses YYYY" formato
    - usá-lo consistentemente em todo o documento
    - Para refletir um intervalo, use o formato "de DD a DD Mês YYYY".
    - Mesmo que as frases tenham referência a um dia em "ontem", "hoje" ou "amanhã", fornecer a data exata dentro de parênteses para que ainda faça sentido que alguém leia um boletim informativo no futuro.
- **Horário**: Use o tempo em [Horário da Média de Greenwich](https://greenwichmeantime.com/what-is-gmt/) (GMT) ou [Horário do Verão Britânico](https://greenwichmeantime.com/uk/time/british-summer-time/) (BST), seguido por um link do [arewemeetingyet. om](https://arewemeetingyet.com/#form) para verificar o tempo no fuso horário relativo
- **Links**: Use a formatação Markdown para um link como este, `[texto que precisa ser vinculado](link completo HTTP)`
    - Forneça links onde quer que seja útil, por exemplo, [HackMD para Colaboração Cafey;](https://hackmd.io/@KirstieJane/CollabCafe), [GitHub issue](https://github.com/alan-turing-institute/the-turing-way/issues), [páginas de registro](https://www.eventbrite.co.uk/) e [ver detalhes](https://github.com/alan-turing-institute/the-turing-way).
    - Crie um link para IDs de e-mail usando a sintaxe Markdown - `[real-email-id](mailto:real-email-id)`
- **Citação de outros**: uso de um símbolo menor que (>) seguido de um espaço antes da frase citada. Por exemplo: `> Esta é minha citação lendária.` irá aparecer como: > Esta é minha citação lendária.
- **Cabeçalho e estilo**: O título da newsletter é o cabeçalho superior.
    - Diferentes secções como sugerido nos boletins informativos são cabeçalhos de segundo nível e as subsecções são cabeçalhos de terceiro nível.
    - Usar letras negritos, itálicos, hiperlinks de textos e citações sempre que aplicável
    - O nome do projeto, _The Turing Way_, deve ser itálico.
    - Use quebras de linha para cada linha consistente com _The Turing Way_ formato.
    - Deixe pelo menos um espaço de linha após cada seção e subseção.
- **Language and tone**: Keep the overall language simple and jargon-free, see [_The Turing Way_ style guide](https://github.com/alan-turing-institute/the-turing-way/blob/main/CONTRIBUTING.md#style-guide) for reference.
    - O tom deve ser bem-vindo, amistoso e de preferência informal. Isto pode ser pessoal do estilo de escrita do autor.
    - Peça que mais de uma pessoa reveja seu rascunho para garantir que seu conteúdo seja fácil de entender e escrito claramente.
    - Se o uso de conteúdo de um idioma ou cultura for diferente do seu, peça às pessoas com essa língua ou cultura que revisem o seu rascunho para garantir que o conteúdo não esteja mal representado.
- **Uso de emojis**: É encorajado a usar emoji (*mostre sua personalidade*) 😇, mas mantenha-o simples, neutro e positivo.
    - Esteja ciente de que emojis ambíguos podem ser interpretados erradamente por diferentes leitores.
    - Em caso de dúvida, peça a alguém que reveja o seu projecto.
- **Uso de imagens**: Use apenas imagens relevantes vinculadas à notícia na newsletter.
    - Certifique-se de que as imagens estão disponíveis sob licença CC-BY ou aprovadas para serem reutilizadas pelos proprietários.
    - Evite usar memes, imagens com conteúdo político ou sexual ou qualquer coisa que não esteja diretamente relacionada à comunidade.
    - Ao redigir a newsletter em um HackMD, arraste e solte uma imagem no editor ou cole uma imagem para enviar automaticamente a imagem para [Imgur](https://en.wikipedia.org/wiki/Imgur).
    - Ao elaborar o boletim informativo no GitHub, carregue as imagens na pasta "the-turing-way/communications/newsletters/".
    - A convenção de nomenclatura para as imagens é "sobrenome-mês-YY. ng", onde o nome curto deve ser substituído pelo nome curto identificável da imagem, o mês deve ser substituído pelo nome curto do mês e YYYY deve ser substituído pelo ano.
    - Extensão do arquivo pode ser '.jpg', '.png' ou outro com tipo de arquivo de imagem compatível.
    - Use a sintaxe Markdown para vincular as imagens da newsletter: `![](image/path)`.
    - Como sugerido no guia de estilo [_The Turing Way_ ,](https://the-turing-way.netlify.app/community-handbook/style/style-figures.html), crie um texto alternativo para a imagem: `! Alt: Descrição da imagem - este não é o título, mas a explicação real da imagem](image/path)`
    - Abaixo da imagem, escreva um pequeno título descritivo para a imagem seguida de uma linha vazia. Link o título para a fonte, como um tweet ou um evento relacionado.
    - Ao usar várias imagens como painéis em uma única imagem coletiva, número de cada imagem claramente (isso pode ser feito em qualquer editor de foto ou texto) e fornecer um título numerado para cada imagem. Veja um exemplo [aqui](https://github.com/alan-turing-institute/the-turing-way/blob/main/communications/newsletters/newsletter_14_May2020.md#tweets-from-the-community).
