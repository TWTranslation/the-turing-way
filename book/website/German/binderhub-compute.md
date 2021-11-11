(rr-binderhub-compute)=
# Rechenressourcen

BinderHub ist wolkenneutral und kann daher auf jeder Cloud-Plattform eingesetzt werden. Daher ist die Mindestvoraussetzung ein Abonnement einer Cloud-Plattform Ihrer Wahl.

Tatsächlich ist BinderHub überhaupt nicht von Cloud-Hosting abhängig und kann auf einem On-premise Computing-System eingesetzt werden.

## Kubernetes

[Kubernetes](https://kubernetes.io/) ist ein System zur Automatisierung der Auslösung, Skalierung (mehr oder weniger Kopien), und die Verwaltung von Containern über einen Rechencluster (es muss nicht wolkenbasiert sein). BinderHub verwendet Kubernetes, um die von den Benutzern des Binder-Dienstes angeforderten Ressourcen zu verwalten und um die Werkzeuge zu unterstützen, die die Umgebung bauen.

## Helm

[Helm](https://helm.sh/) ist ein Paketmanager für Kubernetes. Pakete werden in Form von *Diagrammen* geliefert, die eine Reihe von Anweisungen zum Verteilen sind, aktualisieren und verwalten Sie Anwendungen, die auf einem Kubernetes Cluster laufen. Sie können die Installation und Verwaltung von Kubernetes Anwendungen erheblich erleichtern und spezifische Diagramme für Projekte können online veröffentlicht werden. For example, the Helm Chart for BinderHub is available [here](https://jupyterhub.github.io/helm-chart/#development-releases-binderhub).

## repo2docker

[repo2docker](https://repo2docker.readthedocs.io/en/latest/?badge=latest) ist ein Werkzeug, das automatisch ein Docker-Bild aus einem Coderepository erzeugt, das eine Konfigurationsdatei erhalten hat. Dieses Docker-Bild wird den gesamten Code, die Daten und die Ressourcen enthalten, die im Projektarchiv aufgelistet sind. Alle Software, die zum Ausführen des Codes benötigt wird, wird auch aus der Konfigurationsdatei vorinstalliert.

## JupyterHub

[JupyterHub](https://jupyter.org/hub) ist ein Mehrbenutzerserver für Jupyter Notebooks und Container gleichermaßen. Im Kontext von Binder besteht die Hauptrolle von JupyterHub darin, den Browser des Benutzers mit der BinderHub Instanz zu verbinden, die auf dem Kubernetes Cluster läuft. Jedoch kann der JupyterHub weiter angepasst werden, um eine größere Kontrolle über den Betrieb des BinderHubs zu gewährleisten.

BinderHub kann als dünne Schicht angesehen werden, die auf repo2docker und JupyterHub sitzt, ihre Interaktionen organisiert und URLs löst.

## Was passiert, wenn ein Binder-Link angeklickt wird?

1. Der Link zum Projektarchiv wird von BinderHub aufgelöst.
2. BinderHub sucht nach einem Docker-Image in Bezug auf die angegebene Referenz (zum Beispiel git commit-Hash, Branch oder Tag).
3. **If a Docker image is not found**, BinderHub requests resources from the Kubernetes cluster to run repo2docker to do the following:
   - Repository abrufen,
   - Erstellen Sie ein Docker-Bild, das die in der Konfigurationsdatei angeforderte Software enthält
   - Schieben Sie dieses Bild in die Docker-Registrierung.
4. BinderHub sendet das Docker-Image an JupyterHub.
5. JupyterHub fordert Ressourcen vom Kubernetes Cluster an, um das Docker Image zu bedienen.
6. JupyterHub verbindet den Browser des Benutzers mit der laufenden Docker-Umgebung.
7. JupyterHub überwacht den Container auf Aktivitäten und zerstört ihn nach einer Periode der Untätigkeit.
