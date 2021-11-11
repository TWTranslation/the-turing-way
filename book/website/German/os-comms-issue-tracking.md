(cm-os-comms-issue-tracking)=
# Fehlerverfolgung

Die meisten Softwareentwicklungsprojekte haben eine Art Forum, um aktuelle Probleme im Projekt leicht zu verfolgen wie z.B. Fehlerbehebung, Erstellung neuer Funktionen oder Community-Engagement-Pläne. [GitHub](https://github.com) (eine sehr beliebte Kooperationsplattform) hat einen eingebauten [Issue-Tracker](https://guides.github.com/features/issues/) und [Projektboards](https://help.github.com/en/github/managing-your-work-on-github/about-project-boards) , in denen Probleme zusammengefasst werden können, um den Fortschritt auf eine spezifischere Weise zu verfolgen. höheres Ziel.

Dieser Abschnitt ist eine Diskussion darüber, warum Fehlerverfolgung nützlich ist und wo Sie sie speichern können.

(os-comms-issue-tracking-Zweck)=
## Was ist der Zweck Ihrer Probleme?

Es gibt viele verschiedene Gründe, Probleme im Zusammenhang mit einem Projekt zu behalten und zu verfolgen. Die Plattform für die Fehlerverfolgung und die von diesen Problemen verfolgten Funktionen können beeinflussen, wie Ihre Community mit Ihrem Projekt interagiert.

Meistens werden Probleme verwendet, um Fehlerberichte, Feature-Anforderungen, Möglichkeiten für Community-Mitglieder zu verfolgen und so weiter dann wird ein öffentliches Issue-Board Ihrer Community einen klaren Überblick darüber geben, was auf der Pipeline steht und wie sie sich beteiligen können.

Schauen wir uns die zentralisierten und dezentralisierten/verteilten Issue-Boards an und wie sie Ihre Community einbinden könnten.

(os-comms-issue-tracking-purpose-issues)=
### Probleme pro Repository (dezentralisiert/verteilt)

Wenn Ihr Projekt auf mehrere Repositories aufgeteilt ist, dann ist es eine gute Idee, die Probleme, die speziell mit diesem Modul zusammenhängen, innerhalb dieses Repositories zu halten: ein dezentralisiertes System. Dies ermöglicht es deiner Gemeinschaft, ihre Aufmerksamkeit auf das zu richten, was für sie wichtig ist.

Dieser Ansatz enthält mehrere kleinere Issue-Boards für jedes Projektarchiv (oder Modul) innerhalb Ihrer Codebase. Diese Methode hat viele positive Ergebnisse, wie:

- Das Volumen der Probleme ist überschaubarer;
- Die meisten Beitragenden müssen sich nur über Probleme im Zusammenhang mit ein oder zwei Repositories im Klaren sein;
- Mitwirkende können Benachrichtigungen oder Aktualisierungen nur aus den Repositories abonnieren, die sie interessieren;
- Es fühlt sich an wie "Teile und erobere ", mehr Leute arbeiten an mehr Aspekten, um das Projekt als Ganzes voranzubringen.

(os-comms-issue-tracking-purpose-issues-case-study)=
#### Fallstudie: mybinder.org

[Mybinder. rg](https://mybinder.org) ist eine Plattform, die Benutzern ermöglicht, reproduzierbare Analysen und Rechenumgebungen in [Jupyter Notebooks](https://jupyter-notebook.readthedocs.io/en/stable/) über die Cloud miteinander zu teilen. Dieses Projekt ist auf eine Reihe von verschiedenen Repositories verteilt, jedes einzelne ein einzelnes Werkzeug, das isoliert von den anderen verwendet werden kann. Diese sind:

- [repo2docker](https://github.com/jupyter/repo2docker),
- [JupyterHub für Kubernetes](https://github.com/jupyterhub/zero-to-jupyterhub-k8s),
- [BinderHub](https://github.com/jupyterhub/binderhub).

Es gibt auch einige Werkzeuge im Jupyter-Ökosystem, die nur schwach mit Binder verbunden sind. Werkzeuge, zu denen Project Binder verwendet und Personen, die mit Binder verbunden sind, tragen dazu bei, aber auch andere nicht verwandte Gemeinschaften. Solche Werkzeuge sind [JupyterHub](https://github.com/jupyterhub/jupyterhub) und [KubeSpawner](https://github.com/jupyterhub/kubespawner).

Jede dieser Repositories enthält Hunderte von Problemen, die die laufende Arbeit verfolgen, die von der Community durchgeführt wird und die zukünftigen Anweisungen für jedes zu ergreifende Projekt umfassen.

Können Sie sich vorstellen, dass Sie versuchen wollen, all diese Fragen an einen Ort zu bringen? Es wäre sehr schwierig, wenn nicht gar unmöglich. für jemanden, der sucht, was er sucht, und würde ein sehr cleveres Kennzeichnungsschema sowie Anweisungen zum Filtern nach Tag benötigen.

In der Erfahrung des Project Binder Teams tragen die meisten Community-Mitglieder zu nur einem oder vielleicht zwei dieser Projekte bei. Daher hat der konsolidierte Zugang zu allen Fragen für alle Arbeitsbereiche keine hohe Priorität für ihre Gemeinschaft.

Sie stellen fest, dass die verteilte Fehlerverfolgung es den Mitgliedern der Gemeinschaft, die nur mit JupyterHub arbeiten können, ermöglicht, bequem beizutragen, ohne dass sie alles kennen müssen, was in den Betrieb von [mybinder geht. rg](https://mybinder.org).

(os-comms-issue-tracking-purpose-issues-case-centralised-issue)=
### Zentralisiertes Issue Repository

Bei einem großen Projekt kann es verlockend sein, alle Ihre Fragen für eine einfachere Verwaltung an einem Ort zusammenzufassen: ein zentralisiertes System. Wenn Sie Probleme verwenden, um einen zentralen Dienst zu verfolgen, persönliche Aufgabenlisten, und Antworten auf Fragen, wie wenn eine Aufgabe hohe Priorität hat oder wenn sie bereits jemand zugewiesen ist, dann ist die Ausgabe von Tracking in einem zentralisierten System eine gute Option und es muss nicht unbedingt an Ihre breitere Gemeinschaft verteilt werden.

Allerdings kann ein solches zentralisiertes System im Hinblick auf die Einbindung in Ihre Gemeinschaft problematisch sein. Wenn Ihre Probleme anderswo liegen, kann dies eine Menge Barrieren für den Zugang für Mitglieder der Gemeinschaft schaffen, wie:

- Probleme sind schwieriger zu entdecken;
- Wenn sie auf einer anderen Plattform gehostet werden (zum Beispiel ist Code auf GitHub aber Probleme sind auf [Asana](https://asana.com/)), das ist ein anderes Werkzeug-Community-Mitglieder lernen müssen, wie sie verwenden;
- Probleme werden vom Code getrennt, auf den sie verweisen.

Ein sehr großer Einfluss auf die Community eines separaten Fehlerbretts ist, dass, wenn jemand Ihr Code Repository besucht, es sieht aus wie ein inaktives Projekt, weil es keine Probleme oder Gespräche gibt, wo der Code gehostet wird. Dies kann dazu führen, dass Community-Mitglieder glauben, dass der Code nicht mehr aktiv entwickelt/betreut/unterstützt wird und dass sie sich für eine andere Codebase oder ein anderes Software-Paket entscheiden.

(os-comms-issue-tracking-comparative-table)=
## Vergleichstabelle

Die folgende Tabelle vergleicht Funktionen von verteilten und zentralen Issue-Repositories für ein Multi-Repository-Projekt.

| Feature                                          |  Zentralisierte Problemrepo  | Verteilte Issue Repos |
|:------------------------------------------------ |:----------------------------:|:---------------------:|
| Globale Problemsuche                             |              ✅               |                       |
| Gehostet von der gleichen Plattform wie der Code |     ❓(nicht garantiert)      |           ✅           |
| Nach Repository filtern                          |      ❓(Power-Benutzer*)      |           ✅           |
| Abonnieren Sie relevante Updates                 | :frage_mark:(Power-Benutzer) |           ✅           |
| Einfach zu entdecken                             |                              |           ✅           |
| Mit der Codebase verbunden                       |                              |           ✅           |
| Erscheint der Gemeinschaft aktiv                 |                              |           ✅           |
| Verwaltbare Lautstärke                           |                              |           ✅           |

*Power User = Dies sind Leute, die bereits mit einer Plattform vertraut sind, um die Gotchas und Tricks zu kennen, die ihre Erfahrung effizienter machen

## Weiterlesen

- Blogbeitrag vergleicht den Komfort und die Nähe von Mailinglisten und Foren: <https://psychcentral.com/blog/mailing-lists-versus-forums-community-convenience-closeness/>
- Blogbeitrag von [Tim Head](https://github.com/betatim):  <https://betatim.github.io/posts/thoughts-on-collective-thinking/>
