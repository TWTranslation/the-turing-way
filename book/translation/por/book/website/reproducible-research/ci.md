(rr-ci)=
# Integração contínua

| Pré-requisito                                                                                   | Importância | Observações                                                                                                                                  |
| ----------------------------------------------------------------------------------------------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------------- |
| [Experimente com a linha de comando](https://programminghistorian.org/en/lessons/intro-to-bash) | Necessário  | A integração contínua seguirá as instruções da linha de comando                                                                              |
| {ref}`Controle da versão<rr-vcs>`                                                         | Necessário  | Integração contínua é executada toda vez que um novo _commit_ é feito no seu projeto                                                         |
| {ref}`Reprodutíveis ambientes computacionais<rr-renv>`                                    | Necessário  | A integração contínua executa seus testes em um computador separado (geralmente na nuvem), então você precisa configurá-lo da mesma maneira. |
| {ref}`Testando<rr-testing>`                                                               | Muito útil  | Integração contínua _testa_ se algo importante foi alterado quando você faz uma alteração no seu projeto                                     |
## Summary

Integração contínua (CI) é a prática de integração principal das alterações a um projeto feito por indivíduos versão compartilhada frequentemente (geralmente várias vezes por dia). O software de CI também é normalmente usado para identificar quaisquer conflitos e bugs que são introduzidos por mudanças, portanto são encontrados e fixados mais cedo, minimizando o esforço necessário para o fazer. Executar testes regularmente também evita que os humanos precisem fazer isso manualmente. Ao sensibilizar os usuários para erros tão cedo quanto possível pesquisadores (se o projeto é um projeto de pesquisa) não desperdice muito tempo fazendo trabalho que pode precisar ser jogado fora, o que pode ser o caso se os testes forem executados com pouca frequência e se os resultados forem produzidos com base em código defeituoso.

```{figure} ../figures/continuous-integration-may19.jpg
---
height: 500px
nome: continue-integração-may19
alt: Um esboço mostrando como a integração contínua ajuda os desenvolvedores a planejarem projetar, integrar código a um repositório compartilhado e, em seguida, observar a influência de quaisquer mudanças.
---
_A Turing Way_ ilustração de projeto por Scriberia. Usado sob uma licença CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

## Como isso irá ajudá-lo/por que isso é útil

CI tem uma série de principais benefícios:

- Ajuda erros a serem encontrados cedo, minimizando seu dano e tornando-os mais fáceis de corrigir
- Mantém os colaboradores do projeto atualizados com o trabalho um do outro para que possam se beneficiar dele o mais rápido possível
- Encoraja os usuários a escrever testes
- Automatize a execução de testes
- Garante que os testes são realizados com frequência
