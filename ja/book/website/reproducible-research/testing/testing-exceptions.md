(rr-testing-challenges)=

# テストにおける課題と例外的なケース

(rr-testing-challenges-stochastic-code)=

## 確率コードのテスト

Sometimes code contains an element of randomness, a common example being code that makes use of [Monte Carlo methods](https://en.wikipedia.org/wiki/Monte_Carlo_method).
Testing this kind of code can be very difficult because if it is run multiple times it will generate different answers, all of which may be "right", even is it contains no bugs. There are two main ways to tackle testing stochastic code:

### Use random number seeds

Random number seeds are a little difficult to explain so here's an example.
Here's a little Python script that prints three random numbers.

```python
import random

# Print three random numbers
print(random.random())
print(random.random())
print(random.random())
```

This script has no bugs but if you run it repeatedly you will get different answers each time.
Now let's set a random number seed.

```python
import random

# Set a random number seed
random.seed(1)

# Print three random numbers
print(random.random())
print(random.random())
print(random.random())
```

Now if you run this script it outputs

```python
0.134364244112
0.847433736937
0.763774618977
```

and every time you run this script you will get the _same_ output, it will print the _same_ three random numbers.
If the random number seed is changed you will get a different three random numbers:

```python
0.956034271889
0.947827487059
0.0565513677268
```

でも今後も同じ数字が出てくるでしょう

Random number seeds are a way of making things reliably random. However a risk with tests that depend on random number seeds is they can be brittle.
Say you have a function structured something like this:

```python
def my_function():
  a = calculation_that_uses_two_random_numbers()
  b = calculation_that_uses_five_random_numbers()
  c = a + b
```

If you set the random number seed you will always get the same value of `c`, so it can be tested.
But, say the model is changed and the function that calculates `a` uses a different number of random numbers that it did previously.
Now not only will `a` be different but `b` will be too, because as shown above the random numbers outputted given a random number seed are in a fixed order.
As a result the random numbers produced to calculate `b` will have changed.
これは、実際にバグがない場合にテストが失敗する可能性があります。

#### 結果の分布を測定する

ランダム出力でコードをテストするもう一つの方法は、それを何度も実行し、結果の分布をテストすることです。
結果は少し変動するかもしれませんが、何らかの許容範囲内で常に10前後と予想されます。 それはテストすることができます。
コードが実行されるたびに、平均とその結果がより信頼性が高くなります。
しかしながら、コードを実行すると、テストを実行するのに時間がかかります。 信頼性の高い結果が得られる場合には、テストに非常に時間がかかることがあります。
さらに、 不確実性の要素が常に存在し、乱数が特定の方法で落ちた場合、コードが正しいとしても結果が期待される許容範囲外になる可能性があります。

確率コードをテストするこれらのアプローチの両方は依然として非常に有用ですが、それらの潜在的な落とし穴を認識することも重要です。

(rr-testing-challenges-hard-quatify)=

## 定量化が困難なテスト

時には(特に研究で)コードの出力は、彼らが「見る」右かどうかに従ってテストされます。
たとえば、時間とともに貯水池の水位をモデル化するコードがあるとします。

結果は以下のようになります:

```{figure} ../../../figures/eyeball-test1.*
---
name: eyeball-test1
alt: Scatter plot of water level in a reservoir measured at regular intervals over 24 hours, where level remains fairly constant.
---
```

雨の日には、次のようになります:

```{figure} ../../../figures/eyeball-test2.*
---
name: eyeball-test2
alt: Scatter plot of water level in a reservoir measured at regular intervals over 24 hours, where level increases steadily between 6am and 9pm before dropping slightly in the last 3-hour period.
---
```

乾燥した日にはこんな感じになるかもしれません

```{figure} ../../../figures/eyeball-test3.*
---
name: eyeball-test3
alt: Scatter plot of water level in a reservoir measured at regular intervals over 24 hours, where level decreases steadily.
---
```

これらの出力はすべて異なるように見えますが、有効です。 ただし、研究者が以下のような結果を見るとします。

```{figure} ../../../figures/eyeball-test-error.*
---
name: eyeball-test-error
alt: Scatter plot of water level in a reservoir measured at regular intervals over 24 hours, where fairly constant levels flank one very high measurement taken at midday.
---
```

彼らは簡単に結論付けることができます湖はその体積を3倍にして 数時間で再びそれを失う可能性は低いのです "Eyeballing" tests like these are time-consuming as they must be done by a human. However, the process can be partially or fully automated by creating basic "sanity checks". For example, the water level at one time should be within, say, 10% of the water level at the previous time step. もう一つのチェックは、湖が-30%の満腹度を持つことができないため、負の値がないことです。 これらの種類のテストは、何かが明らかに間違っている可能性があるすべての方法をカバーすることはできません。 しかし自動化するのは簡単でほとんどの場合は十分です

(rr-testing-challenges-non-integer)=

## 整数でない数値が等しい場合のテスト

### 0.1 + 0.2 が 0.3 に等しくない場合

数字が整数でない場合、コード出力の一部が期待される答えと等しい場合、テストには複雑な問題があります。 このPythonの例を見てみましょう。しかし、この問題はPythonに固有のものではないことに注意してください。

If we assign 0.1 to `a` and 0.2 to `b` and print their sum, we get 0.3, as expected.

```python
>>> a = 0.1
>>> b = 0.2
>>> print(a + b)
0.3
```

If, however, we compare the result of `a` plus `b` to 0.3 we get False.

```python
>>> print(a + b == 0.3)
False
```

If we show the value of `a` plus `b` directly, we can see there is a subtle margin of error.

```python
>>> a + b
0.30000000000000004
```

This is because floating-point numbers are approximations of real numbers. The result of floating-point calculations can depend upon the compiler or interpreter, processor or system architecture and number of CPUs or processes being used. This can present a major obstacle for writing tests.

### 浮動小数点世界での平等度

When comparing floating-point numbers for equality, we have to compare to within a given tolerance, alternatively termed a threshold or delta. 例えば、 ある数値の計算値と期待値は等しいと考えるかもしれません 彼らの差の絶対値が 我々の許容範囲の絶対値の範囲内なら

Many testing frameworks provide functions for comparing equality of floating-point numbers to within a given tolerance. For example for the framework pytest:

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
  - expect_equal(actual, expected, scale=expected, tolerance=DELTA) - relative error within DELTA
- julia:
  - `val1 ≈ val2`
  - `isapprox(val1, val2, atol=abs_delta, rtol=rel_delta)`
  - `Test.jl` with `≈`: `@test val1 ≈ val2 atol=abs_delta rtol=rel_delta`
