(pd-code-styling)=
# コードのスタイルとリンク

分析を実行してから2年後に構文ファイルやスクリプトファイルを開いたことがありますか?コードの即時メモリがないことがわかりますか? コラボレーターから解析ファイルを受け取ったことはありますか?それとも、今まで使ったことのないオンラインリポジトリからダウンロードしたことはありますか? Now imagine that these files are very hard to read, or there are lots of variables being passed to arcane functions, or worse, you can't find useful code as they are saved with meaningless file names such as `analysis_1final_FINAL.R`, or `onlyusethisoneforanalysis_onamonday2a.py`.

あなたが持っていない場合 - あなたは幸運なものの一つです! しかし、あなたはそれを経験している場合は、それがそれらのファイルで動作することがいかにイライラ知っているかもしれません。

この章では、いくつかの「コード衛生」の原則を導入することで、プロジェクトのそのような課題を回避する方法を紹介します。 *lint* として知られる。

```{figure} ../figures/zen-of-python.png
---
height: 500px
name: zen-of-python
alt: Pythonの禅、Tim Peters。 美しいのは醜いよりもましだ。 暗黙的より明示的な方が良いです。 シンプルなものは複雑なものよりも優れている。 複雑さは複雑さよりも優れている。 フラットは入れ子よりも優れています。 疎な部分は濃いよりも優れている。 読みやすさは重要です 特別なケースは、ルールを破るのに十分な特別ではありません。 実用性は純度には勝るが。 エラーは静かに渡すべきではありません。 明示的に沈黙しない限り。 曖昧さに直面して、推測しようとする誘惑を拒否する。 それを行うための明白な方法は、1つできれば1つだけでなければなりません。 オランダ人でなければ、その方法は最初は明らかではないかもしれませんが。 今は決してよりよい。 今は*右*より良いことはありませんが。 実装を説明するのが難しい場合、それは悪い考えです。 実装が説明しやすい場合は、良いアイデアかもしれません。 名前空間は素晴らしいアイデアです-- それらの多くを行いましょう!
---
*[Zen of Python](https://www.python.org/dev/peps/pep-0020/)のポイント7は「Readability Counts」です。 (これはPythonコマンド`>>> import this`)で印刷できます*
```

## 概要

Linting includes {ref}`guidelines for styling<pd-code-styling-guidelines>` such as for naming, and ensuring that {ref}`code is human readable<pd-code-styling-readability>` such as by using useful formatting, and writing comments.  
Some integrated development environments (IDEs) include automatic linting, but there are free {ref}`packages and tools for linting<pd-code-styling-tools>` that will lint code for you (for example, [autopep8](https://pypi.org/project/autopep8/)).

コーディング中に次のアドバイスを念頭に置くことで、コードはより再利用可能で、適応可能で、明確になります。
