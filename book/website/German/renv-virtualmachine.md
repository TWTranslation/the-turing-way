(rr-renv-vm)=
# Virtuelle Maschinen

(rr-renv-vm-was)=
## Was sind virtuelle Maschinen?

Virtuelle Maschinen (VMs) paketieren im Wesentlichen einen ganzen Computer als eine App, die ausgeführt werden kann. Als Beispiel die Abbildung unten zeigt ein Windows Laptop (beachten Sie die Fenstersuche Schaltfläche in der unteren linken Ecke) läuft eine virtuelle Ubuntu Maschine (beachten Sie das Terminal Ausgabe des Betriebssystems). Die Maschine mit der VM wird `Host-Maschine` genannt.

Mit Software wie [VirtualBox](https://www.virtualbox.org/) oder [Vagrant](https://www.vagrantup.com/)kann ein Benutzer eine beliebige Anzahl von VMs erstellen und ausführen. Wie Sie wahrscheinlich vermuten können, kann es zu einer Belastung des Speichers führen, wenn mehrere VMs gleichzeitig laufen. Nur weil Sie mehrere VMs laufen können, bedeutet das nicht, dass Sie sollten.

```{figure} ../../figures/virtual-machine.png
---
Name: Virtuelle Maschine
alt: Ein Screenshot einer virtuellen Maschine.
---

```

Benutzer können VMs nach Belieben herunterladen, installieren, sichern und zerstören, weshalb sie ein attraktives Werkzeug für den Austausch reproduzierbarer Forschung sind. Forschung erfordert oft bestimmte Software- oder Systemeinstellungen. Wenn ein Forscher die Arbeit eines anderen auf seinem Computer reproduzieren möchte Wenn Sie die notwendigen Änderungen an ihrer Umgebung vornehmen, um das Projekt laufen zu lassen, kann dies ihre Arbeit beeinflussen. Zum Beispiel im {ref}`rr-renv-nützlichen` Abschnitt dieses Kapitels, haben wir beschrieben, wie die Verwendung einer anderen Version von Python zu unerwarteten Änderungen in den Ergebnissen einer Analyse führen kann. Sagen Sie einem Forscher installiert eine aktualisierte Version von Python, um eine Analyse zu replizieren, da die Analyse nur Funktionen benötigt, die in der aktualisierten Version vorhanden sind. Damit gefährden sie ihre eigene Arbeit. VMs entfernen dieses Risiko; alle heruntergeladenen oder geänderten Werkzeuge oder Einstellungen wirken sich nur auf die VM aus, wodurch die Recherche des Reproduzenten sicher bleibt. Wenn sie versehentlich etwas in der VM brechen, können sie es löschen und eine andere machen. VMs sind effektiv ein Quarantänegebiet.

(rr-renv-vm-research)=
## Verwendung virtueller Maschinen für reproduzierbare Forschung

Virtuelle Maschinen können durch den Export als einzelne Dateien geteilt werden. Ein anderer Forscher kann diese Datei dann mit einer eigenen Virtualisierungssoftware wie [VirtualBox](https://www.virtualbox.org/) importieren und eine Kopie der VM öffnen, die alle von der Person, die die VM erstellt hat, eingesetzten Software-Dateien und Einstellungen enthält. Daher werden sie in der Praxis eine funktionierende Version des Projekts haben, ohne den Schmerz, es selbst zu errichten.

(rr-renv-vm-research-settingup)=
### Virtuelle Maschine einrichten

Wählen Sie zuerst ein Werkzeug zur Generierung von VMs aus. Hier wird die weit verwendete [VirtualBox](https://www.virtualbox.org/) ausgewählt. Laden Sie es herunter und installieren Sie es auf Ihrem System. Um eine neue Maschine zu erstellen, klicken Sie auf "Neu" oben links. Ein Fenster öffnet sich, in dem Sie einen Namen für die Maschine eingeben und wählen können, welches Betriebssystem (und welche Version) verwendet werden soll. In der untenstehenden Abbildung wird eine Maschine namens `demo_VM` mit Ubuntu erstellt:

```{figure} ../../figures/vm-create-machine.png
---
Name: vm-create-machine
alt: Ein Screenshot mit einer virtuellen Maschine wird erstellt.
---

```

Wenn Sie durchklicken, können Sie andere Funktionen der Maschine anpassen, die erstellt werden sollen, wie zum Beispiel den Speicherplatz, auf den sie Zugriff haben soll. Die Standardoptionen sind für die meisten Zwecke geeignet, aber dieser Prozess ermöglicht eine Anpassung.

(rr-renv-vm-research-starting)=
### Starte eine virtuelle Maschine

Um eine virtuelle Maschine zu starten, wählen Sie die Maschine aus der Liste der VMs auf der linken Seite, und klicken Sie auf den grünen `Pfeil` oben starten:

```{figure} ../../figures/vm-start-machine.png
---
Name: vm-start-machine
alt: Ein Screenshot, der zeigt, wie man eine virtuelle Maschine startet.
---

```

(rr-renv-vm-research-sharing)=
### Virtuelle Maschinen teilen

Ein Forscher kann an seinem VM arbeiten und ihn dann exportieren. Um eine VM zu exportieren, klicken Sie auf `Datei` oben links und `Export`. Dadurch wird die VM als einzelne Datei exportiert, die freigegeben werden kann.

```{figure} ../../figures/vm-export-machine.png
---
Name: vm-export-machine
alt: Ein Screenshot, der zeigt, wie man eine virtuelle Maschine exportiert.
---

```

Jemand, der Zugriff auf diese Datei hat und VirtualBox installiert ist, muss einfach `Datei` oben links klicken, dann `Importieren Sie` , um diese Datei auszuwählen. Sobald sie importiert wurden, können sie die VM wie zuvor beschrieben starten indem Sie im Menü auf den grünen Startpfeil oben klicken.
