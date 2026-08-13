(rr-testing)=

# コードテスト

| Prerequisite                                                               | Importance |
| -------------------------------------------------------------------------- | ---------- |
| {ref}`Experience with the command line<rr-overview-resources-commandline>` | 必要な        |

## Summary

研究者が書いたコードが研究の多くの部分を形成するようになりました コードに間違いがあれば結果の一部または完全に信頼できない可能性があります 信頼性の高い再現性のある研究を確保するためには、コードを徹底的かつ頻繁にテストすることが不可欠です。
信頼性の高い再現性のある研究を確保するためには、コードを徹底的かつ頻繁にテストすることが不可欠です。
この章では、テストを書くための一般的なガイダンスと、さまざまな種類のテストについて説明します。 彼らの使い方と実装方法を教えてくれます

## Motivation and Background

コーディングを行うときにミスを犯すのは非常に簡単です。
単一の置き違えられた文字は、プログラムの出力が完全に間違っている可能性があります。
上記の例の一つはマイナスであるべきプラス記号によって引き起こされました。
別のものはメートルで作業するコードの一部によって引き起こされました 別の研究者によって書かれたコードの一部が 足で働いていました \*\* は誰でも間違いを犯し、研究ではその結果は壊滅的なものになる可能性がある。
_Everyone_ makes mistakes, and in research the results can be catastrophic.
キャリアは損傷/終了することができます, 膨大な量の研究資金を無駄にすることができます, そして、貴重な時間は、不正確な道を探索するために失われる可能性があります. これがテストが不可欠な理由です。

テストを書くべき理由を示すイラストをいくつか紹介します。

```{figure} ../../figures/testing-motivation1.*
---
name: testing-motivation1
alt: "Headline of a December 2006 news article by Greg Miller, published in Science, titled A Scientist's Nightmare: Software Problem Leads to Five Retractions"
---
```

```{figure} ../../figures/testing-motivation2.*
---
name: testing-motivation2
alt: "News article by Lisa Grossman, published on Wired.com in November 2010, describing an inconsistency between the units of force expected as output and input of two pieces of software that resulted in the loss of a weather satellite when it reached its destination at Mars. The piece is titled November 10, 1999: Metric Math Mistake Muffed Mars Meteorology Mission"
---
```

研究発表前にプログラムの問題が収集されたとしても、どのような結果が汚染されているのかを把握することは困難であり、再度行う必要があります。
これは、時間と労力の大きな損失を表します。
これらの問題をできるだけ早くキャッチすると、それらを修正するためにかかる作業量を最小限に抑えることができます。 ほとんどの研究者にとっては最も不足している資源です 時間が短いため、テストの書き込みをスキップしないでください。
You should not skip writing tests because you are short on time, you should write tests _because_ you are short on time.
研究者たちは、何ヶ月も何年も作業を続ける余裕はありません。 数百から数十万行のプログラムの細部を手動で調べる余裕はありません あなたのためにテストを書くことは、時間を節約するオプションであり、それは安全なオプションです。
あなたのためにテストを書くことは、時間を節約するオプションであり、それは安全なオプションです。

研究者がコードを書くとき、彼らは通常、印刷文を追加し、出力をチェックすることによって、いくつかのテストを行います。
しかし、これらのテストは合格するとすぐに捨てられ、何をチェックすることを意図していたかを確認するためにもはや存在しなくなります。
これらのテストを機能に組み込んで、将来いつでも実行できるように保つことは、比較的少ない作業です。
追加の労働は最小限であり、保存された時間と保障措置は非常に貴重です。
さらに、テストプロセスをテストのスイートに形式化することにより、独立して自動的に実行することができます。 ソフトウェアが正しく動作し欠陥が発見される確率を高めることができます

テストはまた、プロジェクトの作業/改善を行う際に、研究者によりはるかに安心感を与えます。
コードを変更した後、研究者は自分の変更や修正が何も壊れていないことを確認したいと思うでしょう。
研究者に失敗の速い環境を提供することで、コードの変更によって導入された障害の迅速な識別が可能になります。
代替案： どのような小さなテストでも書いて実行することで コードを徹底的にチェックできる 優れたテストスイートよりも はるかに劣っています

テストを書くことのもう一つの利点は、通常、研究者がクリーナーを書くことを強制することです。 このようなコードのモジュール化されたコードは、テストを書くのがはるかに簡単になり、コードの品質が向上します。
{ref}`Good quality code<rr-code-quality>` is far easier (and altogether more pleasant) to work with than tangled rat's nests of code I'm sure we've all come across (and, let's be honest, written). This point is expanded upon in the section {ref}`rr-testing-unittest`.

## 研究のためのテストの利点

個々の研究者がテストする利点だけでなく、全体としての研究にも利益をもたらします。
「このコードがどのように機能するのか」という質問に答えることで、研究をより再現可能にします。
テストが保存されない場合は、簡単に証拠を再現することはできません。

テストはまた、コード内のミスによって部分的または全体的に欠陥が生じる可能性のあるプロジェクトに費やされる貴重な補助金を防ぐのに役立ちます。
さらに悪いことに、間違いが見つからず、作業が公開されている場合、プロジェクトに基づいて作成されたその後の作業も同様に欠陥が生じます。

Perhaps the cleanest expression of why testing is important for research as a whole can be found in the [Software Sustainability Institute](https://www.software.ac.uk/) slogan: better software, better research.
