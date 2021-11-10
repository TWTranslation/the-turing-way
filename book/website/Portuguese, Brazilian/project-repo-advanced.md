# Estrutura Avançada para Análise de Dados

## Nível de Habilidade Pré-requisitos/recomendados

| Pré-requisito                                | Importância | Observações                                          |
| -------------------------------------------- | ----------- | ---------------------------------------------------- |
| {ref}`Controle de Versão<rr-vcs>`      | Útil        | Conhecimento de usar o git para controle de versão   |
| {ref}`Pesquisa Aberta<rr-open>`        | Útil        | Componentes são parte do compêndio                   |
| {ref}`Ambientes Reproduíveis<rr-renv>` | Útil        | Pode ser usado para tornar o compendium reprodutível |

## Summary

Ao planejar um estudo de pesquisa, um componente crucial e muitas vezes esquecido é a configuração de um repositório. Nesta seção, serão delineados os benefícios e considerações de como projetar um repositório, junto com um exemplo de estrutura e recursos adicionais para guiar seu fluxo de trabalho.

Os pré-requisitos para este capítulo podem variar consoante as necessidades organizacionais de um projeto. Criar um repositório com um simples layout de projeto de pesquisa pode exigir um conhecimento técnico mínimo (como gerenciar apenas dados de entrada e resultados de saída). Enquanto isso, podem ser necessários layouts avançados de repositório para projetos mais complicados (como projetos com dependências de outros projetos).

## Fundo

Um repositório (ou um "repositório") é um local de armazenamento para o seu projeto de pesquisa. Um repositório pode conter uma série de objetos digitais e pode ser usado para armazenar seu projeto usando plataformas online como o GitHub. O objetivo de um repositório é organizar seu projeto de tal forma que ele seja acessível para outros e eficiente de utilização.

Até agora, vimos os principais documentos que se deve adicionar ao iniciar ou configurar um repositório de projeto. Se você estiver seguindo junto, seu projeto deve conter os seguintes arquivos:

```
Pasta do Projeto/
── CODE_OF_CONDUCT          <- Código de Conduta para projetos da comunidade
── CONTRIBUTING             <- Guia de contribuição para colaboradores
─ LICENSE                  <- licença de software
── . .                      <- quaisquer outros arquivos que você possa ter adicionado para o seu projeto
─ LEIA-ME. d                <- informações sobre o repositório
```

Neste subcapítulo, descrevemos os benefícios e considerações de projetar um repositório, juntamente com um exemplo de estrutura e recursos adicionais para guiar seu fluxo de trabalho.

```{note}
O principal benefício de projetar seu repositório adicionando intencionalmente documentação, recursos e informações relevantes permitem criar uma infraestrutura para pesquisa ética, aberta e de alta qualidade na fase de busca.
```

## Principais considerações

Ao compartilhar seus recursos por meio do repositório, considere os seguintes aspectos da reprodutibilidade em sua pesquisa:

- Transparência e abertura
- Sistema de controle de versão (nenhum outro arquivo como final_v1_FINAL.R, final_v2_FINAL.R, ...)
- Faça com que seja fácil navegar para que você economize tempo para todos os envolvidos
- Considere {ref}`aspectos pd-overview-repro`
- Certifique-se de fornecer detalhes suficientes para que outros possam desenvolver o seu trabalho

## Principais Recomendações

Sempre considere projetar seu projeto para colaboração adicionando documentos-chave que descrevam objetivos, visão, roteamento, contribuição e processo de comunicação conforme descrito em subcapítulos anteriores).
- Inclua detalhes no {ref}`README arquivo<pd-project-repo-readme>`descrevendo _o que_ o repositório é e _como_ navegá-lo
- Forneça visão, objetivos e roteiro sempre que possível (veja [o roteiro de desenvolvimento do Kamran Ahme](https://github.com/kamranahmedse/developer-roadmap) por exemplo)
- Estrutura geral deve separar entrada (dados), métodos (scripts) e saída (resultados, números, manuscritos)
- Especifique o que não deve ser rastreado no arquivo `.gitignore` , como arquivos confidenciais/privados, conjunto de dados grande ou notas pessoais
- Inclua informações em seu ambiente computacional {ref}`Ambientes Reproduíveis<rr-renv>` para garantir a reprodutibilidade (isso também pode ser especificado no README)

## Exemplo da estrutura do repositório

### Exemplo para um projeto de pesquisa

Aqui estão a sugestão de arquivos e pastas que um projeto de pesquisa deve ter.

```
Pasta do Projeto/
── docs                     <- documentação
─── codelist.txt 
── project_plan.txt
── ...
├─── deliverables.txt
── dados
── raw/
── my_data. sv
── clean/
── clean/
named@@5─ data_clean. sv
── analise                 <- scripts
── meu_script.
─── resultados                  <- saída da análise     
── figuras
── . itignore               <- arquivos excluídos do controle de versão do git 
─ installing.                <- configuração de ambiente
── CODE_OF_CONDUCT          <- Código de Conduta para projetos da comunidade
── CONTRIBUTING             <- Guia de Contribuição para colaboradores
── LICENSE                  <- licença de software
─ README. d                <- informações sobre o relatório de repositório
── . d                <- relatório do projeto
```

### Exemplo com cada possível pasta

Este exemplo mostra arquivos diferentes e diretório que um projeto pode conter ao criar um aplicativo de software ou ferramentas de engenharia de pesquisa.

```
Pasta do Projeto/                        
── analise                 <- scripts
── meu_script.
── build                    <- arquivos construídos, Makefile
─ debugar
├─ release
── data
├── raw /
├── raw / 
 ── meu_data. sv
├── limpo/
── data_clean. sv
── docs                     <- documentação
── codelist . xt 
── gerenciamento de projeto       <- documentos relacionados a gerenciamento de projetos
── comunicação. d
├── pessoas.md
── project-report.md
├── ferramentas. d
── res                      <- recursos estáticos (imagens e arquivos de áudio)
── figuras
── . itignore               <- arquivos excluídos do controle de versão do git 
── CODE_OF_CONDUCT          <- Código de Conduta para projetos da comunidade
─ CONTRIBUTING             <- Guia de Contribuição para colaboradores
─ lib                      <- dependências (componentes compartilhados que podem ser usados através de um aplicativo ou em outros projetos. código que suporta a aplicação de núcleo)
── logs. xt                 <- histórico de todas as principais atualizações, como lançamentos de recursos, correção de erro, atualiza
── exemplo                  <- aplicação de exemplo de código
── LICENSE                  <- licença de software
── ambiente. ml          <- configuração de ambiente anaconda   
─ instale.                <- Configuração de ambiente R
require─ requisitos. xt         <- configuração do ambiente python
── runtime. xt              <- R em configuração do binder
── relatório. d                <- relatório de análise
─ README. d                <- informações sobre o repo
── src                      <- arquivos de origem
─ test                     <- testes de unidade  
```

## Recursos

### Pacotes R e Python

| R                                                                 | Python                                                       |
| ----------------------------------------------------------------- | ------------------------------------------------------------ |
| [rrtools](https://annakrystalli.me/rrresearch/10_compendium.html) | [compendium-dodo](https://pypi.org/project/compendium-dodo/) |
| [modelo](https://github.com/Pakillo/template)                     | [css-compendium](https://pypi.org/project/ccs-compendium/)   |
| [rcompendia](https://github.com/FRBCesab/rcompendium)             |                                                              |
| [refazer](https://github.com/richfitz/remake)                     |                                                              |

### format@@0 Curated Examples of GitHub Repositories

- [_O projeto Repo do Caminho de Turing_](https://github.com/alan-turing-institute/the-turing-way)
- [Repositório de projeto Jupyter Book](https://github.com/executablebooks/jupyter-book)
- [Repositório do Pacote Pandas](https://github.com/pandas-dev/pandas)
- [Repositório do Editor de Texto Atom](https://github.com/atom/atom)

Para mais detalhes, siga o {ref}`projeto-repo-recomendações-avançado`.
