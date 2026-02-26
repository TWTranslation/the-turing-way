(cm-citable-cite)=

# Citing your own Research Objects

When citing your own research objects, it is important to consider the type of research object you are referring to.
Here, we provide explanations for citing data, physical samples, and software.

(cm-citable-cite-data)=

## データを引用中

When sharing a dataset, use the assigned DOI (from the data repository) and add this to your data availability statement at the end of the paper (similar to the acknowledgement section).
It is important to also cite your dataset in the references themselves, as only the citations in the reference section will contribute to citation counts.
Data citation is important because it facilitates access, transparency and potentially reproducibility, reuse, and credit for researchers, and might be required when data is shared under a license that requires citation (for example, CC-BY). For more information check the chapter about {ref}`rr-licensing`.

Data citation also provides recognition and visibility for the repositories that share data.

これらの記述の例は、出版社(調査データ)の著者ポリシーに記載されています。

### データ可用性ステートメントの例:

**Using the Digital Object Identifier (DOI):**

- “The data that support the findings of this study are openly available in [repository name] at `http://doi.org/[doi]`.”

**If no DOI is issued:**

- 「この調査の結果をサポートするデータは、 [URL]、参照番号 [reference number]で公然と入手できます。

**When there is an embargo period you can reserve your DOI and still include a reference to the dataset in your paper:**

- 「調査結果の商業化を可能にするために、発行日から[6ヶ月]禁輸措置を経て、[リポジトリ名]にある[リポジトリ名]で調査結果をサポートするデータが利用可能になります。」

**When data cannot be made available:**

- 「この研究の結果を支えるデータには制限が適用されます。
  [たとえば、制限の性質を説明する 研究参加者のプライバシーを侵害する可能性のある情報がデータに含まれている場合は、format@@0format@@1に連絡し、format@@2の許可を得て、合理的な要請に応じてデータを利用できます。
- 「この調査の結果を支えるデータは、リクエストに応じて入手できます。
  Access conditions and procedures can be found at [URL to restricted access repository such as [EASY](https://easy.dans.knaw.nl/ui/home).]”

**When code is shared:**

- "Data and code to reproduce the results shown in the paper can be obtained from The Turing Way (2023) at Zenodo ([https://zenodo.org/doi/10.5281/zenodo.3233853](https://zenodo.org/doi/10.5281/zenodo.3233853)) and GitHub ([https://github.com/the-turing-way/the-turing-way](https://github.com/the-turing-way/the-turing-way)). We used R version 4.2.2 (_use citation() to check the suggested citation_) and the following R packages: ggplot2 ([Wickham 2016](https://cran.r-project.org/web/packages/ggplot2/citation.html)), another example (_and citation added to the references!_)."

**More Data Availability Statement examples:**

You can find more examples on the [Manchester's Data Access Statements page](https://www.library.manchester.ac.uk/services/research/research-data-management/sharing/data-access-statements/), the [AMS Data Availability Statement examples](https://www.ametsoc.org/index.cfm/ams/publications/author-information/formatting-and-manuscript-components/data-availability-statement-examples/), or [Nature's Tips for writing a dazzling Data Availability Statement](https://researchdata.springernature.com/posts/tips-for-writing-a-dazzling-das-data-availability-statement).

(cm-citable-cite-samples)=

## Citing Physical Samples

When sharing results related to physical samples (such as archaeological material, genomics samples), ideally a persistent identifier is assigned to track the samples and their associated data.
As with [data citation](#cm-citable-cite-data), you include a citation in the references and a more detailed explanation in the data availability statement.
To learn more about how to cite physical samples and to check out examples, see the [Scientific Author Guide for Publishing Open Research Using Physical Samples](https://doi.org/10.6084/m9.figshare.24669057.v1) by {cite:ps}`Damerow2024physical`.

(cm-citable-cite-software)=

## ソフトウェアを引用中

A software citation has a lot of the same elements as a data citation, described above, and are described in more detail in the [Software Citation Principles](https://www.force11.org/software-citation-principles).
Depending on the journal, you may also include a Software/Code Availability Statement. In such section, you can describe where the code developed during the research presented in the paper can be found, similar to how you would provide information about data availability.
For an example you can look at the [Data and Code Availability Statements - Sample text](https://social-science-data-editors.github.io/guidance/Requested_information_dcas.html) or [Availability Statement Templates](https://www.agu.org/publish-with-agu/publish/author-resources/data-and-software-for-authors).

::::{tab-set}
:::{tab-item} GitHub
:sync: github_tab
To make your code citable, you can use the integration between [Zenodo](https://zenodo.org/) and GitHub.

- あなたのソフトウェアを引用する方法を人々に伝えるファイルを作成しなさい。 Use this [handy guide](https://citation-file-format.github.io/cff-initializer-javascript/) to format the file.

- GitHubアカウントをZenodoアカウントにリンクします。 This guide explains [how](https://guides.github.com/activities/citable-code/).

- You can tell Zenodo what information or metadata you want to include with your software by converting your `CITATION.cff` file to `zenodo.json`.

  ```bash
  pip install cffconvert
  cffconvert --validate
  cffconvert --format zenodo --outfile .zenodo.json
  ```

- Add `.zenodo.json` to your repository.

- Zenodoでは、リリースしたいGitHubリポジトリの「on」位置にスイッチを反転します。

- On GitHub, click the _Create a new release_ button.
  Zenodoは自動的に通知され、リポジトリの現在の状態のスナップショットコピーを作成する必要があります（ブランチは1つだけです。 ) また、そのスナップショットに永続的な識別子 (DOI) を割り当てる必要があります。

- あなたのソフトウェアのどの引用でもDOIを使用し、コラボレーターやユーザーにも同じことを行うように伝えてください!

:::
:::{tab-item} GitLab
:sync: gitlab_tab

To make your code citable, through an automated publication of your Gitlab repository to [Zenodo](https://zenodo.org/):

- あなたのソフトウェアを引用する方法を人々に伝えるファイルを作成しなさい。 Use this [handy guide](https://citation-file-format.github.io/cff-initializer-javascript/) to format the file.

- Convert your `CITATION.cff` file to `.zenodo.json`.
  This file tells Zenodo what information or metadata you want to include with your software.

  ```bash
  pip install cffconvert
  cffconvert --validate
  cffconvert --format zenodo --outfile .zenodo.json 
  ```

- Add `.zenodo.json` to your repository.

- Use the [gitlab2zenodo](https://gitlab.com/sbeniamine/gitlab2zenodo) package to publish a snapshot of your repository to your Zenodo instance.
  By following the installation and setup instructions of this package, you will get a workflow on your {ref}`CI <rr-ci-options>` that will take care of the publication to Zenodo.

- あなたのソフトウェアのどの引用でもDOIを使用し、コラボレーターやユーザーにも同じことを行うように伝えてください!

```{note}
If you don't have a Zenodo record for your software yet when you attempt to publish it for the first time, you may encounter an error due to the undefined `ID`. 
To address this issue, we recommend manually creating a record on Zenodo and updating the value of the {ref}`CI <rr-ci-options>` variable `zenodo_record`. 
Detailed instructions for this process can be found in the [gitlab2zenodo](https://gitlab.com/sbeniamine/gitlab2zenodo) installation and setup instruction.
```

:::
::::

(cm-citable-cite-DMP)=

## Citing Data Management Plans

You can deposit your DMP in a repository like Zenodo or your institutional repository to receive a DOI, or use a DMP platform that assigns DOI, making it formally citable.
Consider publishing your DMP at project award or start to establish your data management approach early.

When preparing a public DMP, you may want to redact sensitive information such as detailed budget figures or preliminary hypotheses, while keeping the data management methodology transparent.
Publishing your DMP demonstrates transparency, provides templates for others planning similar projects, and shows funders and institutions your commitment to rigorous data management.

For more information on obtaining DOIs and making research outputs citable, see our [chapter on persistent identifiers](#rr-rdm-pid) and [making research citable](#cm-citable).
Examples of published DMPs can be found by searching Zenodo for "data management plan" or exploring public DMPs on [DMPtool](https://dmptool.org).
