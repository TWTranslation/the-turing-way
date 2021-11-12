#! /bin/bash
# Copia el último contenido del archivo contributors.md a afterword
# esto publicará el archivo de colaboradores online en el libro The Turing Way

all_contributors='../../README.md' # Ruta al archivo principal README de The Turing Way
contributor_highlights='../../contributors.md'
collaborating_projects='../../collaborating_projects.md'
contributors_record='afterword/contributors-record.md'

# Copiar todo desde el resaltado de los colaboradores
echo '(colaboradores-registro-resaltados)=' > $contributors_record
gato $contributor_highlights >> $contributors_record

# # Obtener línea donde comienza la lista de colaboradores
echo '\n(colaboradores-record-all)=' >> $contributors_record
echo '\n# Todos los colaboradores\n' >> $contributors_record
echo '\n✨Usando la especificación [all-contributors](https://allcontributors.org/), _The Turing Way_ reconoce a todos los colaboradores, no solo a los que empujan el código. ✨' >> $contributors_record
line_num=$(grep -n '## Colaboradores' $all_contributors | cortar -d: -f1)
echo '\n(colaboradores-registro-contribuidores)=' >> $contributors_record

tail -n +"$line_num" "$all_contributors" | mientras se leía la línea;
hacer
  echo $line >> $contributors_record
hecho

# Copia todo desde los archivos de proyectos colaboradores
echo '\n(colaboradores-registro-colaboradores)=' >> $contributors_record
gato $collaborating_projects >> $contributors_record
