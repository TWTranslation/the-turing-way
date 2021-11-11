#! /bin/bash
# Kopieren Sie den neuesten contributors.md Dateiinhalt in das Nachwort
# Dies veröffentlicht die Beitragende Datei online im The Turing Way Buch

all_contributors='../../README.md' # Pfad zur Hauptdatei von The Turing Way
contributor_highlights='../../contributors.md'
collaborating_projects='../../collaborating_projects.md'
contributors_record='afterword/contributors-record.md'

# Kopiere alles von den Beitragenden hervorheben
echo '(contributors-record-highlights)=' > $contributors_record
Katze $contributor_highlights >> $contributors_record

# # Lade Linenumber ab, wo alle Mitwirkenden Liste beginnt
echo '\n(contributors-record-all)=' >> $contributors_record
echo '\n# Alle Mitwirkenden\n' >> $contributors_record
echo '\n✨Benutze [all-contributors](https://allcontributors.org/) Spezifikation, _The Turing Way_ erkennt alle Mitwirkenden und nicht nur diejenigen, die Code schieben. ✨' >> $contributors_record
line_num=$(grep -n '## Mitwirkende' $all_contributors | cut -d: -f1)
echo '\n(contributors-record-contributors)=' >> $contributors_record

tail -n +"$line_num" "$all_contributors" | beim Lesen der Zeile;
machen
  echo $line >> $contributors_record
fertig

# Kopieren Sie alles aus den kollaborierenden Projektdateien
echo '\n(Mitwirkende Rekord-Mitarbeiter)=' >> $contributors_record
Katze $collaborating_projects >> $contributors_record
