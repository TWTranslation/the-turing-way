(rr-code-style)=
# コードスタイルと書式設定

コーディングスタイルは、コードのフォーマット方法に関する規約のセットです。 例えば、あなたの変数を何と呼びますか? インデントにスペースやタブを使用しますか? どこにコメントを入れますか？ コード全体で一貫して同じスタイルを使用することで、読みやすくなります。 読みやすいコードは、あなただけでなく、潜在的なコラボレーターによって理解しやすいです。 したがって、コーディングスタイルに準拠することで、ミスのリスクが低減され、ソフトウェア上での連携が容易になります。 [なぜコーディングスタイルが重要なのか](http://coding.smashingmagazine.com/2012/10/25/why-coding-style-matters/) は、コーディングスタイルがなぜ重要なのか、ソフトウェアの品質を向上させる方法についての良い記事です。

例えば、 [PEP8](https://www.python.org/dev/peps/pep-0008/) は Python のコーディングスタイルで最も広く使用されており、 [ECMAScript 6](http://es6-features.org/) 別名 [ES6](http://es6-features.org/) は ECMA International がJavascript でプログラミングするために標準化したスクリプト言語仕様です。

さまざまなプログラミング言語で一般的に使用されるスタイルガイドについては、 [言語ガイド](https://guide.esciencecenter.nl/best_practices/language_guides/languages_overview.html) を参照してください。 Googleには、Googleに由来するオープンソースプロジェクトで使用されている多くの言語の [スタイルガイド](https://code.google.com/p/google-styleguide/) もあります。

(rr-code-style-and-formatting)=
## 自動書式設定

コードを特定のスタイルに従うように自動的にフォーマットするための多くのツールが存在します。 自動書式設定により、特にチームでコラボレーションする場合や、他の人があなたが書いたコードを見る必要がある場合には、より高いコード品質が可能になります。 多くの開発者や組織は、 **2-space** や **4-space indentation** のようなコードフォーマットの標準を維持しています。 バグを見つける確率(もしあれば)が増えるので、これらを使用することを強くお勧めします。

[EditorConfig](https://editorconfig.org) は言語に依存しないツールで、さまざまなエディタで同じプロジェクトに取り組む複数の人々に対して一貫した空白スタイルを維持するのに役立ちます。 ほとんどのエディタは EditorConfig をネイティブまたはプラグインでサポートしています。 ほとんどすべての広く使用されているIDEおよびテキストエディタは、入力時に自動コードフォーマットをサポートしています。 例: [JetBrains IDE Suite](https://www.jetbrains.com/products.html#), [VScode](https://code.visualstudio.com/) , [Atom](https://atom.io/).

それに加えて、特定のスタイルに応じてコードを自動的にフォーマットするための多くの言語固有のツールがあります。 エディタは、多くの場合、編集環境から直接これらのツールを使用することをサポートしています。

<table spaces-before="0">
  <tr>
    <th>
      言語
    </th>
    
    <th>
      フォーマターツール
    </th>
  </tr>
  
  <tr>
    <td>
      C/C++
    </td>
    
    <td>
      <a href="http://www.gnu.org/software/indent/">GNUIndent</a>, <a href="http://sourceforge.net/projects/gcgreatcode/">GreatCode</a>
    </td>
  </tr>
  
  <tr>
    <td>
      Python
    </td>
    
    <td>
      <a href="https://black.readthedocs.io">黒</a>, <a href="https://pypi.org/project/yapf/">yapf</a>
    </td>
  </tr>
  
  <tr>
    <td>
      Javascript
    </td>
    
    <td>
      <a href="https://beautifier.io/">beautifer.io</a>
    </td>
  </tr>
  
  <tr>
    <td>
      Java
    </td>
    
    <td>
      <a href="https://github.com/google/google-java-format">Google Java format</a>, <a href="http://www.jindent.com/">JIndent</a>
    </td>
  </tr>
  
  <tr>
    <td>
      PHP
    </td>
    
    <td>
      <a href="http://sourceforge.net/projects/phpstylist/">phpStylist</a>
    </td>
  </tr>
  
  <tr>
    <td>
      Perl
    </td>
    
    <td>
      <a href="http://perltidy.sourceforge.net/">PerlTidy</a>
    </td>
  </tr>
  
  <tr>
    <td>
      シェル/バッシュ
    </td>
    
    <td>
      <a href="http://www.bolthole.com/AWK.html">ShellIndent</a>
    </td>
  </tr>
  
  <tr>
    <td>
      CSS
    </td>
    
    <td>
      <a href="http://csstidy.sourceforge.net/">CSSTidy</a>
    </td>
  </tr>
  
  <tr>
    <td>
      HTML
    </td>
    
    <td>
      <a href="http://tidy.sourceforge.net/"><unk></a>
    </td>
  </tr>
</table>

**クイックヒント**: メインテキストエディタとしてVS Codeを使用している場合、ブラウザに自動コードフォーマットを有効にできます。 JSONモードで環境設定ページを開き、次の行を追加します。

```
"editor.formatOnSave": true,
```

(rr-code-style-service)=
## ソフトウェアの品質チェックを提供するオンラインサービス

コードを分析し、コードの品質を見えるようにするWebサービスがいくつかあります。 通常、これらのサービスは、コマンドラインから使用したり、自分のコンピュータ上のエディタに統合したりすることができる1つ以上の静的コード解析ツールを実行します。 プルリクエストで品質の問題を検出して通信できるため、GitHub/GitLabリポジトリと統合するコード品質サービスを使用することを強くお勧めします。

コード品質分析サービスは、多くの場合、以下の機能を提供するウェブサイトです:

- GitHub/GitLabにプッシュしたコードを自動的に分析する
- 通常はオープンソースのプロジェクトでは無料です
- 複数のプログラミング言語をサポートしますが、すべての言語が同じレベルの機能を持つとは限りません。
- リポジトリ内のすべてのコードの品質を評価または得点します。
- 重要度ごとにグループ化されたコードの課題一覧
- 問題の場所までドリルダウン
- サービスプロバイダがベストプラクティスを見つけるチェックのデフォルトリスト
- チェックリストをより厳格またはリラックスさせるように設定できます
- ファイルや拡張子を無視するように設定できます。
- リポジトリから設定ファイルを読み込むことができます。
- 時間の経過とともに問題を追跡し、品質が悪化したときにアラートを送信します
- 必要に応じて、CI ビルドによって生成されたコードカバレッジについて報告します
- リポジトリを自動的にデプロイし、最終リリース前にレビュー用のプレビュービルドを生成します。

選択肢のリストについては、 [shields.io](https://shields.io/category/analysis) または [オープンソースプロジェクト](https://github.com/ripienaar/free-for-dev#code-quality) で無料で利用できるサービスのリストを参照してください。
