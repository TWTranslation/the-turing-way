(rr-licensing-software)=
# Softwarelizenzen

Eine Softwarelizenz regelt den Umfang der Nutzung oder Weitergabe von Software, mit oder ohne Softwaredokumentation.

Es gibt viele Softwarelizenzen. Viele von ihnen erlauben dem Lizenznehmer sehr wenig, aber einige geben Ihnen mehr Freiheit, die lizenzierte Software zu verwenden und weiterzuverwenden.

Die [https://choosealicense.com/](https://choosealicense.com/) Website bietet Ihnen einen einfachen Mechanismus, der Ihnen hilft, die beste Lizenz für Ihr Projekt auszuwählen.

Um aus dieser Sorte etwas Sinn zu machen, können wir sie wie folgt kategorisieren.

## Lizenzkategorien

<table>
    <thead>
        <tr>
            <th colspan="3">Kostenlos</th>
            <th rowspan="3">Proprietär</th>
        </tr>
        <tr>
            <th colspan="2">Links kopieren</th>
            <th rowspan="2">Zulässig</th>
        </tr>
        <tr>
            <th>Stark</th>
            <th>Schwache</th>
        </tr>
    </thead>
    <tbody>
        <tr>
        <td>GPL<sup>1</sup> CDDL<sup>2</sup></td>
        <td>LGPL<sup>3</sup> MPL<sup>4</sup></td>
        <td>BSD<sup>5</sup> MIT<sup>6</sup> Apache</td>
            <td>Nur Forschung: Keine&nbsp;-Kopie, keine&nbsp;-Änderung</td>
        </tr>
    </tbody>
    <caption>
      <div class="footnote">
        <sup>1</sup>GPL: GNU General Public License <sup>2</sup>CDDL: Common Development and Distribution License <sup>3</sup>LGPL: GNU Lesser General Public License <sup>4</sup> MPL: Mozilla Public License <sup>5</sup> BSD: Berkeley Software Distribution <sup>6</sup> MIT: Massachusetts Institute of Technology
      </div>
      Lizenzen können entweder kostenlos oder Proprietary sein, wobei Freie Lizenzen weiter als Copyleft oder Permissive eingestuft werden.
    </caption>
</table>

(rr-licensing-software-frei)=
## Freie Software

Softwarelizenzen sind entweder frei oder proprietär. Freie Software enthält Lizenzbedingungen, die Ihnen geben ([wie von GNU](https://www.gnu.org/philosophy/free-sw.html) definiert):

* _Freiheit 0_: Die Freiheit, das Programm beliebig auszuführen, für jeden Zweck.
* _Freiheit 1_: Die Freiheit, zu untersuchen, wie das Programm funktioniert, und es zu ändern, so dass es Ihre Rechenleistung macht, wie Sie wollen. Der Zugriff auf den Quellcode ist dafür eine Voraussetzung.
* _Freiheit 2_: Die Freiheit, Kopien weiterzuverteilen, damit du anderen in deiner Gemeinschaft helfen kannst.
* _Freiheit 3_: Die Freiheit, Kopien deiner modifizierten Versionen an andere weiterzugeben. Auf diese Weise können Sie der gesamten Community die Chance geben, von Ihren Änderungen zu profitieren. Der Zugriff auf den Quellcode ist dafür eine Voraussetzung.

Diese vier Freiheiten zusammen neutralisieren das Urheberrecht wirkungsvoll; *Freedoms 0* und *2* lassen Sie die Originalsoftware verwenden und mit anderen teilen. *Freedoms 1* und *3* lassen Sie abgeleitete Werke auf Basis der Software erstellen und mit anderen teilen.

Beachten Sie, dass es absolut akzeptabel ist, Kopien von freier Software, Garantie oder Entwicklungsdienstleistungen zu verkaufen; hier geht es um die Freiheit, Dinge mit der Software zu tun und nicht um ihren Preis.

Es werden noch zwei weitere ähnliche Definitionen verwendet; die [Open Source Definition](https://opensource.org/osd-annotated) des Open Source Instituts und die [Debian Richtlinien für Freie Software](https://www.debian.org/social_contract#guidelines). Die obige Definition der freien Software von Richard Stallman ist die einfachste und prägnanteste und in der Praxis sind die Kategorien, die sie definieren, fast identisch.

Software, die nicht frei ist, ist proprietär. Software, die Sie nicht kopieren oder ändern dürfen, fällt in diese Kategorie, ebenso wie Software mit Nutzungsbeschränkungen, zum Beispiel "Nur für Forschungszwecke" oder "Nur für nicht-kommerzielle Nutzung".

Es gibt einige verwirrend benannte Unterkategorien von proprietärer Software. _Freeware_ ist Software, die ohne Bezahlung kopiert werden kann, aber ohne Quelle kommt und nicht verändert werden kann. _Geteilter Quellcode_ kommt mit Quellen, aber ohne Erlaubnis zu ändern. Keines davon ist im oben genannten Sinne kostenlos.

(rr-licensing-software-derivativ)=
## Derivative Software

Innerhalb der Kategorie freier Software gibt es mehrere Unterkategorien, die sich durch das auszeichnen, was bei der Erstellung von abgeleiteter Software erlaubt ist. Es gibt zwei grundlegende Möglichkeiten, ein abgeleitetes Werk eines Programms oder einer Bibliothek zu erstellen: es zu modifizieren (forking), oder kombinieren Sie es mit einer anderen Software (z.B. mit einer Bibliothek in Ihrem Programm). Natürlich können Sie auch modifizieren und dann kombinieren.

Das Ändern eines Programms führt zu einem neuen Programm, das vom Original abgeleitet wird. Dies ähnelt der Neuauflage eines Lehrbuchs aus dem Original. Sowohl die Original- als auch die modifizierten Versionen sind urheberrechtlich geschützte Werke und beide können lizenziert werden.

Als Beispiel für die Kombination von Software stellen Sie sich ein Programm A vor, das zwei bereits existierende Bibliotheken B und C verwendet. Das komplette Programm A besteht aus Bibliothek B, Bibliothek C, und einige Code-D, die die Bibliotheken verbindet und vielleicht zusätzliche Funktionalität. Jeder dieser vier Elemente ist ein Werk der Urheberschaft mit einer Lizenz. Programm A kann manchmal als "kombinierte Arbeit", "Arbeiten als Ganzes" oder "Größere Arbeit" bezeichnet werden.

Verschiedene Freie Software-Lizenzen stellen unterschiedliche Einschränkungen dar, wie modifizierte Versionen und kombinierte Werke lizenziert werden können.

(rr-licensing-software-permissive)=
## Erlaubte Lizenzen

Wie der Name schon sagt, sind permissive Lizenzen für freie Software die am wenigsten restriktiven. Sie erlauben es Ihnen, die Software unverändert unter dieser Lizenz mit oder ohne Quellcode zu verbreiten. Sie ermöglichen es Ihnen auch, eine modifizierte Version unter einer beliebigen Lizenz zu vertreiben und lassen Sie ein kombiniertes Werk unter jeder Lizenz vertreiben.

Beispiele für bekannte permissive Lizenzen sind die verschiedenen BSD-Lizenzen, die MIT-Lizenz und die Apache License 2.0.

(rr-licensing-software-copyleft)=
## Links kopieren

Copyleft Lizenzen fügen der Lizenzierung von abgeleiteten Werken einige Einschränkungen hinzu. Wie die permissiven Lizenzen lassen sie die Software unverändert unter dieser Lizenz weitergeben. Wenn Sie jedoch ein Binärprogramm verteilen, müssen Sie auch den Quellcode einfügen. Modifizierte Versionen müssen unter der gleichen Lizenz wie das Original vertrieben werden; Sie sind nicht berechtigt, die Lizenz zu ändern.

Bei der Erstellung einer kombinierten Arbeit kann eine weitere Unterscheidung getroffen werden. _Starke_ Copyleft Lizenzen für eine Komponente erfordern, dass ein kombiniertes Werk unter der gleichen Lizenz wie die Komponente lizenziert wird. Im obigen Beispiel ist, wenn Bibliothek B unter einer starken Copyleft-Lizenz wie der GNU GPL vertrieben wird dann muss Programm A unter der gleichen Lizenz vertrieben werden.

_Schwache_ Copyleft Lizenzen erlauben es, das kombinierte Werk (A) unter jeder Lizenz zu verteilen, solange die Quelle für die lizenzierte Komponente (B) auch unter ihrer ursprünglichen Lizenz zur Verfügung gestellt wird. Sie können auch verlangen, dass der Empfänger der kombinierten Arbeit die Module nach dem Modifizieren der Komponente neu verknüpfen kann.

(rr-licensing-software-übersicht)=
## Berechtigungsübersicht

<table>
    <thead>
        <tr>
            <th rowspan="2"></th>
            <th colspan="2">Links kopieren</th>
            <th rowspan="2">Zulässig</th>
            <th rowspan="2">Proprietär</th>
        </tr>
        <tr>
            <th>Stark</th>
            <th>Schwache</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th>Für alles verwenden</th>
            <td>Ja</td>
            <td>Ja</td>
            <td>Ja</td>
            <td>Manchmal</td>
        </tr>
        <tr>
            <th>Private Änderungen</th>
            <td>Ja</td>
            <td>Ja</td>
            <td>Ja</td>
            <td>Selten</td>
        </tr>
        <tr>
            <th>Original verteilen</th>
            <td>Gleiche Lizenz, mit Quelle</td>
            <td>Gleiche Lizenz, mit Quelle</td>
            <td>Gleiche Lizenz, auch binär-only<sup>1</sup></td>
            <td>Selten</td>
        </tr>
        <tr>
            <th>Verteilen geändert</th>
            <td>Gleiche Lizenz, mit Quelle</td>
            <td>Gleiche Lizenz, mit Quelle<sup>2</sup></td>
            <td>Jede Lizenz, auch nur binär</td>
            <td>Selten</td>
        </tr>
        <tr>
            <th>Kombiniert verteilen</th>
            <td>Gleiche Lizenz, mit Quelle</td>
            <td>Jede Lizenz, binäre Hinzufügungen</td>
            <td>Jede Lizenz, auch nur binär</td>
            <td>Selten</td>
        </tr>
    </tbody>
    <caption>
      <div class="footnote">
        <sup>1</sup>Unter einer Lizenz für die MIT-Lizenz <sup>2</sup>LGPL an GPL neu lizenzieren ist erlaubt
      </div>
      Berechtigte Lizenzen gewähren Benutzern die größte Anzahl an Berechtigungen. Copyleft Lizenzen erfordern eine Weitergabe des Originals oder einer modifizierten Quelle, um die gleiche Lizenz zu nutzen, mit schwachen Copyleft Lizenzen die eine andere Lizenz für das kombinierte Werk erlauben. Proprietäre Lizenzen gewähren selten Berechtigungen, die über das Recht zur Nutzung der Software hinausgehen.
    </caption>
</table>

