(rr-open-source)=

# オープンソースソフトウェア

(rr-open-source-whatis)=

## オープンソースソフトウェアとは?

When a software is open-source [{term}`def<Open Source Software>`], anybody can view, use, modify, and distribute its source code for any purpose.
These permissions are enforced through an {ref}`open-source licence<rr-licensing>`.
オープンソースは、アイデアが迅速に普及することを可能にし、採用の障壁を低下させるために強力です。
最も基本的な形式では、ソフトウェアをオープンソース化することは、自分のコードをオンラインで公開し、他の人が閲覧し、再利用することを意味します。

最も広く使用されている研究ソフトウェアの多くは、オープンソースです。
Perhaps the paradigmatic example is the scikit-learn Python package for machine learning {cite:ps}`pedregosa2012ScikitLearn`, which, in the space of just over five years, has attracted over 500 unique contributors, 20,000 individual code contributions, and 2,500 article citations.
従来のクローズドソースアプローチを使用して同等のパッケージを作成することは可能ではありません。
それは少なくとも、数千万ドルの予算を必要とするでしょう。
While scikit-learn is an outlier, hundreds of other open-source packages that support much more domain-specific needs depend similarly on unsolicited community contributions; for example, the NIPY (neuroimaging in Python) group of projects in neuroimaging {cite:ps}`gorgolewski2016NIPY`).
特に、このような貢献は、より広範なコミュニティが恩恵を受けられる新しい機能をもたらすだけではありません。 また、それぞれの著者にコミュニティの認知度を高め、新しいプロジェクトや雇用機会をもたらします。

オープンソースソフトウェアを使用する研究者は、研究に必要な機能の追加やバグの修正など、しばしば変更を加えます。
そして、これらの改善をメインプロジェクトに還元し、より広範なコミュニティがそれらを利用できるようにすることができます。

(rr-open-source-benefitsyou)=

## オープンソースソフトウェアプロジェクトの実行と貢献方法

- _Improve existing skills_: Whether it is coding, user interface design, graphic design, writing, or organizing, if you are looking for practice, there is a task for you on an open-source software project.
  さらに、オープンソースは、会ったことのない潜在的に何千人もの人々とのコラボレーションを可能にするために、よりクリーンで保守性の高いコードを必要としています。
  これは、良好なコーディング習慣を構築し維持するのに役立ちます。
  あなたがオープンソースソフトウェアプロジェクトで開発できる人々のスキルを過小評価されることはありません。
  オープンソースは、紛争の解決、人々のチームの編成、作業の優先順位付けなど、リーダーシップと管理スキルを実践する機会を提供します。
- _Advance your career_: By definition, all of your open source work is public, and this presents opportunities:
  - _Demonstrate technical ability_: Technical interviews traditionally involve working on a simulated problem that can be tackled in a set amount of time with little additional context.
    このようなシミュレーションは、定義によれば、現実世界のユースケースではなく、申請者との作業がどのようなものであるかを示していません。
    オープンソースは、候補者がどのように問題を解決するか、どのように他者と連携するかを可視化します。
    雇用主があなたの仕事の質を見ることができればはるかに魅力的な従業員を作り、単一の短いにチャンスを取るよりもむしろ長い期間にわたって他の人と働くのを見る。 ストレスの多いケースは強さに合わないかもしれない
  - _Reputation_: Becoming an active member of the open source community can gain you a favourable reputation which may bolster future job prospects.
- _Meet people with similar interests_: Open source software projects with warm, welcoming communities keep people coming back for years, and many people form lifelong friendships through their participation in open source.
- _Find mentors and teach others_: Working with others on a shared project means you will have to explain how you do things, as well as ask other people for help. 学びと教えの行為は、関係者全員にとって充実した活動となり得ます。

### あなたの仕事をオープンソースにする

- _Re-usability_: Making your work openly available for reuse makes it easier for others to incorporate into their research.
  If you make your software citeable, via a DOI [{term}`def<Digital Object Identifier>`] for example, this can increase your citations.
- _Contribution_: When you write closed source software, the only developers that can potentially detect, diagnose, triage, and resolve software bugs are those that have a copy of the code.
  あなたのプロジェクトがオープンであれば、潜在的な貢献開発者の数と潜在的な知識プールは、はるかに大きいです。
- _Feedback_: Making your work open enables you to get feedback and improve your project in a way you may never have thought of alone.
- _Accountability_: There is an argument that any software developed using government money should be open source by default; if the public has paid for its development they have a right to make use of it.
  あなたの仕事が政府の資金であれば、それを開けることは、政府の開放性と説明責任に向けて取ることができるステップです。

### 他者のオープンソースソフトウェアプロジェクトへの貢献

- _It is empowering to be able to make changes, even small ones_: You do not have to become a lifelong contributor to enjoy participating in open source.
  ウェブサイトのタイプミスを見たことがありますか、そして誰かがそれを修正することを望みましたか?
  オープンソースのソフトウェアプロジェクトでは、それだけができます。
  オープンソースは、人々が自分たちの生活や世界をどのように体験するかを感じるのに役立ちます。それ自体が満足しています。
- _It is fun_:
  Open source provides an endless, ever-changing set of Rubix cubes for you to solve on weekends. クロスワードとジグソーパズルのように、オープンソースは一口サイズの知的エスケープを提供します。

(rr-open-source-benefitsresearch)=

## オープンソースソフトウェアの利点研究

There are several ways in which open-source software benefits research:

(rr-open-source-benefitsresearch-reusable)=

### Reusable

オープンソースのソフトウェアプロジェクトにより、研究者はお互いの仕事を利用することができます。
これにより、研究者はその努力を価値の高い仕事に応用することができます。
「すべての簡単な問題はすでに解決されている」と言われることがあります。
ブロギング、コンテンツ管理、オペレーティングシステムはすべて、オープンソース(および主流)ソリューションに関する問題です。
開発者は、オープンソースコミュニティがすでに完成しているホイールの再発明に時間を費やすことができます。 世界最高のホイールを使うのが非常に望ましい。特に、そのホイールがあなたに無償で来る場合。
これにより、作業の重複が軽減され、研究者は未解決の課題に集中することができます。

The {ref}`rr-code-reuse` provides a more in-depth list of different aspects to consider for making your code more reusable, whether this is a small script or a library.

(rr-open-source-benefitsresearch-checkable)=

### チェック可能

Open-source projects allow the broader research community to read and test each others' code.
This way, bugs can be found more quickly, and other researchers can validate results.

(rr-open-source-benefitsresearch-collaborative)=

### 共同作業

Working openly also allows any number of researchers to collaborate on projects that could not possibly be developed by single researchers/research groups.
Examples include [Linux](https://www.linux.org/) operating systems, Python packages such as [scipy](https://www.scipy.org/) and [numpy](http://www.numpy.org/), and the machine learning library [TensorFlow](https://www.tensorflow.org/).

(rr-open-source-run)=

## オープンソースソフトウェアプロジェクトを実行する方法

You can open source an idea, a work in progress, or after years of being closed source.
At the most basic level, all you need to do is put your code online somewhere that is likely to last a long time.
You can make your code citeable by assigning it a DOI [{term}`def<Digital Object Identifier>`] (as discussed in the section on {ref}`rr-rdm-sharing`).
This helps ensure that you get proper credit if people use or build upon your work.

A popular place to make your code available is GitHub [{term}`def<Github>`] (see the chapter on {ref}`rr-vcs`).
You must include a license file stating that anyone has permission to use, copy, and modify your work. Without this, no one can legally use your work, and so it is not open source.
The {ref}`rr-licensing` chapter will help you to pick the best license for your project.
There are also a few other files you should include with your code, as described below.

(rr-open-source-run-readme)=

### READMEに情報を追加して、ウェルカムユーザーを歓迎する

You should include a README [{term}`def<README>`] file where you include useful information about what the project is, how to use it, and how to contribute to it. Here is a list of the main things a README should include:

- _The project name and what it is_: This will significantly help someone that comes across it to get an idea of the project. プロジェクトの主な機能と実装する機能を説明するいくつかの重要なポイントを含めます。
  これにより、他のプロジェクトと簡単に比較することができ、なぜプロジェクトが最初に存在するのかを知ることができます。
- _Instructions on how to install the project_: The installer might be a collaborator, someone that comes across and is interested in the project, or even you - if you get a new machine and need to re-install your project.
  それにもかかわらず、プロジェクトをゼロから始める方法を把握することはあなたのリソースの総無駄です。
  手順には、プロジェクトを実行するために必要な前提条件も含める必要があります。
  あなたができる最善の方法は、最初にそれらを自分で行うときにインストール手順を書くことです。 今後の作業時間を短縮することができます
- _Instructions for how to run the code and any associated tests_: If you've been working on your project it may seem obvious how to run it, but this will likely not be the case for someone coming across it for the first time.
- _Links to related material_
- _List of authors/contributors to the project, possibly with contact information_
- _Acknowledgements_

Suppose you intend for other people to collaborate on your project (as opposed to just making your code available and considering it complete).
In that case, you should include Contributing Guidelines and most likely, a Code of Conduct.

(rr-open-source-run-guidelines)=

### コントリビューションガイドライン

Contributing Guidelines [{term}`def<Contributing Guidelines>`] tell your audience how to participate in your project. For example, you might include information on:

- バグレポートを提出する方法
- 新機能を提案する方法
- プロジェクトのロードマップまたはビジョン
- コントリビューターがどのように連絡を取るべきか（または連絡を取らないべきか）

Using a warm, friendly tone and offering specific suggestions for contributions (such as writing documentation, or making a website) can go a long way in making newcomers feel welcomed and excited to participate.
For example, [Active Admin](https://activeadmin.info/index.html) starts its [contributing guide](https://github.com/activeadmin/activeadmin/blob/master/CONTRIBUTING.md) with: "First off, thank you for considering contributing to Active Admin. It’s people like you that make Active Admin such a great tool."

In the earliest stages of your project, your Contributing Guidelines file can be simple.
You should always explain how to report bugs or file issues, and any technical requirements (like tests) to make a contribution.
Over time, you might add other frequently asked questions here or in your readme file.
Writing down this information means fewer people will ask you the same questions over and over again.
It is also a good idea to link to your contributing guidelines file from your README, so more people see it.

(rr-open-source-run-conduct)=

### Code of Conduct

A Code of Conduct [{term}`def<Code of Conduct>`] helps set ground rules for behaviour for your project's participants.
This is especially valuable if you are launching an open-source project for a community or company.
A Code of Conduct empowers you to facilitate healthy, constructive community behaviour, which will reduce your stress as a maintainer.
It communicates how you expect participants to behave and describes who these expectations apply to, when they apply, and what to do if a violation occurs.

Much like open source licences, there are also emerging standards for codes of conduct, so you do not have to write your own. The [Contributor Covenant](https://contributor-covenant.org/) is a drop-in Code of Conduct that is used by [over 40,000 open source projects](https://www.contributor-covenant.org/adopters). No matter which text you use, you should be prepared to enforce your Code of Conduct when necessary.

Keep the file in your project's root directory, so it is easy to find, and link to it from your README.

(rr-open-source-contribute)=

## Otherのオープンソースソフトウェアプロジェクトに貢献する方法

(rr-open-source-contribute-anatomy)=

### オープンソースソフトウェアプロジェクトの解剖学

Every open source community is different. That said, many open source software projects follow a similar organizational structure.
Understanding the different community roles and the overall process will help you get quickly oriented to any new project.

A typical open source software project has the following types of people:

- _Author_: The person/s or organization that created the project.
- _Owner_: The person/s who has administrative ownership over the organization or repository (not always the same as the original author).
- _Maintainers_: Contributors who are responsible for driving the vision and managing the organizational aspects of the project. They may also be authors and/or owners of the project.
- _Contributors_: Everyone who has contributed something back to the project.
- _Community Members_: People who use the project. 彼らは会話で活躍したり、プロジェクトの方向性について意見を述べたりするかもしれません。

Bigger projects may also have subcommittees or working groups focused on different tasks, such as tooling, triage, community moderation, and event organizing. Look on a project’s website for a “team” page, or in the repository for governance documentation, to find this information.

A great many open source projects are hosted on GitHub (see the chapter on version control for more detail), which has facilities such as:

- _Issue tracker_: Where people discuss issues related to the project.
- _Pull requests_: Where people discuss and review changes that are in progress.
- _Discussion forums or mailing lists_: Some projects may use these channels for conversational topics (for example, "How do I..." or "What do you think about..." instead of bug reports or feature requests). また、すべての会話に問題トラッカーを使用する人もいます。
- _Synchronous chat channel_: Some projects use chat channels (such as Slack or IRC) for casual conversation, collaboration, and quick exchanges.

(rr-open-source-contribute-changes)=

### 変更に貢献する

Say you have added a feature or fixed a bug and want to contribute this work to the main project.

1. _Read the documentation_: The main project may have contributing guidelines or information in a README instructing prospective contributors on how to supply their changes.
2. _Make sure your conventions match the style and structure of the main project_: For example, if all the variables in a project are named in some particular way yours should be too.
   Consistent conventions make it much easier for someone who has not seen your piece of the project before to understand it rather than having to figure out your particular set of conventions _and_ what the code is doing.
   プロジェクトの規約は、そのドキュメントに概説されるか、コード自体の検査から明らかになるかもしれません。
3. _Break your changes up into manageable, well-defined chunks_: For example, if you have added two separate features, do not submit them together.
   このように物事を「きれいに」保つことは、あなたの仕事を理解し、確認することをより簡単にします。
4. _Test your changes_: If the project comes with tests, run them.
   時間が経つにつれてかなり進化している可能性があるため、プロジェクトの最新バージョンに対してテストしていることを確認してください。 あなたの変更のための特定のテストを書き、それらも提出しなさい。
5. _Do not just submit code, update relevant documentation too_: If your changes are incorporated, it will have to be updated. あなたがそれをしないなら、他の誰かがする必要があります。
6. _Ask questions_: If there are things you are unsure about, there is no harm in asking. 多くの大きなプロジェクトは、質問や議論のためのフォーラムや他の場所を捧げています。
7. _Be clear_: When you submit your changes, clearly describe the changes you have made, why you have made them, and how they have been implemented.
   これにより、あなたの仕事を見て、メインプロジェクトに組み込むかどうかを決める人にとって、より簡単になります。
   In the likely case the main project is hosted on GitHub, you should put this in the pull request (see the chapter {ref}`rr-vcs` for more details).

(rr-open-source-contribute-looking)=

### 貢献するプロジェクトと貢献する方法

You do not need to overthink what exactly your first contribution will be, or how it will look.
Instead, start by thinking about the projects you already use or want to use.
The projects you will actively contribute to are the ones you find yourself coming back to.
Within those projects, whenever you catch yourself thinking that something could be better or different, act on your instinct. You might scan a README and find a broken link or a typo.
Alternatively, you could be a new user and notice something is broken, or find an issue that you think should be in the documentation.
Instead of ignoring it and moving on, or asking someone else to fix it, see whether you can help out by pitching in. That is what open source is all about.

You can also use one of the following resources to help you discover and contribute to new projects:

- [Open Source Friday](https://opensourcefriday.com/)
- [First Timers Only](https://www.firsttimersonly.com/)
- [CodeTriage](https://www.codetriage.com/)

If you are not sure how to start, there are a few other ways you can go about it, such as finding an open issue to tackle or asking if you can help write a new feature.

A common misconception about contributing to open source is that you need to contribute code. In fact, it is often the other parts of a project that are most neglected or overlooked. You will do the project a huge favour by offering to pitch in with these types of contributions. You could:

- 他の人の提出物のコードを確認します。
- プロジェクトのドキュメントを書いて改善します。
- プロジェクトの使用方法を示すフォルダをキュレートします。
- 例えば、Stack Overflowなどのプロジェクトに関する質問に回答する
- たとえばGitHub上で以下のように、物事を整理してください：
  - 重複した課題にリンクしています。
  - 新しい課題ラベルの提案中
  - 未解決の問題を解決し、古い問題を解決することを提案します。
  - 最近公開された問題に関する質問を明確にし、議論を前進させます。

(rr-open-source-closed)=

## クローズされたソフトウェア

What if you are working with people that do not use the open source model for their software?
This may initially seem an affront to all the principles discussed so far. However, there are usually very good reasons for why things are the way they are (for example legal, commercial, or security reasons).
Often, it will still be possible to use and contribute, but the details of how might be different.
The kinds of practices used in 'closed' software are generally the same, and the concepts and tools you can learn about in the Turing Way still apply.

Sometimes, however, there might not be good reasons for the closed source approach.
Different areas of research have different cultures which run against the grain of open principles and feel very frustrating.
Tackling this barrier can be very tricky as cultures can take years or decades to change.

Working with closed software can offer both opportunities and threats to your research.
In all cases, understanding and respecting other's perspectives offers the greatest chances of success.
