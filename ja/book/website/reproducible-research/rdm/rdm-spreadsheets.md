(rr-rdm-スプレッドシート)=

# スプレッドシート内のデータ組織

Spreadsheets, such as Microsoft Excel files, google sheets, and their Open Source alternative [(for instance) LibreOffice](https://www.libreoffice.org), are commonly used to collect, store, manipulate, analyse, and share research data.
スプレッドシートは、便利で使いやすいツールで、情報を簡単に書きやすく、人のための読みやすいフォームに整理します。
ただし、不適切なスプレッドシートの使用は、データ分析ワークフローの間違いの主な原因であるため、注意を払って使用する必要があります。
See for example the [loss of COVID19 data in England due to poor use of Excel](https://www.bbc.com/news/technology-54423988).
There is a collection of [horror-stories](https://eusprig.org/research-info/horror-stories/) that tells how the use of spreadsheets can ruin analysis-based studies due to unexpected behaviour of the spreadsheet or error-prone editing processes.
Some of these mishaps are not unique to spreadsheets, but many, such as [Gene name errors](https://doi.org/10.1186/s13059-016-1044-7) (and another [Gene name error example](https://doi.org/10.1186/1471-2105-5-80)), are.

幸いなことに、以下の推奨事項ではほとんどの問題を回避することができます。

- テキストのみの書式でスプレッドシートを使用する (.csv または .tsv)
- 整頓された表計算ドキュメントを作成
- スプレッドシートを一貫性のあるものにし、データエントリのルールを実装します。
- スプレッドシートソフトウェアでのデータの操作や分析は避けてください (これはコピーペーストを含みます)。

スプレッドシートは、データセットが収集され、コンピュータと研究者の両方に使用可能な特定の形式で整理された場合にのみ、強力なツールです。

(rr-rdm-spreadsheets-nondata)=

## 1. データ以外のコンテンツを回避する

スプレッドシートは表形式でデータを整理するために使用されます。
件名、オブジェクト、およびそれらの間の関係は、それぞれ行、セル、および列に変換されます。
For example, the subject: `experiment`, relationship: `was performed on the date`, and the object: `2020-06-06` gives one row for each experiment, one column for `date of experiment`, and the value `2020-06-06` in the cell.
残念ながら、スプレッドシートプログラムでは、特定のセルに色のような他の種類のコンテンツを追加できます。
While it may help the researchers at some point, one needs to remember that this kind of **cell modification should not be considered as data**, primarily because they cannot be exported to other software.

単純なルールとして、テキストのみフォーマットでエクスポートできるもの、カンマ区切り値 (CSV)、またはタブ区切り値 (TSV) をデータとみなすことができます。
これらのプログラムを研究データに使用する場合は、その他の機能は避けるべきです。
This includes:

- cell formatting, such as changing font, color or borders,
- 関数を使って
- セルの結合（これは特に問題です）
- 特定のセル形式 (特に日付) を使用します。

再現性のある研究とスプレッドシートの互換性のテストとして、スプレッドシートからCSV形式にデータをエクスポートして再度開きます。
まだシートに保存されているすべての情報を取得できる場合は、データは問題ありません。

```{tip}
If you want to use color to help with a rapid highlight in your document, create a new column to indicate which cells are highlighted (it becomes a part of your data).
In addition to the visual feedback, you can now also use this information to filter or sort your data and get the highlighted cells quickly.
```

(rr-rdm-spreadsheets-format)=

## 2. 表計算ドキュメントのタイディフォーマット

If [the spreadsheet is poorly organised](https://luisdva.github.io/pls-don't-do-this/), then it may be difficult for collaborators to easily {ref}`read-in and reuse <rr-rdm-fair>` your data for further analysis.

データサイエンティストの大部分はデータをコンピュータが読み取れる形に変換することです
ただし、 データが複数のスプレッドシートに分割されている場合と、データが取得される前に具体的なデータ変換計画がない場合は、これは非常に時間がかかります。

There are very simple rules to facilitate data use, which go into the concept of [**tidy data**](https://en.wikipedia.org/w/index.php?title=Tidy_data&oldid=962241815) {cite:ps}`Wickham2014tidydata`.
整然としたデータフォーマットにより、表計算ソフトで簡単にデータのフィルタリングや並べ替えができます。

要するに:

- 1 列 = 1 変数 (これ以上、これは 2 つのヘッダー名が同一になることができないことを意味します)
- 1 行 = 1 サンプル
- 1つのセル = 1つの情報
- **The first row is the header**
- ヘッダー名に特殊文字（スペースを含む）または数字で始まる文字を含めてはいけません

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

3 つのルールは、データセットを整理します:

1. 各変数はそれぞれの列を持たなければなりません。
2. 各観察記録にはそれぞれの行が必要です。
3. 各値はそれぞれのセルを持つ必要があります。

There are data validation tools available, like [Frictionless Data](https://frictionlessdata.io/)'s [Python package](https://framework.frictionlessdata.io/) or [GitHub Action](https://repository.frictionlessdata.io/), that allow you to automatically check whether your spreadsheets are tidy.

(rr-rdm-spreadsheets-consistent)=

## 3. 一貫した値

データ収集中に複数の表計算ドキュメントやチームと作業する場合 同じ用語で同じ情報を入力することが重要です 同じ用語は常に同じ情報を伝えています
In the example of iris data, if some people use different terms to record information for a specific column - such as naming the column `species` instead of `Species` or using `iris setosa`, `set.` or `i.setosa` instead of `setosa` - the creation of a reproducible workflow will be more difficult, and errors may even be overlooked.  
Discrepancies often lead to errors, especially when the same terms could mean different things depending on who is entering the data.
For example, indicating date as `02-03` will mean February the 3<sup>rd</sup> in the USA, but March the 2<sup>nd</sup> in Europe.

It is good practice to implement a `data dictionary` or a `taxonomy` of accepted terms and document the convention used in a README file.
使用するソフトウェアによっては、特定の列の許容値を制限することができます。
このような分類学またはオントロジーが利用可能である場合、使用者(およびその他の者)が他のデータセットと組み合わせてデータを使用することができます。
For example, you may use the generic `male` and `female` term for the sex of an animal (without capitals, and without using abbreviation), as many ontologies use these terms.
さらに、分析に統合する前に、スプレッドシートを検証するためにいくつかの追加ツールを使用することもできます。

(rr-rdm-spreadsheets-missing)=

### Missing data points

また、欠落しているデータ ポイントについて明確なルールを持っている必要があります。
Using `NA`, `NULL`, or empty cells is not trivial and may have different meanings (impossible data point, not recorded, or lost data point).
ある研究者が虹彩の花に花粉媒介者の土地を見る前に費やされた時間を記録したいとしましょう 10分間の実験で受粉媒介者は見られませんでした
Suppose the researcher reports `600` (the duration of the experiment in seconds).
In that case, there will be no way to distinguish a scenario where no pollinator was seen, and one when a pollinator was seen at the end of the experiment (and you may forget that rule and treat `600` as a normal value).

If `NA` is reported, one may interpret this value as a non-existing data point (the experiment had not been performed).
An elegant solution is to have a second column stating whether a pollinator was seen during the experiment, where `TRUE`, `FALSE` and `NA` values are accepted.

最後に、スプレッドシートプログラムのデフォルトの動作を認識してください。 異なるプログラムと同じプログラムの異なるバージョンである可能性があります
例えば、小数は通常、フランス語版またはドイツ語版のExcelでカンマで示されます。
In the English versions, a dot is used since the comma has no meaning (`9,000` will be translated into `9000` or `9` depending on the version you are using).

(rr-rdm-spreadsheets-manipation)=

## 4. データ操作と解析

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

(rr-rdm-spreadsheets-accessibility)=

## 6. Accessibility

Comma- or Tab-Separated Value (CSV/TSV) formats are not only best for preservation, but for accessibility as well.
For more information:

- [Data Curation Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/Accessibility%20Data%20Curation%20Primer/accessibility-data-curation-primer.md#tabular)
- [Make your Excel documents accessible to people with disabilities](https://support.microsoft.com/en-us/office/make-your-excel-documents-accessible-to-people-with-disabilities-6cc05fc5-1314-48b5-8eb3-683e49b3e593) (Microsoft Office)
- [Excel Tips](https://accessibility.psu.edu/microsoftoffice/excel/) (Accessibility and Usability at Penn State)
- [Create Accessible Spreadsheets](https://www.section508.gov/create/spreadsheets/) (General Services Administration of the 49 U.S. - focused on Excel)

(rr-rdm-spreadsheets-tips)=

## その他のヒント

(rr-rdm-spreadsheets-tips-time)=

### 時間情報に対処する

While dates should be written as `yyyy-mm-dd`, Excel and other software tend to transform this data into their own date formats (even during data import from a CSV file).
これに対処する唯一の100%の安全な方法は、長年にわたって異なる列を作ることです。 何ヶ月何日もかけて解析に使うソフトウェアのデータを再現します Time entered with `hh:mm:ss` normally works.

(rr-rdm-spreadsheets-tips-several)=

### 複数のシートで作業する

私たちはしばしば異なるが関連するデータに複数のシートを使用します。
It is a handy tool indeed, especially when one wants to share the complete dataset with colleagues.  
On the other hand, CSV files only save one sheet at a time.
Though most data analysis software have several ways to import `xlsx` files, the practical solution is to work with the `xlsx` format while making sure that the information is available in CSV format for each sheet.
特に長期保存のために、より良い解決策は、すべてのシートをCSVファイルに別々に保存し、それらをまとめてzipすることです。
このソリューションでは、別のフォーマットである可能性のある追加のドキュメントを含めることもできます (例えば、 ヘッダと選択された単位の意味を説明するテキストファイル)。

(rr-rdm-spreadsheets-tips-design)=

### スプレッドシートデザイン

データは紙の上で手動で収集されることが多い。
最も効率的で間違いを避けるためには、デジタル化されるのと同じ形式でデータを収集するのが最善です。
すなわち、データ収集のために印刷されるコンピュータ読み取り可能なスプレッドシートを設計する必要があります。
これはいくつかの設計上の疑問を提起します。特に、1つの実験に固有の情報(1つのペーパー)についてですが、実験の間で変化する可能性があります(例えば、 実験主義者か部屋の温度)
実際には、その情報を1つの列に入力する必要がありますが、データ取得時(特に論文版)に一度だけ入力する必要があります。
1つの解決策は、これらの列をスプレッドシートの2番目の(印刷されていない)ページに移動し、ヘッダーとフッターを調整して紙のバージョンの情報を入力することです。
情報がデジタル化中に列に入力されていることを確認する必要があります。

情報を入力する方法 (つまり、 ヘッダーとセルの内容を設計する方法は、実行したい分析によって異なる場合があります。
人は、常に可能な限り一般的で客観的であり、人が実行したいと思うかもしれない追加分析について考えるべきです。

一例として 花の長さが6mmを超える花の割合が、3種類の虹彩で異なるとしたら、あなたが描くことに興味があると仮定しましょう。
You may be inclined to record a true or false column `is-sepal-longer-than-6cm`, but this will restrict the analysis you can perform.
より良い解決策は、セパル(mm単位)の長さを記録し、後で自動的に分類を作成することです。

Rを使用している場合は、次のようにプロットします。

```
iris %>% ## the iris dataset is included in R base
  dplyr::mutate ("is-sepal-longer-than-6cm" = ifelse(Sepal.Length >6, TRUE, FALSE)) %>% ## this create the new column
  ggplot2::ggplot (aes (x=`is-sepal-longer-than-6cm` , fill= Species)) + ggplot2::geom_bar() ## this plots the data
```

ヘッダ名は注意深く選ばれるべきであり、何が意味されているか、どの単位が使用されているかが明確でない場合。 外部ドキュメントに説明を追加することもできます。
また、同僚にサンプルスプレッドシートを共有して、シートがどのように理解できるかについてのフィードバックを受け取ることもできます。

もう一つの方法は、ヘッダの前の最初の行にシートの上にいくつかの説明を追加することです。
人間が読める情報をファイルの一番上に保つことで、ヘッダ行から始まるデータをよりよく理解することができます。
この情報は、データの分析にも役立ち、スクリプトが説明行を無視し、分析中にのみ検討することができます。
ただし、整頓された列と行を持つ良いファイルには、追加の説明は必要ありません。

ヘッダ名については、ヘッダのサイズはコンピュータの問題ではありません。
しかし、人間の読みやすさについては、短く(32文字まで)保つことをお勧めします。

分析のための列の順序について考える必要はありません, それはデータ分析ソフトウェアにとって重要ではないため、.
したがって、データ収集ステップのパラメータを完全に最適化することができます。

(rr-rdm-spreadsheets-tips-versioning)=

### 標準とバージョン管理

優れたスプレッドシート設計には、有益で直感的なヘッダー名があり、データ収集と分析の両方を容易にします。
このようなスプレッドシートの設計は、時間、複数回の繰り返し、合意が必要なため、困難です。
したがって、独自のデザインを作成する前に、標準的なスプレッドシートを探して、それが作成された後にあなたのデザインを公然と共有することが有益です。
また、スプレッドシートのバージョン履歴(進化するのと同じように)を使用する必要があります。 解析スクリプトにはバージョン番号が書かれています
表計算ドキュメント、バージョン履歴、それにリンクされているオントロジーのドキュメントは、将来のユーザーに役立ちます。

(rr-rdm-spreadsheets-tips-team)=

### Working In A Team

チームでデータ収集を行っている場合は、以下を確認してください。

- 誰もがデータを入力するために同じソフトウェア(およびソフトウェアバージョン)を使用します。
- 誰もがスプレッドシートテンプレートの同じバージョンを使用します。
- 各列が何を表すか、そして使用すべき単位を誰もが理解します。
- 各列には、データを入力する方法や、利用できる用語の分類法に関する定義された標準があります。
- データ収集中に推定的な質問に答えるのは、一人の人が責任を負う。
- 分析ワークフローを入力する前に、できるだけ早く、すべてのスプレッドシートが検証されます。

(rr-rdm-spreadsheets-summary)=

## Summary

スプレッドシートは、データを収集して共有するための非常にユーザーフレンドリーな方法である場合がありますが、誤用された場合、それらはまた間違いの原因となる可能性があります。
解析のための再現可能なワークフローの開発を目指す場合、コンピュータと人間の可読性の両方のためのスプレッドシートを設計する必要があります。 データ収集を始める前に何がデータ分析を容易にするか検討すべきです
特にスプレッドシートでのデータ操作と分析は、再現性のないワークフローにつながるため、避けるのが最善です。
バージョン管理を使用し、データを読み取り専用にすることは、事故を防ぐことができる2つの追加のデータ管理方法です。

Use a README [{term}`def<README>`] file and and other structure choices to explain naming conventions.
ファイル名とヘッダー名が何を意味するのか、解析ワークフローを設計する際に考慮すべき基準を他の人に明確にします。
あなたがチームで働くならば、あなたは規則に特化し、誰もがそれらに従うことを確認する必要があります。

To learn more about data organisation in spreadsheets, you may have a look at the Data Carpentry lessons for [Social Scientists](https://datacarpentry.org/spreadsheets-socialsci/) and [Ecologists](https://datacarpentry.org/spreadsheet-ecology-lesson/).

To read about recommended practices, see {cite:ps}`Broman2018data`

See also a blogpost with [resources for using spreadsheets in research and moving onto other tools](https://www.software.ac.uk/blog/2021-11-05-resources-using-spreadsheets-research-and-moving-other-tools).

