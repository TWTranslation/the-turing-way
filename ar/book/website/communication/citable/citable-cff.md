(cm-citable-cff)=

# إشارة برمجية مع CITATION.cff

The [Citation File Format](https://citation-file-format.github.io) lets you provide citation metadata, for software or datasets, in plaintext files that are easy to read by both humans and machines.

```{figure} ../../../figures/recognition.*
---
name: recognition
width: 500px
alt: >
  Illustration by Scriberia for The Turing Way, highlighting the role of software citation in increasing recognition for developers.
  Two groups stand on separate pillars: researchers on a taller grey pillar and developers on a shorter green pillar labelled "CODE".
  Large black arrows labelled "software citation" point upward, lifting the developers.
  Above both groups is the word "RECOGNITION" in bold, with a glowing badge and green stars.
  A green arc connects the two pillars, suggesting a bridge of acknowledgement.
  Below, three figures sit at desks, representing the broader community.
---
Research software developers get recognition by making software citable. _The Turing Way_ project illustration by Scriberia. Zenodo. [http://doi.org/10.5281/zenodo.3332807](http://doi.org/10.5281/zenodo.3332807)
```

To provide this metadata, start by writing a `CITATION.cff` file and include it with your software or dataset.
A `CITATION.cff` file aggregates the information in a key-value format that can be easily interpreted and updated by humans, and easily parsed and converted with existing tools.

(cm-citable-cff-why)=

## Why Use `CITATION.cff`?

There are great advantages when using a `CITATION.cff` file for the citation information for your software!

It's easier for you:
When you host your software source code on GitHub and have a `CITATION.cff` in your repository, you can use the Zenodo-GitHub integration to automatically publish new releases of the software.
Zenodo will use the information from `CITATION.cff` and show it together with the publication.
ليس عليك تعديل هذه المعلومات يدوياً على زينودو بعد الآن.

```{figure} ../../../figures/software-credit.*
---
name: software-credit
width: 500px
alt: >
  Illustration by Scriberia for The Turing Way, highlighting the importance of giving software creators credit through the use of `CITATION.cff` files.
  On the right, a developer sits at a desk, writing code represented by binary and angled brackets.
  A pink path of code flows toward two people on the left.
  One person holds a large wallet labelled "Credits", while the other kneels and holds a magnifying glass that zooms in on the word "CFF" along the code path.
  A speech bubble above them reads, "More credits for the software creators!"
---
More credits for the software creators. _The Turing Way_ project illustration by Scriberia. Zenodo. [http://doi.org/10.5281/zenodo.3332807](http://doi.org/10.5281/zenodo.3332807)
```

من الأسهل لمستخدمي برنامجك:

1. They can directly use the citation information from `CITATION.cff` to cite your software.
2. إذا كان الكود المصدري الخاص بك على GitHub، سوف تظهر معلومات الاقتباس في الشريط الجانبي كاقتباس منسق، وأيضا في صيغة BibTeX.
   يمكن للمستخدمين نسخ أيضًا ولصقه في مخطوطاتهم، و/أو ذكر برنامجك بشكل صحيح.
3. If they use the Zotero reference manager, they can import the citation metadata directly from the `CITATION.cff` file in the GitHub repository to their reference manager.

(cm-citable-cff-how-to-create)=

## How to Create a `CITATION.cff` File

The `CITATION.cff` is a `YAML` file with its own schema definition.
ويحدد المخطط القواعد لكل مجال من المجالات وما هي المجالات المطلوبة وما هي المجالات الاختيارية.
The user must follow these rules in order to create a valid `CITATION.cff` file.

A minimal example of a valid `CITATION.cff` file, that only contains the required keys, would look like this:

```yaml
authors:
  - family-names: Doe
    given-names: John
cff-version: 1.2.0
message: "If you use this software, please cite it using the metadata from this file."
title: "My research software"
```

ومع ذلك، فإن إضافة المزيد من الحقول يمكن أن تساعدك على إنشاء المزيد من بيانات التعريف الوصفية لبرنامجك.
ويوفر المثال الوارد أدناه أيضا معلومات هامة عن البرمجيات مثل الإصدار، وتاريخ الإصدار، والترخيص، والكلمات الرئيسية.

```yaml
abstract: "This is my awesome research software. It does many things."
authors:
  - family-names: Doe
    given-names: John
    orcid: "https://orcid.org/0000-0001-8888-9999"
cff-version: 1.2.0
date-released: "2021-10-13"
identifiers:
  - description: "This is the collection of archived snapshots of all versions of My Research Software"
    type: doi
    value: 10.5281/zenodo.123456
  - description: "This is the archived snapshot of version 0.11.2 of My Research Software"
    type: doi
    value: 10.5281/zenodo.123457
keywords:
  - "amazing software"
  - research
license: Apache-2.0
message: "If you use this software, please cite it using the metadata from this file."
repository-code: "https://github.com/citation-file-format/my-research-software"
title: "My Research Software"
version: 0.11.2
```

The complete list of fields is described in the [CFF schema guide](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md).
In the next section, you can find out which tools can help you create and use the `CITATION.cff` file.

### خطوات لجعل برنامجك قابلاً للتطبيق

لجعل برنامجك مستشهد به، تحتاج إلى اتباع الخطوتين أدناه.

#### الخطوة 1. Create a `CITATION.cff` File

There are two ways of creating a `CITATION.cff` file.

1. Use [cffinit](https://citation-file-format.github.io/cff-initializer-javascript/), a web application which guides you through the process of creating your citation file.
   The `cffinit` has a few advantages compared to manual editing such as

   - لا حاجة لتثبيت أدوات إضافية؛
   - لا حاجة إلى المصادقة اليدوية؛
   - التوجيه لكل مجالات؛
   - الملاحظات المرئية للإشارة إلى المشاكل.

   We suggest using `cffinit` as it simplifies the creation and validation.
   For more details on using `cffinit` see {ref}`cm-citable-cffinit`.
2. تعديل الملف يدويا في محرر التعليمات البرمجية المفضلة لديك.
   عيوب هذه الطريقة هي تثبيت الأدوات المطلوبة على النظام الخاص بك والقيام بالتحقق بنفسك.
   كذلك يمكن أن تكون رسائل الخطأ في عملية التحقق طويلة نسبياً ويصعب فهمها.
   Once you have a `CITATION.cff` file, it needs to be validated to make sure there are no issues.
   You can validate your `CITATION.cff` file on the command line with the [`cffconvert` Python package](https://pypi.org/project/cffconvert/).

   ```shell
   cd path/to/CITATION.cff
   cffconvert --validate
   ```

   If you prefer to use Docker, you can use the [`cffconvert` Docker image](https://hub.docker.com/r/citationcff/cffconvert):

   ```shell
   cd path/to/CITATION.cff
   docker run --rm -v ${PWD}:/app citationcff/cffconvert --validate
   ```

   إذا حصلت على رسائل خطأ، ابحث عن خطأ التحقق ذي الصلة وقم بإصلاحه.

```{note}
To make sure your GitHub repository always has a valid `CITATION.cff` file, you can use the [cff-validator](https://github.com/marketplace/actions/cff-validator) GitHub Action.
```

#### الخطوة 2. Add Your `CITATION.cff` to a Public Code Repository

After creating a valid `CITATION.cff` file, you will need to add it to root of your code or data repository so that it can be easily found and cited.

(m-citable-cff-updating)=

## Updating your `CITATION.cff` file

When you need to update your `CITATION.cff` file, for example to add an author or to change the information about releases, you will need to edit the file manually. It is recommended to update your `CITATION.cff` file before making a software release.

(cm-citable-cff-how-to-cite)=

## How to Cite Using `CITATION.cff`

If you have found software or datasets that contain a `CITATION.cff`, there are a few ways to obtain the reference information to cite them in your publication.

- You can use one of the tools, such as `cffconvert` command line program, to convert your `CITATION.cff` file to one of the [supported formats](https://github.com/citation-file-format/cff-converter-python#supported-output-formats), such as APA, BibTeX or EndNote.
- بدلاً من ذلك، إذا كانت البرامج أو مجموعات البيانات التي تريد الاستشهاد بها متاحة على GitHub، يمكنك استخدام واجهة GitHub، لنسخ المرجع إما في تنسيقات APA أو BibTeX بالنقر على زر "ذكر هذا المستودع" (انظر المنطقة الخضراء في الصورة أدناه).
  For more details on software citation on GitHub please see [GitHub's guide on software citation](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-citation-files).

```{figure} ../../../figures/github-cff-integration.*
---
name: github-cff-integration
alt: >
  Screenshot of a GitHub repository showing the automatic citation box generated from a `CITATION.cff` file.
  On the right, a dropdown labeled "Cite this repository" is expanded, displaying citation formats in APA and BibTeX.
  The APA citation is visible with author names listed, and a button below labeled "View citation file".
  This box appears in the repository sidebar beneath metadata such as license type and tags.
  The screenshot demonstrates how GitHub displays citation information when a `CITATION.cff` file is included.
---
"Cite this repository" automatically converts the `CITATION.cff` file to APA's and BibTex's format. The screen capture is from the [Citation File Format repository](https://github.com/citation-file-format/citation-file-format).
```

```{note}
"Cite this repository" button only appears when there is a `CITATION.cff` file in the repository.
```

(الأدوات المتاحة)=

## الأدوات المتاحة

Several tools exist to facilitate the creation and validation of `CITATION.cff` files, as well as the conversion to and from other formats.
The Citation File Format’s repository provides [a list of all known tools](https://github.com/citation-file-format/citation-file-format#tools-to-work-with-citationcff-files-wrench) for this.
