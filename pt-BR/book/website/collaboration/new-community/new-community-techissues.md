(cm-nova-comunidade-tecnologia)=

# Endereçamento de problemas técnicos

Certifique-se de que você também tem planos para pessoas que queiram contribuir para o seu projeto, mas que possam se desviar muito rapidamente de seus objetivos originais, sem supervisão nem orientação.
Se é necessário ter habilidades ou práticas específicas para alguém contribuir com seu projeto, você deve ser capaz de apontar as pessoas para os recursos relevantes para que elas possam interagir com o seu projeto de forma eficaz.

Aqui estão algumas recomendações para preparar o seu projeto para abordar questões técnicas que a sua equipe ou membros da comunidade podem muito provavelmente enfrentar.

## Configurar ferramentas para ativar a colaboração

Ao escrever pesquisas do relatório final ou para compartilhar conclusões preliminares, deve haver uma decisão consciente sobre o software que você está usando para escrever seu resultado.
Essa decisão afeta como será a colaboração no seu projeto.
Para evitar possíveis barreiras à colaboração, tenha em consideração os seguintes aspectos:

- **Availability of software**: Ensure that all of the collaborators have access to the software and platform you are using, for example, paid subscription or licence to use proprietary software.
- **Technical skills**: Ensure that all of the collaborators are comfortable using the software, for example, they are confident to edit a file written in a programming or mark-up language.

Problemas específicos de contexto podem aparecer dependendo das funções e responsabilidades compartilhadas dentro de uma equipe.
Portanto, possíveis soluções podem ser planejadas para resolver esses problemas, inclusive fornecendo tutoriais curtos (veja o próximo ponto).
Estar ciente das barreiras potenciais que o software que usamos pode criar pode levar à escolha de ferramentas e soluções que funcionem para todos os nossos colaboradores.

## Forneça tutoriais curtos e concisos

Na maioria dos projectos de investigação, trabalhamos naquilo que é urgente neste momento. o que pode significar que podemos ignorar o que é importante a longo prazo.
Por exemplo, poderíamos querer testar vários algoritmos em nossos dados, mas não prestar atenção na gravação sistemática do resultado em uma plataforma central que os outros acessam.
Oferecer treinamento ou vídeos curtos pré-gravados sobre práticas recomendadas pode permitir que os membros da comunidade trabalhem usando um fluxo de trabalho padrão ou assumam algumas tarefas de outras pessoas.

## O teste é importante

Errar é humano! E quando trabalham sob pressão, elas poderão ser mais frequentes.

Teste seus códigos e incentive sua comunidade a revisar e testar o código de cada um.
In addition to writing code that solves problems, you should teach and promote the practice of [unit testing](http://softwaretestingfundamentals.com/unit-testing/) to test if the individual units/components of software work as expected.

You can also set up a {ref}`Continuous Integration<rr-ci>` environment to help automate testing in your workflow.

See the {ref}`testing <rr-testing>` section in the Guide for Reproducible Research for more information.

## A reprodução é ainda mais importante

Uma ótima coisa para os membros da equipe menos envolvidos fazer é testar constantemente a reprodutibilidade de qualquer código/ambiente.
Faça isso desde o início e não será uma surpresa mais tarde quando não funcionar no computador de outra pessoa.

Entre em contato com os especialistas, especialmente ao lidar com códigos legados.
Entre em contato com outras comunidades com conhecimento específico para poupar esforço e tempo que possam ser investidos em outras tarefas. Por exemplo, grande parte do conhecimento científico é construído sobre resultados da FORTRAN, C, e código Java que não é mantido mais e, provavelmente, não está documentado. Encontrar alguém com o conhecimento e experiência do código legado para responder a perguntas que outros desenvolvedores têm será uma enorme economia de tempo.

See the {ref}`Guide for Reproducible Research <rr>` chapter for more information.

## Compartilhar código (e dados) cedo

Os desenvolvedores devem compartilhar seu código em um repositório público controlado por versão (como o GitHub e o GitLab) e coordenar quem está trabalhando em qual recurso ou correção.
Especialmente, ao executar projetos urgentes contra o relógio, é crucial não perder tempo no final do seu projeto compilando os diferentes componentes da sua pesquisa quando você pode praticar fazer isso desde o início.

## Tomar nota dos problemas de privacidade

Pergunte-se, como podem as pessoas que precisam de acessar esses dados chegar.
Como podem reutilizar e compartilhar os dados adequadamente.
Escolha uma licença de código aberto apropriada para seus dados, scripts e software.
Escolha uma licença relevante que garanta a proteção de informações sensíveis como dados de movimento e localização, problemas de saúde pessoais, informações de contato, nomes, data de nascimento e endereços pessoais.
Evite a coleta de informações pessoais que não sejam necessárias ou viola a confidencialidade.
