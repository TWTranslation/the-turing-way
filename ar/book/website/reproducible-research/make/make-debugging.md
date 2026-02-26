(rr-make-debugging)=

# Debugging Makefiles

عند كتابة ماكيفيل، قد يكون من المفيد في بعض الأحيان أن تكون قادرة على رؤية قيم المتغيرات لالتقاط الأخطاء أو الأخطاء في ماكيفيلي. To facilitate
this, Make contains two commands: `info` and `error`, and there is a debug
mode to Make.

With the `info` command you can print the current value of a variable to
stdout, while Make is processing the file. على سبيل المثال، في Makefile أعلاه يمكنك إضافة:

```makefile
$(info $$DATA = $(DATA))
```

This will print `DATA = data/action.csv ... data/western.csv`.

With the `error` command you can stop the execution of Make at a certain
point in the Makefile. هذا مفيد عندما تريد طباعة قيمة متغير وعدم تشغيل أي شيء آخر:

```makefile
$(error $$DATA = $(DATA))
```

Finally, you can also debug the Makefile by running Make with the debug flag:
`make -d`. هذا سيطبع جميع القواعد (بما في ذلك القواعد المدمجة) التي تجعل يحاول لكل هدف من الأهداف، وما إذا كانت هناك حاجة إلى تطبيق قاعدة أم لا.

If you only want to print the rules that Make will run and not actually run
them, you can use `make -n`. These last two options can also be combined, so
that you see the debug output and Make doesn't run anything: `make -dn`.
