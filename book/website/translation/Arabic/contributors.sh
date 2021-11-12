#! /bin/bash
# نسخ أحدث محتوى ملف المساهمين.md إلى كلمة لاحقة
# هذا سينشر ملف المساهمين على الإنترنت في كتاب طريق «The Turing Way Wy».

all_contributors='../../README.md' # المسار إلى ملف README الرئيسي لطريق التوفير
المساهمة_highlights='../../contributors.md'
Coating_projects='../../cooperating_projects.md'
contributors_record='بعد word/contributors-record.md'

# نسخ كل شيء من تسليط الضوء على المساهمين
تردد '(المساهمون-السجل - إبراز)=' > $contributors_record
قطة $contributor_highlights >> $contributors_record

# # احصل على ترقيم حيث تبدأ قائمة جميع المساهمين
صدى '\n(المساهمون-سجل الكل)=' >> $contributors_record
تردد '\n# جميع المساهمين\n' >> $contributors_record
تردد '\n✨بإستخدام [all-contributors](https://allcontributors.org/) مواصفات، _The Turing Way_Recognises جميع المساهمين، وليس فقط المساهمين الذين يدفعون التعليمات البرمجية. ✨' >> $contributors_record
خط_num=$(grep -n '## المساهمون' $all_contributors <unk> cut -d: -f1)
صدى '\n(المساهمون-تسجيل المساهمين)=' >> $contributors_record

ذيل -n +"$line_num"$all_contributors" <unk> اثناء قراءة السطر;
فعل
  صدى $line >> $contributors_record
تم

# نسخ كل شيء من ملفات المشاريع المتعاونة
صدى '\n(المساهمون-السجل المتعاون)=' >> $contributors_record
قطة $collaborating_projects >> $contributors_record
