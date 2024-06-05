(pd-code-styling-guidelines)=
# コードのスタイル設定に関するガイドライン

スタイルガイドラインは組織、言語、時間の経過とともに異なります。 さらに、Python スタイルガイド Python Enhancement Proposal 8 (PEP 8) は、2001 年にリリースされて以来、数多くのリビジョンを持っています。 自分の目的に合ったフレームワークを選択する必要があります。自分の利益のためにあるか、他人の利益のためにあるかです。 一貫性のある(そして一貫性のない)ことも重要です!

スタイルガイドラインには、ファイル名、変数名、コメントの使用、空白および括弧に関するアドバイスが含まれます。

以下は、コードのフォーマット方法を決定する際に使用される可能性のある既存のスタイルガイドへのリンクです。

* [PEP8](https://www.python.org/dev/peps/pep-0008/) for Python.
* [Hadley Wickhamの](http://adv-r.had.co.nz/Style.html) スタイルガイド for R.
* [Google の](https://google.github.io/styleguide/Rguide.xml) スタイルガイド for R
* [Microsoft の](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/inside-a-program/coding-conventions) スタイルガイド for C#.
* [PEP7](https://www.python.org/dev/peps/pep-0007/) for C

しかし、すぐに始めるために、以下のセクションでは、コードスタイルについていくつかのアドバイスを示します。

## ファイル名

[オープンサイエンスセンター](http://help.osf.io/m/bestpractices/l/609932-file-naming) には、ファイルの名前付けに有用な提案があります。 特に人間と機械の両方で読めるようにしています これには、ワイルドカード文字(@£$%)の使用を避け、アンダースコア("\_")を使用して情報を区切り、ダッシュ("\-")を情報やスペースを関連付けることを含みます。 また、FinAL(FINAL-FINAL)のような単語を避け、デートや番号付けを行うこともお勧めします。 日付 提案は、長い形式です `YYYY-MM-DD`, ファイル名とバージョン番号が続きます. これは自動的に、時系列順になります。 例:

```r
data <- read.csv("2019-05-17_Turing-Way_Book-Dash.csv")

```
R スタイルガイドでは、ファイル名を基本的に保つことをお勧めします。 これは、小さいコンパクトなプロジェクトに適していますが、似たようなファイルがたくさんある大規模なプロジェクトよりも適しています。 もしくはバージョン管理を使用していない場合(章/? を参照)。 COSガイドラインを使用する方が適切かもしれません。 詳細については、 {ref}`File Naming<pd-filenaming>` の章を参照してください。

### Versioning

ファイル名に対する余分な考慮事項は、ソフトウェアのバージョン管理です。 バージョン管理のガイドラインを使用すると、 `_FINAL.R` のような単語の使用を避けるのに役立ちます。 典型的な慣習はMajorMinorPatch(またはMajorMinorRevision)アプローチです。 この場合、パッケージやライブラリの最初の試みは以下のようになります:
```
my-package_1_0_0.py
```
これは、ソフトウェアが最初のメジャーリリースの未修正/パッチ適用されたアルファステージ(0)にあることを示しています。

## 変数名

学校での数学プロジェクトでは、変数は "x", "y", "z" と想像を絶する名前がしばしばあります。 この簡潔さは、おそらく教師(理解している)は、ボード上の長い変数名を繰り返し書きたくないためです。 しかし、コーディングでは、変数に好きな名前を付ける自由があります。 これはスクリプトの流れを表すのに役立ちます。

クリエイティブになろう！

### 命名規則

明快さと読みやすさのために、変数の命名規則のセットを選択することが便利です。 大きな種類があり、一部の人々は「正しい」(あなたに合ったものを選んでください!)について非常に声高にすることができます。 これらには以下が含まれます:

- CamelCase
- 小キャメルケース
- Underscore_Methods
- Mixed_Case_With_Undercores
- 小文字

例:

```r
raw_data <- read.csv("data.csv") # あまり創造的ではない
rawData <- read.csv("data.csv") #lowerCamelCase
```

`raw_data` があまり創造的ではありません。 しかし、スクリプトで理にかなっていれば、簡単に`スパム`や `卵` であったり、 `卵` であった可能性があります。 変数を再コードする関数もあります。

```r
rawDat <- recode(rawDat)
```

変数名を再利用すると、rawDat が経過したプロセスに関する情報は提供されません。 これを別の変数として保存すると、元の変数に対してどのような変換が行われたかを確認できます:

```
rawDat_recoded <- recode(rawDate)
```

好きな場合は、上記のようにremoveを使用して古い変数を消去できます。

```
remove(rawDat) #In R
del(rawDat) # In Python
```

一つのスタイルを選択し、それに固執することが重要です:

```
ThisIs Because_SwitchingbetweenDifferentformats is differentformat@@0 is different to read.
```

```
Where_as if_to one_style, your_code will_be easer_to_follow!
```
