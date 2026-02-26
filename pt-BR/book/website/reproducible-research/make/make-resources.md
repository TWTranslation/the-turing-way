(rr-make-resources)=

# Recursos para "Fazer"

(rr-make-resources-manual)=

## Manualmente

- The Official Make Reference
  manual.

(rr-make-resources-discussions)=

## Discussões

- Discussion on Make on
  HackerNews.

- Recursive Make Considered
  Harmful. This is a well-known
  paper on why you shouldn't use nested makefiles. To summarise: if you do
  this Make can't see the entire DAG and that leads to problems.

- Non-Recursive Make Considered
  Harmful:
  This is a research paper describing the failings of Make for large and
  complex builds.

(rr-make-resources-blogs)=

## Blogs

Claro que não somos os primeiros a sugerir o uso de "Make for reprodutibilidade!"
Os posts do blog citados abaixo foram encontrados depois que o tutorial acima foi escrito, mas podem adicionar mais informações e exemplos.

- Reproducibility is
  hard. Discusses
  making a research project reproducible using Make.

- [GNU Make for Reproducible Data Analysis](http://zmjones.com/make/). Argues
  for using Make for reproducible analysis in a similar vein as we do above.

- Reproducible Bioinformatics Pipelines using
  Make. A quite extensive tutorial on using
  Make for data analysis.

- Automatic Data-analysis
  Pipelines. A similar
  tutorial that uses R for the analysis.

- [Writing a reproducible Paper](http://handbook.datalad.org/en/latest/usecases/reproducible-paper.html#automation-with-existing-tools).
  A similar tutorial with Python using variables to populate tables in the
  manuscript.

(rr-make-resources-ferramentas)=

## Ferramentas

- Plot the DAG of the Makefile with
  [makefile2graph](https://github.com/lindenb/makefile2graph).

(rr-make-resources-alternativas)=

## Alternativas a fazer

There are many alternatives to
Make. Abaixo de estão alguns que chamaram a nossa atenção, e isso pode valer a pena.

- [SnakeMake](https://snakemake.readthedocs.io/en/stable/). A Python3-based
  alternative to Make. Snakemake supports multiple wildcards in filenames,
  supports Python code in rules, and can run workflows on workstations,
  clusters, the grid, and in the cloud without modification.

- [Tup](http://gittup.org/tup/index.html). A fast build system that processes
  prerequisites bottom-up instead of Make's top-down. The speed looks
  impressive and the paper describing it is interesting, but for small
  projects Make's speed will not be a bottleneck. The Tupfile syntax is not
  compatible with that of Makefiles.

- [Bazel](https://www.bazel.build). An open-source version of Google's Blaze
  build system.

- [Buck](https://buckbuild.com/). Sistema de compilação do Facebook.


