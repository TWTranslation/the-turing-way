(rr-overview-definitions)=

# 定義

The most common definition of reproducibility (and replication) was first noted by Claerbout and Karrenbach in 1992 {cite:ps}`ClaerboutKarrenbach1992Reproducibility` and has been used in computational science literature since then.
Another popular definition has been introduced in 2013 by the Association for Computing Machinery (ACM) {cite:ps}`Ivie2018SciComp`, which swapped the meaning of the terms 'reproducible' and 'replicable' compared to Claerbout and Karrenbach.

The following table contrasts both definitions {cite:ps}`Heroux2018Reproducibility`.

| 用語   | Claerbout & Karrenbach                                 | ACM                                                                                                                                                                              |
| ---- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 再現可能 | 作成者は、分析を再び実行するために必要なすべてのデータとコンピュータコードを提供し、結果を再作成します。                       | (異なるチーム、異なる実験的なセットアップ。 測定は、異なるチーム、異なる測定システムによって、記載された精度で複数の試験で異なる場所で取得できます。 計算実験の場合、独立したグループは完全に独立して開発されたアーティファクトを使用して同じ結果を得ることができます。                         |
| 複製可能 | 別の研究と同じ科学的知見に到達する研究、(おそらく異なる方法で)新しいデータを収集し、新しい分析を完了します。 | (異なるチーム、同じ実験的なセットアップ。 同じ測定手順を使用して、異なるチームによって定められた精度で測定が行えます。 同じ測定システムです同じ運用条件下で 同じ場所か別の場所で 複数の試験を行います 計算実験では、独立したグループが、著者のアーティファクトを使用して同じ結果を得ることができることを意味します。 |

Barba (2018) {cite:ps}`Barba2018Reproducibility` conducted a detailed literature review on the usage of reproducible/replicable covering several disciplines.
ほとんどの論文や分野ではClaerboutやKarrenbachが定義した用語を使用していますが、微生物学はそうです。 免疫学とコンピュータサイエンスは、再現性と複製のACMの使用に従う傾向があります。
政治学と経済学の文学では、両方の用語が相互に使用されています。

このような高レベルの再現性の定義に加えて、より詳細な区別を示す著者もいる。
Victoria Stodden {cite:ps}`Victoria2014Reproducibility`, a prominent scholar on this topic, has for example identified the following further distinctions:

- _Computational reproducibility_: When detailed information is provided about code, software, hardware and implementation details.

- _Empirical reproducibility_: When detailed information is provided about non-computational empirical scientific experiments and observations. 実際には、これはデータとそれが自由に収集された方法の詳細を利用できるようにすることによって可能になります。

- _Statistical reproducibility_: When detailed information is provided, for example, about the choice of statistical tests, model parameters, and threshold values. これは主に、p値のハッキングやその他の操作を防ぐための研究デザインの事前登録に関連しています。

(rr-overview-definitions-reprofibility)=

## 再現性の定義表

At _The Turing Way_, we define **reproducible research** as work that can be independently recreated from the same data and the same code that the original team used.
再現可能であることは、以下の図に示すように、複製可能で、堅牢で一般的であることとは異なります。

```{figure} ../../../figures/reproducible-matrix.*
---
name: reproducible-matrix
alt: Kirstie's definition of reproducible research.
---
How the Turing Way defines reproducible research
```

上記のマトリックスに記載されている再現性のある研究の異なる次元には以下の定義があります。

- **Reproducible:** A result is reproducible when the _same_ analysis steps performed on the _same_ dataset consistently produces the _same_ answer.
- **Replicable:** A result is replicable when the _same_ analysis performed on _different_ datasets produces qualitatively similar answers.
- **Robust:** A result is robust when the _same_ dataset is subjected to _different_ analysis workflows to answer the same research question (for example one pipeline written in R and another written in Python) and a qualitatively similar or identical answer is produced.
  Robust results show that the work is not dependent on the specificities of the programming language chosen to perform the analysis.
- **Generalisable:** Combining replicable and robust findings allow us to form generalisable results.
  Note that running an analysis on a different software implementation and with a different dataset does not provide _generalised_ results.
  There will be many more steps to know how well the work applies to all the different aspects of the research question.
  Generalisation is an important step towards understanding that the result is not dependent on a particular dataset nor a particular version of the analysis pipeline.

More information on these definitions can be found in "Reproducibility vs. Replicability: A Brief History of a Confused Terminology" by Hans E. Plesser {cite:ps}`Plesser2018Reproducibility`.

```{figure} ../../../figures/reproducible-definition-grid.*
---
name: reproducible-definition-grid.*
alt: "Grid with the characteristics of: Reproducible; same data, same analysis. Replicable; different data, same analysis. Robust; same data, different analysis. And generalisable; different data, different analysis; Research"
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-overview-re複製可能)=

## 再現できますが開いていません

_The Turing Way_ recognises that some research will use sensitive data that cannot be shared and this handbook will provide guides on how your research can be reproducible without all parts necessarily being open.
