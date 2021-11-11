(cm-nova-comunidade-tecnologia)=
# Endereçamento de problemas técnicos

Certifique-se de que você também tem planos para pessoas que queiram contribuir para o seu projeto, mas que possam se desviar muito rapidamente de seus objetivos originais, sem supervisão nem orientação. Se é necessário ter habilidades ou práticas específicas para alguém contribuir com seu projeto, você deve ser capaz de apontar as pessoas para os recursos relevantes para que elas possam interagir com o seu projeto de forma eficaz.

Aqui estão algumas recomendações para preparar o seu projeto para abordar questões técnicas que a sua equipe ou membros da comunidade podem muito provavelmente enfrentar.

## Configurar ferramentas para ativar a colaboração

Ao escrever pesquisas do relatório final ou para compartilhar conclusões preliminares, deve haver uma decisão consciente sobre o software que você está usando para escrever seu resultado. Essa decisão afeta como será a colaboração no seu projeto. Para evitar possíveis barreiras à colaboração, tenha em consideração os seguintes aspectos:
* **Disponibilidade de software**: Certifique-se de que todos os colaboradores tenham acesso ao software e plataforma que você usa, por exemplo, assinatura ou licença paga para utilizar software proprietário.
* **Habilidades técnicas**: Certifique-se de que todos os colaboradores estejam confortáveis usando o software, por exemplo, eles estão confiantes para editar um arquivo escrito em uma linguagem de programação ou de mark-up .

Problemas específicos de contexto podem aparecer dependendo das funções e responsabilidades compartilhadas dentro de uma equipe. Portanto, possíveis soluções podem ser planejadas para resolver esses problemas, inclusive fornecendo tutoriais curtos (veja o próximo ponto). Estar ciente das barreiras potenciais que o software que usamos pode criar pode levar à escolha de ferramentas e soluções que funcionem para todos os nossos colaboradores.

## Forneça tutoriais curtos e concisos

Na maioria dos projectos de investigação, trabalhamos naquilo que é urgente neste momento. o que pode significar que podemos ignorar o que é importante a longo prazo. Por exemplo, poderíamos querer testar vários algoritmos em nossos dados, mas não prestar atenção na gravação sistemática do resultado em uma plataforma central que os outros acessam. Oferecer treinamento ou vídeos curtos pré-gravados sobre práticas recomendadas pode permitir que os membros da comunidade trabalhem usando um fluxo de trabalho padrão ou assumam algumas tarefas de outras pessoas.

## O teste é importante

Errar é humano! E quando trabalham sob pressão, elas poderão ser mais frequentes.

Teste seus códigos e incentive sua comunidade a revisar e testar o código de cada um. Além de escrever o código que resolve problemas, você deve ensinar e promover a prática de [teste unitário](http://softwaretestingfundamentals.com/unit-testing/) para testar se as unidades/componentes individuais do software funcionam conforme o esperado.

Você também pode configurar um ambiente {ref}`de integração contínua<rr-ci>` para ajudar a automatizar os testes no seu fluxo de trabalho.

Consulte a seção de {ref}`teste <rr-testing>` no Guia para Pesquisa Reprodutiva para obter mais informações.

## A reprodução é ainda mais importante

Uma ótima coisa para os membros da equipe menos envolvidos fazer é testar constantemente a reprodutibilidade de qualquer código/ambiente. Faça isso desde o início e não será uma surpresa mais tarde quando não funcionar no computador de outra pessoa.

Entre em contato com os especialistas, especialmente ao lidar com códigos legados. Entre em contato com outras comunidades com conhecimento específico para poupar esforço e tempo que possam ser investidos em outras tarefas. Por exemplo, grande parte do conhecimento científico é construído sobre resultados da FORTRAN, C, e código Java que não é mantido mais e, provavelmente, não está documentado. Encontrar alguém com o conhecimento e experiência do código legado para responder a perguntas que outros desenvolvedores têm será uma enorme economia de tempo.

Consulte o {ref}`Guia de Pesquisa Reprodutiva <rr>` para obter mais informações.

## Compartilhar código (e dados) cedo

Os desenvolvedores devem compartilhar seu código em um repositório público controlado por versão (como o GitHub e o GitLab) e coordenar quem está trabalhando em qual recurso ou correção. Especialmente, ao executar projetos urgentes contra o relógio, é crucial não perder tempo no final do seu projeto compilando os diferentes componentes da sua pesquisa quando você pode praticar fazer isso desde o início.

## Tomar nota dos problemas de privacidade

Pergunte-se, como podem as pessoas que precisam de acessar esses dados chegar. Como podem reutilizar e compartilhar os dados adequadamente. Escolha uma licença de código aberto apropriada para seus dados, scripts e software. Escolha uma licença relevante que garanta a proteção de informações sensíveis como dados de movimento e localização, problemas de saúde pessoais, informações de contato, nomes, data de nascimento e endereços pessoais. Evite a coleta de informações pessoais que não sejam necessárias ou viola a confidencialidade.
