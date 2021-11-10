(rr-rdm-fair)=
# Os Princípios do FAIR

Os princípios orientadores do FAIR para gerenciamento de dados científicos e administração {cite:ps}`Wilkinson2016fair` foram desenvolvidos como orientações para melhorar a recuabilidade **F** **Uma**ccessibilidade, **Eu**nteroperabilidade e **R**de eusabilidade dos ativos digitais; tudo isso apoia a reprodutibilidade da investigação. Os princípios FAIR desempenham um papel importante na disponibilização dos seus dados a outros para reutilização.

É muito mais fácil fazer dados FAIR se você planeja fazer isso desde o início do seu projeto de pesquisa. Você pode planejar para isso no seu Plano de Gestão de Dados (DMP) (veja os pontos 4 e 5 do {ref}`capítulo do Plano de Gestão de Dados<rr-rdm-dmp>`).

Embora os princípios de FAIR tenham sido definidos para permitir que máquinas encontrem e utilizem objetos digitais automaticamente, Também melhoram a reutilização dos dados pelos seres humanos. A capacidade dos sistemas computacionais de encontrar, acessar, interoperar e reutilizar dados, com nenhuma ou mínima intervenção humana é essencial na era hoje impulsionada pelos dados. onde os humanos dependem cada vez mais de suporte computacional para lidar com dados como resultado do aumento do volume de [, velocidade vetorial e variedade](https://www.zdnet.com/article/volume-velocity-and-variety-understanding-the-three-vs-of-big-data/). .

Este capítulo proporciona uma visão abstracta e ampla do que são os princípios do FAIR. Como colocar os princípios de FAIR em prática é discutido em outros sub-capítulos ( {ref}`Organização de Dados em Planilhas<rr-rdm-fair>`, {ref}`Documentação e Metadados<rr-rdm-metadata>` e {ref}`Compartilhando e Arquivando Dados<rr-rdm-sharing>`). Você também pode usar o [Guia de Introdução de Boas Vindas](https://f1000researchdata.s3.amazonaws.com/resources/FAIR_Open_GettingStarted.pdf) ou o [Como FAIR](https://howtofair.dk/) site para saber mais sobre os princípios do FAIR e como começar.

```{figure} ../../figures/fair-principles.jpg
---
nome: princípios justos
alt: Ilustração dos princípios do FAIR para mostrar a definição de ser encontrável, acessível, interoperável e reutilizável.
---
_A Turing Way_ ilustração de projeto por Scriberia. Usado sob uma licença CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-rdm-fair-theory)=
## Teoria

Resumindo, os dados do FAIR devem ser:

**Localizável:** O primeiro passo em (re)usar dados é encontrá-los! Os metadados descritivos (informação sobre os dados como palavras-chave) são essenciais.

**Acessível:** Uma vez que o usuário encontre os dados e software eles precisam saber como acessá-los. Os dados podem estar disponíveis abertamente, mas também é possível que sejam necessários procedimentos de autenticação e autorização.

**Interoperável:** Os dados precisam ser integrados com outros dados e interoperar com aplicativos ou fluxos de trabalho.

**Reusável:** Os dados devem estar bem descritos para que possam ser usados, combinados e estendidos em configurações diferentes.

Você pode encontrar uma visão geral mais detalhada dos princípios de [FAIR pelos GO FAIR](https://www.go-fair.org/fair-principles) sobre o que os princípios do FAIR recomendam. Você também pode ler [Um conto de FAIRy](https://doi.org/10.5281/zenodo.2248200) para obter uma explicação compreensível de cada princípio.

Tornar dados "FAIR" não é o mesmo que torná-los "abertos". A acessibilidade significa que existe um procedimento para aceder aos dados. Os dados devem ser tão abertos quanto possível e fechados quanto necessário.

É igualmente importante dizer que os princípios do FAIR são uma aspiração: não definem rigorosamente como se pode alcançar um estado de FAIR. mas descreva uma continuação de recursos, atributos e comportamentos que irão mover um recurso digital para esse objetivo.

Os princípios do FAIR também são aplicados ao software (veja {cite:ps}`Lamprecht2020FAIRsoftware`e {cite:ps}`Hasselbring2020FAIRsoftware`).


(rr-rdm-just-comunidade)=
## Participação da comunidade

Embora começado por uma comunidade que opera na ciência da vida, os princípios do FAIR foram rapidamente adoptados pelos editores, Os financiadores e os programas e sociedades de infra-estruturas pan-disciplinares. Muitos grupos e organizações estão trabalhando para definir orientações e ferramentas para ajudar pesquisadores e outras partes interessadas (como bibliotecários, Os financiadores, editores e trainers) tornam os dados mais FAIR. Se você está interessado em participar dessas comunidades, há duas iniciativas globais que atuam como organizações abrangentes e pontos de referência para muitos esforços disciplinares específicos: [GOFAIR](https://www.go-fair.org) e [Aliança de Dados de Pesquisa (RDA)](https://www.rd-alliance.org).
* Sob o GOFAIR, há muitas [Redes de Implementação (INs)](https://www.go-fair.org/implementation-networks) comprometidas a implementar os princípios do FAIR.
* No âmbito da RDA, há vários grupos que abordam diferentes aspectos relevantes para o ciclo de vida da RDM. Entre estes, um [grupo](https://www.rd-alliance.org/groups/fair-data-maturity-model-wg) está revisando os esforços existentes, desenvolvê-las para definir um conjunto uniforme de critérios de avaliação comuns para a avaliação da FAIRness.
