(rr-binderhub)=
# BinderHub

## Voraussetzungen/empfohlene Fertigkeitsstufe

| Voraussetzung                                    | Bedeutung    |
| ------------------------------------------------ | ------------ |
| {ref}`Versionskontrolle<rr-vcs>`           | Sehr wichtig |
| {ref}`Reproduzierbare Umgebungen<rr-renv>` | Sehr wichtig |

In diesem Kapitel wird [BinderHub](https://binderhub.readthedocs.io/en/latest/index.html)diskutiert, das ist die Cloud-Technologie mit [Binder](https://mybinder.readthedocs.io/en/latest/). Wir werden die Technologien und Tools abdecken, die BinderHub nutzt und die Ressourcen, die Sie benötigen, um Ihren eigenen BinderHub einzurichten.

Dieses Kapitel richtet sich in erster Linie an Research Software Engineers und IT Services, die einer Gruppe von Forschern einen BinderHub als Dienstleistung anbieten wollen. Obwohl jeder einen BinderHub bauen kann.

```{figure} ../figures/binderhub.jpg
---
Name: binderhub
alt: Eine Darstellung der BinderHub Architektur, die GitHub, repo2docker, docker, jupyterhub und Versand an Kunden in Unternehmen beinhaltet.
---
Illustration über die BinderHub-Architektur.
_The Turing Way_ Projekt-Illustration von Scriberia. Wird unter einer CC-BY 4.0 Lizenz verwendet. DOI: 10.5281/zenodo.3332807.
```

## Motivation

Wenn Sie dieses Kapitel lesen, erhalten Sie ein klareres Bild davon, wie Binderdienste (wie [Mybinder. rg](https://mybinder.org)) funktioniert, die Technologien, die BinderHub betreiben, und wie sie miteinander interagieren. Dieses Kapitel behandelt auch Gründe, warum Sie Ihren eigenen BinderHub bauen könnten, anstatt den öffentlichen Dienst auf mybinder.org zu nutzen.
