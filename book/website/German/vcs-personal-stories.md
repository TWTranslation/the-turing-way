(rr-vcs-personal-stories)=
# Persönliche Geschichten

(rr-vcs-personal-stories-interiew)=
## Ein Interview mit Adina auf Datalad

Die Versionskontrolle von Daten kann eine Herausforderung sein. Adina weiß das, weil sie Teil eines Teams ist, das DataLad entwickelt und damit Datenmanagement-Herausforderungen löst. Kirstie interviewt sie über ihre Arbeit und warum sie die Versionierung von Daten für unerlässlich hält.


**Kirstie**: Hallo Adina, danke, dass du das Kapitel zur Versionskontrolle für Daten beigetragen hast! Ich weiß, Sie sind ein Entwickler für DataLad, und ich freue mich, mehr über das Projekt zu erfahren. Können Sie mir zunächst sagen, wer Sie sind und woran Sie arbeiten?

**Adina**: Hey Kirstie, vielen Dank dafür, dass Sie einen Platz für das Thema Versionskontrolle von Daten bereitstellen! Ich bin Doktorand in Neurowissenschaften und bin Teil des Labors, das DataLad entwickelt. Neben der Arbeit an neurowissenschaftlichen Fragen arbeite ich auch an Herausforderungen im Datenmanagement die für mein Fachgebiet typisch sind wie "Ich habe 300GB an Daten, wie kann ich möglicherweise Versionskontrolle oder freigeben? , oder "Wie kann ich meine Analysen mit der Datenversion verbinden, die ich verwendet habe?". Als Neurowissenschaftler habe ich das Privileg, in einem Feld mit vielen fantastischen, offenen Datensätzen zu arbeiten, aber es ist auch schwierig, Daten, die leicht mehrere hundert GB groß sein können, zu behandeln, zu teilen und zu verfolgen.

**Kirstie**: Wie hilft DataLad bei deiner Arbeit?

**Adina**: DataLad ermöglicht mir Versionskontrolle und Freigabe von Daten jeder Größe und ich verwende dies, um Daten in präzisen Versionen an Code und Manuskripte, die ich erstellen. Wenn Datenanalysen durchgeführt und die zugrunde liegenden Daten geändert werden, kann ich meine Repositories aktualisieren und meine Skripte neu berechnen. Dies hilft mir zu beurteilen, ob meine Ergebnisse replizierbar sind. Und genau wie Git ist es eine große Gedächtnishilfe, um mich daran zu erinnern, was ich mit meinen Daten gemacht habe. Es hat einige coole Funktionen für die Abstammung, und ich kann einfach meine Git Historie nachlesen, um herauszufinden, aus welchen Daten zum Beispiel eine bestimmte Zahl erstellt wurde.


**Kirstie**: Cool, was macht DataLad besser geeignet für das, was Sie tun, als andere Tools, die Versionsverwaltung Daten?

**Adina**: Ich persönlich mag DataLad, denn zusätzlich zu der Funktionalität, die Git und `git-annex` bietet, es macht die Verlinkung und Wiederverwendung von modularen Teilen meiner Forschung einfach. Wenn ich an einer Analyse arbeite, veröffentliche ich die Daten, den Code + die Ergebnisse und das Manuskript als separate, versiongesteuerte Git-Repositories auf GitHub. Aber diese Repositories sind miteinander verknüpft, so dass jemand, der mein Manuskript liest, jeden Schritt zurückverfolgen kann, der unternommen wurde, um dieses Ergebnis zu erzeugen zurück zu den ursprünglichen Daten. Ich kann meine Analyse auf GitHub teilen und kann Daten, Code und sogar Software-Umgebungen insgesamt haben. damit andere meine Ergebnisse wiedergeben können, und das halte ich für eine sehr starke Funktion.

**Kirstie**: Und als Teil des DataLad Teams, wie tragen Sie zur Software bei?

**Adina**: Meine Hauptmotivation ist es, die Software für Benutzer aller Hintergründe zugänglich zu machen. Wenn Wissenschaftler keine formale Ausbildung in Versionskontrolle oder Forschungsdatenmanagement erhalten, kann es schwierig sein, reproduzierbar zu arbeiten. Ich glaube, wenn Software einfach zu bedienen und gut dokumentiert ist, kann es den Wissenschaftlern helfen, eine bessere Wissenschaft zu machen. Software-weise arbeite ich daher an Hilfe- und UX-Funktionen und dokumentierungsweise an Tutorials, die für Benutzer geeignet sind, unabhängig von Fähigkeiten oder Hintergrund.

**Kirstie**: Was ist die Reise von DataLad, und wie bist du ein Teil davon?

**Adina**: DataLad wurde ursprünglich von Michael Hanke und Yarik Halchenko im Jahr 2014 erstellt. Sie wollten ein Werkzeug haben, das es ihnen ermöglichte, Daten genauso einfach wie Softwarepakete zu installieren und zu verfolgen, wie sich Daten ändern. `Git-Anhang` existierte bereits an dieser Stelle, aber sie wollten darauf aufbauen, um die Bedienung zu erleichtern. Im Laufe der Jahre wurde das Tool zu einem gemeinsamen Versionskontroll- und Datenverwaltungswerkzeug, um Datenaustausch, Revisionsverfolgung und reproduzierbare Berechnungen zu erleichtern. Ich trat dem Labor vor fast zwei Jahren als Master Student in der klinischen Psychologie bei, begeistert für offene und reproduzierbare Wissenschaft, aber eine komplette Neuling Technologie: Ich hatte noch nie von der Versionskontrolle gehört keine Programmiererfahrung und die Idee, dass Daten dynamisch sind, war für mich aufschlussreich, aber völlig neu. Als ich begann, DataLoad zu verwenden, war ich natürlich völlig überwältigt. Glücklicherweise gab es viele Leute, die mir beim Einstieg helfen und mir die notwendigen Hintergrundinformationen geben. Ich weiß jedoch, dass eine solche Lernumgebung nicht der Standard ist, also als ich meinen Doktortitel begann, Ich habe tatsächlich die Ressource erstellt, die ich für den Einstieg als Schüler benötigt hätte: [Das DataLad Handbuch](http://handbook.datalad.org).

**Kirstie**: Vielen Dank, dass Sie uns über dieses Tool informiert haben. In dem Handbuch können die Menschen also mehr herausfinden, wenn sie es wollen?

**Adina**: Ja, ich möchte sie auf [das DataLad Handbuch](http://handbook.datalad.org) hinweisen. Es soll ein zugängliches, code-along Tutorial sein, das ist für Forscher unabhängig vom Hintergrund geeignet - ich denke, Sie sollten kein Linux-Kurier oder Computerwissenschaftler sein, um Versionskontrolldaten zu verwenden.
