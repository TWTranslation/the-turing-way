(ch-style-citing)=
# 引用和参考

我们保持一个集成的 [BibTeX](http://www.bibtex.org/) 文件，其中包含所有引用内容。 该文件位于这个仓库的文件 [`./book/website/_bibliography/references.bib`][turingbib]

## BibTeX 文件基础

BibTeX 文件是以结构化方式格式化参考资料列表的一种方式。 条目的基本内容包括参考类型、独特的引文密钥， 和一系列描述参考内容的关键值对（例如作者或标题）。

BibTeX中有若干关键字用于不同的参考类型。 幸运的是，有一些工具可以帮助格式化引用到 BibTeX 语法中。 如果您知道您的参考的DOI，您可以使用 [doi2bib](https://doi2bib.org/) 来帮助填充一个足够好的 BibTeX 条目。 例如， [在这里](https://doi2bib.org/bib/https://doi.org/10.5281/zenodo.3233853) 是一个足够好的 BibTeX 条目，适合于诱惑路径手册本身。 另一个好的工具是 [Google Scholar](https://scholar.google.com/), 你在那里搜索一个引用 点击大双引号 ``，然后点击底部附近的 "BibTeX"

下面是列出BibTeX格式参考的示例。

## 在 `references.bib` 中添加一个新的引用

您可以使用以下方法在本地编辑参考文件：

- 编辑 [`references.bib`][turingbib] 直接使用文本编辑器
- 编辑 [`references.bib`][turingbib] 直接使用诸如 [JabRef](http://www.jabref.org/) (Linux, Windows, macOS) 或 [BibDesk](https://bibdesk.sourceforge.io/) (macOS)

我们使用标准的 bibtex 格式来添加一个新条目。 例如， [`references.bib`][turingbib] 文件中有一条为：

```
@article{baker2016reducity,
    author={Baker, Monya},
    title={Reproduciability crisis？ ,
    journal={Nature},
    volume={533},
    number={26},
    页={353--66},
    year={2016}
}
```

**在文件末尾添加新条目以完成编辑。**

## 引号键样式指南

我们建议使用以下结构作为引文密钥：

```
作者 YYYYyword
```

在哪里：

1. `作者` 是第一作者的姓(`Baker` 以上)
2. `YYYY` 是年份 (`2016` 以上)
3. `单词` 是标题中的第一个有意义的单词(`复现性` 上面的。 注意，这是主观的——请选择一个名称，以便在你看到引文键时很容易记住引文。

## 在文本中添加新的引用

若要在您的内容中包含引文，我们遵循 [Jupyter 书](https://jupyterbook.org/content/citations.html) 的建议，该建议使用 [`Sphinxcontrib-bibtex`](https://sphinxcontrib-bibtex.readthedocs.io/en/latest/) 扩展。

主要概念是：

- 使用以下方式包含一个引用：
```
{cite:ps}`CITEKEY`

```
`CITEKEY` 是 [中对应的引文密钥`references.bib`][turingbib]
- 您也可以通过用逗号隔开CITEKEY来包含多个引文：
```
{cite:ps}`CITEKEY1,CITEKEY2,CITEKEY3`
```

我们会引用我们先前在 [`reference.bib`][turingbib] 文件中编辑的文章：

```
{cite:ps}`Kuula2010归档`
```

这将在 {cite:ps}`baker2016 reducity` 中显示在你的章节中。

完整的参考文献条目可在这本书的末尾查阅(见 {ref}`resources <bibliography>`)，使用以下指令：

    ```{bibliography} ../_bibliography/references.bib

    ```

关于高级用法，见 [文档由 sphinxcontrib-bibtex](https://sphinxcontrib-bibtex.readthedocs.io/en/latest/usage.html), 这是一个 BibTeX 风格引用的 Sphinx 扩展。

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib

[turingbib]: https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_bibliography/references.bib
