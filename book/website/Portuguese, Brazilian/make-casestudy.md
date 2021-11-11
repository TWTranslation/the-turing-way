(rr-make-casestudy-rp)=
# Estudo de Caso: Produzir Papel usando Criar

No tutorial acima usamos as classificações de filmes do IMDB para diferentes gêneros como dados de exemplo. Estes dados foram obtidos de um conjunto de dados [compartilhado em Kaggle](https://www.kaggle.com/orgesleka/imdbmovies#imdb.csv) como um arquivo CSV. O arquivo se parece com isso:

```text
fn,tid,title,wordsInTitle,url,imdbRating,ratingCount,duration,year,type,nrOfWins,nrOfNominations,nrOfPhotos,nrOfNewsArticles,nrOfUserReviews,nrOfGenre,Action,Adult,Adventure,Animation,Biography,Comedy,Crime,Documentary,Drama,Family,Fantasy,FilmNoir,GameShow,History,Horror,Music,Musical,Mystery,News,RealityTV,Romance,SciFi,Short,Sport,TalkShow,Thriller,War,Western
titles01/tt0012349,tt0012349,Der Vagabund und das Kind (1921),der vagabund und das kind,http://www.imdb.com/title/tt0012349/,8.4,40550,3240,1921,video.movie,1,0,19,96,85,3,0,0,0,0,0,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
titles01/tt0015864,tt0015864,Goldrausch (1925),goldrausch,http://www.imdb.com/title/tt0015864/,8.3,45319,5700,1925,video.movie,2,1,35,110,122,3,0,0,1,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
titles01/tt0017136,tt0017136,Metropolis (1927),metropolis,http://www.imdb.com/title/tt0017136/,8.4,81007,9180,1927,video.movie,3,4,67,428,376,2,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0
titles01/tt0017925,tt0017925,Der General (1926),der general,http://www.imdb.com/title/tt0017925/,8.3,37521,6420,1926,video.movie,1,1,53,123,219,3,1,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
```

Enquanto estiver na superfície isto se parece com um arquivo CSV normal, quando você tenta abri-lo com a biblioteca Python CSV, ou Pandas, ou R's `read_csv`, ou até mesmo `readr:read_csv`, os dados não são carregados corretamente. Isso acontece porque o arquivo CSV usa um caractere de escape `\` para nomes de filmes que têm vírgulas e os leitores CSV não detectam automaticamente esta variação no formato CSV .  Acontece que isso é um problema bastante comum para cientistas de dados: arquivos CSV são frequentemente confusos e usam um *dialeto incomum*dialeto: como delimitadores estranhos e caracteres de citação incomuns.  Coletivamente, cientistas de dados perdem algum tempo com esses problemas de disputas de dados em que a intervenção manual é necessária. Mas esse problema também não é tão fácil de resolver: para um computador um arquivo CSV é simplesmente uma sequência de caracteres longa e cada dialeto te dará *alguma* tabela. Então, como determinar com precisão o dialecto em geral?

Recentemente, pesquisadores do Alan Turing Institute apresentaram um método que atinge 97% de precisão em um grande corpus de arquivos CSV, com uma melhoria de 21% em relação às abordagens existentes em arquivos CSV não padrão. Esta pesquisa foi feita para ser reproduzida através do uso do Make e está disponível através de um repositório on-line: [https://github.com/alan-turing-institute/CSV_Wrangling](https://github.com/alan-turing-institute/CSV_Wrangling).

Abaixo, descreveremos brevemente como é o Makefile para esse projeto. Para o arquivo completo, por favor veja o repositório. O Makefile consiste de várias seções:

1. Coleta de dados: porque os dados são coletados de fontes públicas o repositório contém um script Python que permite que qualquer pessoa baixe os dados por meio de um simples comando `faça os dados`.

2. Todos os números, tabelas e constantes usados no papel são gerados com base nos resultados dos experimentos. Para facilitar a recriar todos os resultados de um certo tipo, `. HONY` metas estão incluídas que dependem de todos os resultados desse tipo (para que você possa executar `faça figuras`). As regras para essas saídas seguem o mesmo padrão dos números no tutorial acima.  Tabelas são criadas como arquivos LaTeX para que possam ser diretamente incluídas na fonte LaTeX para o manuscrito.

3. As regras para os resultados de detecção seguem uma assinatura específica:

   ```makefile
   $(OUT_DETECT)/out_sniffer_%.json: $(OUT_PREPROCESS)/all_files_%.txt
    python $(SCRIPT_DIR)/run_detector.py sniffer $(DETECTOR_OPTS) $<$@
   ```

   The `%` symbol is used to create outputs for both sources of CSV files with a single rule in {ref}`rr-make-examples-patternrules` and the rule uses in {ref}`rr-make-examples-automaticvar` to extract the input and output filenames.

4. Algumas das regras de limpeza removerão arquivos de saída que levam um tempo para criar.  Portanto, eles dependem de um alvo de `check_clean` especial que pede ao usuário para confirmar antes de prosseguir:

   ```makefile
   verificar_limpar:
    @echo -n "Você tem certeza? [y/N]" && lê ans && [ $$ans == y ]
   ```

É importante enfatizar que este arquivo não foi criado de uma só vez, mas foi construído iterativamente. O Makefile começou como uma maneira de executar vários métodos de detecção de dialeto em uma coleção de arquivos de entrada e cresceu gradualmente para incluir a criação de figuras e tabelas dos arquivos de resultado. Assim, o conselho para usar Make for reproducibility é *começar pequeno e começar cedo*.

O Makefile publicado no repositório não contém o papel, mas este *está* incluído no relatório interno Makefile e segue a mesma estrutura do `. df` arquivo no tutorial acima. Isso se provou especialmente útil para a colaboração pois apenas um repositório precisava ser compartilhado que contenha o código, os resultados, e o manuscrito.
