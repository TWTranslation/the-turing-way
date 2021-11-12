#! /bin/bash
# 最新の contributors.md ファイルの内容をアフターワードにコピー
# これは貢献者ファイルをオンラインで公開します

all_contributors='../../README.md' # チューリング方法のメインREADMEファイルへのパス
contributor_highlights='../../contributors.md'
collectioning_projects='../../collectioning_projects.md'
contributors_record='afterword/contributors-record.md'

# コントリビューターのハイライトからすべてコピーする
echo '(contributors-record-highlights)== $contributors_record
猫 $contributor_highlights >> $contributors_record

# # すべてのコントリビューターのリストが開始された場所にリネンバーを取得する
echo '\n(contributors-record-all)== ' >> $contributors_record
echo '\n# All Contributors\n' >> $contributors_record
echo '\n✨Using [all-contributors](https://allcontributors.org/) 仕様, _The Turing Way_ コードをプッシュする人だけでなく、すべての貢献者を認識します。 ✨' >> $contributors_record
line_num=$(grep -n '## 貢献者' $all_contributors | cut d: -f1)
echo '\n(contributors-record-contributors)== ' >> $contributors_record

tail -n +"$line_num" " "$all_contributors" | while read line;
やるのか?
  echo $line >> $contributors_record
完了

# コラボレーションプロジェクトファイルからすべてコピーする
echo '\n(contributors-record-Collaborators)== ' >> $contributors_record
猫 $collaborating_projects >> $contributors_record
