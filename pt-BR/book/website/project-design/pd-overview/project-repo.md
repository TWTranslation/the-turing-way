(repo-do-projeto)=

# Criando repositórios de projetos

## Pré-requisitos

| Pré-requisito           | Importância |
| ----------------------- | ----------- |
| {ref}`cl-github-novice` | Útil        |

## Resumo

Este capítulo introduz um guia passo a passo sobre como configurar um repositório de projeto.
Especificamente, descrevemos documentos chave que devem ser adicionados ao repositório, a fim de manter a documentação e garantir uma colaboração efetiva.
Nós fornecemos exemplos do repositório GitHub hospedados e mantidos pelos pesquisadores em ciência aberta, no entanto, os princípios são aplicáveis a qualquer repositório on-line liderado por equipe.

## Motivation

Os repositórios de projetos online requerem documentação para que todos os colaboradores sejam informados sobre as atualizações e os contribuidores recebam detalhes que precisam contribuir de forma eficiente.
Documentos compartilhados podem ajudá-lo a transmitir suas ideias a novos ou potenciais colaboradores.
Contribuições podem ir de novas ideias para relatórios de bugs e contribuições reais para código.
As práticas de Ciência Aberta descritas aqui também facilitarão a condução de projetos de código aberto para suas equipes, de forma colaborativa e transparente.

```{figure} ../../../figures/file-management-manual.jpg
---
name: file-management-manual
alt: image shows two people organising files. One person is holdinng up a README file and other person is reading the details to set up the data and analysis files in the drawer
---
Illustration about managing files in a repository.
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

Neste capítulo, descrevemos os seguintes documentos que devem ser adicionados a um repositório de projeto:

- {ref}`Landing Page - README File<pd-project-repo-readme>`
- {ref}`Roadmapping<pd-project-repo-roadmapping>`
- {ref}`Contributor Pathways<pd-project-repo-contributors>`
- {ref}`Participation Guidelines<pd-project-repo-participation>`

(pd-project-repo-licença)=

## Comece adicionando uma licença

Um dos documentos mais importantes para o seu projeto é uma licença.

```{note}
Without a license, all rights are with the author of the code, and that means nobody else can use, copy, distribute, or modify the work without consent.
A license gives this consent.
If you do not have a license for your software, it is effectively unusable by the whole research community.

**See {ref}`rr-licensing` chapter for details**
```

O primeiro arquivo que você pode adicionar ao repositório de projeto é um arquivo 'LICENSE'.
You can select a license type based on the level of freedom you would like to give to your users to use and build upon your project, visit [choosealicense.com](https://choosealicense.com/).
Please follow the {ref}`Licensing Checklist<rr-licensing-checklist>` when adding a license to your project repository.
