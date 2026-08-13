(pd-sdpm-privacy)=

# Data Privacy Strategies

There are a number of strategies that you can adopt to **safeguard the privacy** of your research subjects:

**1. Data minimisation**

- إذا لم تكن هناك حاجة للمعلومات الشخصية ، فلا تجمعها.
- راجع بشكل دوري ما إذا كنت تحتفظ بمعلومات تعريف غير ضرورية.
- عندما لم تعد هناك حاجة إلى معلومات التعريف ، قم بإزالتها أو حذفها أو إتلافها بأمان.

**2. Data retention limits**

- حدد المدة التي ستحتفظ فيها بالبيانات التي يمكن تحديدها قبل إزالة المعرفات مباشرتا ، أو تطبيق تقنيات إخفاء الهوية الأكثر تعقيدًا ، أو حذف البيانات تمامًا.
- عند حذف البيانات الحساسة ، يجب أن تدرك أن الطرق القياسية لحذف الملفات (على سبيل المثال ، نقل الملفات إلى سلة المحذوفات وإفراغها) ليست آمنة،
  إذ يمكن استعادة هذه الملفات المحذوفة،
  Use **software** like BleachBit (Linux, Windows), BC Wipe, DeleteOnClick and Eraser (Windows) or Permanent Eraser or 'secure empty trash' (Mac) to safely delete the data.
  An alternative is the **physical destruction** of the storage media.
  **Degaussing** disturbs the magnetic alignment of magnetic storage media (such as hard drives and tapes) and may render those unusable.
  If you encrypted the data (see point 4 below), you can also **delete the encryption key**.

**3. Secure data transfer**

- قبل أن تقرر نقل البيانات الشخصية ، يجب أن تفكر فيما إذا كان نقل البيانات التي يمكن التعرف عليها ضروريًا،
  على سبيل المثال ، هل يمكن إزالة هوية البيانات أو إخفاء هويتها؟
- إذا تعذر جعل البيانات مجهولة الهوية ، فيجب عليك التأكد من أن لديك الحق والإذن لنقل البيانات الشخصية ، وأن هناك ضمانات مناسبة لحمايتها قبل وأثناء وبعد النقل.
- Keeping data in one place is safer than transferring it elsewhere.
  Consider whether it is possible to provide access to the data, instead of transferring them outside of your institution.
- غالبًا ما توفر جامعتك أو معهدك حلولًا لنقل الملفات بشكل آمن،
  Contact your research data, privacy or IT support team for guidance.

**4. Encryption**

- يوفر التشفير الحماية عن طريق التأكد من أن الشخص الوحيد الذي لديه مفتاح التشفير (أو كلمة المرور) فقط سيكون قادرًا للوصول إلى المحتويات.
  - الحماية على مستوى القرص: بت لوكر (Bitlocker) لويندوز (windows)، فايل فولت (FileVault) لماك أو إس (MacOS).
  - الحماية على مستوى "الحاوية" (مجلد يحتوي على ملفات متعددة): فيرا كربت (VeraCrypt) (أو الأرشيف لماك أو إس (MacOS)).
  - التخزين المحمولة: بت لوكر (Bitlocker).
  - مستوى الملف / تبادل المعلومات:
    - الطريقة البسيطة: استخدم 7 زيب (7zip) ، ومجموعة بكلمة مرور.
    - الطريقة الأكثر تعقيدا للإعداد: استخدم أدوات بي جي بي (PGP) (ويمكن أيضا أن تستخدم عند إرسال البريد الإلكتروني بشكل آمن).
  - See the [Ghent University Encryption for Researchers manual](https://osf.io/nx8km/) for more details and step-by-step guides

**5. Access permissions**

- Control who has access to which parts of the data, and which type of permissions they have, such as "read" vs. "write" access.
- Deny access to sensitive data if that access is no longer needed.
- حماية كلمة المرور.

**6. Anonymisation**

إخفاء الهُوِيَّة (Anonymisation) هي عملية يتم من خلالها إزالة معلومات التعريف في مجموعة البيانات،
It is used primarily to allow data to be shared or published without revealing the confidential information it contains.

- حيثما أمكن ، يجب إزالة المعرفات المباشرة (مثل الأسماء والعناوين وأرقام الهواتف وأرقام الحسابات) بمجرد عدم الحاجة إلى معلومات التعريف،
  إذ يمكنك حذف البيانات أو استبدالها بأسماء مستعارة،
  وبالنسبة للبيانات ذات العلاقة بالنوع و الكيفية ، يجب استبدال أو تعميم خصائص التعريف عند تدوين المقابلات.
- تُعرف البيانات مجهولة الهوية التي يمكن إعادة تحديدها باستخدام ملف الربط (على سبيل المثال ، المعلومات التي تربط موضوعات البيانات بأفراد يمكن التعرف عليهم) باسم البيانات ذات الأسماء المستعارة،
  وللملاحظة: في هذه الحالة ، يجب تشفير ملف الربط وتخزينه بشكل آمن ومنفصل عن بيانات البحث التي لم يتم التعرف عليها.
  - قد يظل تحديد هوية الأفراد في البيانات مجهولة الهوية أو التي تستعمل أسماء مستعارة ممكنًا باستخدام مجموعات من المعرفات غير المباشرة (مثل العمر والتعليم والتوظيف والمنطقة الجغرافية والحالات الطبية)،
    علاوة على ذلك ، قد يكون من المحتمل أن تكون البيانات والمخرجات التي تحتوي على عدد الخلايا الصغيرة قابلة للإفصاح ، لا سيما عندما يتم أخذ العينات من تجمعات صغيرة أو تتضمن حالات ذات قيم قصوى تكون بارزة أو خصائص نادرة نسبيًا.
  - As such, when intending to share potentially identifiable data or the outputs generated from the data, you may need to consider more advanced anonymisation techniques such as statistical disclosure control (SDC, see [this handbook](https://securedatagroup.org/sdc-handbook/) for more information).
- For more information about anonymisation
  - Watch [this webinar by Enrico Glerean](https://www.youtube.com/watch?v=ILXeA4fx3cI)
  - Watch a presentation on [Amnesia – Data Anonymisation Made Easy](https://www.youtube.com/watch?v=9wu_xGeYsQw) or a webinar on [Amnesia - a tool to make anonymisation easy](https://www.youtube.com/watch?v=9wu_xGeYsQw)
  - Or read an [explanation by the Finnish social science data archive](https://www.fsd.tuni.fi/en/services/data-management-guidelines/anonymisation-and-identifiers/)
  - [Anonymisation step-by-step](https://ukdataservice.ac.uk/learning-hub/research-data-management/anonymisation/anonymisation-step-by-step/)




