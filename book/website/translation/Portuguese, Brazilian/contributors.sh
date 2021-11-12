#! /bin/bash
# Copie o conteúdo do arquivo mais recente para depois
# isto irá publicar o arquivo de contribuidores online no livro The Turing Way

all_contributors='../../README.md' # Caminho para o arquivo README principal do Caminho de Turing
contributor_highlights='../../contributors.md'
collaborating_projects='../../collaborating_projects.md'
contributors_record='afterword/contributors-record.md'

# Copiar tudo do destaque dos contribuidores
echo '(contribuidos-record-highlights)=' > $contributors_record
gato $contributor_highlights >> $contributors_record

# # Obter linenumber onde inicia a lista de colaboradores
echo '\n(contribuinte-record-all)=' >> $contributors_record
eco '\n# Todos os Colaboradores\n' >> $contributors_record
echo '\n✨Using [all-contributors](https://allcontributors.org/) specification, _The Turing Way_ Reconhece todos os colaboradores, não apenas os que fazem push do código. ✨' >> $contributors_record
line_num=$(grep -n '## Colaboradores' $all_contributors £cut -d: -f1)
echo '\n(contribuidores-registros-contribuidores)=' >> $contributors_record

varejo -n +"$line_num"$all_contributors" ahead ao ler linha;
fazer
  eco $line >> $contributors_record
concluído

# Copie tudo dos arquivos dos projetos colaborativos
echo '\n(contribuidores-registro-colaboradores)=' >> $contributors_record
gato $collaborating_projects >> $contributors_record
