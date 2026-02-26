(rr-make-examples-learnmake)=

# Learn "Make" by Examples

(rr-make-examples-makefiles)=

## Makefiles

أحد الأشياء التي قد تثني أحدهم عن استخدام صنع هو أن Makefiles الموجودة يمكن أن تبدو معقدة جداً، وقد يبدو أنه من الصعب تكييف واحد لاحتياجاتك الخاصة. في هذا البرنامج التعليمي العملي سننشئ Makefile من الصفر لمشروع تحليل البيانات الحقيقي. الفكرة هي شرح ميزات مختلفة لصنع بتكرار عدة إصدارات من Makefile لهذا المشروع. نأمل أن تسمح لك التجربة التي تكسبها من هذا البرنامج التعليمي بإنشاء Makefiles لمشاريعك الخاصة.

We will create a `Makefile` for a data analysis pipeline. The task is as follows:

> **Task: Given some datasets, create a summary report (in pdf) that contains
> the histograms of these datasets.**

(Of course this data task is very simple to focus on how to use Make.)

_Throughout the tutorial code blocks that start with a dollar sign (`$`) are
intended to be typed in the terminal._

(rr-make-examples-settingup)=

### Setting up

We have created a basic repository for this task, that already contains
everything that we need (_except the Makefile of course!_). To start, clone
the base repository using git:

```bash
git clone https://github.com/alan-turing-institute/IntroToMake
```

يحتوي هذا المستودع الأساسي على جميع التعليمات البرمجية التي سنحتاجها في هذا البرنامج التعليمي، وينبغي أن يحتوي على هذا المحتوى:

```text
.
├── data/
│   ├── input_file_1.csv
│   └── input_file_2.csv
├── LICENSE
├── output/
├── README.md
├── report/
│   └── report.tex
└── scripts/
    └── generate_histogram.py
```

- **data**: directory with two datasets that we're going to analyse
- **report**: the input directory for the report
- **scripts**: directory for the analysis script
- **output**: output directory for the figures and the report

You'll notice that there are two datasets in the **data** directory
(`input_file_1.csv` and `input_file_2.csv`) and that there is already a
basic Python script in **scripts** and a basic report LaTeX file in
**report**.

If you want to follow along, ensure that you have the `matplotlib` and
`numpy` packages installed:

```bash
pip install matplotlib numpy
```

You will also need a working version of `pdflatex` and, of course, `make`.

For installation instructions for Make, see {ref}`rr-make-appendix-installing`.

(rr-make-examples-makefile1)=

### Makefile no. 1 (The Basics)

Let's create our first Makefile. In the terminal, move into the
`IntroToMake` repository that you just cloned:

```bash
cd IntroToMake
```

Using your favourite editor, create a file called `Makefile` with the
following contents:

```makefile
# Makefile for analysis report

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
	cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf
```

The indentation in each of the recipes are _**tabs**_, Makefiles do not accept
indentation with spaces.

You should now be able to type:

```bash
make output/report.pdf
```

إذا كان كل شيء يعمل بشكل صحيح، سيتم إنشاء الرقمين وسيتم بناء تقرير pdf

Let's go through the Makefile in a bit more detail. لدينا ثلاث قواعد، اثنتان للأرقام وواحدة للتقرير. Let's look at the rule for
`output/figure_1.png` first. This rule has the target
`output/figure_1.png` that has two prerequisites: `data/input_file_1.csv`
and `scripts/generate_histogram.py`. من خلال إعطاء ملف الإخراج هذه المتطلبات المسبقة سيتم تحديثها إذا تغير أي من هذه الملفات. هذا هو واحد من الأسباب التي أدت إلى إنشاء الإنشاء: لتحديث ملفات الإخراج عندما تتغير ملفات المصدر .

You'll notice that the recipe line calls Python with the script name and uses
command line flags (`-i` and `-o`) to mark the input and output of the
script. هذا ليس مطلوبا لاستخدام المايك، لكنه يجعل من السهل رؤية أي ملف هو مدخل إلى البرنامج النصي وأي هو المخرج.

القاعدة الخاصة بتقرير PDF متشابهة جداً، ولكن لديها ثلاثة شروط مسبقة (مصدر لاتيكس وكلا الرقمين). لاحظ أن الوصفة تغير دليل العمل قبل الاتصال بـ LaTeX كما تنقل ملف PDF الذي تم إنشاؤه إلى دليل الخروج. We're doing this to keep the LaTeX intermediate files in the
report directory. However, it's important to distinguish the above rule from
the following:

```makefile
# don't do this
output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
	cd report/
	pdflatex report.tex
	mv report.pdf ../output/report.pdf
```

This rule places the three commands on separate lines. However, **Make
executes each line independently** in a separate subshell, so changing the
working directory in the first line has no effect on the second, and a failure
in the second line won't stop the third line from being executed. لذلك، نجمع الأوامر الثلاثة في وصفة واحدة أعلاه.

This is what the dependency tree looks like for this Makefile:

![DAG for Makefile no. 1](../../../figures/makefile-no1.png) <small style="margin: 5pt auto; text-align: center; display: block;">The
dependency graph for our first Makefile, created using
[makefile2graph](https://github.com/lindenb/makefile2graph). لاحظ التشابه مع الشكل {ref}`في المقدمة<rr-make-summary>`!</small>

(rr-make-examples-makefile2)=

### Makefile no. 2 (all and clean)

In our first Makefile we have the basic rules in place. يمكننا أن نتمسك بـ إذا أردنا ذلك، ولكن هناك بعض التحسينات التي يمكننا إدخالها:

1. We now have to explicitly call `make output/report.pdf` if we want to
   make the report.

2. We have no way to clean up and start fresh.

Let's remedy this by adding two new targets: `all` and `clean`. In your
editor, change the Makefile contents to add the `all` and `clean` rules as
follows:

```makefile
# Makefile for analysis report

all: output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
	cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf

clean:
	rm -f output/report.pdf
	rm -f output/figure_*.png
```

Note that we've added the `all` target to the top of the file. We do this
because Make executes the _first_ target when no explicit target is given.  So
you can now type `make` on the command line and it would do the same as
`make all`.  Also, note that we've only added the report as the prerequisite
of `all` because that's our desired output and the other rules help to build
that output. If you have multiple outputs, you could add these as further
prerequisites to the `all` target. Calling the main target `all` is a
convention of Makefiles that many people follow.

The `clean` rule is typically at the bottom, but that's more style than
requirement. Note that we use the `-f` flag to `rm` to make sure it
doesn't complain when there is no file to remove.

You can try out the new Makefile by running:

```bash
make clean
make
```

يجب إزالة الإخراج والملفات الوسيطة بعد الأمر الأول، وإنشاءها مرة أخرى بعد الثانية.

(rr-make-examples-makefile3)=

### Makefile no. 3 (Phony Targets)

Typically, `all` and `clean` are defined as so-called Phony
Targets.
These are targets that don't actually create an output file. If not marked as `.PHONY` these targets would
always be run if they come up in a dependency, but will no longer be run if a
directory/file is ever created that is called `all` or `clean`. لذلك نحن نضيف سطراً في الجزء العلوي من ماكيفيلي لتعريف هذين النوعين كأهداف صوتية :

```makefile
# Makefile for analysis report

.PHONY: all clean

all: output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i data/input_file_1.csv -o output/figure_1.png

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i data/input_file_2.csv -o output/figure_2.png

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
	cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf

clean:
	rm -f output/report.pdf
	rm -f output/figure_*.png
```

Phony targets are also useful when you want to use Make recursively. في هذه الحالة ستحدد الدلائل الفرعية كأهداف صوتية. You can read more
about phony targets in the
documentation,
but for now it's enough to know that `all` and `clean` are typically
declared as phony.

> Sidenote: another target that's typically phony is **test**, in case you
> have a directory of tests called **test** and want to have a target to run
> them that's also called **test**.

(rr-make-examples-makefile4)=

### Makefile no. 4 (Automatic Variables and Pattern Rules)

ليس هناك أي خطأ في ماكيفيلي لدينا الآن، لكنه معجب نوعا ما لأننا أعلنا جميع الأهداف صراحة باستخدام قواعد منفصلة. We can
simplify this by using Automatic
Variables
and Pattern
Rules.

(rr-make-examples-automaticvar)=

#### Automatic Variables.

مع المتغيرات التلقائية يمكننا استخدام أسماء الشروط المسبقة والأهداف في الوصفة. إليك كيف يمكننا أن نفعل ذلك من أجل قواعد الأرقام :

```makefile
# Makefile for analysis report

.PHONY: all clean

all: output/report.pdf

output/figure_1.png: data/input_file_1.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i $< -o $@

output/figure_2.png: data/input_file_2.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i $< -o $@

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
	cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf

clean:
	rm -f output/report.pdf
	rm -f output/figure_*.png
```

We've replaced the input and output filenames in the recipes respectively by
`$<`, which denotes the _first_ prerequisite and `$@` which denotes the
_target_. You can remember `$<` because it's like an arrow that points to
the beginning (_first_ prerequisite), and you can remember `$@` (dollar
_at_) as the target you're aiming
.

There are more automatic variables that you could use, see the
documentation.

(rr-make-examples-patternrules)=

#### Pattern Rules

لاحظ أن وصفات الأرقام قد أصبحت متطابقة!  Because we don't like to repeat ourselves, we can combine the two
rules into a single rule by using _pattern rules_. Pattern rules allow you to
use the `%` symbol as a wildcard and combine the two rules into one:

```makefile
# Makefile for analysis report

.PHONY: all clean

all: output/report.pdf

output/figure_%.png: data/input_file_%.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i $< -o $@

output/report.pdf: report/report.tex output/figure_1.png output/figure_2.png
	cd report/ && pdflatex report.tex && mv report.pdf ../output/report.pdf

clean:
	rm -f output/report.pdf
	rm -f output/figure_*.png
```

The `%` symbol is now a wildcard that (in our case) takes the value `1` or
`2` based on the input files in the `data` directory. You can check that
everything still works by running `make clean` followed by `make`.

An advantage of this is that if you now want to add another dataset, say
`input_file_3`, then you would only need to add that to the rule for the
report!

(rr-make-examples-makefile5)=

### Makefile no. 5 (Wildcards and Path Substitution)

عندما يصبح Makefiles أكثر تعقيدا، قد ترغب في استخدام المزيد من الميزات المتقدمة مثل مخرجات البناء لجميع الملفات في دليل الإدخال. بينما قواعد النمط ستجعلك طريقا طويلا، اجعل لديه أيضا ميزات للبطاقات البرية والتلاعب بالسلسلة أو المسار عندما تكون قواعد النمط غير كافية.

بينما تم ترقيم ملفات الإدخال الخاصة بنا سابقا، سنقوم الآن بالتبديل إلى سيناريو حيث لديهم أسماء ذات مغزى. Let's switch over to the `big_data`
branch:

```bash
git checkout big_data         # checkout the big_data branch
```

The directory structure now looks like this:

```text
├── data/
│   ├── action.csv
│   ├── ...
│   ├── input_file_1.csv
│   ├── input_file_2.csv
│   ├── ...
│   └── western.csv
├── LICENSE
├── output/
├── README.md
├── report/
│   └── report.tex
└── scripts/
    └── generate_histogram.py
```

As you can see, the **data** directory now contains additional input files
that are named more meaningfully (the data are IMBD movie ratings by genre).
Also, the **report.tex** file has been updated to work with the expected
figures.

We'll adapt our Makefile to create a figure in the output directory called
`histogram_{genre}.png` for each `{genre}.csv` file, while excluding the
`input_file_{N}.csv` files.

> Sidenote: if we were to remove the `input_file_{N}.csv` files, pattern
> rules would be sufficient here. This highlights that sometimes your
> directory structure and Makefile should be developed hand in hand.

Before changing the Makefile, run

```bash
make clean
```

to remove the output files.

سوف نعرض Makefile بالكامل أولاً ثم نصف الخطوط المختلفة في المزيد من التفاصيل. The complete file is:

```makefile
# Makefile for analysis report
#

ALL_CSV = $(wildcard data/*.csv)
INPUT_CSV = $(wildcard data/input_file_*.csv)
DATA = $(filter-out $(INPUT_CSV),$(ALL_CSV))
FIGURES = $(patsubst data/%.csv,output/figure_%.png,$(DATA))

.PHONY: all clean

all: output/report.pdf

$(FIGURES): output/figure_%.png: data/%.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i $< -o $@

output/report.pdf: report/report.tex $(FIGURES)
	cd report/ && pdflatex report.tex && mv report.pdf ../$@

clean:
	rm -f output/report.pdf
	rm -f $(FIGURES)
```

First, we use the `wildcard` function to create a variable that lists all
the CSV files in the data directory and one that lists only the old
`input_file_{N}.csv` files:

```makefile
ALL_CSV = $(wildcard data/*.csv)
INPUT_CSV = $(wildcard data/input_file_*.csv)
```

اتفاقية التعليمات البرمجية لـ Makefiles هي استخدام جميع العواصم للأسماء المتغيرة و تعريفها في الجزء العلوي من الملف.

Next, we create a variable to list only the data files that we're interested
in by filtering out the `INPUT_CSV` from `ALL_CSV`:

```makefile
DATA = $(filter-out $(INPUT_CSV),$(ALL_CSV))
```

This line uses the
[`filter-out`](https://www.gnu.org/software/make/manual/make.html#index-filter_002dout)
function to remove items in the `INPUT_CSV` variable from the `ALL_CSV`
variable.  Note that we use both the `$( ... )` syntax for functions and
variables. Finally, we'll use the `DATA` variable to create a `FIGURES`
variable with the desired output:

```makefile
FIGURES = $(patsubst data/%.csv,output/figure_%.png,$(DATA))
```

Here we've used the
[`patsubst`](https://www.gnu.org/software/make/manual/make.html#index-patsubst-1)
function to transform the input in the `DATA` variable (that follows the
`data/{genre}.csv` pattern) to the desired output filenames (using the
`output/figure_{genre}.png` pattern). Notice that the `%` character marks
the part of the filename that will be the same in both the input and output.

Now we use these variables for the figure generation rule as follows:

```makefile
$(FIGURES): output/figure_%.png: data/%.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i $< -o $@
```

This rule again applies a pattern: it takes a list of targets (`$(FIGURES)`)
that all follow a given pattern (`output/figure_%.png`) and based on that
creates a prerequisite (`data/%.csv`). Such a pattern rule is slightly
different from the one we saw before because it uses two `:` symbols. It is
called a static pattern
rule.

Of course we have to update the `report.pdf` rule as well:

```makefile
output/report.pdf: report/report.tex $(FIGURES)
	cd report/ && pdflatex report.tex && mv report.pdf ../$@
```

and the `clean` rule:

```makefile
clean:
	rm -f output/report.pdf
	rm -f $(FIGURES)
```

If you run this Makefile, it will need to build 28 figures. You may want to
use the `-j` flag to `make` to build these targets **in parallel!**

```bash
make -j 4
```

القدرة على بناء الأهداف بالتوازي مفيدة جدا عندما يكون لمشروعك العديد من التبعيات!

The resulting PDF file should now look like this:

![Report with all genres](../../../figures/make-report-all-genres.png)<small
style="margin: 5pt auto; text-align: center; display: block;">A compressed
view of the report with histograms for all genres.</small>
