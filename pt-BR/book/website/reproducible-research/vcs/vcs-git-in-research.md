(rr-vcs-git4research)=

# Git para projetos de pesquisa

```{figure} ../../../figures/healthy-research-tree.jpg
---
name: ds4research
alt: Researchers are pouring water on a tree. The water represents data science principles and tooling, the tree represents the research. The tree is big and beautiful, on its branches are specific outcome written, that is workflow efficiency, powerful statistics, better collaboration, informative visualisations, more outputs, reproducible analysis, and team and community building.
---
Data science practices can leverage the potential of the research workflow, in order to produce better research in less time. _The Turing Way_ project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

Como cada projeto de pesquisa possui um componente de ciência de dados, há vantagens claras em usar práticas de ciência de dados para gerenciar todos os dados produzidos durante a pesquisa.
Em particular, o uso do Git e do GitHub é muito atraente.
Entretanto, o GitHub não é suficiente para lidar com todos os projetos de pesquisa:

- Data versioning needs special care, see the {ref}`section on data version control<rr-vcs-data>`.
- Specific {ref}`folder structure<rr-rdm-storage-organisation>` help in the workflow.
- Pode haver algum problema legal em usar uma ferramenta americana para seus dados.

You may refer to a [carpentry workshop related to this topic](https://github.com/carpentries-incubator/managing-computational-projects).

(rr-vcs-research-plus)=

## Potencial

Aqui está uma lista não exaustiva de recursos que um fluxo de trabalho Git/GitHub traz para projetos de ciência de dados e seriam úteis para projetos de pesquisa:

- Faça backup dos dados enviando-os para uma plataforma Git, em um repositório público ou privado.
- Use facilmente computadores diferentes para trabalhar no mesmo projeto (com você mesmo ou com colaboradores).
- Acompanhe as contribuições.
- Facilitate the use of folder templates to help with files organisation, see {ref}`rr-rdm-storage-organisation`.
- Use ferramentas de plataformas Git para gerenciamento de projetos.
- Use plataformas Git para divulgação, mesmo quando o repositório for privado (usando o Wiki).
- Crie um site associado na mesma organização na plataforma Git.

(rr-vcs-research-minus)=

## Problemas

As described in the {ref}`general section about Git<rr-vcs-git-limitations>`, Git does not work well when there are a lot of data, or when the data are large.
Quando você espera que o projeto fique grande, é preciso definir uma ferramenta diferente para evitar a criação de repositórios pouco práticos.
Algumas dessas ferramentas dificultam o acesso ou a visualização dos seus arquivos, por isso é importante planejar com antecedência qual ferramenta atenderá melhor às suas necessidades.
See the {ref}`section on Data Version Control<rr-vcs-data>` for more detailed explanations.

**Briefly, in order to use Git when there are lots or large files, one needs to split the data in different repositories, and have these repositories use the git-annex technology.**

(rr-vcs-research-tools)=

## Ferramentas

Recomendamos que você use uma plataforma Git fornecida como uma infraestrutura aberta.
Em muitas universidades, você terá acesso a uma plataforma GitLab (que funciona de forma muito semelhante ao GitHub).
Como alternativa, você pode querer instalar sua própria instância de uma das plataformas Git de código aberto mais leves (gogs, GitLea, GIN).

Se você tiver muitos arquivos ou arquivos grandes, precisará usar os submódulos do Git e as tecnologias git-annex.
If you do, we encourage you to look into {ref}`rr-vcs-data-tools-datalad` and follow the progresses of the [GIN-Tonic project](https://gin-tonic.netlify.app).
Esteja preparado para investir algum tempo aprendendo a usar essas ferramentas.

(rr-vcs-research-story)=

## Exemplo fictício

Max criou uma pasta seguindo uma estrutura padrão, eles usam o datalad para criar submódulos para cada experimento, onde eles salvarão seus conjuntos de dados.
Usando o datalad, a tecnologia git-annex é usada para salvar o conteúdo do arquivo fora do repositório Git a cada envio.
Eles têm sua própria plataforma GIN onde o repositório git e o conteúdo anexado ao git são salvos e copiados.
Seus colaboradores têm acesso a todos os dados, seja pela interface do navegador ou usando alguma ferramenta de linha de comando.
Os repositórios GIN estão vinculados a um problema do GitLab, de modo que a equipe está usando ferramentas avançadas de gerenciamento de projetos oferecidas pelo GitLab.
O código de análise de dados também é definido em um submódulo, onde git-annex não é permitido.

Depois de trabalhar por alguns anos no projeto, junto com seus colaboradores, Max escreveu um artigo onde eles puderam vincular os dados e o código de análise, que foi tornado público arquivando os repositórios Git e os dados anexados ao Git no serviço de biblioteca da universidade.

Embora esse caso de uso já seja possível, ele requer o uso da linha de comando (para usar o datalad) e a instalação de uma instância do GIN (a instância pública do GIN é destinada apenas para dados de neurociência).



