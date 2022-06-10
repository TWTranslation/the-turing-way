(arquivo pd-filing)=
# Nomeando arquivos, pastas e outras coisas

## Pré-requisitos / nível de habilidade recomendado

Nenhum.

## Summary

Ao nomear seus arquivos, pastas e outros componentes de pesquisa de forma consistente e descritiva, você pode tornar seu trabalho encontrável, compreensíveis e reutilizáveis por você, seus colaboradores, e outras pessoas interessadas na sua pesquisa. Ele permite que os outros entendem o que é o objeto digital: o que os arquivos contêm e onde encontrá-los. Além disso, seguindo dicas simples para a nomeação de arquivos, você pode facilitar a identificação e o processo de seus arquivos.

## Como isso irá ajudá-lo/por que isso é útil

Usar bons nomes é provavelmente a maneira mais fácil de melhorar a reprodutibilidade e a reutilização do seu projeto de pesquisa.

## Conteúdo do capítulo

Há três princípios para apontar as coisas; os dois primeiros se aplicam a todos os tipos de coisas e o terceiro é opcional, mas valioso para manter o controle de seus arquivos {cite:ps}`Arquivo Bryan2015`.

Os nomes dos arquivos devem ser:
1. Máquina legível
2. Leitura humana
3. Opcional: Jogue bem com ordenação padrão


Antes de entrarmos nos detalhes do que eles significam, vamos ver alguns exemplos de nomes de arquivos ruins e bons.

| ❌ Má                                                      | ✔️ Bom                                        |
| --------------------------------------------------------- | --------------------------------------------- |
| `Myabstract.docx`                                         | `2020-06-08_abstract-for-sla.docx`            |
| `Nomes de Arquivos de Joe usam Espaços e Pontuação .xlsx` | `Joes-filenames-são-getting-better.xlsx`      |
| `figura 1.png`                                            | `Fig01_scatterplot-talk-length-vs-já.png`     |
| `fig 2.png`                                               | `Fig02_histogram-talk-attendance.png`         |
| `JW7d^(2sl@deletethisandyourcareerisoverWx2*.txt`         | `1986-01-28_dados-de-desafio-para-toques.txt` |


### Máquina legível

Nomes de componentes digitais devem ser fáceis de entender para computadores. Computadores gostam de nomes sem espaços, uso deliberado de delimitadores e sem caracteres especiais ou acentuados. Também computadores diferenciam maiúsculas de minúsculas, então para eles `cat.txt` e `Cat.txt` são arquivos diferentes.

Os nomes de arquivos `Joe ├s Filenames usam Espaços e Pontuação.xlsx` e `JW7d^(2sl@deletethisandyourcareeroverWx2*. xt` mostrado acima usa espaços vazios e caracteres especiais (`expec`, `^`, `(`, `@`,`*`), o que pode levar a dificuldades, por exemplo, quando você quer enviar-lhe o computador de outra pessoa.

Nomes de arquivos/pastas são fáceis de pesquisar (também usando expressões regulares) e fáceis de calcular (por exemplo, dividindo `_` ou `-` caracteres).

### Leitura humana

Alcançar legibilidade humana, é útil ter curtas (< 25 caracteres), mas nomes descritivos que contêm informações sobre o conteúdo do arquivo/pasta. Os limites de palavra no nome do arquivo podem ser indicados usando a capitalização medial chamada caso camel, por exemplo, "NomeDoArquivo", ou sublinhado, por exemplo "nome_arquivo". Nomes de arquivo não devem ter espaços ou outros caracteres especiais.

Para links da web ou Localizador de Recursos Uniformes (URL), esse conceito se chama [URL limpa](https://en.wikipedia.org/wiki/Clean_URL).

### Jogue bem com ordenação padrão

Para criar uma boa ordenação padrão, adicionar um número ou data no início do nome, muitas vezes é uma boa ideia. Isso mantém nossos arquivos classificados em ordem ascendente, com base em versões de arquivo ou em ordem cronológica. Por exemplo, muitas vezes organizamos todos os nossos decks de slide criados em datas diferentes na mesma pasta. Para classificá-los de acordo com a data de criação, podemos começar os nomes dos arquivos com `dia do mês ano` (por exemplo, `2020-02-21`). Recomendamos usar algo como o padrão [ISO 8601: YYYY-MM-DD](https://en.wikipedia.org/wiki/ISO_8601) para datas. Se você usar outros números, recomendamos que o espaçamento seja esquerdo com zeros, porque o seu computador irá pedir `003 < 004 < 020 < 100` ao contrário de `100 < 20 < 3 < 4`.

Nomear pastas de acordo com um número lógico pode levar a uma bagunça se a ordem mudar no futuro. Por exemplo, há uma pasta com os capítulos `01_introduction`, `02_naming_files`e `03_naming_folders`. O autor escreve um prefácio do livro e decide apertá-lo antes do capítulo da introdução. Isto significa que terão de renomear todos os processos para manter a ordem pretendida. Isto acontece muito e, claramente, tem mais aspectos negativos do que aspectos ascendentes.

## Checklist

Aqui estão algumas dicas para nomear arquivos em um projeto de pesquisa, que podem ser lidos tanto por humanos quanto por máquina {cite:ps}`Cowles2019Filenaming,Hodge2015Filenaming`:

- Nomear seus arquivos consistentemente
- Mantenha curto, mas descritivo
- Evite caracteres especiais ou espaços para mantê-la compatível com a máquina
- Use maiúsculas ou sublinhados para mantê-lo legível para humanos
- Use um formato de data consistente, por exemplo ISO 8601: `YYYY-MM-DD` para manter a ordem padrão
- Incluir um número de versão quando aplicável
- Compartilhar/estabelecer uma convenção de nome ao trabalhar com colaboradores
- Registre uma convenção de nome em seu plano de gerenciamento de dados


## O que aprender a seguir

Quer construir uma pasta com todos os arquivos do seu projeto de pesquisa? Confira nosso capítulo sobre {ref}`pesquisa compendia<rr-compendia>`.
