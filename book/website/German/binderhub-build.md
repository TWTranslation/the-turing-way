(rr-binderhub-build)=
# Baue deinen eigenen BinderHub

[mybinder.org](https://mybinder.org/) ist der kostenlose, öffentliche BinderHub mit fast 100k Binder pro Woche. Warum möchtest du deine eigene bauen?

Binder [{term}`def<Binder>`] ist ein Open-Source-Projekt, das von Freiwilligen betreut wird und als solches darum bittet, dass Benutzer innerhalb bestimmter Rechenbeschränkungen bleiben, um die laufenden Kosten so gering wie möglich zu halten und trotzdem einen nutzbaren Dienst bereitzustellen. Durch das Hosting Ihres eigenen BinderHubs können Sie Ihren Benutzern viel flexiblere und maßgeschneiderte Ressourcen bieten.

Diese Anpassungen könnten beinhalten:

- authentifizieren,
- größere Rechenressourcen pro Benutzer,
- Bibliothekstapel und -pakete anpassen,
- erlaubt Zugriff auf private Repos,
- persistenter Speicher für Benutzer,
- die Freigabe innerhalb einer bestimmten Institution oder eines bestimmten Teams beschränken.

## Probleme, mit denen Sie bei der Bereitstellung eines BinderHub konfrontiert sein könnten

BinderHubs werden bei Universitäten und Forschungsinstituten immer beliebter. Dies liegt daran, dass sie mehrere Instanzen der gleichen Reihe von Notizbüchern für den Einsatz in einem Tutorial oder Workshop-Einstellungen erleichtern können.

Wenn Sie im Namen Ihrer Organisation einen von der Cloud gehosteten BinderHub bereitstellen, benötigen Sie möglicherweise spezielle Berechtigungen für das Cloud-Abonnement Ihrer Organisation. Welche Berechtigungen Sie benötigen, variieren je nach Cloud-Plattform, auf die Sie Zugriff haben, und Ihren IT Services Richtlinien. Mindestens Sie müssen in der Lage sein, [Rollenbasierte Zugriffskontrolle (RBAC)](https://docs.microsoft.com/en-us/azure/role-based-access-control/overview) Ihren Ressourcen zuzuweisen, damit sie autonom handeln können, um den Nutzerverkehr zu verwalten.
