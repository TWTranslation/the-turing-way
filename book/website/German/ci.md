(rr-ci)=
# Kontinuierliche Integration

| Voraussetzung                                                                                | Bedeutung      | Notizen                                                                                                                                                                    |
| -------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Erfahrung mit der Kommandozeile](https://programminghistorian.org/en/lessons/intro-to-bash) | Notwendig      | Kontinuierliche Integration folgt den Befehlszeilenanweisungen                                                                                                             |
| {ref}`Versionskontrolle<rr-vcs>`                                                       | Notwendig      | Die kontinuierliche Integration läuft jedesmal, wenn ein neuer _Commit_ an Ihrem Projekt gemacht wird                                                                      |
| {ref}`Reproduzierbare Rechenumgebungen<rr-renv>`                                       | Notwendig      | Die kontinuierliche Integration führt Ihre Tests auf einem separaten Computer (normalerweise in der Cloud) durch, so dass Sie sie auf die gleiche Weise einrichten müssen. |
| {ref}`Test<rr-testing>`                                                                | Sehr hilfreich | Kontinuierliche Integration _testet_ wenn sich etwas Wichtiges geändert hat, wenn Sie eine Änderung in Ihrem Projekt vornehmen                                             |
## Summary

Kontinuierliche Integration (CI) ist die Praxis, Änderungen an einem Projekt von Einzelpersonen in ein Hauptprojekt zu integrieren, häufig geteilte Version (meist mehrmals pro Tag). CI-Software wird in der Regel auch verwendet, um Konflikte und Fehler zu identifizieren, die durch Änderungen ausgelöst werden so dass sie gefunden und frühzeitig repariert werden, wodurch der dafür erforderliche Aufwand minimiert wird. Durch regelmäßige Tests werden auch Menschen davor bewahrt, dies manuell tun zu müssen. Indem die Benutzer so früh wie möglich auf Fehler aufmerksam gemacht werden (wenn das Projekt ein Forschungsprojekt ist) verschwenden Sie nicht viel Zeit mit der Arbeit, die möglicherweise weggeworfen werden muss. was der Fall sein kann, wenn Tests selten durchgeführt werden und Ergebnisse mit fehlerhaftem Code erzeugt werden.

```{figure} ../figures/continuous-integration-may19.jpg
---
Höhe: 500px
Name: Continuous-Integration-may19
alt: Eine Skizze, die zeigt, wie kontinuierliche Integration Entwicklern beim Planen hilft entwerfen, Code in ein gemeinsames Repository integrieren und dann den Einfluss von Änderungen beobachten.
---
_The Turing Way_ Projekt Illustration von Scriberia. Wird unter einer CC-BY 4.0 Lizenz verwendet. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Wie das dir helfen wird/ warum dies nützlich ist

CI hat eine Reihe von wichtigen Vorteile:

- Hilft Fehler frühzeitig zu finden, minimiert ihren Schaden und macht sie leichter zu beheben
- Hält Projektmitarbeiter auf dem Laufenden über die Arbeit des jeweils anderen, so dass sie so schnell wie möglich davon profitieren können
- Ermutigt Benutzer zum Schreiben von Tests
- Automatisiert das Ausführen von Tests
- Sicherstellen dass Tests regelmäßig ausgeführt werden
