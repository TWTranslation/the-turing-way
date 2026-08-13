(rr-testing-types-integrationtest)=

# 統合テスト

統合テストは、個々のユニットを組み合わせてグループとしてテストするソフトウェアテストのレベルです。
ユニットテストは、コードの機能を隔離して検証しますが、インテグレーションテストは、相互接続時にコンポーネントが協力することを保証します。
The purpose of this level of testing is to expose faults in the interaction between integrated units.

たとえば、あるデータを読み込むユニットが動作して、ユニットテストに合格している可能性があります。 一度読み取られたデータを消去する次のユニットも機能し テストに合格しています
しかし、最初のユニットはデータを(time_data, temperature_data)として出力しますが、データを消去する関数はフォーム(temperature_data, time_data)の入力を期待します。
これは明らかにバグにつながることができます。
ユニットは、その統合でエラーでそこに正しいですが。

この場合の統合テストの例は、テストデータファイルを提供することです。 これらの関数を使ってそれを読んできれいにする 結果として得られたデータを
このようなバグが存在する場合、出力されたクリーンなデータは期待される結果と一致する可能性は非常に低いでしょう。 そして間違いを引き起こします

コードの異なる部分で異なる人々が作業する共同プロジェクトでは、統合テストは特に重要です。
If two different people complete separate units and then need to integrate them integration issues are more likely as neither may understand the other's code.
A famous example of this is a multi-million dollar satellite which [crashed](https://en.wikipedia.org/wiki/Mars_Climate_Orbiter) because one piece of code outputted distance data in feet, while another assumed data in meters.
これは統合問題のもう一つの例です。

インテグレーションテストのサブタイプは、システムインテグレーションテストです。
これにより、システム、パッケージ、外部組織(Electronic Data Interchange、Internetなど)とのインタフェースの統合がテストされます。
プロジェクトシステムの統合テストの性質に応じて、適用できない場合があります。

## 統合テストのアプローチ

統合テストにはいくつかの異なるアプローチがあります。
Big Bangは、すべてまたはほとんどのユニットをまとめて一度にテストする統合テストへのアプローチです。
このアプローチは、テストチームがソフトウェア全体をバンドルで受信するときに行われます。
では、Big Bang統合テストとシステムテストの違いは何ですか? 前者はユニット間の相互作用のみをテストし、後者はシステム全体をテストします。

Top Downは、コードのトップレベルセクション(それ自体が多くの小さなユニットを含む)が最初にテストされ、その後段階的にテストされる統合テストへのアプローチです。
コードはA、B、Cに分割することができます。 それぞれに完了するためのステップが含まれていますこれらのステップには以下のようなステップがあります

- A

- A.1
  - A.1.1
  - A.1.2

- A.2

- B

- B.1

- B.2
  - B.2.1
  - B.2.2
  - B.2.3

- B.3

- C

- C.1
  - C.1.1
  - C.1.2

- C.2
  - C.2.1
  - C.2.2

So in the top down approach the integration between sections at the top level (A, B and C) are tested, then integration between sections at the next level (for example, A.1 -> A.2) and so on.
下位レベルのものを実行するなど、それらが含むすべてのコードを実行することによって、上位レベルの単位をテストすることは、低レベルの単位でのバグによって上位レベルのテストが壊れる可能性があります。
これは望ましくないので、これを防ぐために、下位のセクションを実行すべきではありません。 しかし、 <a href="#Use_test_doubles_stubs_mocking_where_appropriate">テストスタブ</a> を使用して出力をシミュレートする必要があります。

Bottom Upは統合テストに対するアプローチであり、下位レベルセクション間の統合はその後段階的にテストされ、上位レベルセクション間の統合はテストされます。
この場合もテストスタブを使用して、より高いレベルのセクションから入力をシミュレートする必要があります。

サンドウィッチ/ハイブリッドは、トップダウンとボトムアップの組み合わせによる統合テストへのアプローチです。

どのアプローチを使用すべきかは、プロジェクトの自然/構造に最適です。

## 統合テストのヒント

- 各ユニット間の相互作用が明確に定義されている適切な詳細設計文書があることを確認します。 この情報なしで統合テストを実行することは困難または不可能です。
- 統合テストを開始する前に、各ユニットがユニットテストであることを確認し、バグを修正してください。 個々のユニットにバグがある場合、統合方法にエラーがない場合でも、統合テストはほぼ確実に失敗します。
- 適切な場合はモック/スタブを使用してください。
