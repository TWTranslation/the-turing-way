(motivação-rr-review)=
# Benefícios pessoais e importantes

*Como isso irá ajudá-lo/por que isso é útil*

Como [testes](#Testing), um objetivo fundamental da revisão de código é remover erros e prática ruim das alterações feitas em um projeto de software antes dessas alterações entrarem na base de código principal. No entanto, tem também uma série de outros benefícios directos e indirectos para os projectos. Estas são discutidas abaixo.

Revisões de código são um método eficaz para melhorar a qualidade de software. McConnell (2004) sugere que os testes unitários encontram aproximadamente 25% dos defeitos, função teste 35%, integração testando 45% e revisão de código 55-60%. Enquanto isso significa que nenhum desses métodos é bom o suficiente por si só. e que eles devem ser combinados, claramente a revisão de código é uma ferramenta essencial aqui.

## Tabela de conteúdos

- [Pegar bugs e erros elementares](#catching-bugs-and-elementary-errors)
- [Melhorias no teste](#improvements-to-testing)
- [Documentação](#documentation)
- [Leitura](#readability)
- [Aplicação de estilo](#style-enforcement)
- [Conhecimento em grupo e coesão](#group-knowledge-and-cohesion)

(rr-reviewing-motivation-bugs)=
## Pegar bugs e erros elementares

Um objetivo simples do processo de revisão é capturar bugs e erros elementares nas alterações propostas antes de eles entrarem no código trunk. Desta forma, a revisão do código compartilha aspectos com testes. No entanto, um programa de ensaio robusto deveria reduzir a importância de uma revisão do código para identificar este tipo de erros simples, uma vez que os testes devem pegá-los antes que o código o faça rever a fase. Por isso, em princípio, esta função da revisão de código deve ser restrita a alterações triviais como erros de documentação. Na prática, porém, a revisão do código funciona como uma segunda linha importante de defesa contra todo o tipo de erros e erros.

(rr-reviewing-motivation-improvements)=
## Melhorias no teste

Como mencionado acima, uma revisão deveria, e frequentemente faz, pegar erros reais nas alterações de código propostas. Isto, evidentemente, é um sinal de que as alterações propostas não foram suficientemente testadas. Um dos principais objectivos da revisão do código é destacar locais no código onde os processos de teste existentes ou recentemente desenvolvidos são inadequados. Desta forma, a revisão de código ajuda a garantir a saúde futura da base de código, fornecendo uma segunda perspectiva sobre os tipos de testes que são necessários - não apenas agora, mas também sob cenários hipotéticos que podem surgir no futuro à medida que o código evolui.

(rr-reviewing-motivation-documentation)=
## Documentação

<!--SiccarPoint notes a whole section on documentation is justified in the book!-->
Documentação sua<!--reference vai aqui uma vez que a seção existe-->é um componente-chave de reprodutibilidade e de software sustentável em geral. A revisão de código oferece outro par de olhos para considerar se a documentação fornecida juntamente com as alterações de código propostas é adequada para propósito. Isto é duplamente valioso. como o revisor olhando de fora do processo de desenvolvimento pode ter uma perspectiva mais clara do que o codificador sobre se a nova documentação oferece informações suficientes para um usuário que está indo ao código pela primeira vez.

Este tipo de feedback sobre a documentação aplica-se igualmente à documentação voltada para o usuário e aos comentários embutidos.

(rr-reviewing-motivation-readability)=
## Leitura

Relacionado à documentação, a revisão de código também pode ajudar a garantir que o código seja legível e fácil de entender. Ter um segundo par de olhos pode ajudar a identificar áreas onde o código pode ser difícil de seguir. Quanto mais legível for seu código, mais fácil será para outros desenvolvedores reproduzir seu código para seus próprios fins.

(rr-reviewing-motivation-enforcement)=
## Aplicação de estilo

Muitos projetos aplicam certas diretrizes de estilo de código da {ref}`<rr-code-quality>`, sejam os padrões amplamente adotados (por exemplo, [PEP8](https://www.python.org/dev/peps/pep-0008/), o [guia de estilo Google C++](https://google.github.io/styleguide/cppguide.html)) ou mais convenções específicas do projeto. [Serviços automatizados](../../code_quality/code_quality#online-services-providing-software-quality-checks) fornecem uma maneira conveniente para impor um estilo de codificação e iniciar a discussão sobre a qualidade do código. A revisão de código oferece uma oportunidade para garantir que todas as alterações propostas cumpram as normas mínimas exigidas para o projeto.

(rr-reviewing-motivation-knowledge)=
## Conhecimento em grupo e coesão

## Cumprimento de estilo

Muitos projetos aplicam certas [diretrizes de estilo de código](../../code_quality/code_quality#coding-style), seja eles padrões amplamente adotados (por exemplo, [PEP8](https://www.python.org/dev/peps/pep-0008/), o [guia de estilo Google C++](https://google.github.io/styleguide/cppguide.html)) ou mais convenções específicas do projeto. [Serviços automatizados](../../code_quality/code_quality#online-services-providing-software-quality-checks) fornecem uma maneira conveniente para impor um estilo de codificação e iniciar a discussão sobre a qualidade do código. A revisão de código oferece uma oportunidade para garantir que todas as alterações propostas cumpram as normas mínimas exigidas para o projeto.


## Conhecimento e coesão em grupo

As práticas de revisão do código proporcionam vantagens significativas para além da mera defesa da saúde do código de tronco de um projecto quando são propostas alterações. A análise peer-to-peer cria troca de informações nos dois sentidos através de uma web strung entre todos os membros contribuintes de uma equipe. Isto proporciona uma transferência eficaz e orgânica das melhores práticas.

As análises conduzidas no espírito certo (veja especialmente [aqui](#Be_nice)) também servem um propósito importante para reunir membros da equipe e criar a coesão de grupo. Em particular, boas avaliações pelos membros principais da equipe do trabalho dos recém-chegados a um projeto podem ajudar a fazer com que esses recém-chegados se sintam bem recebidos e valorizados, e encorajar a continuação da sua participação.
