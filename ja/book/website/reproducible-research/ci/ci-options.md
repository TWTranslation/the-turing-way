(rr-ci-options)=

# 継続的な統合とは何ですか?

継続的インテグレーション(CI)は、個人が行ったプロジェクトへの変更をメインに統合する方法です。 頻繁に共有されているバージョン(通常は1日に複数回)。 CI ソフトウェアは、通常、変更によって導入された競合やバグを特定するためにも使用されます。 彼らは見つけて早期に固定されるので必要な労力を最小限に抑えることができます 定期的にテストを実行すると、人々が手動でそれを行う必要がなくなります。 定期的にテストを実行すると、人々が手動でそれを行う必要がなくなります。 ユーザーにバグをできるだけ早く認識させることによって(プロジェクトが研究プロジェクトの場合)、捨てなければならない作業に多くの時間を費やすことはありません。 テストが頻繁に実行されず、結果が不完全なコードを使用して生成される場合に該当する可能性があります。

この章では、バージョン管理についての強い理解が必要です。 リコールする必要がある中心的な概念は次のとおりです。

- 1つのプロジェクトでコラボレーションしている人がマージで自分の作品を結合できるようにする方法
- マージコンフリクトとは何ですか、そしてそれらが提示することが困難です。
- GitHub とは何か、そしてそれを使用する方法

簡単に言うと、ある研究者グループがプロジェクトで共同作業を行っている場合は、バージョン管理を使用して変更を時間の経過とともに追跡することをお勧めします。 彼らの作品を定期的に組み合わせています 彼らが彼らの仕事を定期的に組み合わせていない場合(統合)は、彼らがそうするようになったとき、それは異なる人々が矛盾する変化を行ったかもしれないので、それは非常に困難である可能性があります。

継続的インテグレーションは、チームのメンバーが頻繁に作業を統合するソフトウェア開発プラクティスです。 単独で仕事をして大幅な変化を頻繁に間隔で統合するのではなく CIでは通常、各人は少なくとも毎日統合されています。 各統合は、統合エラーを可能な限り迅速に検出するための自動ビルド(通常はテストを含む)によって検証されます。

このアイデアは、統合のコストを最小限に抑えることであり、早期の検討となります。 研究者は、新しいコードと既存のコードの境界で早期に衝突を発見することができますが、それらは比較的簡単に調整できます。 競合が解決されると、新しいコードが既存のコードベースの要件を尊重することを確信して作業を継続できます。 目標は、より小さな単位で開発し、テストすることによって、より健康的なソフトウェアを構築することです。 多くのチームは、このアプローチによって統合の問題が大幅に削減され、チームがより迅速に開発できるようになることを発見しています。

コードを統合することは、それ自体が新しいコードや機能の品質を保証するものではありません。 これがCIの第二の側面につながります。 開発者がメインリポジトリにコードをマージすると、自動化されたプロセスはプロジェクトの動作バージョンをビルドします。 その後、テストスイートは新しいビルドに対して実行され、バグが導入されたかどうかを確認します。 ビルドまたはテストフェーズのいずれかに失敗した場合、チームは問題を解決するために動作するように警告されます。 数分前に書いたバグの修正は、昨日(または先週)よりも簡単です。 または先月)。

あなたのコードが定期的にCIで構築およびテストされることを確実にすることで、研究者は自分のコードが主張することを示すのに役立ちます。 正確に機能することを示しています Typically, continuous integration servers will also allow build-and-test jobs to run at specific times, so a [cron job](https://en.wikipedia.org/wiki/Cron), nightly-build-and-test, can be done, as well as a build-and-test job run on-demand.

## Some options for CI service providers, covering the most often used ones

There are many CI service providers readily available, providing free access for open, public projects. Each of these
services however has its own advantages and disadvantages.  In this section we provide a brief overview with links to
examples to help you select the most suitable one for you.  Alternatively a few systems also provide the option of self-hosting.

- [GitHub Actions](https://help.github.com/en/actions), for some examples see the [language and framework guides](https://help.github.com/en/actions/language-and-framework-guides) and [this tutorial](https://github.com/NLESC-JCER/ci_for_science#-github-actions).
- [GitLab CI](https://docs.gitlab.com/ee/ci/), for some examples the [GitLab CI examples](https://docs.gitlab.com/ee/ci/examples/README.html) and [this tutorial](https://github.com/NLESC-JCER/ci_for_science#-gitlab-ci).
- [Azure Pipelines](https://azure.microsoft.com/en-us/services/devops/pipelines/), for some examples see the [ecosystem support page](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/?view=azure-devops) and [this tutorial](https://github.com/trallard/ci-research).
- [Circle CI](https://circleci.com/), for getting started visit [this circleCI project tutorial](https://circleci.com/docs/2.0/project-walkthrough/) or [these shorter "Hello World" examples](https://circleci.com/docs/2.0/hello-world/).
- [Jenkins](https://www.jenkins.io/), for some examples the see [this tutorial](https://www.jenkins.io/doc/tutorials/)
- [Travis CI](https://travis-ci.com/), for some examples the [Travis tutorial](https://docs.travis-ci.com/user/tutorial/).

A more extensive list of CI service providers can be found in [this guide](https://www.software.ac.uk/resources/guides/hosted-continuous-integration)
provided by the Software Sustainability Institute.
