(rr-testing-challenges)=
# テストにおける課題と例外的なケース

(rr-testing-challenges-stochastic-code)=
## 確率コードのテスト

コードにはランダム性の要素が含まれることがあります。一般的な例は、 [モンテカルロ メソッド](https://en.wikipedia.org/wiki/Monte_Carlo_method) を使用するコードです。 この種類のコードをテストすることは非常に難しい場合があります。複数回実行されると異なる解答が生成されるためです。 それらはすべて"正しい"かもしれませんが、それはバグが含まれていない場合でもです。 確率コードのテストに取り組むには2つの主な方法があります。

### 乱数の種を使用

乱数の種は少し説明が難しいので、例を挙げましょう。 ３つの乱数を出力する小さなPythonスクリプトです

```python
import random

# Print three random numbers
print(random.random())
print(random.random())
print(random.random())
```

このスクリプトにはバグはありませんが、繰り返し実行すると、毎回異なる答えが表示されます。 では、乱数シードを設定しましょう。

```python
import random

# Set a random number seed
random.seed(1)

# Print three random numbers
print(random.random())
print(random.random())
print(random.random())
```

このスクリプトを実行すると出力されます

```python
0.134364244112
0.8447433736937
0.763774618977
```

そして、このスクリプトを実行するたびに、 *同じ* 出力が得られます。 *同じ* 3つの乱数が出力されます。 乱数のシードが変更されると、異なる3つの乱数が得られます。

```python
0.956034271889
0.947827487059
0.0565513677268
```
でも今後も同じ数字が出てくるでしょう

乱数の種は物事を確実にランダムにする方法です。 しかし、乱数の種に依存するテストに対するリスクは脆弱です。 たとえば、次のように構造化された関数があるとします。

```python
def my_function():
  a = calculation_that_uses_two_random_numbers()
  b = calculation_that_uses_five_random_numbers()
  c = a + b
```

乱数のシードを設定すると、 `c`の値が常に同じになり、テストできるようになります。 しかし、モデルが変更されたとします。そして、 `a` を計算する関数は、以前とは異なる数の乱数を使用します。 `a` be different and `b` も同様になります。 なぜなら上に示すように乱数シードを与えられた乱数は 一定の順序で出力されるからです その結果、 `b` を計算するために生成された乱数が変更されます。 これは、実際にバグがない場合にテストが失敗する可能性があります。

#### 結果の分布を測定する

ランダム出力でコードをテストするもう一つの方法は、それを何度も実行し、結果の分布をテストすることです。 結果は少し変動するかもしれませんが、何らかの許容範囲内で常に10前後と予想されます。 それはテストすることができます。 コードが実行されるたびに、平均とその結果がより信頼性が高くなります。 しかしながら、コードを実行すると、テストを実行するのに時間がかかります。 信頼性の高い結果が得られる場合には、テストに非常に時間がかかることがあります。 さらに、 不確実性の要素が常に存在し、乱数が特定の方法で落ちた場合、コードが正しいとしても結果が期待される許容範囲外になる可能性があります。

確率コードをテストするこれらのアプローチの両方は依然として非常に有用ですが、それらの潜在的な落とし穴を認識することも重要です。

(rr-testing-challenges-hard-quatify)=
## 定量化が困難なテスト

時には(特に研究で)コードの出力は、彼らが「見る」右かどうかに従ってテストされます。 たとえば、時間とともに貯水池の水位をモデル化するコードがあるとします。

結果は以下のようになります:

```{figure} ../../figures/eyeball-test1.jpg
---
name: eyeball-test1
alt:
---
```

雨の日には、次のようになります:

```{figure} ../../figures/eyeball-test2.jpg
---
name: eyeball-test2
alt:
---
```

乾燥した日にはこんな感じになるかもしれません

```{figure} ../../figures/eyeball-test3.jpg
---
name: eyeball-test3
alt:
---
```

これらの出力はすべて異なるように見えますが、有効です。 ただし、研究者が以下のような結果を見るとします。

```{figure} ../../figures/eyeball-test-error.jpg
---
name: eyeball-test-error
alt:
---
```

彼らは簡単に結論付けることができます湖はその体積を3倍にして 数時間で再びそれを失う可能性は低いのです このような「アイボール」テストは、人間が行う必要があるため、時間がかかります。 しかし、プロセスは基本的な「健全性チェック」を作成することによって部分的または完全に自動化することができます。 例えば、一度に水位は、例えば、前回のステップで水位の10%内でなければなりません。 もう一つのチェックは、湖が-30%の満腹度を持つことができないため、負の値がないことです。 これらの種類のテストは、何かが明らかに間違っている可能性があるすべての方法をカバーすることはできません。 しかし自動化するのは簡単でほとんどの場合は十分です

(rr-testing-challenges-non-integer)=
## 整数でない数値が等しい場合のテスト

### 0.1 + 0.2 が 0.3 に等しくない場合

数字が整数でない場合、コード出力の一部が期待される答えと等しい場合、テストには複雑な問題があります。 このPythonの例を見てみましょう。しかし、この問題はPythonに固有のものではないことに注意してください。

`a` と 0.2 を `b` に割り当てて合計を出力すると、期待どおり0.3になります。

```python
>>> a = 0.1
>>> b = 0.2
>>> print(a + b)
0.3
```

しかし、 `a` plus `b` から 0.3 の結果を比較すると、False となります。

```python
>>> print(a + b == 0.3)
False
```

`a` plus `b` の値を直接表示すると、誤差の微妙なマージンがあることがわかります。

```python
>>> a + b
0.300000000000000004
```

これは、浮動小数点数が実数の近似であるためです。 浮動小数点計算の結果は、コンパイラまたはインタプリタ、プロセッサまたはシステムアーキテクチャ、および使用されるCPUまたはプロセスの数によって異なります。 これは、テストを書くための大きな障害をもたらす可能性があります。

### 浮動小数点世界での平等度

等しさを求める浮動小数点数を比較する場合、与えられた許容差内で比較する必要があります。あるいは閾値またはデルタと呼ばれます。 例えば、 ある数値の計算値と期待値は等しいと考えるかもしれません 彼らの差の絶対値が 我々の許容範囲の絶対値の範囲内なら

多くのテストフレームワークは、与えられた許容範囲内で浮動小数点数の等価性を比較するための関数を提供します。 例えば、フレームワークのpytest:

```python
import pytest

a = 0.1
b = 0.2
c = a + b
assert c == pytest.approx(0.3)
```

0.3を0.4に変えると失敗します

他の言語の単体テストフレームワークもよく似たような機能を提供します。

- Cunit for C: CU_ASSERT_DOUBLE_EQUAL(actual, expected granular)
- C++のCPPUnit: CPPUNIT_ASSERT_DOUBLES_EQUAL(expected, actual al, delta)
- C++ 用 googletest : ASSERT_NEAR(val1, val2, abs_error)
- FRUIT for Fortran: subroutine assert_eq_double_in_range_(var1, var2, delta, message)
- JUnit for Java: org.junit.Assert.assertEquals(double expect, double actual , double delta)
- Rのテスト:
  - expect_equal(actual, expected tolerance=DELTA) - DELTA内の絶対エラー
  - expect_equal(actual, expected, scale=expected, tolerance=DELTA) - DE L T A 内の相対的なエラー
