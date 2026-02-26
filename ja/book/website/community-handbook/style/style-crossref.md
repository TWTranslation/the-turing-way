(ch-style-crossref)=

# セクションと章を相互参照する

We recommend using targets as described in the [MyST Markdown documentation](xref:myst-guide/cross-references#targets-and-labels-for-referencing).
These look like `(my-label)=`, where `my-label` is the label of the target.
It is a flexible system which allows you to label many elements of a document including files, headings, lists, figures and even paragraphs.

You can use labels to create a reference to your target in any part of the book.
This is very helpful because you can make references without worrying about the relative or absolute paths of the file.
Also, if the element which you are referencing moves, your cross-reference will still work as long as the label is unchanged.

このドキュメントでは、さまざまなチャプターや本内の一部にラベルを使用する方法を説明するための例を提供しています。
We have also defined a naming convention for labels for _The Turing Way_ to ensure that the locations of these labels in the book are identifiable by their name.

## Labels and references

セクションまたはチャプター/サブチャプターのラベルを追加するには、ラベル付けしたい要素の前に次のパターンの構文を使用します。

```
(my-label-name)=
# The thing that I want to label
```

There are a number of ways to reference a label.
These are described in the [Myst Markdown documentation](xref:myst-guide#link-references).
We prefer the short syntax, which will automatically generate the link text.
These cross references look like `[](#ch-style-crossref)`, which renders as [](#ch-style-crossref).
You can change the link text by writing in the first set of square brackets.
For example, `[My custom cross-reference](#ch-style-crossref)` renders as [My custom cross-reference](#ch-style-crossref).
Other styles can be used if you want to customise the link text or use another style.

You will also see references using the older roles like ``{ref}`my-label` `` in the book.
Cross-references using this style will still work but are not preferred.

## _The Turing Way_ naming convention for labels

We recommend using the following naming standard for labels, which will allow different authors and contributors of _The Turing Way_ to intuitively identify the locations of the files where these labels have been created.

異なるチャプターのラベルの命名規則:

```
(sectioninitials-filename)=
```

Here, the first placeholder `sectioninitials` should be replaced by the initials for different sections in the book and the second placeholder `filename` should be replaced by the name of file where the label is being created.

For the different Guides of the book, we will use the following `sectioninitials`:

- Reproducible Research: `rr`
- Project Design: `pd`
- Collaboration: `cl`
- Communication: `cm`
- Ethical Research: `er`
- Community Handbook: `ch`

For example, in the guide `Reproducible Research`, we have a chapter called `Overview`.
We have created a label for that chapter called `rr-overview` by adding the label on the top of the header by using the following directive

```
(rr-overview)=
# Overview
```

Similarly, for different subchapters we recommend extending the label name with another placeholder for the subchapter's name.
For example, `rr-overview-resources` is a label in the guide "Reproducible Research" (rr) for the subchapter "Resources" for the "Overview" chapter (overview-resources).
このラベルは対応するファイルの中にある以下のディレクティブを使って作成できます。

```
(rr-overview-resources)=
# Resources
```

In the same manner, for different sections in a subchapter we recommend extending the label name with another placeholder.
これは、ラベルが作成されているセクションの短くても分かりやすい名前であるべき作者によって選択することができます。
For example, `rr-overview-resources-addmaterial` is a label in the guide "Reproducible Research" (rr) for the subchapter "Resources" for the "Overview" chapter (overview-resources) for the section for "Additional Materials" (addmaterial).
このラベルは、次のディレクティブを使用して、推奨セクション名に対応するファイルに作成できます。

```
(rr-overview-resources-addmaterial)=
## Additional Material
```
