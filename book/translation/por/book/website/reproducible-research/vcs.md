(rr-vcs)=
# Controle de Versão

(rr-vcs-prerequisites)=
## Pré-requisitos

| Pré-requisito                                                                                   | Importância | Observações |
| ----------------------------------------------------------------------------------------------- | ----------- | ----------- |
| [Experimente com a linha de comando](https://programminghistorian.org/en/lessons/intro-to-bash) | Útil        |             |

**Nível de Habilidade Recomendado**: _Iniciante-Intermediário_

(rr-vcs-sumy)=
## Summary

Não importa como seu grupo é organizado, o trabalho de muitos contribuidores precisa ser gerenciado em um único conjunto de documentos de trabalho compartilhados. O controle de versão é uma abordagem para gravar alterações feitas em um arquivo ou conjunto de arquivos ao longo do tempo, para que você e seus colaboradores possam acompanhar seu histórico revisar quaisquer alterações e reverter ou voltar para versões anteriores. A gestão de alterações ou revisões de qualquer tipo de informação feita em um arquivo ou projeto se chama versionamento.

Neste capítulo, discutimos as melhores práticas que são relevantes, independentemente dos instrumentos. As práticas de versionamento vêm principalmente do gerenciamento de mudanças nos repositórios de código. No entanto, na realidade, você pode usar o controle de versão para praticamente qualquer tipo de arquivo num computador. Por exemplo, ao escrever um papel com vários colaboradores, o controle de versão pode ajudar a controlar o que mudou, quem os alterou e quais atualizações foram feitas.

Diferentes sistemas de controle de versão podem ser usados em um programa com uma interface gráfica, aplicações baseadas em navegadores da web ou ferramentas de linha de comando. Todos nós vimos uma abordagem simples de versionamento de arquivo em que diferentes versões de um arquivo são armazenadas com um nome diferente. Ferramentas como Google Drive e Dropbox oferecem plataformas para atualizar arquivos e compartilhá-los com outros em tempo real, de forma colaborativa. Existe um sistema de controle de versão mais sofisticado em ferramentas como [Google docs](https://docs.google.com/) ou [HackMD](http://hackmd.io/). Estes permitem que os colaboradores atualizem arquivos enquanto armazenam cada versão no seu histórico de versões (discutiremos isso em detalhes). Sistemas avançados de controle de versão (VCS) como [Git](https://en.wikipedia.org/wiki/Git), [Mercurial](https://www.mercurial-scm.org/), e [SVN](https://subversion.apache.org/) fornecem ferramentas muito mais poderosas.

Este capítulo visa abranger os princípios gerais subjacentes a todos os sistemas avançados de controlo de versões e as melhores práticas aplicáveis a todos estes sistemas. Discutimos muitas ferramentas e recursos; no entanto, incentivamos os leitores a usar recursos que são úteis para o seu trabalho e ferramentas com as quais estão confortáveis. A maioria das instruções dadas neste capítulo também serão direccionadas para o Git, que é mais frequentemente usado pelos pesquisadores, e um serviço de hospedagem de repositório Git baseado na web, o [GitHub](https://github.com/), que facilita as colaborações on-line.

Mais tarde, neste capítulo, discutimos também o controle de versão de dados, que é aplicado para manter o controle de revisões de grandes quantidades de dados, especialmente quando trabalha em colaboração. É útil saber que os dados podem ser voláteis e que a sua versão pode melhorar a reprodutibilidade das suas análises científicas.

```{figure}  ../figures/project-history.jpg
---
nome: história do projeto
alt: Contraste no gerenciamento de histórico do projeto. À esquerda - escolha entre arquivos ambíguos nomeados. À direita - escolha entre versões sucessivas (de V1 a V6).
---
_A Turing Way_ ilustração de projeto por Scriberia. Usado sob uma licença CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-vcs-útil)=
## Motivação e fundo

O controle de versão nos ajuda a entender as mudanças que fizemos no passado ou por que fizemos uma análise específica da forma como fizemos isso, mesmo semanas ou meses depois. Com a ajuda de comentários e mensagens de commit, cada versão pode explicar quais alterações ela contém em comparação com as versões anteriores. Isso é útil quando compartilhamos nossa análise (não apenas dados), e torná-la auditável ou **reprodutível** - o que é uma boa prática científica.

Um sistema de controle de versão armazena cuidadosamente um histórico de mudanças e quem as fez, então, enquanto ainda é fácil de acessar, o seu diretório de trabalho não está bagunçado pelos detritos das versões anteriores que são necessárias para manter por precaução. Da mesma forma, com controle de versão, não há necessidade de deixar blocos de código comentados caso você precise voltar a uma versão antiga novamente.


Finalmente, o controlo de versões é inestimável para projectos de colaboração, em que diferentes pessoas trabalham no mesmo código simultaneamente e desenvolvem sobre o trabalho uns dos outros. Permite que as mudanças feitas por diferentes pessoas sejam rastreadas e pode automaticamente combinar o trabalho das pessoas enquanto poupa um grande esforço esforçado para fazê-lo manualmente. Usar o controle de versão para seu projeto de pesquisa significa que seu trabalho é totalmente transparente, e porque todas as suas ações são gravadas, permite que outros reproduzam os seus estudos. Além serviços de hospedagem de controle de versão como o {ref}`GitHub<cl-github-novice-motivation>` fornece uma maneira de se comunicar e colaborar de forma mais estruturada. como em pull requests, revisões de código e problemas.
