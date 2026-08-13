(rr-code-style-naming)=

# File and Variable Naming

### ファイル名

The [Centre for Open Science](https://help.osf.io/article/146-file-naming) has some useful suggestions for the naming of files, particularly ensuring that they are readable for both humans and machines.
This includes avoiding the use of wildcard characters (`@£$%`) and using underscores (`_`) to delimit information, and dashes (`-`) to conjunct information or spaces.
また、FinAL(FINAL-FINAL)のような単語を避け、デートや番号付けを行うこともお勧めします。
The dating suggestion is the long format `YYYY-MM-DD`, followed by the name of the file, and the version number.
これは自動的に、時系列順になります。 For example:

```r
data <- read.csv("2019-05-17_Turing-Way_Book-Dash.csv")
```

R スタイルガイドでは、ファイル名を基本的に保つことをお勧めします。
This might be appropriate for small compact projects, however over larger projects with lots of similar files, or if you are not using version control (see chapter on {ref}`Version Control<rr-vcs>`) it may be more appropriate to use the COS guidelines.
For more details please see the chapter on {ref}`File Naming<pd-filenaming>`.

#### Versioning

ファイル名に対する余分な考慮事項は、ソフトウェアのバージョン管理です。
Using versioning guidelines will help avoid using words like `_FINAL.R`.
典型的な慣習はMajorMinorPatch(またはMajorMinorRevision)アプローチです。
この場合、パッケージやライブラリの最初の試みは以下のようになります:

```
my-package_1_0_0.py
```

これは、ソフトウェアが最初のメジャーリリースの未修正/パッチ適用されたアルファステージ(0)にあることを示しています。

### 変数名

In maths projects at school, variables are often unimaginatively named "x", "y", and "z".
この簡潔さは、おそらく教師(理解している)は、ボード上の長い変数名を繰り返し書きたくないためです。
しかし、コーディングでは、変数に好きな名前を付ける自由があります。
これはスクリプトの流れを表すのに役立ちます。

クリエイティブになろう！

#### 命名規則

明快さと読みやすさのために、変数の命名規則のセットを選択することが便利です。
大きな種類があり、一部の人々は「正しい」(あなたに合ったものを選んでください!)について非常に声高にすることができます。
これらには以下が含まれます:

- CamelCase
- 小キャメルケース
- Underscore_Methods
- Mixed_Case_With_Undercores
- 小文字

For example:

```r
raw_data <- read.csv("data.csv") # Not very creative
rawData <- read.csv("data.csv")  #lowerCamelCase
```

OK, `raw_data` is not very creative, but it could easily have been `spam` or `eggs` if that makes sense in your script.
変数を再コードする関数もあります。

```r
rawDat <- recode(rawDat)
```

変数名を再利用すると、rawDat が経過したプロセスに関する情報は提供されません。
これを別の変数として保存すると、元の変数に対してどのような変換が行われたかを確認できます:

```
rawDat_recoded <- recode(rawDat)
```

好きな場合は、上記のようにremoveを使用して古い変数を消去できます。

```
remove(rawDat) #In R
del(rawDat) # In Python
```

一つのスタイルを選択し、それに固執することが重要です:

```
ThisIs Because_SwitchingbetweenDifferentformats is.difficult to read.
```

```
Where_as if_you stick_to one_style, your_code will_be easier_to_follow!
```