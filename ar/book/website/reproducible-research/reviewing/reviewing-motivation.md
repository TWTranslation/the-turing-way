(r-reviewing-tivation الحافز)=

# الأهمية والاستحقاقات الشخصية

_How this will help you / why this is useful_

As with {ref}`testing<rr-testing>`, a key objective of code review is to remove mistakes and bad practice from changes made to a software project before those changes enter the main code base.
However, it also has a number of other direct and indirect benefits to projects. These are discussed below.

Code reviews are an effective method for improving software quality. يشير ماكونيل (2004) إلى أن اختبار الوحدة يجد ما يقرب من 25٪ من العيوب، والدالة اختبار 35٪، واختبار التكامل 45٪، ومراجعة التعليمات البرمجية 55-60٪. في حين أن ذلك يعني أن أيا من هذه الأساليب ليس جيدا بما فيه الكفاية بمفرده، ويجب دمجهم ، ومن الواضح أن مراجعة التعليمات البرمجية هي أداة أساسية هنا.

(rr-reviewing-motivation-bugs)=

## ضرب الأخطاء و الأخطاء الأولية

A simple objective of the review process is to catch bugs and elementary errors in proposed changes before they make it into the trunk code.
In this way, code review shares aspects with testing.
However, a robust testing programme should reduce the importance of code review for identifying these kinds of straightforward errors, as the tests should catch them before the code makes it to review stage.
So in principle, this function of code review should be restricted to trivial changes like documentation typos. In practice, however, code review does act as an important second line of defence against all kinds of bugs and errors.

(rr-reviewing-motivation-improvements)=

## التحسينات في الاختبار

As noted above, a review should, and often does, catch actual bugs in proposed code changes. This, of course, is a sign that the proposed changes were not well-tested enough in the first place.
A major aim of code review is to highlight places in the code where existing or newly developed testing processes are inadequate.
In this way, code review helps to ensure the future health of the code base by providing a second perspective on what kinds of tests are needed - not only now, but also under hypothetical scenarios that could arise in the future as the code evolves.

(rr-reviewing-motivation-documentation)=

## التوثيق (documentation)

<!--SiccarPoint notes a whole section on documentation is justified in the book!-->

الوثائق الواسعة<!--تشير هنا بمجرد وجود القسم-->هو مكون رئيسي من مكونات قابلية الاستنساخ والبرمجيات المستدامة بشكل أعم.
Code review provides another pair of eyes to consider whether the documentation provided along with the proposed code changes is fit-for-purpose.
This is doubly valuable, as the reviewer looking in from outside the development process may have a clearer perspective than the coder on whether new documentation offers enough information for a user coming to the code for the first time.

This kind of feedback on documentation applies equally to user-facing documentation and to inline comments.

(rr-reviewing-motivation-readability)=

## الجاهزية

Related to documentation, code review can also help to ensure that code is readable and easy to understand. Having a second pair of eyes can help spot areas where the code might be difficult to follow.
The more readable your code is, the easier it will be for other developers to reproduce your code for their own purposes.

(rr-reviewing-motivation-enforcement)=

## أسلوب الإنفاذ

Many projects enforce certain {ref}`code style guidelines<rr-code-quality>`, be they widely-adopted standards (for example, [PEP8](https://www.python.org/dev/peps/pep-0008/), the [Google C++ style guide](https://google.github.io/styleguide/cppguide.html)) or more project-specific conventions.
{ref}`Automated services<rr-code-style-and-formatting>` provide a convenient way to enforce a coding style and start the discussion about code quality.

ويتيح استعراض المدونة فرصة لضمان استيفاء جميع التغييرات المقترحة للمعايير الدنيا المطلوبة للمشروع.

(r-review-defing-Know)-Know)=

## المعرفة الجماعية والتلاحم

Code review practices provide significant advantages beyond simply defending the health of the trunk code of a project when changes are proposed.
Peer-to-peer review creates two-way exchange of information across a web strung between all contributing members of a team. This provides effective, organic transfer of best practice.

Reviews conducted in the right spirit (see especially {ref}`here<rr-reviewing-recommendation-be-nice>`) also serve an important purpose in bringing team members together and creating group cohesion.
In particular, good reviews by core team members of the work of newcomers to a project can help make those newcomers feel welcomed and valued, and encourage their continued participation.
