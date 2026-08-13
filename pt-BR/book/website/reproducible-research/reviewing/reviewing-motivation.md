(rr-reviewing-motivation)=

# Importância e Benefícios Pessoais

_How this will help you / why this is useful_

As with {ref}`testing<rr-testing>`, a key objective of code review is to remove mistakes and bad practice from changes made to a software project before those changes enter the main code base.
No entanto, tem também uma série de outros benefícios directos e indirectos para os projectos.Porém, a revisão de código também traz diversos benefícios diretos e indiretos aos projetos , que são discutidos a seguir.

Revisões de código são um método eficaz para melhorar a qualidade do software. McConnell (2004) sugere que testes de unidade encontram aproximadamente 25 % dos defeitos, testes de funcionalidade 35 %, testes de integração 45 % e revisão de código 55–60 %. Embora isso mostre que nenhum desses métodos seja suficiente isoladamente e que devam ser combinados, fica claro que a revisão de código é uma ferramenta essencial.

(rr-reviewing-motivation-bugs)=

## Captura de Bugs e Erros Elementares

Um dos objetivos simples do processo de revisão é identificar bugs e erros elementares nas alterações propostas antes que elas sejam incorporadas ao código principal.
Dessa forma, a revisão de código compartilha aspectos com os testes.
No entanto, um programa de testes robusto deve reduzir a importância da revisão de código para identificar esses tipos de erros simples, pois os testes deveriam capturá‑los antes que o código chegue à fase de revisão.
Portanto, em princípio, essa função da revisão de código deveria se limitar a mudanças triviais, como correções de digitação na documentação.  Na prática, porém, a revisão de código atua como uma importante segunda linha de defesa contra todos os tipos de bugs e erros.

(rr-reviewing-motivation-improvements)=

## Melhorias nos Testes

Como observado acima, uma revisão deve, e frequentemente de fato, detectar bugs reais nas alterações de código propostas. Isso, claro, é um sinal de que as mudanças sugeridas não foram testadas adequadamente desde o início.
Um dos principais objetivos da revisão de código é destacar trechos em que os processos de teste, sejam os já existentes ou os recém-desenvolvidos, são insuficientes.
Dessa forma, a revisão de código ajuda a garantir a saúde futura da base de código, oferecendo uma segunda perspectiva sobre quais tipos de testes são necessários - não apenas agora, mas também em cenários hipotéticos que podem surgir no futuro, à medida que o código evolui.

(rr-reviewing-motivation-documentation)=

## Documentação

<!--SiccarPoint notes a whole section on documentation is justified in the book!-->

Documentação sua<!--reference vai aqui uma vez que a seção existe-->é um componente-chave de reprodutibilidade e de software sustentável em geral.
A revisão de código oferece um par de olhos adicional para avaliar se a documentação fornecida juntamente com as alterações propostas atende ao propósito esperado.
Isso é especialmente valioso, pois o revisor, observando de fora do processo de desenvolvimento, pode ter uma perspectiva mais clara do que o próprio desenvolvedor sobre se a nova documentação fornece informações suficientes para um usuário que entra em contato com o código pela primeira vez.

Esse tipo de feedback sobre documentação aplica‑se tanto à documentação voltada ao usuário quanto aos comentários inline.

(rr-reviewing-motivation-readability)=

## Legibilidade

Relacionado à documentação, a revisão de código também pode ajudar a garantir que o código seja legível e fácil de entender.  Um segundo par de olhos pode identificar trechos onde o código pode estar difícil de acompanhar.
Quanto mais legível for o seu código, mais fácil será para outros desenvolvedores reproduzi‑lo para seus próprios propósitos.

(rr-reviewing-motivation-enforcement)=

## Aplicação de Padrões de Estilo

Many projects enforce certain {ref}`code style guidelines<rr-code-quality>`, be they widely-adopted standards (for example, [PEP8](https://www.python.org/dev/peps/pep-0008/), the [Google C++ style guide](https://google.github.io/styleguide/cppguide.html)) or more project-specific conventions.
{ref}`Automated services<rr-code-style-and-formatting>` provide a convenient way to enforce a coding style and start the discussion about code quality.

A revisão de código oferece uma oportunidade para garantir que todas as alterações propostas atendam aos padrões mínimos exigidos pelo projeto.

(rr-reviewing-motivation-knowledge)=

## Conhecimento e Coesão de Grupo

As práticas de revisão de código oferecem vantagens significativas além de simplesmente preservar a integridade do código principal do projeto quando mudanças são propostas.
A revisão entre pares promove uma troca bidirecional de informações entre todos os membros da equipe, criando uma rede de compartilhamento de boas práticas de forma orgânica e eficaz.

Reviews conducted in the right spirit (see especially {ref}`here<rr-reviewing-recommendation-be-nice>`) also serve an important purpose in bringing team members together and creating group cohesion.
Em particular, avaliações bem-feitas pelos membros principais da equipe sobre o trabalho de novos colaboradores podem fazer com que esses se sintam bem-vindos e valorizados, incentivando sua continuidade e engajamento no projeto.
