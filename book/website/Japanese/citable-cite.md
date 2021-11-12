(cm-citable-cite)=
# 研究オブジェクトを引用中

関連のある場所で、研究対象を直接論文に引用するべきです。 これは出版物を引用する一般的な練習方法であり、データやソフトウェアなどの他の研究コンポーネントを引用するのに有効です。 引用には以下の情報が含まれています:
- 作成者
- タイトル
- 出版年
- パブリッシャー（データに対しては、多くの場合、これが保管されているデータリポジトリです）
- バージョン (示されている場合)
- アクセス情報（URLまたはDOI）

引用様式とは、引用に必要な情報の特定の配置、順序および書式のことです。 例えば、 MLAは現代語学協会によって開発されました(もともと人文科学で使用されていました)。 APAはアメリカ心理学協会によって開発されました(もともと心理学と社会科学で使用されていました)。
- MLA文献スタイルは以下のフォーマットを使用します: `著者。 "ソースのタイトル。 コンテナのタイトル, その他の貢献者, バージョン, 数, 出版者, 出版日, 場所.`
- APA 文献スタイルは以下のフォーマットを使用します: `著者。 （年） データセットのタイトル (バージョン番号)。 [取得元] ***OR*** [DOI]`

[Scribbr 文献スタイルガイド](https://www.scribbr.com/citing-sources/citation-styles/) をご覧ください。 [FORCE11 リソース](https://www.force11.org/node/4771) も参照してください。

(cm-citable-cite-data)=
## データを引用中

データセットを共有するとき 専用のDOIを使用し、論文の末尾またはオンラインリポジトリの詳細に **データ可用性ステートメント** を追加してください(承認セクションと同様)。

これらの記述の例は、出版社(調査データ)の著者ポリシーに記載されています。

### データ可用性ステートメントの例:

**Using the Digital Object Identifier (DOI):** “The data that support the findings of this study are openly available in [repository name] at http://doi.org/[doi].”

**DOIが発行されていない場合:**
- 「この調査の結果をサポートするデータは、 [URL]、参照番号 [reference number]で公然と入手できます。

**禁輸期間がある場合は、DOIを予約し、データセットへの参照を論文に含めることができます。**
- 「調査結果の商業化を可能にするために、発行日から[6ヶ月]禁輸措置を経て、[リポジトリ名]にある[リポジトリ名]で調査結果をサポートするデータが利用可能になります。」

**データを利用できない場合**
- 「この研究の結果を支えるデータには制限が適用されます。 [たとえば、制限の性質を説明する 研究参加者のプライバシーを侵害する可能性のある情報がデータに含まれている場合は、format@@0format@@1に連絡し、format@@2の許可を得て、合理的な要請に応じてデータを利用できます。
-  「この調査の結果を支えるデータは、リクエストに応じて入手できます。 アクセス条件と手続きは、[ [EASY](https://easy.dans.knaw.nl/ui/home) .]などの制限付きアクセスリポジトリのURL] にあります。

**より多くのデータ可用性ステートメントの例:**

You can find more examples on the [Manchester's Data Access Statements page](https://www.library.manchester.ac.uk/using-the-library/staff/research/research-data-management/sharing/data-access-statements/), the [Cambridge Data Availability Statement examples](https://www.cambridge.org/core/services/authors/open-data/data-availability-statements), the [AMS Data Availability Statement examples](https://www.ametsoc.org/index.cfm/ams/publications/author-information/formatting-and-manuscript-components/data-availability-statement-examples/), or [Nature's Tips for writing a dazzling Data Availability Statement](https://researchdata.springernature.com/posts/tips-for-writing-a-dazzling-das-data-availability-statement).

(cm-citable-cite-software)=
## ソフトウェアを引用中

ソフトウェア文献には、上記のデータ引用と同じ要素がたくさんあります。 さらに詳しくは、 [ソフトウェア引用原則](https://www.force11.org/software-citation-principles) を参照してください。 他のソフトウェアを使用する場合は、それを適切に引用し、属性付けすることが重要です。

コードを引用できるようにするには、 [Zenodo](https://zenodo.org/) と GitHub の統合を使用できます。

- あなたのソフトウェアを引用する方法を人々に伝えるファイルを作成しなさい。 この [便利なガイド](https://citation-file-format.github.io/cff-initializer-javascript/) を使用してファイルをフォーマットします。
- GitHubアカウントをZenodoアカウントにリンクします。 このガイドは [](https://guides.github.com/activities/citable-code/) の方法について説明します。
- You can tell Zenodo what information or metadata you want to include with your software by adding a `zenodo.json` file, described [here](https://guide.esciencecenter.nl/citable_software/making_software_citable.html).
- Zenodoでは、リリースしたいGitHubリポジトリの「on」位置にスイッチを反転します。
- GitHub で、 *Create a new release* ボタンをクリックします。 Zenodoは自動的に通知され、リポジトリの現在の状態のスナップショットコピーを作成する必要があります（ブランチは1つだけです。 ) また、そのスナップショットに永続的な識別子 (DOI) を割り当てる必要があります。
- あなたのソフトウェアのどの引用でもDOIを使用し、コラボレーターやユーザーにも同じことを行うように伝えてください!
