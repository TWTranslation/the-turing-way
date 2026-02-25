(pd-overview-method)=

# 再現性の方法

プロジェクトの設計は、あなたの研究の質問とこの質問に答えるために使用される方法論を定義することから始まります。
When thinking about the methodology is necessary to think about how to make your research {ref}`open<rr-open>` and {ref}`reproducible<rr-overview>`:

- どのようにデータを収集するか。
- どのような分析が使用されます。
- どのツールとインフラストラクチャが必要か。

(pd-overview-methods-license)=

## ライセンスを選択

ライセンスを取得することは、オープンな研究における重要なステップです。
他人に役立つためには研究を完了する必要はありません。
ライセンスを持つことは、研究をどのように使用して共有したいのかを伝える方法です。

ライセンスの種類は、プロジェクトの種類や再利用と共有のための設定によって異なります。
The [choosealicense](https://choosealicense.com/) website has a good mechanism to help you pick a license.

To learn more about how to add a license to your project, read the {ref}`Licensing<rr-licensing>` chapter in the Guide for Reproducible Research.

(pd-overview-planning-dmp)=

## データ管理プラン

研究プロジェクトで収集されたデータは、それを作成する研究よりも寿命が長い。
したがって、データがどのように使用され、アーカイブされ、共有されるかを検討する必要があります。
データ管理計画(DMP)の作成は、データを管理する方法について重要な決定を行い、他の人に情報を提供する方法です。

Read the chapter on {ref}`DMP<rr-rdm-dmp>` To learn about what should be included in a Data Management Plan.
Comprehensive information on data management is available in the chapter {ref}`Research Data Management<rr-rdm>`.

(pd-overview-methods-comprepro)=

## 計算再現性

どのソフトウェア、ツール、プラットフォームを使用するかを考えると、データの分析と処理方法に大きな影響を与えます 結果の共有方法を教えてくれます

アイデアは、他の人を容易にすることです, そして、あなたは、あなたの研究を再現するために必要なセットアッププロセスを再現.
これらを有効にするために使用できるツールは次のとおりです。

- **Dependency managers**: these keep dependencies updated and make sure the same version of dependencies you used in the development environment are used when reproducing a result.
- **Containers**: are a way to create environments that are isolated from other applications.
- **Notebooks**: a useful online environment where you can execute your scripts, and easily add notes and additional information.
  追加された利点は、何もインストールする必要がないことです。

To learn more about how to create a reproducible environment, the chapter on {ref}`Reproducible Environments<rr-renv>` is a good place to start.

(pd-overview-methods-docs)=

## 学習のデザインを文書化

あなたのデータを収集する方法を決定した後、それを分析し、どのツールを使用するか。 これらの決定を文書化するための良い方法は、登録報告書を書くことです。

登録されたレポートは、研究の質問の重要性と使用される方法を強調しています。 彼らは研究の前に査読されています, 研究方法の本質に結果からレビューの焦点を切り替えます. You can find out more in our {ref}`Chapter on Registered Reports<cm-dif-articles-registered-reports>`.

(pd-overview-planning-help)=

## 協力とヘルプ

一人で仕事をする必要はありません。 他の人があなたのプロジェクトと協力してもらうことは、あなたの仕事の再現性と品質を向上させるための最良の方法です。

If you don't know where to start, a good place would be the {ref}`Guide for Communication<cm>` and the {ref}`Guide for Collaboration<cl>`.

## 参照

Turkyilmaz-van der Velden, Y., Dintzner, N., Teperek, M., "今日から再現性が始まります。 パターン、vol. 1, no. 6, 11 Sept. 2020, p. 100099, doi:10.1016/j.patter.2020.100099. [Read Online on Science Direct](https://www.sciencedirect.com/science/article/pii/S2666389920301331)
