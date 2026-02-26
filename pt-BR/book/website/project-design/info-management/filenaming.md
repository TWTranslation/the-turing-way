(arquivo pd-filing)=

# Nomeando arquivos, pastas e outras coisas

## Pré-requisitos / nível de habilidade recomendado

Nenhum.

## Resumo

Ao nomear seus arquivos, pastas e outros componentes de pesquisa de forma consistente e descritiva, você pode tornar seu trabalho encontrável, compreensíveis e reutilizáveis por você, seus colaboradores, e outras pessoas interessadas na sua pesquisa.
Ele permite que os outros entendem o que é o objeto digital: o que os arquivos contêm e onde encontrá-los. Além disso, seguindo dicas simples para a nomeação de arquivos, você pode facilitar a identificação e o processo de seus arquivos.

## Motivação e Antecedentes

Usar bons nomes é provavelmente a maneira mais fácil de melhorar a reprodutibilidade e a reutilização do seu projeto de pesquisa.

## Chapter content

There are three principles to naming things; the first two apply to all kinds of things and the third is optional but valuable for keeping track of your files {cite:ps}`Bryan2015Filenaming`.

Os nomes dos arquivos devem ser:

1. Máquina legível
2. Leitura humana
3. Opcional: Jogue bem com ordenação padrão

Antes de entrarmos nos detalhes do que eles significam, vamos ver alguns exemplos de nomes de arquivos ruins e bons.

| ❌ Bad                                             | ✔️ Bom                                            |
| ------------------------------------------------- | ------------------------------------------------- |
| `Myabstract.docx`                                 | `2020-06-08_abstract-for-sla.docx`                |
| `Joe’s Filenames Use Spaces and Punctuation.xlsx` | `Joes-filenames-are-getting-better.xlsx`          |
| `figure 1.png`                                    | `Fig01_scatterplot-talk-length-vs-interest.png`   |
| `fig 2.png`                                       | `Fig02_histogram-talk-attendance.png`             |
| `JW7d^(2sl@deletethisandyourcareerisoverWx2*.txt` | `1986-01-28_raw-data-from-challenger-o-rings.txt` |

### Máquina legível

Nomes de componentes digitais devem ser fáceis de entender para computadores.
Computadores gostam de nomes sem espaços, uso deliberado de delimitadores e sem caracteres especiais ou acentuados.
Also computers (or rather their operation systems) may be case sensitive, so for them `cat.txt` and `Cat.txt` may be different files.

The file names `Joe´s Filenames Use Spaces and Punctuation.xlsx` and `JW7d^(2sl@deletethisandyourcareerisoverWx2*.txt` shown above use empty spaces and special characters (`´`, `^`, `(`, `@`,`*`), which can lead to difficulties, for example when you want to send it someone else's computer.

Good file/folder names are easy to search for (also using regular expressions) and easy to compute on (for example by splitting on `_` or `-` characters).

### Leitura humana

To achieve human readability, it is helpful to have short (< 25 characters) but descriptive names that contain information on the content of the file/folder.
Os limites de palavra no nome do arquivo podem ser indicados usando a capitalização medial chamada caso camel, por exemplo, "NomeDoArquivo", ou sublinhado, por exemplo "nome_arquivo".
Nomes de arquivo não devem ter espaços ou outros caracteres especiais.

For web links or Uniform Resource Locator (URL), this concept is called [clean URL](https://en.wikipedia.org/wiki/Clean_URL).

### Jogue bem com ordenação padrão

Para criar uma boa ordenação padrão, adicionar um número ou data no início do nome, muitas vezes é uma boa ideia.
Isso mantém nossos arquivos classificados em ordem ascendente, com base em versões de arquivo ou em ordem cronológica.
Por exemplo, muitas vezes organizamos todos os nossos decks de slide criados em datas diferentes na mesma pasta.
To sort them by their date of creation, we can start the file names with `year-month-day` (for example `2020-02-21`).
We recommend using something like the [ISO 8601 standard: YYYY-MM-DD](https://en.wikipedia.org/wiki/ISO_8601) for dates.
If you use other numbers, we recommend left padding them with zeros, because your computer will order `003 < 004 < 020 < 100` as opposed to `100 < 20 < 3 < 4`.

Nomear pastas de acordo com um número lógico pode levar a uma bagunça se a ordem mudar no futuro.
For example, there is a folder with the book chapters `01_introduction`, `02_naming_files`, and `03_naming_folders`. O autor escreve um prefácio do livro e decide apertá-lo antes do capítulo da introdução. Isto significa que terão de renomear todos os processos para manter a ordem pretendida.
Isto acontece muito e, claramente, tem mais aspectos negativos do que aspectos ascendentes.

## Checklist

Here are some tips for naming files within a research project, which are both human- and machine-readable {cite:ps}`Cowles2019Filenaming,Hodge2015Filenaming`:

- Nomear seus arquivos consistentemente
- Mantenha curto, mas descritivo
- Evite caracteres especiais ou espaços para mantê-la compatível com a máquina
- Use maiúsculas ou sublinhados para mantê-lo legível para humanos
- Use consistent date formatting, for example ISO 8601: `YYYY-MM-DD` to maintain default order
- Incluir um número de versão quando aplicável
- Compartilhar/estabelecer uma convenção de nome ao trabalhar com colaboradores
- Registre uma convenção de nome em seu plano de gerenciamento de dados

## What to learn next

Quer construir uma pasta com todos os arquivos do seu projeto de pesquisa?
Check out our chapter on {ref}`research compendia<rr-compendia>`.
