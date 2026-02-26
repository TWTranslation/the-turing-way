(rr-code-reuse)=

# رمز قابل لإعادة الاستخدام

Your software project could range from a small script you use for data processing to a notebook used for data analysis, or a software library implementing your algorithms.
Regardless of how big or small your software project is, it is important to make your code reusable.

Different types of software have different requirements for being reusable: for a small script, having sufficient documentation might be enough, while for a mission critical software library, thorough testing might be necessary.
على المستوى الأساسي ، كل ما عليك فعله هو وضع النص البرمجي الخاص بك على الإنترنت في مكان من المحتمل أن يبقى لفترة طويلة،
A more elaborate approach to making your research software more reusable is by following the FAIR Principles for Research Software (FAIR4RS Principles) {cite:ps}`ChueHong2021FAIR4RS`.

عندما نتحدث عن جعل التعليمات البرمجية قابلة لإعادة الاستخدام، من المفيد توضيح ما نعنيه.
In the {ref}`Table of Definitions for Reproducibility<rr-overview-definitions-reproducibility>` we defined reproducible research as using the same data and the same code.
However, when we talk about code reuse this can take many forms: we may want to run the exact same code (for compiled programming languages, this could even mean the exact same binary file), or we may want to modify the source code and extend it in some particular way to fit our needs.
Freire and Chirigati {cite:ps}`Freire2018Reproducibility` provide a framework of different levels of reproducibility, depending on what can be modified.
They define the following levels of reproducibility: repeatable, re-runnable, portable, extendable and modifiable.

We can map the definitions of reproducibly on the Freire framework as follows:

| Freire framework | Definitions of reproducibly                                                                                |
| ---------------- | ---------------------------------------------------------------------------------------------------------- |
| Repeatable       | Reproducible (same data, same analysis)                                                 |
| Re-runnable      | Robust & Replicable (same code, different data/analysis/parameters) |
| Portable         | _Not considered_ (same code/data, different environment)                                |
| Extendable       | (partly) Generalisable                                                                  |
| Modifiable       | (partly) Generalisable                                                                  |

Portability was not previously considered, but for software a different environment (such as different hardware, operating system or even a fresh install on comparable hardware) may affect the ability for the software to work (for example it may affect dependencies).

كما أن إمكانية التعميم تلخص مفهومين: القدرة الموسعة (القدرة على الاندماج مع برمجيات أخرى) والقدرة على التعديل (القدرة على تغيير جزء من التنفيذ لتوسيع نطاق وظيفتها).

In the rest of this chapter we provide list of recommendations you can follow to make sure your code is reusable.
