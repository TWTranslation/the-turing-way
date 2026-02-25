(testing-checklist)=

# コードテストのチェックリスト

このチェックリストには多くの項目が含まれています。
As [mentioned before](#rr-testing-write-tests), it is far better to do some of the items than none of them.
このタスクのリストが乗り越えられないようであれば、落胆しないでください。

(testing-checklist:writing-tests)=

## テストを書く

- 煙のテストを書いてください。
- すべてのコード単位の単位テストを記述します。
- 統合テストを書いて、ユニット間の統合をチェックします。
- いくつかのシステムテストを書きます。 プログラムを通して共通の重要なパスを優先します。
- 回帰テストを書く。 回帰テストは任意のレベルのテストに存在することができます。
- プロジェクトの書き込み受入テストに適切な場合。
- プロジェクトにランタイムテストを追加します。

(testing-checklist:good-practice-checks)=

## グッドプラクティスのチェック

- Document the tests and how to run them.
  - Write scripts to set up and configure any resources that are needed to run the tests.
- Pick and make use of a testing framework.
- Run the tests regularly.
  - Automate the process of running tests. Consider making use of continuous integration (see continuous integration chapter) to do this.
- Check the code coverage of your tests and try to improve it.
- Engage in code review with a partner.
