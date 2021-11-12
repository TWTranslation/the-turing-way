#! /fr/bin/bash
# Copier le dernier contenu du fichier contributors.md vers afterword
# cela va publier le fichier des contributeurs en ligne dans le livre de Turing Way

all_contributors='../../README.md' # Chemin vers le fichier README principal de la Voie Turing
contributor_highlights='../../contributors.md'
collaborating_projects='../../collaborating_projects.md'
contributors_record='afterword/contributors-record.md'

# Copier tout depuis la surbrillance des contributeurs
echo '(contributeurs-record-highlights)=' > $contributors_record
chat $contributor_highlights >> $contributors_record

# # Obtenir la ligne où commence la liste de tous les contributeurs
echo '\n(contributeurs-record-all)=' >> $contributors_record
echo '\n# Tous les contributeurs\n' >> $contributors_record
echo '\n✨En utilisant la spécification [all-contributors](https://allcontributors.org/), _The Turing Way_ reconnaît tous les contributeurs, pas seulement ceux qui poussent du code. ✨' >> $contributors_record
line_num=$(grep -n '## Contributeurs' $all_contributors | coupé -d: -f1)
echo '\n(contributeurs-record-contributeurs)=' >> $contributors_record

queue -n +"$line_num" "$all_contributors" | en lecture de la ligne;
faire
  echo $line >> $contributors_record
Terminé

# Copier tout depuis les fichiers des projets collaboratifs
echo '\n(contributeurs-record-collaborateurs)=' >> $contributors_record
chat $collaborating_projects >> $contributors_record
