(rr-checklist-for-code-review)=

# コードレビュープロセスのチェックリスト

このセクションでは、正式なレビュープロセスの一環として、コーダーとレビュアーの両方のためのいくつかのチェックリストを示します。
査読者のチェックリストは、プログラム全体に対して1つ、個々のファイルまたは提案された変更に対して1つの2つのカテゴリに分かれています。

リストは良いソフトウェアエンジニアリングの練習に焦点を当てて作成され、インスピレーションの源となることを意図しています。
チェックリストを評価する際には、その項目がどの程度実装されているかを検討することを推奨します。
リスト上のいくつかの項目は、プロジェクトやプログラミング言語に適用されない場合があり、その場合は無視されるべきです。

どのような場合でも、プログラミング体験を使ってコードをより良くする方法を見つけることが目標です。

## コーダー用

- Does the new code meet the required standards of the project?
  The standards are typically written under `contributing guidelines` by the project you are contributing to.
- Is there [documentation](#rr-checklist-for-code-review:documentation) that meets the required standards of the project?
- Are you following any declared {ref}`style guide<rr-code-quality>` for the project?
- Are there new [tests](#rr-checklist-for-code-review:tests) for the new material, based on the required standards of the project?
  - これらのテストはローカルに合格しますか?
  - 残りのコードベースのテストはまだローカルで通過していますか?
- プルリクエストを作成する。
- Many {ref}`continuous integration (CI)<rr-ci>` systems will check if the tests in the main project pass automatically once you create a pull request.
  リポジトリがCIを使用している場合は、すべてのビルドとテストが完了していることを確認してください。
  CIレポートを参照して、メインプロジェクトでテストが失敗する原因となっているかどうかを確認してください。
- 必要であれば、今すぐ正式にレビューを要求します。

## レビュアー用

- プロジェクトの必要な標準を確認してください。 The standards are typically written under
  `contributing guidelines` by the project you are contributing to.
- Check the code meets basic project {ref}`style guide<rr-code-quality>`, if this is not automatically checked by {ref}`continuous integration (CI)<rr-ci>`.
- Do the [tests](#rr-checklist-for-code-review:tests) and [documentation](#rr-checklist-for-code-review:documentation) conform to the standards?
- すべてのコードは簡単に理解できますか? Depending on the language, files may contain interfaces, classes or other type definitions, and functions (see [Architecture](#rr-checklist-for-code-review:architecture)).
  本質的な建築概念は以下のように見直すことができます:
  - Check the [interfaces](#rr-checklist-for-code-review:interfaces) lists.
  - Check the [classes and types](#rr-checklist-for-code-review:classes-and-types) lists.
  - Check the [function/method declarations](#functionmethod-declarations) lists.
  - Check the [function/method definitions](#functionmethod-definitions) lists.
- Do the [tests](#rr-checklist-for-code-review:tests) actually ensure the code is robust in its intended use?
  - バグやその他の欠陥はありますか?
- Are [security](#rr-checklist-for-code-review:security) issues handled correctly?
  - Check the [security of new code](#rr-checklist-for-code-review:security-new-code).
- Does the new code meet the [legal requirements](#rr-checklist-for-code-review:legal)?

## プログラムレベルのチェック リスト

プログラム全体を見るときに考慮すべき事項のリストは次のとおりです。
個々のファイルを見たり変更したりするのではなく。

(rr-checklist-for-code-review:documentation)=

### Documentation

ドキュメントは、プログラムを使用、開発、および見直すための前提条件です。
あなたのプロジェクトに参加していない誰かがあなたのコードが何をしているか、
そしてあなたがどのようなアプローチをとっているかを理解する必要があります。 ここではチェックすることがいくつかあります。

- プログラムまたは図書館の目的についての説明はありますか?
- 詳細な要件が記載されていますか?
- Are requirements ranked according to [MoSCoW](https://en.wikipedia.org/wiki/MoSCoW_method)?
- サードパーティのライブラリの使用と機能は文書化されていますか?
- プログラムの構造/アーキテクチャは文書化されていますか? (以下を参照)
- インストールマニュアルはありますか?
- ユーザーマニュアルはありますか?
- 貢献する方法に関するドキュメントはありますか?
  - 変更を送信する方法を含む
  - 変更を文書化する方法

(rr-checklist-for-code-review:architecture)=

### 建築

これらの項目は、より大きなプログラムにとって主に重要ですが、小さいプログラムについても考慮すべき
かもしれません。

- プログラムは明確に分離されたモジュールに分割されていますか?
- これらのモジュールはできるだけ小さいですか?
- Is there a clear, hierarchical or layered, dependency structure between
  these modules?
  - If not, the functionality should be rearranged, or perhaps heavily
    interdependent modules should be combined.
- デザインを簡素化することはできますか?

(rr-checklist-for-code-review:security)=

### セキュリティ

外部からアクセス可能なソフトウェア(例えばウェブ
アプリケーション)を作っている場合、セキュリティが重要になります。 セキュリティ問題は
であるが、すべての欠陥がセキュリティ問題であるわけではない。 セキュリティに配慮した設計は、
欠陥のセキュリティへの影響を軽減するのに役立ちます。

- ユーザー入力を扱うモジュールは？
- 出力を生成するモジュールは？
- 入力と出力は区切られていますか?
  - If not, consider making separate modules that manage all input
    and output, so validation can happen in one place.
- 信頼できないデータが存在するモジュールは？
  - 少ない方が良いです。
- 信頼できないデータが区切られていますか?
  - Ideally, validate in the input module and pass only
    validated data to other parts.

(rr-checklist-for-code-review:legal)=

### Legal

開発者として、あなたが使用しているコードの
クリエイターの法的権利に注意を払う必要があります。 いくつかチェックすることがあります。
疑問に思ったら、ライセンスの経験者にアドバイスを求めてください。

- 使用されているすべてのモジュール/ライブラリのライセンスは文書化されていますか?
- これらのライセンスによって設定された要件は満たされていますか?
  - ライセンスは必要な場所に含まれていますか?
  - 著作権表記は必要なコードに含まれていますか?
  - 必要とされる文書には著作権表記が含まれていますか?
- すべての部品のライセンスは互いに互換性がありますか?
- プロジェクトライセンスはすべてのライブラリと互換性がありますか?

## ファイル/変更レベルのチェック リスト

プルリクエスト内の個々の変更やファイルをチェックする場合、
コード自体が精査の対象となります。 言語に応じて、ファイル
にはインターフェイス、クラス、その他の型定義、および関数が含まれている場合があります。 これらすべての
をチェックする必要があります。

(rr-checklist-for-code-review:interfaces)=

### インターフェイス

- インターフェイスは文書化されていますか?
- モデルという概念は意味をなすのでしょうか？
- それはさらに分割することができますか? (インターフェイスは可能な限り小さくする必要があります)

以下のほとんどの項目はオブジェクト指向プログラミング
スタイルを想定していることに注意してください。これは見ているコードとは関係がないかもしれません。

(rr-checklist-for-code-review:classes-and-types)=

### クラスとタイプ

- クラスは文書化されていますか。
  - 外部プログラムはクラスで文書化が必要ですか?
- それは単一の責任がありますか? それは分割できますか?
- 拡張するように設計されている場合、それは可能でしょうか?
- 拡張するように設計されていない場合、それはそれに対して保護されていますか?
- それが別のクラスから派生した場合、このクラスのオブジェクトを親クラス(es)のいずれかに置き換えることができますか?
- クラスはテスト可能ですか？
  - 依存関係は明確で明示的ですか?
  - 依存関係が少ないのでしょうか?
  - クラスではなくインターフェイスに依存しているのでしょうか？

(functionmethod-declarations)=

### 関数/メソッド宣言

- 関数やメソッドの意図を説明するコメントはありますか?
- 入力と出力は文書化されていますか? 単位を含みますか？
- 前および後条件は文書化されているか。
- エッジケースと珍しいことはコメントされますか?

(functionmethod-definitions)=

### 関数/メソッド定義

- エッジケースと珍しいことはコメントされますか?
- 不完全なコードはありますか？
- この関数は分割される可能性があります(長すぎないでしょうか)。
- 動作しますか？ 意図した関数を実行します。論理的に正しい...
- Is it easy to understand?
- 冗長コードまたは重複コードはありますか? (DRY)
- ループには長さが設定されていて、正しく終了するか？
- デバッグやロギングコードを削除できますか?
- いずれかのコードをライブラリ関数に置き換えることはできますか?

(rr-checklist-for-code-review:security-new-code)=

### 新しいコードのセキュリティ

- ライブラリを使用している場合は、エラーが返されるか確認しますか?
- すべてのデータ入力はチェックされていますか?
- 出力値は正しくチェックされ、エンコードされますか?
- 無効なパラメータは正しく処理されますか？

(rr-checklist-for-code-review:tests)=

### テスト

- ユニットテストは実際に彼らが何をすると思われるかテストするか。
- 境界がなされているかチェックしているか?
- テストフレームワークやライブラリは使用されていますか?
