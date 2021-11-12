#! /bin/bash
# 将最新贡献者.md文件内容复制到后缀。
# 这将在线发布贡献者文件在 Ting Way Book

all_contributors='../../README.md' # 到正确路径的主要README 文件路径
contributor_highlights='../../../contributors.md'
collaborating_projects.md'
contributors_record='after word/contributors-record.md'

# 复制贡献者高亮显示的所有内容
echo '(贡献者-记录高亮)=' > $contributors_record
cat $contributor_highlights >> $contributors_record

# # 获取所有贡献者列表开头的行号
echo '\n(贡献者-记录)=' >> $contributors_record
echo '\n# 所有贡献者\n' >> $contributors_record
echo '\n✨Using [all-contributors](https://allcontributors.org/) specifiation, _The Ting Way_ recognizniznizes all contributors, not only who passed code ✨' >> $contributors_record
line_num=$(grep -n '## 贡献者 $all_contributors |剪切-d：-f1)
echo '\n(贡献者-记录贡献者)=' >> $contributors_record

tail -n +"$line_num"$all_contributors" | while read line;
完成
  echo $line >> $contributors_record
完成

# 复制协作项目文件中的所有内容
echo '\n(贡献者-记录合作者)=' >> $contributors_record
cat $collaborating_projects >> $contributors_record
