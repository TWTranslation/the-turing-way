# Lista de comprobación de pruebas de código

Diese Checkliste enthält viele Elemente. Wie {ref}`bereits erwähnt hat<rr-testing-write-tests>`, ist es viel besser, einige der Elemente zu tun als keines von ihnen. Lassen Sie sich nicht entmutigen, wenn diese Liste der Aufgaben unüberwindbar erscheint.

<a name="Writing_tests"></a>

## Schreibe Tests

- Schreiben Sie ein paar Rauchtests.
- Schreiben Sie Einheitstests für alle Ihre Code-Einheiten.
- Schreibe Integrationstests, um die Integration zwischen den Einheiten zu überprüfen.
- Schreiben Sie ein paar Systemtests. Priorisieren Sie gemeinsame und wichtige Pfade durch das Programm.
- Regressionstests schreiben. Regressionstests können auf jeder Teststufe existieren.
- Wenn dies für Ihr Projekt angemessen ist, schreiben Sie Akzeptanztests.
- Fügen Sie Laufzeit-Tests in Ihr Projekt ein.

<a name="Good_practice_checks"></a>

## bewährte Praxisprüfungen

- [ ] Dokumentation der Tests und wie sie ausgeführt werden.
  - [ ] Schreiben Sie Skripte, um alle Ressourcen einzurichten und zu konfigurieren, die benötigt werden, um die Tests durchzuführen.
- [ ] Wählen und nutzen Sie ein Test-Framework.
- [ ] Führen Sie die Tests regelmäßig aus.
  - [ ] Automatisieren Sie den Prozess der Ausführung von Tests. Ziehen Sie dazu in Betracht, die kontinuierliche Integration zu nutzen (siehe Kapitel zur kontinuierlichen Integration).
- [ ] Überprüfen Sie die Code-Abdeckung Ihrer Tests und versuchen Sie es zu verbessern.
- [ ] Introducir en Code Rezension mit einem Partner.
