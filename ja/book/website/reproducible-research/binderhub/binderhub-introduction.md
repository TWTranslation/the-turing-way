(rrr-binderhub-inntroduction)=

# BinderHub の紹介

[BinderHub](https://binderhub.readthedocs.io/en/latest/index.html) is a cloud-based technology that can launch a repository of code (from GitHub, GitLab, and others) in a browser window such that the code can be executed and interacted with.
ユニークなURLが生成され、インタラクティブなコードを簡単に共有できます。

これらのBinderインスタンスの目的は、研究者がソフトウェアの依存関係を文書化し、楽しいものを作ることを奨励することによって、研究プロジェクトの再現性を促進することです。 インタラクティブな環境!

Binder, as a user interface コードをバージョン管理する必要があり、Binderの機能を利用するためには計算環境を文書化する必要があるため、再現性に役立ちます。
コードリポジトリへの変更ごとに、Binderインスタンスの新しいビルドも強制されます。
設定ファイルが更新されないとBinderインスタンスが壊れるので、これは計算環境の継続的な統合のためのプロキシとして機能します。

Learn more about Continuous Integration {ref}`here<rr-ci>`.

## BinderHubはどのように機能しますか?

BinderHub は、Binderインスタンスを作成および起動するために、さまざまなツールとリソースに依存しています。

For more information, see this [high-level explanation of the BinderHub architecture](https://binderhub.readthedocs.io/en/latest/overview.html).
