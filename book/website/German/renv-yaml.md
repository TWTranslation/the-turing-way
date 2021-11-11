(rr-renv-yaml)=
# YAML

YAML ist eine Einrückungs-basierte Markup-Sprache, die sowohl leicht zu lesen als auch einfach zu schreiben ist. Viele Projekte verwenden es für Konfigurationsdateien wegen seiner Lesbarkeit, Einfachheit und guter Unterstützung für viele Programmiersprachen. Es kann für viele Dinge verwendet werden, einschließlich der Definition von Rechenumgebungen, und ist gut integriert in [GitHub Aktionen](https://travis-ci.org/), , was im Kapitel {ref}`rr-ci-github-actions` behandelt wird.

(rr-renv-yaml-files)=
## YAML-Dateien

Eine YAML-Datei, die eine Rechenumgebung definiert, könnte so aussehen:

```
# Definieren Sie das Betriebssystem als Linux
os: Linux

# Verwenden Sie die Xeniale Distribution von Linux
dist: xenial

# Benutzen Sie die Programmiersprache Python
Sprache: python

# Version von Python 3 verwenden.
python: 3.2

# Verwenden Sie das Python-Paket numpy und verwenden Sie Version 1. 6.1
Pakete:
  Nummer:
    Version: 1.16.1
```

Beachten Sie, dass Kommentare mit einem `#` hinzugefügt werden können.

(rr-renv-yaml-syntax)=
## YAML-Syntax

Ein YAML-Dokument kann aus den folgenden Elementen bestehen.

(rr-renv-yaml-syntax-scalars)=
### Skalare

Skalare sind gewöhnliche Werte: Zahlen, Zeichenketten, Booleans.

```
number-value: 42
floating-point-value: 3.141592
boolean-value: true

# strings können sowohl 'single-quoted' als auch 'double quoted' sein
string-value: 'Bonjour'
```

YAML-Syntax erlaubt aus bequemen Gründen auch nicht zitierte String-Werte:

```
unzitierter String: Hallo Welt
```
(rr-renv-yaml-syntax-lists)=
### Listen und Wörterbücher

Listen sind Sammlungen von Elementen:

```
jedis:
  - Yoda
  - Qui-Gon Jinn
  - Obi-Wan Kenobi
  - Luke Skywalker
```

Jedes Element der Liste ist eingerückt und beginnt mit einem Bindestrich und einem Leerzeichen.

Wörterbücher sind Sammlungen von `Schlüssel: Wert` Zuordnungen. Alle Schlüssel sind bei Groß- und Kleinschreibung unterschiedlich.

```
jedi:
  Name: Obi-Wan Kenobi
  home-planet: Stewjon
  species: human
  master: Qui-Gon Jinn
  height: 1,82m
```

Beachten Sie, dass ein Leerzeichen nach dem Doppelpunkt obligatorisch ist.

(rr-renv-yaml-syntax-gotchas)=
### YAML Gotchas

Aufgrund des Formats, das einfach zu schreiben und zu lesen ist, gibt es einige Unklarheiten in YAML.

- **Sonderzeichen in Zeichenketten ohne Anführungszeichen:** YAML hat mehrere Sonderzeichen, die nicht in Zeichenketten ohne Anführungszeichen verwendet werden dürfen. Zum Beispiel wird das Parsen des folgenden Beispiels fehlschlagen:
  ```
  unzitierter String: Lassen Sie mich hier einen Doppelpunkt angeben: Oops
  ```
  Zitat der String-Wert macht diesen Wert eindeutig:
  ```
  unzitierter String: "Lasst mich hier einen Doppelpunkt setzen"
  ```
  Im Allgemeinen sollten Sie alle Zeichenketten zitieren, die eines der folgenden Zeichen enthalten: `[] {} : > |`.
- **Tabs gegen Leerzeichen für Einrückung:** _nicht_ verwenden Tabs für Einrückung. Obwohl das resultierende YAML immer noch gültig sein kann, kann dies eine Quelle vieler subtiler Fehler sein. Benutze einfach Leerzeichen.

(rr-renv-yaml-Umgebung)=
## Wie man Yaml verwendet, um Computerumgebungen zu definieren

Aufgrund ihrer Einfachheit können YAML-Dateien handgeschrieben werden. Alternativ können sie automatisch generiert werden, wie im Unterkapitel {ref}`rrr-renv-package` beschrieben. Aus einer YAML-Datei kann eine Rechenumgebung auf einige Arten repliziert werden.

- **Manuell.** Das kann manuell gemacht werden, indem die angegebenen Pakete sorgfältig installiert werden. Weil YAML-Dateien auch Betriebssysteme und Versionen angeben können, die mit denen der Person, die versucht, die Umgebung zu replizieren, übereinstimmen können oder nicht dies kann die Verwendung von {ref}`rrr-renv-vm` erfordern.

- **Über Paketverwaltungssysteme wie Conda.** Wie {ref}`diskutiert hat <rr-renv-package>`, sowie die Möglichkeit, YAML-Dateien aus rechenbaren Umgebungen zu generieren, Conda kann auch Rechenumgebungen aus YAML-Dateien erzeugen.

(rr-renv-yaml-security)=
## Sicherheitsprobleme

Es besteht ein inhärentes Risiko, Dateien herunterzuladen/zu verwenden, die Sie nicht auf Ihren Computer geschrieben haben und es ist möglich, bösartigen Code in YAML-Dateien einzubinden. Laden Sie YAML-Dateien nicht oder generieren Sie daraus Rechenumgebungen, es sei denn, Sie vertrauen deren Quelle.
