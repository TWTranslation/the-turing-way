(rr-make-appendix)=

# Ek

(rr-make-appendix-dag)=

## Yönlü Çevrimsiz Çizge

A Directed Acyclic Graph (DAG) is a _graph_ of nodes and edges that is:

1. _directed_: edges have a direction and you can only walk the graph in that
   direction
2. _acyclic_: does not contain cycles: A can't depend on B when B depends on A.

Yukarıda belirtilen ikinci özellik derleme sistemleri için oldukça kullanışlıdır. More
information on DAGs can be found on
[Wikipedia](https://en.wikipedia.org/wiki/Directed_acyclic_graph).

(rr-make-appendix-installing)=

## Make'in kurulumu

Öncelikle, GNU Make'in önceden yüklenmiş olup olmadığını kontrol edin.  Bir terminale aşağıdaki komutu girin:

```bash
make
```

If you get `make: command not found` (or similar), you don't have Make. If
you get `make: *** No targets specified and no makefile found.  Stop.` you
do have Make.

We'll be using **GNU Make** in this tutorial. Sisteminizde GNU Make olduğunu doğrulamak için aşağıdaki komutu deneyin:

```bash
make --version
```

GNU Make'iniz yoksa ancak BSD sürümünüz varsa, bazı şeyler
beklendiği gibi çalışmayabili. Bu durumda GNU Make'i yüklemenizi öneririz.

GNU Make'i yüklemek için lütfen şu talimatları izleyin:

- **Linux**: Use your package manager to install Make. For instance on Arch
  Linux:

  ```bash
  $ sudo pacman -S make
  ```

  Ubuntu:

  ```bash
  $ sudo apt-get install build-essential
  ```

- **MacOS**: If you have [Homebrew](https://brew.sh/) installed, it's simply:

  ```bash
  $ brew install make
  ```

  If you have a builtin Make implementation, please ensure that it's GNU Make
  by checking `make --version`.

(rr-make-appendix-advancedgr)=

## İleri düzey: Çağrı Kullanarak Kurallar Oluşturma

_This section continues the tutorial above and demonstrates a feature of Make
for automatic generation of rules._

Bir veri bilimi iş akışında, aynı verilere birden çok betik
uygulamak oldukça yaygın olabilir (örneğin, yöntemleri karşılaştırırken veya
farklı parametrelerini test ederken). Bu durumda, yalnızca betik adı değiştiğinde her komut dosyası için ayrı bir kural yazmak sıkıcı olabilir. To simplify this
process, we can let Make expand a so-called .

To follow along, switch to the `canned` branch:

```bash
make clean
git stash --all        # note the '--all' flag so we also stash the Makefile
git checkout canned
```

On this branch you'll notice that there is a new script in the **scripts**
directory called `generate_qqplot.py`. This script works similarly to the
`generate_histogram.py` script (it has the same command line syntax), but it
generates a [QQ-plot](https://en.wikipedia.org/wiki/Q%E2%80%93Q_plot). The
**report.tex** file has also been updated to incorporate these plots.

After switching to the `canned` branch there will be a Makefile in the
repository that contains a separate rule for generating the QQ-plots. This
Makefile looks like this:

```makefile
# Makefile for analysis report
#

ALL_CSV = $(wildcard data/*.csv)
DATA = $(filter-out $(wildcard data/input_file_*.csv),$(ALL_CSV))
HISTOGRAMS = $(patsubst data/%.csv,output/figure_%.png,$(DATA))
QQPLOTS = $(patsubst data/%.csv,output/qqplot_%.png,$(DATA))

.PHONY: all clean

all: output/report.pdf

$(HISTOGRAMS): output/histogram_%.png: data/%.csv scripts/generate_histogram.py
	python scripts/generate_histogram.py -i $< -o $@

$(QQPLOTS): output/qqplot_%.png: data/%.csv scripts/generate_qqplot.py
	python scripts/generate_qqplot.py -i $< -o $@

output/report.pdf: report/report.tex $(FIGURES)
	cd report/ && pdflatex report.tex && mv report.pdf ../$@

clean:
	rm -f output/report.pdf
	rm -f $(HISTOGRAMS) $(QQPLOTS)
```

Histogramlar ve QQ grafikleri için kuralların çok benzer olduğunu fark edeceksiniz.

Verilerinizde çalıştırmak istediğiniz komut dosyalarının sayısı arttıkça, bu
Makefile içinde neredeyse tam olarak
aynı olan çok sayıda kurala yol açabilir. We can simplify this by creating a 
that takes both the name of the script and the name of the genre as input:

```makefile
define run-script-on-data
output/$(1)_$(2).png: data/$(2).csv scripts/generate_$(1).py
	python scripts/generate_$(1).py -i $$< -o $$@
endef
```

Note that in this recipe we use `$(1)` for either `histogram` or
`qqplot` and `$(2)` for the genre. These correspond to the expected
function arguments to the `run-script-on-data` canned recipe. Also, notice
that we use `$$<` and `$$@` in the actual recipe, with two `$` symbols
for escaping. To actually create all the targets, we need a line that calls
this canned recipe.  In our case, we use a double for loop over the genres and
the scripts:

```makefile
$(foreach genre,$(GENRES),\
	$(foreach script,$(SCRIPTS),\
		$(eval $(call run-script-on-data,$(script),$(genre))) \
	) \
)
```

In these lines the `\` character is used for continuing long lines.

The full Makefile then becomes:

```makefile
# Makefile for analysis report
#

ALL_CSV = $(wildcard data/*.csv)
DATA = $(filter-out $(wildcard data/input_file_*.csv),$(ALL_CSV))
HISTOGRAMS = $(patsubst %,output/histogram_%.png,$(GENRES))
QQPLOTS = $(patsubst %,output/qqplot_%.png,$(GENRES))

GENRES = $(patsubst data/%.csv,%,$(DATA))
SCRIPTS = histogram qqplot

.PHONY: all clean

all: output/report.pdf

define run-script-on-data
output/$(1)_$(2).png: data/$(2).csv scripts/generate_$(1).py
	python scripts/generate_$(1).py -i $$< -o $$@
endef

$(foreach genre,$(GENRES),\
	$(foreach script,$(SCRIPTS),\
		$(eval $(call run-script-on-data,$(script),$(genre)))\
	)\
)

output/report.pdf: report/report.tex $(HISTOGRAMS) $(QQPLOTS)
	cd report/ && pdflatex report.tex && mv report.pdf ../$@

clean:
	rm -f output/report.pdf
	rm -f $(HISTOGRAMS) $(QQPLOTS)
```

Note that we've added a `SCRIPTS` variable with the `histogram` and
`qqplot` names. If we were to add another script that follows the same
pattern as these two, we would only need to add it to the `SCRIPTS`
variable.

To build all of this, run

```bash
make -j 4
```
