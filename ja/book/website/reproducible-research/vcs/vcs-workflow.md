(rr-vcs-workflow)=

# 一般的なワークフロー

バージョン管理は、ファイルに加えられた変更を記録するための体系的なアプローチです。
これにより、あなたとコラボレーターは履歴を追跡し、変更内容を確認し、必要に応じて後で特定のバージョンを呼び出すことができます。
バージョン管理を使用する一般的な手順は次のとおりです。

1. ファイルを作成する - これらはテキスト、コード、またはその両方を含むことができます。
2. 新しいコンテンツを変更、削除、または追加して、これらのファイルを操作します。
3. この時点でファイルステータス(バージョンとも呼ばれる)のスナップショットを作成します。
4. Document what was changed in the version history of that file.

The snapshot process is often done manually for text or presentation documents (for instance by naming files with the suffixes `v01`, `v02` and so on).
A description of the changes for each version is sometimes made via an external document like a spreadsheet.
Finding the latest version can also be facilitated by putting old versions in a subfolder.
This manual process is not very practical when a lot of files are changing, like when one creates code or work with data.
In these cases, the use of a version control software is highly recommended.

スナップショットを作成するこのプロセスは、異なるバージョン管理ソフトウェアで異なって記述されます。
例えば、Gitはそれを「コミット」と表現しています。 Some systems call it "a time-point" or "a checkpoint";
and this is referred to as "saving your work" in other cases such as in [Google docs](https://docs.google.com/) or [HackMD](http://hackmd.io/).
The version history may be more or less informative.

変更を追加して作業を保存し続けると、ますます多くのスナップショットが作成されます。
You can think of these as saving versions of these files.
誤りのために以前のバージョンのファイルに戻る必要がある場合。 以前のアップデートについて考えを変えた場合 ご希望のバージョンでファイルにアクセスしたり、プロジェクト全体を過去の状態に戻すことができます。

```{figure} ../../../figures/main-branch.*
---
name: main-branch
alt: >
  A line of circles, with an arrow pointing from the left to the right, connecting the circles.
  The circles represent different snapshot of a file, they are added sequentially.
  An arrow goes from the last circle to several circles on the left, representing the possibility to return to a past state of the file.
---
Version history with a single branch.
```

In many version control systems (or in a special document if you do manual version control), you will be able to add a comment for each snapshot.
Clear and concise comments make it easier to get an fast overview of the changes that were made in each versions.
これは、過去のバージョンに戻る必要があるときにあなたが探しているものを見つけることが容易であることを保証します。
協力者はあなたに感謝しますが、将来のバージョンはあなた自身のものになります。
