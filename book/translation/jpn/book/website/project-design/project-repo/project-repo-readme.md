(pd-project-repo-readme)=
# ランディングページ - READMEファイル

プロジェクトのランディングページは、プロジェクトリポジトリへの新規訪問者に最初に表示されるものです。 GitHubのようなオンラインリポジトリでは、このランディングページはWebサイトのメインページに相当する「README」と名付けられています。

> READMEファイルはあなたのプロジェクトの歓迎マットです - それはあなたのプロジェクトの値を示すことによって潜在的な貢献者とユーザーをフックする機会を与えます。 - [Mozilla Open Leadership](https://mozilla.github.io/open-leadership-training-series/articles/opening-your-project/write-a-great-project-readme/)

効果的にあなたのプロジェクトを伝え、あなたのプロジェクトに貢献するためにあなたの読者を招待するには、あなたのREADMEファイルをカバーする必要があります:
* あなたが誰のために、そして何のためにしているのか。
* 何があなたのプロジェクトを特別でエキサイティングにします。
* 始める方法。
* 主要なリソースを見つける場所。

可能な限り多様な読者にとって魅力的なランディングページをデザインし、コントリビューターを圧倒せずに有益な情報をすべて提供することについて考えてみましょう。 ソフトウェアプロジェクトの場合は、ソフトウェアを実行するためのインストール、テスト、デプロイメント、およびその他の要件に関する手順を提供します。 PurpleBooth [によるこの](https://github.com/PurpleBooth/a-good-readme-template) テンプレートを参照してください。

詳細については、 [Open Life Science](https://docs.google.com/presentation/d/e/2PACX-1vTvwtT3GddLaDr8J4ZEf8TkufiN_Wn1Kgv2xu6YSH8hgocb6LJ_WB82OzfcPeJ0b09_xyMOMSft7-Gq/pub?start=false&loop=false&delayms=3000) トレーニングおよびメンタリングプログラムによるこのプレゼンテーション [](https://openlifesci.org/) を参照してください。 また、 [ハオイェ](https://ha0ye.github.io/CW21-README-tips/) による [README テンプレート](https://ha0ye.github.io/CW21-README-tips/template_README.html) の短いワークショップを見て、始めましょう。

```{note}
**READMEについての3つのレッスン**

- ユーザーと必要なことを知る
- ユーザーがすばやく強力なことをするようにする
- ジャーゴンに気をつけて！

ソース:ハオイェジン。 （2021年3月） コラボレーションワークショップ 2021 Mini-Workshop: READMEのヒントで、プロジェクトをより親しみやすくすることができます(Version v1.0.0)。 Zenodo. http://doi.org/10.5281/zenodo.4647391
```

## ケーススタディ： _チューリング方法_

[_Turing Way_ README ファイル](https://github.com/alan-turing-institute/the-turing-way/blob/main/README.md) を例に挙げると、適切な README ファイルがどのようなものかを記述します。

_The Turing Way_ README ファイルには以下のような詳細が時系列で提供されている。
1. トップヘッダーとしてのプロジェクト名。
2. [GitHub のバッジ/シールド](https://github.com/badges/shields) のセット ( [ここ](https://shields.io/) で独自のバッジを作成できます)。 GitHub シールドはクリック可能なボタンで、プロジェクトに関連する簡潔なアクションを提供します。 _The Turing Way_ には以下のようなものがあります。 [![本を読む](https://img.shields.io/badge/read-the%20book-blue.svg)](https://the-turing-way.netlify.com) [![私たちの小さな手紙メーリングリストに参加する](https://img.shields.io/badge/receive-our%20newsletter%20❤%EF%B8%8F-blueviolet.svg)](https://tinyletter.com/TuringWay) [![https://gitter.im/alan-turing-institution/the-turing-way でチャットに参加する](https://img.shields.io/gitter/room/alan-turing-institute/the-turing-way?logo=gitter)](https://gitter.im/alan-turing-institute/the-turing-way) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3233853.svg)](https://doi.org/10.5281/zenodo.3233853) [![](https://img.shields.io/static/v1?label=TuringWay&message=I%20want%20to%20contribute!&color=yellow&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8%2F9hAAACYklEQVQ4jXXTy09TQRTH8f5VPhI1xoVxYURNAFcmRleaGDdGXQlKAYkLUARNfICoScGKpTyE3t5bkKD2AUQepUXB0gcgLTalD9rema8LKRVrT3I2k%2Fl95kwyY6BMfQiFqHaoVDlUBoJBZJl9hn8XRsIhqh0abd55tnWdrBA8WfBSpakMhUqhXUCJhKl2aLR65%2FEtLeGc%2BYoy5aHf46bX7cThctK%2BAw2HQkVAW41wzqHRMjNNRteR%2BQzGjg5udZtQ47FiO50gdLZ1nVbvPNUOFSUSxnB4sJ%2F0TjCTTjHk%2BoJl%2BRtqPEaL6zMH79Rw0dyDVVURqRgyn0EkN8jkshwZGsBQodgQyQ2kyDPsce859drjdqLRKE0D%2FZhHR5F6DpHc2B3%2FjF3BcFqxARIpBXXmt9ii67vAYDhIr8fNx0UfE3OzzC0sIHIpxNYqSPEHqFBsiFQMkU3h8vs5%2FvABTeNje6BCj%2FxcwzLlIZHYROq5v4EoIr2JyCbJ57Kobjd3u7o41v4I68pyCfTGrhSvUKHYAJD5bcTWGjKbJJdO4A8E6JyexP4rWgK8Vkb2AjK7hcxnmZybxfF9kff%2BhZJQofvXwhg7O4vAfU2l79ME79xOrjY3c9ZYVzZs8nvZf6%2BRQCRCTgiODg1iCK6vc6WtjZM1tzlRW8sNa99%2Fx64fH%2BNAQz0un49nfh%2BVmspAcKX4lKWUbMbjXOg2cf3Vy%2BLIoRWqekxc7nhB6%2FQ0lZqKJRBAyjKfKZFIcKixgVPPn3LTamFfUyPne7qp1Oz0Bn4g5d7vVAIUamJ2FqPZzCW7gvlHabBQvwE2XnlAiFRrOwAAAABJRU5ErkJggg%3D%3D)](https://github.com/alan-turing-institute/the-turing-way/blob/main/CONTRIBUTING.md)
3. README ファイルの翻訳版へのリンクは、読者が好みの言語で読むことができるようになっています。
4. それぞれプロジェクトビジョン、目標、ターゲットオーディエンスを提供する文章を1つずつ。
5. README ファイルの異なるセクションへのクイックリンクを提供するテーブル
6. 適切な詳細とリンクを持つ異なるセクション:
  - プロジェクトについて: モチベーションと背景
  - チーム：チームメンバーが誰なのか
  - 貢献: コントリビューションガイドラインと行動規範へのリンク
  - チューリング方法を引用：プロジェクトを引用するための手順
  - 連絡：プロジェクトリードの連絡先の詳細

最後に、プロジェクトへの貢献者の完全なリストを提供します。 このコントリビューターテーブルは、「コードをプッシュしない」ものを含むあらゆる種類のコントリビューションを認める [オールコントリビューターボット](https://allcontributors.org) を使用して更新されます。
