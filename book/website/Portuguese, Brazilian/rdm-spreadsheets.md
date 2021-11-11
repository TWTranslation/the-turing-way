(rr-rdm-planilhas)=
# Organização de Dados em Planilhas

Planilhas do sistema, como arquivos Microsoft Excel, google sheets, e suas [Open Source alternativas (por exemplo) LibreOffice](https://www.libreoffice.org), são comumente usados para coletar, armazenar, manipular, analisar e compartilhar dados de pesquisa. Planilhas são ferramentas convenientes e fáceis de usar para organizar a informação de forma fácil de escrever e de ler formulários para humanos. No entanto, devemos usá-los com cautela, uma vez que a utilização de uma planilha inadequada é uma das principais causas de erros no fluxo de análise de dados. Há uma coleção de [histórias horrorosas](http://www.eusprig.org/horror-stories.htm) que diz como o uso de planilhas pode arruinar estudos baseados em análise devido a um comportamento inesperado da planilha ou dos processos de edição. Alguns destes erros não são exclusivos para planilhas, mas muitos, como [isto](https://doi.org/10.1186/s13059-016-1044-7) e [isso](https://doi.org/10.1186/1471-2105-5-80), são.

Felizmente, a maioria dos problemas podem ser evitados com as seguintes recomendações:
- Use a planilha em um formato apenas de texto (.csv ou .tsv),
- Criar planilhas de organização,
- Criar planilhas consistentes (com outros) e implementar regras para entradas de dados, e
- Evitar manipulação e análise de dados em software de planilha (isso inclui cópia e colar).

As folhas técnicas só são uma ferramenta poderosa se o conjunto de dados for recolhido e organizado em formatos específicos que sejam utilizáveis tanto para computadores como para investigadores.

(rr-rdm-planilhas-não-dados)=
## 1. Evitar Conteúdo Não-Dados

As planilhas são utilizadas para organizar dados de forma tabular. O assunto, o objeto e a relação entre eles são transformados em linhas, células e colunas, respectivamente. Por exemplo, o assunto: `experimento`, relação: `foi realizada na data`, e o objeto: `2020-06-06` dá uma linha para cada experimento, uma coluna para a `data de experimento`, e o valor `2020-06-06` na célula. Infelizmente, os programas de planilhas permitem que você adicione outros tipos de conteúdo a isto, como cor para células específicas. Enquanto isso pode ajudar os pesquisadores em algum ponto, um precisa lembrar que este tipo de modificação de célula **não deve ser considerado como dado**, Principalmente porque não podem ser exportados para outros software.

Como uma regra simples, o que pode ser exportado em um formato somente-texto, valores separados por vírgula (CSV) ou valores separados por tabulação (TSV), podem ser considerados como dados. Outras funções devem ser evitadas ao usar esses programas para dados de pesquisa. Isto inclui:
- mudar fonte, cor ou fronteiras,
- usando funções,
- Células de fusão (esta é particularmente problemática),
- usando formatos de celular específicos (especialmente datas, consulte abaixo).

Como teste para sua compatibilidade de planilha com pesquisa reprodutível, exporte seus dados da planilha para o formato CSV e os abra novamente. Se você ainda consegue obter todas as informações armazenadas na sua planilha, seus dados estarão corretos.

```
Dica: Se você quiser usar cor para ajudar com um destaque rápido no seu documento, crie uma nova coluna para indicar quais células são destacadas (torna-se parte de seus dados).
Além do feedback visual, agora você também pode usar essas informações para filtrar ou classificar seus dados e obter as células destacadas rapidamente.

```
(rr-rdm-planilhas-formatos)=
## 2. Formato das Planilhas

Se a planilha estiver mal organizada, então pode ser [difícil para os colaboradores](https://luisdva.github.io/pls-don't-do-this/) facilmente {ref}`read-in e reutilizar <rr-rdm-fair>` os seus dados para análise posterior.

Na verdade, uma grande parte do trabalho dos cientistas de dados é transformar os dados em uma forma que o computador possa ler. No entanto Isto é extremamente moroso, quando a informação é dividida entre várias planilhas e quando não há planos concretos de transformação de dados antes de os dados serem adquiridos.

Existem regras muito simples para facilitar o uso de dados, que entram no conceito de [**dados de ordenação**](https://en.wikipedia.org/w/index.php?title=Tidy_data&oldid=962241815). O formato de dados organizados permite filtrar e ordenar dados facilmente em software de planilhas de planilhas.

Resumindo :

- Uma coluna = uma variável (sem mais, nada menos, isso implica que dois nomes de cabeçalho não podem ser idênticos)
- Uma linha = uma amostra
- Uma célula = uma informação
- **A primeira linha é o cabeçalho**
- Nomes de cabeçalho não devem incluir um caractere especial (incluindo espaço) ou começar com um número

```{figure} ../../figures/tidy-1.png
---
nome: tidy-1
alt: A imagem retrata dados de ordens. Uma coluna representa uma variável, uma linha representa uma amostra, e uma célula representa uma peça de informação.
---
Uma ilustração de dados de ordenação.
```

Três regras fazem uma ordenação do conjunto de dados:
1. Cada variável deve ter sua própria coluna.
2. Cada observação deve ter sua própria linha.
3. Cada valor deve ter sua própria célula.

Existem ferramentas de validação de dados disponíveis, como https://goodtables.io, que permitem que você verifique automaticamente se suas planilhas estão arrumadas.

(rr-rdm-planilhas-consistente)=
## 3. Valores consistentes

Quando você trabalha com várias planilhas ou com uma equipe durante a coleta de dados, é crucial para garantir que a mesma informação seja inserida com o mesmo termo, e esse mesmo termo transmite sempre a mesma informação. No exemplo de dados de íris se algumas pessoas usam termos diferentes para registrar informações de uma coluna específica - como nomear a coluna `espécies` em vez de `espécies` ou usar `iris setosa`, `definido.` ou `i. etosa` em vez de `setosa` - a criação de um fluxo de trabalho reprodutível será mais difícil e os erros podem mesmo ser ignorados.  
discrepâncias frequentemente levam a erros, especialmente quando os mesmos termos podem significar coisas diferentes dependendo de quem está entrando os dados. Por exemplo, indicar data como `02-03` significa fevereiro<sup>rd</sup> nos EUA, mas março ao<sup>nd</sup> na Europa.

É uma boa prática implementar um `dicionário de dados` ou uma `taxonomia` de termos e documentos aceitos a convenção usada em um arquivo README. Dependendo do software que você usa, poderá restringir os valores aceitos em colunas específicas. Se tal taxonomia ou ontologia estiver disponível, o uso pode permitir que você (e outros) use os dados em conjunto com outros conjuntos de dados. Por exemplo, você pode usar o termo genérico `masculino` e `feminino` para o sexo de um animal (sem maiúsculas, e sem usar a abreviação), já que muitas ontologias usam estes termos. Além disso, você pode querer usar algumas ferramentas extras para validar as planilhas antes de sua integração na análise.

Você também deve ter regras claras sobre a falta de pontos de dados. Usando `NA`, `NULL`, ou células vazias não são triviais e podem ter diferentes significados (ponto de dados impossível, não gravado ou ponto de dados perdido). Imagine que um pesquisador queira registar o tempo gasto antes de ver um pouso de polinizador em uma flor de ferro, e nenhum polinizador foi visto durante a experiência de 10 minutos. Suponha que o pesquisador reporte `600` (a duração do experimento em segundos). Nesse caso, não haverá como distinguir um cenário onde nenhum polinizador foi visto, e um quando um polinizador foi visto no final do experimento (e você pode esquecer essa regra e tratar `600` como um valor normal).

Se `NA` for reportado, é possível interpretar esse valor como um ponto de dados não existente (o experimento não foi realizado). Uma solução elegante é ter uma segunda coluna indicando se um polinizador foi visto durante o experimento, onde `TRUE`, `FALSE` e `NA` valores são aceitos.

Finalmente, você também deve estar ciente do comportamento padrão do seu programa de planilha, como ele pode ser diferente para diferentes programas e diferentes versões do mesmo programa. Por exemplo, a vírgula é geralmente indicada com uma vírgula nas versões francesa ou alemã do Excel. Nas versões em inglês, um ponto é usado já que a vírgula não tem significado (`9, 00` será traduzido para `9000` ou `9` dependendo da versão que você está usando).

(rr-rdm-planilhas-manipulação)=
## 4. Manipulação e Análise de Dados

***Não manipule nem analise dados em um programa de planilha.***

Em particular, apenas copie e cole de uma planilha para outra, se o processo for utilizado muito raramente. Agora é sem esforço ler e combinar diferentes planilhas no software de análise, com a vantagem adicional de que o software retornará uma mensagem de erro se os cabeçalhos não se encaixarem.

(rr-rdm-planilhas-dicas)=
## Outras Dicas

(rr-rdm-planilhas tips-time)=
### Lidar com informações de tempo

Enquanto as datas devem ser escritas como `aaaa-mm-dd`, O Excel e outro software tendem a transformar estes dados em seus próprios formatos de data (mesmo durante a importação de dados de um arquivo CSV). A única forma 100% segura de lidar com isto é fazer diferentes colunas durante anos, meses e dias para recriar os dados no software usado para análise. Tempo inserido com `hh:mm:ss` normalmente funciona.

(rr-rdm-planilhas-tips-several)=
### Trabalhando com várias Chapas

Frequentemente, usamos várias folhas para dados diferentes, mas relacionados. Trata-se, de facto, de um instrumento útil, sobretudo quando se pretende partilhar o conjunto de dados completo com os colegas.  
Por outro lado, os arquivos CSV só salvam uma folha de cada vez. Embora a maioria dos softwares de análise de dados tenha várias maneiras de importar arquivos `xlsx` , a solução prática é trabalhar com o formato `xlsx` enquanto se certifica de que a informação está disponível no formato CSV para cada folha. Uma solução melhor, especialmente para o armazenamento a longo prazo, é salvar todas as folhas separadamente num arquivo CSV e compactá-las em conjunto. Esta solução também permite incluir documentação extra que poderia estar em um formato diferente (por exemplo, um arquivo de texto explicando o significado dos cabeçalhos e da unidade escolhida).

(rr-rdm-planilhas-tips-design)=
### Design de Planilha

Os dados são frequentemente coletados manualmente, em papel. Para ser mais eficiente e evitar erros, é melhor recolher os dados no mesmo formato que serão digitalizados. Ou seja, é preciso conceber a folha de cálculo legível para a recolha de dados. Isso apresenta algumas perguntas de design, especialmente para informações que são exclusivas de um experimento (um papel), mas podem mudar entre experimentos (por exemplo, experimentalista ou temperatura da sala). Você realmente quer essa informação em uma coluna, mas gostaria de inseri-la apenas uma vez durante a aquisição de dados (especialmente na versão do papel). Uma solução é mover estas colunas para uma segunda página (não impressa) na planilha e ajustar os cabeçalhos e rodapés para inserir as informações na versão em papel. É necessário ter certeza de que a informação foi inserida na coluna durante a digitalização.

A forma como você insere a informação (ou seja, a maneira como você projeta seus cabeçalhos e conteúdo de célula) pode ser diferente, dependendo da análise que você deseja realizar. Devemos tentar sempre ser tão genéricos e objectivos quanto possível e pensar em análises adicionais que possamos querer realizar.


Como exemplo, Suponhamos que você está interessado em representar se a porcentagem de flores com comprimento de selo maior do que 6 mm é diferente em três espécies de íris. Você pode estar inclinado a registrar uma coluna verdadeira ou falsa `é-sepal-longo-de-6cm`, mas isso restringirá a análise que você pode realizar. Uma solução melhor é registrar o comprimento do selo (em mm) e criar automaticamente a categorização depois.

Se você estiver usando R, você faria um gráfico com o que desejava:
```
%>% ## o dataset de íris está incluído na base R
  dplyr::mutate ("is-sepal-longer-than-6cm" = ifelse(Sepal. Força >6, TRUE, FALSE)) %>% ## isso cria a nova coluna
  ggplot2::ggplot (aes (x=`is-sepal-longer-than-6cm` , preencher = espécies)) + ggplot2::geom_bar() ## desta trama os dados
```

Nomes de cabeçalhos devem ser escolhidos com cuidado e quando não estiver claro o que significa e que unidade é usada. você pode querer adicionar alguma explicação em um documento externo. Você também pode compartilhar uma folha de amostra com um colega para receber feedback sobre o quão compreensível é a sua folha.

Outra alternativa é adicionar algumas explicações sobre a folha nas primeiras linhas antes dos cabeçalhos. Mantendo informações legíveis no topo do arquivo, é possível entender melhor os dados que começam nas linhas do cabeçalho. Esta informação também pode ajudar a analisar esses dados, certificando-se de que os scripts ignorem as linhas de explicação e só os considerem durante a análise. No entanto, um bom arquivo com colunas e linhas de ordenação não deve precisar de explicações adicionais.

Quanto aos nomes dos cabeçalhos, o tamanho dos cabeçalhos não é um problema para computadores. No entanto, para a legibilidade humana, é melhor mantê-la curta (até 32 caracteres).

Não é necessário pensar na ordem das colunas para a análise, pois ela não tem importância para o software de análise de dados. Portanto, você pode otimizar completamente esse parâmetro para a etapa de coleta de dados.

(rr-rdm-planilhas-tips-versionamento)=
### Padrão e versão

Um bom design de folha de cálculo tem nomes instrutivos e intuitivos de cabeçalho, e facilita tanto a coleta quanto a análise de dados. Construir tal desenho de planilha é difícil pois leva tempo, múltiplas iterações e consenso. Por conseguinte, é benéfico procurar uma planilha comum antes de conceber a sua própria planilha e partilhar abertamente o seu desenho assim que for criado. Também é necessário usar um histórico de versão das planilhas conforme elas evoluirão), e o script de análise deve mencionar o número de versão da planilha. Documentação da planilha, histórico de versões e as ontologias a qual está ligada, pode ser útil para futuros usuários.

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
## Summary

Embora as planilhas possam ser uma forma muito fácil de coletar e compartilhar dados, elas também podem ser a fonte de erros, se forem utilizadas incorretamente. Ao apontar para o desenvolvimento de um fluxo de trabalho reprodutível para análises, deve-se projetar a planilha tanto para o computador quanto para a legibilidade humana, e, antes mesmo de iniciarem a recolha de dados, deveriam considerar o que facilitaria a sua análise de dados. A melhor forma de evitar a manipulação e a análise de dados nas planilhas, em particular, é evitar que isso conduza a fluxos de trabalho não reproduzíveis. Usar controle de versão e fazer os dados serem somente leituras, são duas práticas adicionais de gerenciamento de dados que podem prevenir acidentes.

Use um arquivo LEIAME [{term}`def<README>`] e outras opções de estrutura para explicar convenções de nomenclatura. Ele deixará claro para outros o que significam os nomes dos arquivos e cabeçalhos, e que critérios considerar ao projetar um fluxo de trabalho de análise. Se você trabalha em uma equipe, você deve cuidar especialmente das convenções e garantir que todos sigam elas.

Para saber mais sobre a organização de dados em planilhas, você pode dar uma olhada nas aulas de Carpintaria de Dados para [Cientistas Sociais](https://datacarpentry.org/spreadsheets-socialsci/) e [Ecologistas](https://datacarpentry.org/spreadsheet-ecology-lesson/).
