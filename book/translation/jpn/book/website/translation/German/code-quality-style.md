(rr-code-style-and-formatting)=
# Code-Stil und Formatierung

Ein Code-Stil ist eine Reihe von Konventionen zum Formatieren von Code. Zum Beispiel, was nennen Sie Ihre Variablen? Verwenden Sie Leerzeichen oder Tabs für Einrücken? Wo bringen Sie Einwände? Durch die konsequente Verwendung des gleichen Stils während des gesamten Codes wird das Lesen vereinfacht. Code, der leicht zu lesen ist, ist sowohl von Ihnen als auch von potenziellen Mitarbeitern leichter zu verstehen. Das Festhalten an einem Programmierstil verringert somit das Fehlerrisiko und erleichtert die Zusammenarbeit im Bereich Software. [Warum Coding Style wichtig ist](http://coding.smashingmagazine.com/2012/10/25/why-coding-style-matters/) ist ein netter Artikel darüber, warum Codierungsstile wichtig sind und wie sie die Software-Qualität erhöhen.

Zum Beispiel [PEP8](https://www.python.org/dev/peps/pep-0008/) ist der am weitesten Python-Code-Stil und [ECMAScript 6](http://es6-features.org/) aka [ES6](http://es6-features.org/) ist die von ECMA International standardisierte Spezifikation fu<unk> r. die Programmierung in Javascript.

Für häufig verwendete Stilanleitungen für verschiedene Programmiersprachen lesen Sie bitte die [Sprachanleitungen](https://guide.esciencecenter.nl/best_practices/language_guides/languages_overview.html). Google hat auch einen [Style-Guide](https://code.google.com/p/google-styleguide/) für viele Sprachen, die in Open-Source-Projekten verwendet werden, die von Google stammen.

## Automatische Formatierung

Es gibt zahlreiche Werkzeuge, um Code automatisch so zu formatieren, dass er einem bestimmten Stil folgt. Automatische Formatierung ermöglicht eine höhere Code-Qualität, insbesondere wenn Sie in einem Team zusammenarbeiten und andere Leute müssen sich den Code ansehen, den Sie geschrieben haben. Viele Entwickler und Organisationen unterhalten Standards für die Codeformatierung wie **2-space** oder **4-space Einrückung**. Diese zu verwenden ist sehr empfehlenswert, da sich die Wahrscheinlichkeit vervielfacht, Fehler zu finden (falls vorhanden).

[EditorConfig](https://editorconfig.org) ist ein sprachunabhängiges Werkzeug, das hilft, konsistente Whitespace-Stile für mehrere Personen zu erhalten, die in verschiedenen Editoren am selben Projekt arbeiten. Die meisten Editoren unterstützen EditorConfig entweder nativ oder über ein Plugin. Fast alle verbreiteten IDEs und Text-Editoren unterstützen die automatische Codeformatierung beim Schreiben. Zum Beispiel: [JetBrains IDE Suite](https://www.jetbrains.com/products.html#), [VSCode](https://code.visualstudio.com/) und [Atom](https://atom.io/).

Zusätzlich gibt es viele sprachspezifische Tools zur automatischen Formatierung von Code nach einem bestimmten Stil. Beachten Sie, dass Editoren diese Werkzeuge oft direkt aus der Editierumgebung heraus verwenden.

<table spaces-before="0">
  <tr>
    <th>
      Sprache
    </th>
    
    <th>
      Formatierer
    </th>
  </tr>
  
  <tr>
    <td>
      C/C++
    </td>
    
    <td>
      <a href="http://www.gnu.org/software/indent/">GNUIndent</a>, <a href="http://sourceforge.net/projects/gcgreatcode/">Großartiger Code</a>
    </td>
  </tr>
  
  <tr>
    <td>
      Python
    </td>
    
    <td>
      <a href="https://black.readthedocs.io">Schwarz</a>, <a href="https://pypi.org/project/yapf/">yapf</a>
    </td>
  </tr>
  
  <tr>
    <td>
      Javascript
    </td>
    
    <td>
      <a href="https://beautifier.io/">beautifer.io</a>
    </td>
  </tr>
  
  <tr>
    <td>
      Jalta
    </td>
    
    <td>
      <a href="https://github.com/google/google-java-format">Google Java Format</a>, <a href="http://www.jindent.com/">JIndent</a>
    </td>
  </tr>
  
  <tr>
    <td>
      PHP
    </td>
    
    <td>
      <a href="http://sourceforge.net/projects/phpstylist/">phpStylist</a>
    </td>
  </tr>
  
  <tr>
    <td>
      Perl
    </td>
    
    <td>
      <a href="http://perltidy.sourceforge.net/">PerlTidy</a>
    </td>
  </tr>
  
  <tr>
    <td>
      シェル/バッシュ
    </td>
    
    <td>
      <a href="http://www.bolthole.com/AWK.html">Shelleinzug</a>
    </td>
  </tr>
  
  <tr>
    <td>
      CSS
    </td>
    
    <td>
      <a href="http://csstidy.sourceforge.net/">CSSTidy</a>
    </td>
  </tr>
  
  <tr>
    <td>
      HTML
    </td>
    
    <td>
      <a href="http://tidy.sourceforge.net/"><unk></a>
    </td>
  </tr>
</table>

**Schnelltipp**: Wenn Sie VS Code als Hauptexteditor verwenden, können Sie die automatische Codeformatierung direkt in Ihren Browser aktivieren. Öffnen Sie Ihre Einstellungsseite im JSON-Modus und fügen Sie folgende Zeile hinzu:

```
"editor.formatOnSave": wahr,
```

## オンライン-Dionste zur Qualita<unk> tskontrolle von Software

Es gibt mehrere Webdienste, die Code analysieren und die Qualität des Codes sichtbar machen. In der Regel führen diese Dienste ein oder mehrere statische Codeanalysewerkzeuge aus, die auch von der Kommandozeile aus verwendet oder auf Ihrem eigenen Computer in Ihren Editor integriert werden können. Die Verwendung eines Code-Qualitätsdienstes, der in ein GitHub/GitLab Repository integriert wird, wird dringend empfohlen, da es Qualitätsprobleme in Pull-Requests erkennen und kommunizieren kann.

Code-Qualitätsanalysedienste sind Websites, die oft folgende Funktionen bieten:

- Analysieren Sie Ihren Code nach dem Drücken auf GitHub/GitLab
- Normalerweise kostenlos für Open-Source-Projekte
- Unterstützen Sie mehrere Programmiersprachen, aber nicht jede Sprache wird die gleichen Funktionen haben
- Bewertung oder Punktzahl für die Qualität des gesamten Codes im Projektarchiv
- Liste der Probleme mit dem Code, nach Schwere sortiert
- Üben Sie nach unten an den Ort des Tickets
- Standardliste der Prüfungen, die der Diensteanbieter für die beste Praxis findet
- Kann so konfiguriert werden, dass die Checkliste strenger oder entspannter wird
- Kann so konfiguriert werden, dass Dateien oder Erweiterungen ignoriert werden
- Kann eine Konfigurationsdatei aus dem Repository lesen
- Verfolgen Sie Probleme im Laufe der Zeit und senden Sie Warnungen, wenn die Qualität verschlechtert
- Optional Berichte über Code-Abdeckung, die von einem CI-Build generiert wurden
- Automatisch das Projektarchiv bereitstellen und eine Vorschau zur Überprüfung vor der endgültigen Veröffentlichung erzeugen.

Eine Liste der Optionen finden Sie unter [shields.io](https://shields.io/category/analysis) oder [dieser Liste der Dienste, die für Open-Source-Projekte kostenlos sind](https://github.com/ripienaar/free-for-dev#code-quality).
