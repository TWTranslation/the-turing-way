(rr-testing-runtime)=

# ランタイムテスト

ランタイムテストとは、プログラム自体の一部として実行されるテストです。
以下に示すように、コード内のチェックの形式をとることができます。

```
population = population + people_born - people_died

// test that the population is positive
if (population < 0):
  error( 'The number of people can never be negative' )
```

ランタイムテストを使用する別の例として、以下に示すように、入力と出力が有効であることを検証する機能内の内部チェックがあります。

```
function add_arrays( array1, array2 ):

// test that the arrays have the same size
if (array1.size() != array2.size()):
  error( 'The arrays have different sizes!' )

output = array1 + array2

if (output.size() != array1.size()):
  error( 'The output array has the wrong size!'' )

return output
```

ランタイムテストの利点:

- プログラム内で実行すると、ロジックエラーやエッジケースによって引き起こされる問題をキャッチできます。
- 問題を早期に捕まえることで、バグの原因を見つけやすくします。
- 問題を早期に捕まえることは、壊滅的な失敗にエスカレートするのを防ぐのにも役立ちます。 爆風半径を最小限に抑えます。

ランタイムテストの欠点:

- テストはプログラムを遅くすることができます。
- エラーが検出された場合、正しいことは何ですか? このエラーはどのように報告する必要がありますか? 例外はこれに合わせて推奨されるルートです。
