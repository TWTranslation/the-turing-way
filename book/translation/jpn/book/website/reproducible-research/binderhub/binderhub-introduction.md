(rrr-binderhub-inntroduction)=
# BinderHub の紹介

[BinderHub](https://binderhub.readthedocs.io/en/latest/index.html) は、コードのリポジトリをGitHubから起動できるクラウドベースのテクノロジーです。 GitLabなど)は、ブラウザウィンドウでコードを実行し、対話することができます。 ユニークなURLが生成され、インタラクティブなコードを簡単に共有できます。

これらのBinderインスタンスの目的は、研究者がソフトウェアの依存関係を文書化し、楽しいものを作ることを奨励することによって、研究プロジェクトの再現性を促進することです。 インタラクティブな環境!

Binder, as a user interface コードをバージョン管理する必要があり、Binderの機能を利用するためには計算環境を文書化する必要があるため、再現性に役立ちます。 コードリポジトリへの変更ごとに、Binderインスタンスの新しいビルドも強制されます。 設定ファイルが更新されないとBinderインスタンスが壊れるので、これは計算環境の継続的な統合のためのプロキシとして機能します。

継続的インテグレーション {ref}`<rr-ci>` について詳しくはこちら .

## BinderHubはどのように機能しますか?

BinderHub は、Binderインスタンスを作成および起動するために、さまざまなツールとリソースに依存しています。

詳細については、 [BinderHub アーキテクチャ](https://binderhub.readthedocs.io/en/latest/overview.html) のハイレベルな説明を参照してください。
