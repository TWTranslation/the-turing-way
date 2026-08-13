(cm-citable-cite)=

# Citing your own Research Objects

When citing your own research objects, it is important to consider the type of research object you are referring to.
Here, we provide explanations for citing data, physical samples, and software.

(cm-citable-cite-data)=

## الاستشهاد بالبيانات

When sharing a dataset, use the assigned DOI (from the data repository) and add this to your data availability statement at the end of the paper (similar to the acknowledgement section).
It is important to also cite your dataset in the references themselves, as only the citations in the reference section will contribute to citation counts.
Data citation is important because it facilitates access, transparency and potentially reproducibility, reuse, and credit for researchers, and might be required when data is shared under a license that requires citation (for example, CC-BY). For more information check the chapter about {ref}`rr-licensing`.

Data citation also provides recognition and visibility for the repositories that share data.

يمكنك العثور على أمثلة لهذه العبارات في سياسات المؤلف (بيانات البحث) الخاصة بالناشرين.

### أمثلة على بيان إتاحة البيانات:

**Using the Digital Object Identifier (DOI):**

- “The data that support the findings of this study are openly available in [repository name] at `http://doi.org/[doi]`.”

**If no DOI is issued:**

- "البيانات التي تدعم نتائج هذه الدراسة متاحة بشكل مفتوح في [اسم السجل (repository)] على [URL] ، الرقم المرجعي [الرقم المرجعي]."

**When there is an embargo period you can reserve your DOI and still include a reference to the dataset in your paper:**

- "ستكون البيانات التي تدعم نتائج البحث متاحة في [اسم السجل (repository)] على [ محدد موقع الموارد الموحد (URL) / معرف الغرض الرقمي (DOI) ] بعد حظر [6 أشهر] من تاريخ النشر للسماح بتسويق نتائج البحث."

**When data cannot be made available:**

- تنطبق القيود على البيانات التي تدعم نتائج هذه الدراسة،
  [قم بشرح طبيعة القيود ، على سبيل المثال ، إذا كانت البيانات تحتوي على معلومات يمكن أن تعرض خصوصية المشاركين في البحث للخطر] تتاح البيانات بناءً على طلب معقول عن طريق الاتصال بـ [الاسم وتفاصيل جهة اتصال] وبإذن من [اسم الطرف الثالث]. "
- البيانات التي تدعم نتائج هذه الدراسة متاحة عند الطلب،
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

## الاستشهاد بالبرنامج

A software citation has a lot of the same elements as a data citation, described above, and are described in more detail in the [Software Citation Principles](https://www.force11.org/software-citation-principles).
Depending on the journal, you may also include a Software/Code Availability Statement. In such section, you can describe where the code developed during the research presented in the paper can be found, similar to how you would provide information about data availability.
For an example you can look at the [Data and Code Availability Statements - Sample text](https://social-science-data-editors.github.io/guidance/Requested_information_dcas.html) or [Availability Statement Templates](https://www.agu.org/publish-with-agu/publish/author-resources/data-and-software-for-authors).

::::{tab-set}
:::{tab-item} GitHub
:sync: github_tab
To make your code citable, you can use the integration between [Zenodo](https://zenodo.org/) and GitHub.

- قم بإنشاء ملف لإطلاع الأشخاص على كيفية الاستشهاد ببرنامجك،
  Use this [handy guide](https://citation-file-format.github.io/cff-initializer-javascript/) to format the file.

- اربط حسابك على جيت هاب (GitHub) بحساب زينودو (Zenodo)، This guide explains [how](https://guides.github.com/activities/citable-code/).

- You can tell Zenodo what information or metadata you want to include with your software by converting your `CITATION.cff` file to `zenodo.json`.

  ```bash
  pip install cffconvert
  cffconvert --validate
  cffconvert --format zenodo --outfile .zenodo.json
  ```

- Add `.zenodo.json` to your repository.

- في زينودو (Zenodo) ، اقلب المفتاح إلى وضع "التشغيل" لسجل (repository) جيت هاب (GitHub) الذي تريد إصداره.

- On GitHub, click the _Create a new release_ button.
  كما يجب إعلام زينودو (Zenodo) تلقائيا ويجب أن يقوم بعمل نسخة سريعة للحالة الحالية لسجلك (repository) (فرع (branch) واحد فقط، بدون أي محفوظات)، كما يجب تعيين معرف للغرض الرقمي (DOI)  لهذه اللقطة.

- استخدم معرف الغرض الرقمي (DOI)  في أي استشهاد من برنامجك وأخبر أي متعاونين ومستخدمين أن يفعلوا الشيء نفسه!

:::
:::{tab-item} GitLab
:sync: gitlab_tab

To make your code citable, through an automated publication of your Gitlab repository to [Zenodo](https://zenodo.org/):

- قم بإنشاء ملف لإطلاع الأشخاص على كيفية الاستشهاد ببرنامجك،
  Use this [handy guide](https://citation-file-format.github.io/cff-initializer-javascript/) to format the file.

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

- استخدم معرف الغرض الرقمي (DOI)  في أي استشهاد من برنامجك وأخبر أي متعاونين ومستخدمين أن يفعلوا الشيء نفسه!

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
