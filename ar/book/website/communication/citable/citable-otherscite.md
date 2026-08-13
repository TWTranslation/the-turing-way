(cm-citable-otherscite)=

# Citing other people's Research Objects

When citing research objects from other people/researchers, ensure you verify when, where, and how to properly cite those research objects.
Below, we provide a brief explanation for each of these three scenarios.

(cm-citable-otherscite-when)=

## When to cite a research object?

As a rule-of-thumb, every research object that plays a significant role in your research project should be cited in the publication or methodology paper.
For example, when using software to analyse your research data, it is vital to cite and attribute it properly.
In some cases, the contribution of a research object may be small but critical to your results.
You should always consider giving credit to others for their work, showing gratitude to them, and try to implement more repeatable science {cite:ps}`LaZerte2021`

If you are unsure about what to cite because you doubt the contribution of a particular research object to your research, you can answer the following questions from {cite:ps}`ShouldICite`

- Does the software ask you to cite it?
- Did the software play a critical part in, or contributed something unique to, your research?
- Did the software manipulate or create your data?
  This includes storage, visualisation, and communication of your data and results.
- Do the authors of the software rely on academic credit for funding?
  Look for academic institutions in email addresses, URLs.

If the answer to any of these questions is yes, then you need to cite that research object.

(cm-citable-otherscite-where)=

## Where to cite a research object?

You should directly cite research objects from others in the publication where relevant.
For example, if specific software was used to process data, it should be cited in the section describing the processing.
Similarly, if all the figures in a publication are created using the same software, it may be more useful to mention and cite that software in the main text or acknowledgements.
Another example is when videos or images from others are explicitly mentioned; this as an opportunity to cite those research objects.
In all cases, these research objects should commonly be included in the reference section.

The best practice is to pair citations in the reference section with in-text citations {cite:ps}`Stall2023`.
This approach avoids mentioning datasets or software in footnotes or only in supplementary materials, where clear citations may not be provided.
In cases where a research object was used as a test or pilot but did not play a role in the final publication, it is possible to mention these in the acknowledgements section.
This ensures proper credit is given, even if the object was not ultimately used.

(cm-citable-otherscite-how)=

## How to cite a research object?

Ideally, other people's research objects would have a persistent identifier to make citation easier to others.
In some cases, published research objects may include a statement on how to cite their research objects.
A common practise of citing other people's work (such as publications) is also valid for citing other research objects (such as data, software, images, presentations, workflows).
وهي تتضمن المعلومات التالية:

- Author(s)
- العنوان
- Year/Date of publication
- Publisher or Repository (in repositories you can describe the type of research object, for example, Dataset, Software, Presentation)
- الإصدار (إذا تمت الإشارة إليه)
- الوصول إلى المعلومات ( محدد موقع الموارد الموحد (URL) أو معرف الغرض الرقمي (DOI) )

Like a regular citation, citing a research object is done in a specific citation style.
أسلوب الاستشهاد هو تنظيم وترتيب وتنسيق المعلومات اللازمة للقيام بعملية الاستشهاد،
فعلى سبيل المثال ، تم تطوير أسلوب أم أل أي (MLA)  من قبل جمعية اللغة المعاصرة (المستخدمة أصلا في العلوم الإنسانية) وتم تطوير أسلوب أي بي أي (APA) من قبل جمعية علم النفس الأمريكية (المستخدمة أصلا في علم النفس والعلوم الاجتماعية).
A specific citation style may also be requested by the journal you are publishing in.

- MLA citation style uses the following format:
  `Author. "عنوان المصدر"، Title of the Container, Other contributors, Version, Number, Publisher, Publication date, Location.`
- APA citation style uses the following format:
  `Author. (السنة)، عنوان مجموعة البيانات (رقم الإصدار)، [Retrieved from] ***OR*** [DOI]`

There are many citation styles available (see [Scribbr Citation Styles Guide](https://www.scribbr.com/citing-sources/citation-styles/)), and fortunately, there are several web interfaces to generate those citations.
If you have the DOI of the research object, you can use tools like [CiteAs](https://citeas.org/) or [DOI2bib](https://www.doi2bib.org/) to directly obtain the citation in a given citation style or as a [BibTex](https://en.wikipedia.org/wiki/BibTeX) format.

Another approach is to find sources where the citation is already available in BibTex format and then apply the desired style in Latex.
For example, for R packages you can use `citation(PACKAGE_NAME)` to check if the package has a defined citation preference (such as a paper instead of a link to the code repository URL), as explained in {cite:ps}`LaZerte2021`.
