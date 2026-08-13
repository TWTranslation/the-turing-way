(cm-os-vírgulas-issue-tracking)=

# Rastreamento de Problemas

A maioria dos projetos de desenvolvimento de software tem algum tipo de quadro de issues para rastrear facilmente as issues atuais no projeto, como correção de erros, implementação de novos recursos ou planos de engajamento da comunidade.
[GitHub](https://github.com) (a very popular collaboration platform) has a built-in [issue tracker](https://guides.github.com/features/issues/) and [project boards](https://help.github.com/en/github/managing-your-work-on-github/about-project-boards) where issues can be collated together to track progress towards a more specific, higher-level goal.

Esta seção é uma discussão sobre por que o rastreamento de problemas é útil e onde você pode armazená-los.

(os-comms-issue-tracking-purpose)=

## Qual é o objectivo das vossas questões?

Há muitas razões diferentes para manter/acompanhar problemas relacionados a um projeto.
A plataforma para rastreamento de issues e os recursos rastreados por essas questões podem influenciar a forma como sua comunidade interage com seu projeto.

A maioria das questões são usadas para rastrear relatórios de bugs, solicitações de recursos, oportunidades para membros da comunidade envolverem, e assim por diante, então um fórum público de issues permitirá que sua comunidade obtenha uma visão clara do que está por vir e de como eles podem se envolver.

Vamos analisar em conselhos de issues centralizados e descentralizados/distribuídos e como eles podem envolver sua comunidade.

(os-vírgulas-issue-tracking-issuse-issues)=

### Issues por repositório (Descentrado/Distribuído)

Se o seu projeto estiver dividido em vários repositórios, então é uma boa ideia manter os problemas especificamente relacionados a esse módulo dentro desse repositório: um sistema descentralizado.
Isso permite que sua comunidade concentre a atenção no que é importante para eles.

Esta abordagem tem vários issue boards menores para cada repositório (ou módulo) dentro do seu código.
Este método tem muitos resultados positivos, tais como:

- The volume of issues is more manageable
- Most contributors only need to be aware of issues relating to one or two repositories
- Contributors can subscribe to notifications or updates from only the repositories that interest them
- It feels like "divide and conquer", more people are working on more aspects to move the project as a whole forward

(os-vírgulas-issue-tracking-issuse-issues-case-study)=

#### Estudo de caso: mybinder.org

[mybinder.org](https://mybinder.org) is a platform facilitating users to easily share reproducible analyses and computational environments with one another in [Jupyter Notebooks](https://jupyter-notebook.readthedocs.io/en/stable/) via the cloud.
Este projeto é espalhado por uma série de repositórios diferentes, cada um deles um instrumento que pode ser usado isoladamente dos outros.
Estes são:

- [repo2docker](https://github.com/jupyter/repo2docker)
- [JupyterHub for Kubernetes](https://github.com/jupyterhub/zero-to-jupyterhub-k8s)
- [BinderHub](https://github.com/jupyterhub/binderhub)

Existem também algumas ferramentas no ecossistema de Jupyter que estão apenas fracamente associadas à Binder.
Ferramentas para as quais o Binder do Projeto usa e as pessoas associadas ao Binder contribuem, mas também outras comunidades não relacionadas.
Such tools are [JupyterHub](https://github.com/jupyterhub/jupyterhub) and [KubeSpawner](https://github.com/jupyterhub/kubespawner).

Cada um desses repositórios contém centenas de tarefas que estão sendo executadas pela comunidade e com o escopo de direções futuras para cada projeto assumir.

Conseguem imaginar a possibilidade de tentar combinar todas estas questões num único lugar?
Tornar-se-ia muito difícil, se não impossível, para alguém encontrar o que está procurando e exigiria um esquema de marcação muito inteligente mais instruções para filtrar por tag.

Na experiência da equipe do projeto Binder, a maioria dos membros da comunidade contribuem para apenas um ou dois desses projetos.
Assim, a consolidação do acesso a todas as questões por parte de todas as partes do trabalho não constitui uma prioridade para a sua comunidade.

They find that having distributed issue tracking allows those members of the community who may only work with JupyterHub to comfortably contribute without needing to be familiar with everything that goes into running [mybinder.org](https://mybinder.org).

(os-comms-issue-tracking-issuse-issues-case-centralizado-issue)=

### Repositório de Issues Centralizado

Com um grande projecto, pode ser tentador reunir todas as suas questões num só lugar para facilitar a gestão: um sistema centralizado.
Se você estiver usando problemas para rastrear um serviço central, lista pessoal a fazer e responder a perguntas como se uma tarefa tivesse alta prioridade ou se já fosse atribuída a alguém, Depois, dar seguimento a um sistema centralizado é uma boa opção e não precisa necessariamente de ser distribuída por toda a nossa comunidade.

No entanto, em termos de envolvimento com a sua comunidade, esse sistema centralizado pode ser problemático.
Se as suas questões são em outros lugares, isso pode criar uma série de barreiras para a entrada de membros da comunidade, tais como:

- Issues are more difficult to discover
- If they are hosted on another platform (for example, code is on GitHub but issues are on [Asana](https://asana.com/)), that's another tool community members need to learn how to use
- Issues are separated from the code they are referencing

Um impacto muito grande na comunidade de ter um board de issues separado é que quando as pessoas visitam seu repositório de código, parece um projeto inativo porque não há issues ou conversas em curso onde o código está hospedado.
Isso pode fazer com que os membros da comunidade acreditem que o código não está mais sendo ativamente desenvolvido/mantido/suportado e podem optar por usar outro pacote de código-fonte ou software.

(os-vírgulas-issue-tracking-comparative-table)=

## Tabela Comparativa

A tabela abaixo compara as funcionalidades dos repositórios de issues distribuídos e centralizados para um projeto multi-repositório.

| Feature                                      |         Repo de Issue Centralizado        | Repositórios de Issues Distribuídos |
| :------------------------------------------- | :---------------------------------------: | :---------------------------------: |
| Pesquisa global de issues                    |                     ✅                     |                                     |
| Hospedado pela mesma plataforma que o código |    ❓(não garantido)    |                  ✅                  |
| Filtrar por repositório                      | ❓(Usuários poderoso\*) |                  ✅                  |
| Inscrever-se nas atualizações relevantes     |  ❓(usuários poderosos) |                  ✅                  |
| Fácil de Descubra                            |                                           |                  ✅                  |
| Conectado ao Codebase                        |                                           |                  ✅                  |
| Aparece ativos para a comunidade             |                                           |                  ✅                  |
| Volume gerenciável                           |                                           |                  ✅                  |

\*Usuários de energia = Estas são pessoas que já estão familiarizadas o suficiente com uma plataforma para saber as doces e truques que tornam sua experiência mais eficiente

## Further Reading

- Blog post comparing the convenience and community closeness of Mailing Lists and Forums: <https://psychcentral.com/blog/mailing-lists-versus-forums-community-convenience-closeness/>
- Blog post by [Tim Head](https://github.com/betatim):  <https://betatim.github.io/posts/thoughts-on-collective-thinking/>
