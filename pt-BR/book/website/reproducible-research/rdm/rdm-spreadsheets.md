(rr-rdm-planilhas)=

# Organização de Dados em Planilhas

Spreadsheets, such as Microsoft Excel files, google sheets, and their Open Source alternative [(for instance) LibreOffice](https://www.libreoffice.org), are commonly used to collect, store, manipulate, analyse, and share research data.
Planilhas são ferramentas convenientes e fáceis de usar para organizar a informação de forma fácil de escrever e de ler formulários para humanos.
No entanto, devemos usá-los com cautela, uma vez que a utilização de uma planilha inadequada é uma das principais causas de erros no fluxo de análise de dados.
See for example the [loss of COVID19 data in England due to poor use of Excel](https://www.bbc.com/news/technology-54423988).
There is a collection of [horror-stories](https://eusprig.org/research-info/horror-stories/) that tells how the use of spreadsheets can ruin analysis-based studies due to unexpected behaviour of the spreadsheet or error-prone editing processes.
Some of these mishaps are not unique to spreadsheets, but many, such as [Gene name errors](https://doi.org/10.1186/s13059-016-1044-7) (and another [Gene name error example](https://doi.org/10.1186/1471-2105-5-80)), are.

Felizmente, a maioria dos problemas podem ser evitados com as seguintes recomendações:

- Use a planilha em um formato apenas de texto (.csv ou .tsv),
- Criar planilhas de organização,
- Criar planilhas consistentes (com outros) e implementar regras para entradas de dados, e
- Evitar manipulação e análise de dados em software de planilha (isso inclui cópia e colar).

As folhas técnicas só são uma ferramenta poderosa se o conjunto de dados for recolhido e organizado em formatos específicos que sejam utilizáveis tanto para computadores como para investigadores.

(rr-rdm-planilhas-não-dados)=

## 1. Evitar Conteúdo Não-Dados

As planilhas são utilizadas para organizar dados de forma tabular.
O assunto, o objeto e a relação entre eles são transformados em linhas, células e colunas, respectivamente.
For example, the subject: `experiment`, relationship: `was performed on the date`, and the object: `2020-06-06` gives one row for each experiment, one column for `date of experiment`, and the value `2020-06-06` in the cell.
Infelizmente, os programas de planilhas permitem que você adicione outros tipos de conteúdo a isto, como cor para células específicas.
While it may help the researchers at some point, one needs to remember that this kind of **cell modification should not be considered as data**, primarily because they cannot be exported to other software.

Como uma regra simples, o que pode ser exportado em um formato somente-texto, valores separados por vírgula (CSV) ou valores separados por tabulação (TSV), podem ser considerados como dados.
Outras funções devem ser evitadas ao usar esses programas para dados de pesquisa.
This includes:

- mudar fonte, cor ou fronteiras,
- usando funções,
- Células de fusão (esta é particularmente problemática),
- usando formatos de celular específicos (especialmente datas, consulte abaixo).

Como teste para sua compatibilidade de planilha com pesquisa reprodutível, exporte seus dados da planilha para o formato CSV e os abra novamente.
Se você ainda consegue obter todas as informações armazenadas na sua planilha, seus dados estarão corretos.

```{tip}
If you want to use color to help with a rapid highlight in your document, create a new column to indicate which cells are highlighted (it becomes a part of your data).
In addition to the visual feedback, you can now also use this information to filter or sort your data and get the highlighted cells quickly.
```

(rr-rdm-planilhas-formatos)=

## 2. Formato das Planilhas

If [the spreadsheet is poorly organised](https://luisdva.github.io/pls-don't-do-this/), then it may be difficult for collaborators to easily {ref}`read-in and reuse <rr-rdm-fair>` your data for further analysis.

Na verdade, uma grande parte do trabalho dos cientistas de dados é transformar os dados em uma forma que o computador possa ler.
No entanto Isto é extremamente moroso, quando a informação é dividida entre várias planilhas e quando não há planos concretos de transformação de dados antes de os dados serem adquiridos.

There are very simple rules to facilitate data use, which go into the concept of [**tidy data**](https://en.wikipedia.org/w/index.php?title=Tidy_data&oldid=962241815) {cite:ps}`Wickham2014tidydata`.
O formato de dados organizados permite filtrar e ordenar dados facilmente em software de planilhas de planilhas.

Resumindo :

- Uma coluna = uma variável (sem mais, nada menos, isso implica que dois nomes de cabeçalho não podem ser idênticos)
- Uma linha = uma amostra
- Uma célula = uma informação
- **The first row is the header**
- Nomes de cabeçalho não devem incluir um caractere especial (incluindo espaço) ou começar com um número

```{figure} ../../../figures/tidy-1.*
---
name: tidy-1
alt: >
  Three images depicting visual representations of the descriptions mentioned previously.
  In the first image on the left, variables are demonstrated with double headed arrows going up and down the columns.
  In the middle image, double headed arrows go along rows, demonstrating observations.
  In the right hand image, black circles over each cell demonstrate values.
---
An illustration of tidy data.
```

Três regras fazem uma ordenação do conjunto de dados:

1. Cada variável deve ter sua própria coluna.
2. Cada observação deve ter sua própria linha.
3. Cada valor deve ter sua própria célula.

There are data validation tools available, like [Frictionless Data](https://frictionlessdata.io/)'s [Python package](https://framework.frictionlessdata.io/) or [GitHub Action](https://repository.frictionlessdata.io/), that allow you to automatically check whether your spreadsheets are tidy.

(rr-rdm-planilhas-consistente)=

## 3. Valores consistentes

Quando você trabalha com várias planilhas ou com uma equipe durante a coleta de dados, é crucial para garantir que a mesma informação seja inserida com o mesmo termo, e esse mesmo termo transmite sempre a mesma informação.
In the example of iris data, if some people use different terms to record information for a specific column - such as naming the column `species` instead of `Species` or using `iris setosa`, `set.` or `i.setosa` instead of `setosa` - the creation of a reproducible workflow will be more difficult, and errors may even be overlooked.  
Discrepancies often lead to errors, especially when the same terms could mean different things depending on who is entering the data.
For example, indicating date as `02-03` will mean February the 3<sup>rd</sup> in the USA, but March the 2<sup>nd</sup> in Europe.

It is good practice to implement a `data dictionary` or a `taxonomy` of accepted terms and document the convention used in a README file.
Dependendo do software que você usa, poderá restringir os valores aceitos em colunas específicas.
Se tal taxonomia ou ontologia estiver disponível, o uso pode permitir que você (e outros) use os dados em conjunto com outros conjuntos de dados.
For example, you may use the generic `male` and `female` term for the sex of an animal (without capitals, and without using abbreviation), as many ontologies use these terms.
Além disso, você pode querer usar algumas ferramentas extras para validar as planilhas antes de sua integração na análise.

(rr-rdm-planilhas-manipulação)=

### Missing data points

Você também deve ter regras claras sobre a falta de pontos de dados.
Using `NA`, `NULL`, or empty cells is not trivial and may have different meanings (impossible data point, not recorded, or lost data point).
Imagine que um pesquisador queira registar o tempo gasto antes de ver um pouso de polinizador em uma flor de ferro, e nenhum polinizador foi visto durante a experiência de 10 minutos.
Suppose the researcher reports `600` (the duration of the experiment in seconds).
In that case, there will be no way to distinguish a scenario where no pollinator was seen, and one when a pollinator was seen at the end of the experiment (and you may forget that rule and treat `600` as a normal value).

If `NA` is reported, one may interpret this value as a non-existing data point (the experiment had not been performed).
An elegant solution is to have a second column stating whether a pollinator was seen during the experiment, where `TRUE`, `FALSE` and `NA` values are accepted.

Finalmente, você também deve estar ciente do comportamento padrão do seu programa de planilha, como ele pode ser diferente para diferentes programas e diferentes versões do mesmo programa.
Por exemplo, a vírgula é geralmente indicada com uma vírgula nas versões francesa ou alemã do Excel.
In the English versions, a dot is used since the comma has no meaning (`9,000` will be translated into `9000` or `9` depending on the version you are using).

(rr-rdm-planilhas-manipulação)=

## 4. Manipulação e Análise de Dados

When you manually manipulate data in a spreadsheet program, you will need to record all the steps that you took.
This can be time consuming and can be avoided by manipulating and analysing the data with automatic analyses or programmes such as [Open Refine](https://openrefine.org/) that will record the data manipulation steps for you.

OpenRefine can be used for tabular data (for example in [social sciences](https://datacarpentry.org/openrefine-socialsci/), [ecology](https://datacarpentry.org/OpenRefine-ecology-lesson/) and [history](https://programminghistorian.org/en/lessons/cleaning-data-with-openrefine).
OpenRefine can help you to get an overview of large datasets, identify and correct inconsistencies, and integrate datasets.
It automatically records these processes, saving a script of the steps involved.
OpenRefine uses your web browser as a graphical interface, but the software runs only locally so it is safe to use for sensitive data.

Automatic manipulation will also help with data validation, as software may return error messages if data is manipulated incorrectly.

(rr-rdm-spreadsheets-validation)=

## 5. Data validation

- [Excel support page on data validation](https://support.office.com/en-us/article/Apply-data-validation-to-cells-29FECBCC-D1B9-42C1-9D76-EFF3CE5F7249)
- Check manually whether your data is consistent, complete and correct:
- If a column should contain only numeric values or characters, check that there are no non-numeric values or non-character
- Check for consistency in names, unit of measurements, data type and so on
- Check if there are any empty cells and replace them with your chosen null value (see {ref}`above <rr-rdm-spreadsheets-missing>`)
- Remove redundant data (while keeping in mind what could be reused in the future!)

(rr-rdm-planilhas-tips-several)=

## 6. Accessibility

Comma- or Tab-Separated Value (CSV/TSV) formats are not only best for preservation, but for accessibility as well.
For more information:

- [Data Curation Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/Accessibility%20Data%20Curation%20Primer/accessibility-data-curation-primer.md#tabular)
- [Make your Excel documents accessible to people with disabilities](https://support.microsoft.com/en-us/office/make-your-excel-documents-accessible-to-people-with-disabilities-6cc05fc5-1314-48b5-8eb3-683e49b3e593) (Microsoft Office)
- [Excel Tips](https://accessibility.psu.edu/microsoftoffice/excel/) (Accessibility and Usability at Penn State)
- [Create Accessible Spreadsheets](https://www.section508.gov/create/spreadsheets/) (General Services Administration of the 49 U.S. - focused on Excel)

(rr-rdm-planilhas-dicas)=

## Outras Dicas

(rr-rdm-planilhas tips-time)=

### Lidar com informações de tempo

While dates should be written as `yyyy-mm-dd`, Excel and other software tend to transform this data into their own date formats (even during data import from a CSV file).
A única forma 100% segura de lidar com isto é fazer diferentes colunas durante anos, meses e dias para recriar os dados no software usado para análise. Time entered with `hh:mm:ss` normally works.

(rr-rdm-planilhas-tips-several)=

### Trabalhando com várias Chapas

Frequentemente, usamos várias folhas para dados diferentes, mas relacionados.
It is a handy tool indeed, especially when one wants to share the complete dataset with colleagues.  
On the other hand, CSV files only save one sheet at a time.
Though most data analysis software have several ways to import `xlsx` files, the practical solution is to work with the `xlsx` format while making sure that the information is available in CSV format for each sheet.
Uma solução melhor, especialmente para o armazenamento a longo prazo, é salvar todas as folhas separadamente num arquivo CSV e compactá-las em conjunto.
Esta solução também permite incluir documentação extra que poderia estar em um formato diferente (por exemplo, um arquivo de texto explicando o significado dos cabeçalhos e da unidade escolhida).

(rr-rdm-planilhas-tips-design)=

### Design de Planilha

Os dados são frequentemente coletados manualmente, em papel.
Para ser mais eficiente e evitar erros, é melhor recolher os dados no mesmo formato que serão digitalizados.
Ou seja, é preciso conceber a folha de cálculo legível para a recolha de dados.
Isso apresenta algumas perguntas de design, especialmente para informações que são exclusivas de um experimento (um papel), mas podem mudar entre experimentos (por exemplo, experimentalista ou temperatura da sala).
Você realmente quer essa informação em uma coluna, mas gostaria de inseri-la apenas uma vez durante a aquisição de dados (especialmente na versão do papel).
Uma solução é mover estas colunas para uma segunda página (não impressa) na planilha e ajustar os cabeçalhos e rodapés para inserir as informações na versão em papel.
É necessário ter certeza de que a informação foi inserida na coluna durante a digitalização.

A forma como você insere a informação (ou seja, a maneira como você projeta seus cabeçalhos e conteúdo de célula) pode ser diferente, dependendo da análise que você deseja realizar.
Devemos tentar sempre ser tão genéricos e objectivos quanto possível e pensar em análises adicionais que possamos querer realizar.

Como exemplo, Suponhamos que você está interessado em representar se a porcentagem de flores com comprimento de selo maior do que 6 mm é diferente em três espécies de íris.
You may be inclined to record a true or false column `is-sepal-longer-than-6cm`, but this will restrict the analysis you can perform.
Uma solução melhor é registrar o comprimento do selo (em mm) e criar automaticamente a categorização depois.

Se você estiver usando R, você faria um gráfico com o que desejava:

```
iris %>% ## the iris dataset is included in R base
  dplyr::mutate ("is-sepal-longer-than-6cm" = ifelse(Sepal.Length >6, TRUE, FALSE)) %>% ## this create the new column
  ggplot2::ggplot (aes (x=`is-sepal-longer-than-6cm` , fill= Species)) + ggplot2::geom_bar() ## this plots the data
```

Nomes de cabeçalhos devem ser escolhidos com cuidado e quando não estiver claro o que significa e que unidade é usada. você pode querer adicionar alguma explicação em um documento externo.
Você também pode compartilhar uma folha de amostra com um colega para receber feedback sobre o quão compreensível é a sua folha.

Outra alternativa é adicionar algumas explicações sobre a folha nas primeiras linhas antes dos cabeçalhos.
Mantendo informações legíveis no topo do arquivo, é possível entender melhor os dados que começam nas linhas do cabeçalho.
Esta informação também pode ajudar a analisar esses dados, certificando-se de que os scripts ignorem as linhas de explicação e só os considerem durante a análise.
No entanto, um bom arquivo com colunas e linhas de ordenação não deve precisar de explicações adicionais.

Quanto aos nomes dos cabeçalhos, o tamanho dos cabeçalhos não é um problema para computadores.
No entanto, para a legibilidade humana, é melhor mantê-la curta (até 32 caracteres).

Não é necessário pensar na ordem das colunas para a análise, pois ela não tem importância para o software de análise de dados.
Portanto, você pode otimizar completamente esse parâmetro para a etapa de coleta de dados.

(rr-rdm-planilhas-tips-versionamento)=

### Padrão e versão

Um bom design de folha de cálculo tem nomes instrutivos e intuitivos de cabeçalho, e facilita tanto a coleta quanto a análise de dados.
Construir tal desenho de planilha é difícil pois leva tempo, múltiplas iterações e consenso.
Por conseguinte, é benéfico procurar uma planilha comum antes de conceber a sua própria planilha e partilhar abertamente o seu desenho assim que for criado.
Também é necessário usar um histórico de versão das planilhas conforme elas evoluirão), e o script de análise deve mencionar o número de versão da planilha.
Documentação da planilha, histórico de versões e as ontologias a qual está ligada, pode ser útil para futuros usuários.

(rr-rdm-planilhas-tips-team)=

### Trabalhando em uma equipe: Resumo

Se você estiver trabalhando com uma equipe na coleta de dados, certifique-se:

- Todos utilizam o mesmo software (e versão do software) para inserir os dados.
- Todos usam a mesma versão do modelo de planilha.
- Todos compreendem o que representa cada coluna e a unidade que deve ser utilizada.
- Toda coluna tem um padrão definido sobre como inserir dados nela ou taxonomia dos termos que se pode usar.
- Uma pessoa é responsável por responder a perguntas putativas durante a coleta de dados.
- Cada planilha é validada antes de inserir o fluxo de análise e o mais rápido possível.

(rr-rdm-planilhas-resumo)=

## Resumo

Embora as planilhas possam ser uma forma muito fácil de coletar e compartilhar dados, elas também podem ser a fonte de erros, se forem utilizadas incorretamente.
Ao apontar para o desenvolvimento de um fluxo de trabalho reprodutível para análises, deve-se projetar a planilha tanto para o computador quanto para a legibilidade humana, e, antes mesmo de iniciarem a recolha de dados, deveriam considerar o que facilitaria a sua análise de dados.
A melhor forma de evitar a manipulação e a análise de dados nas planilhas, em particular, é evitar que isso conduza a fluxos de trabalho não reproduzíveis.
Usar controle de versão e fazer os dados serem somente leituras, são duas práticas adicionais de gerenciamento de dados que podem prevenir acidentes.

Use a README [{term}`def<README>`] file and and other structure choices to explain naming conventions.
Ele deixará claro para outros o que significam os nomes dos arquivos e cabeçalhos, e que critérios considerar ao projetar um fluxo de trabalho de análise.
Se você trabalha em uma equipe, você deve cuidar especialmente das convenções e garantir que todos sigam elas.

To learn more about data organisation in spreadsheets, you may have a look at the Data Carpentry lessons for [Social Scientists](https://datacarpentry.org/spreadsheets-socialsci/) and [Ecologists](https://datacarpentry.org/spreadsheet-ecology-lesson/).

To read about recommended practices, see {cite:ps}`Broman2018data`

See also a blogpost with [resources for using spreadsheets in research and moving onto other tools](https://www.software.ac.uk/blog/2021-11-05-resources-using-spreadsheets-research-and-moving-other-tools).

