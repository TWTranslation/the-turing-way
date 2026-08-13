(rr-ci)=

# Integração contínua

| Pré-requisito                                                              | Importance | Notes                                                                                                                                                                           |
| -------------------------------------------------------------------------- | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| {ref}`Experience with the command line<rr-overview-resources-commandline>` | Necessário | A integração contínua seguirá as instruções da linha de comando                                                                                                                 |
| {ref}`Version control<rr-vcs>`                                             | Necessário | Continuous integration runs every time a new _commit_ is made to your project                                                                                                   |
| {ref}`Reproducible computational environments<rr-renv>`                    | Necessário | A integração contínua executa seus testes em um computador separado (geralmente na nuvem), então você precisa configurá-lo da mesma maneira. |
| {ref}`Testing<rr-testing>`                                                 | Muito útil | Continuous integration _tests_ if anything important has changed when you make a change in your project                                                                         |

## Resumo

Integração contínua (CI) é a prática de integração principal das alterações a um projeto feito por indivíduos versão compartilhada frequentemente (geralmente várias vezes por dia). O software de CI também é normalmente usado para identificar quaisquer conflitos e bugs que são introduzidos por mudanças, portanto são encontrados e fixados mais cedo, minimizando o esforço necessário para o fazer. Executar testes regularmente também evita que os humanos precisem fazer isso manualmente. Ao sensibilizar os usuários para erros tão cedo quanto possível pesquisadores (se o projeto é um projeto de pesquisa) não desperdice muito tempo fazendo trabalho que pode precisar ser jogado fora, o que pode ser o caso se os testes forem executados com pouca frequência e se os resultados forem produzidos com base em código defeituoso.

```{figure} ../../figures/continuous-integration-may19.*
---
height: 500px
name: continuous-integration-may19
alt: A sketch showing how continuous integration helps developers plan, design, integrate code into a shared repository, and then observe the influence of any changes.
---
_The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Motivação e Antecedentes

CI tem uma série de principais benefícios:

- Ajuda erros a serem encontrados cedo, minimizando seu dano e tornando-os mais fáceis de corrigir
- Mantém os colaboradores do projeto atualizados com o trabalho um do outro para que possam se beneficiar dele o mais rápido possível
- Encoraja os usuários a escrever testes
- Automatize a execução de testes
- Garante que os testes são realizados com frequência
