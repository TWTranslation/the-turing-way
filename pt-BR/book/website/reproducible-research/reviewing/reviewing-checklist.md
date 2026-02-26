(rr-checklist-for-code-review)=

# Lista de verificação para o processo de revisão de código

Esta seção apresenta algumas checklists para o codificador e o revisor, como parte de um processo formal de revisão.
As listas de verificação do revisor estão divididas em duas categorias: uma para todo o programa e outra para arquivos individuais ou alterações propostas.

As listas são criadas com foco em boas práticas de engenharia de software e destinam-se a ser uma fonte de inspiração.
Ao avaliar as listas de verificação, é recomendável considerar em que medida o item mencionado é implementado.
Alguns itens da lista podem não se aplicar à linguagem do seu projeto ou de programação, nesse caso eles devem ser ignorados.

Em todos os casos, o objetivo é usar sua experiência em programação para descobrir como melhorar o código.

## Para o codificador

- Does the new code meet the required standards of the project?
  The standards are typically written under `contributing guidelines` by the project you are contributing to.
- Is there [documentation](#rr-checklist-for-code-review:documentation) that meets the required standards of the project?
- Are you following any declared {ref}`style guide<rr-code-quality>` for the project?
- Are there new [tests](#rr-checklist-for-code-review:tests) for the new material, based on the required standards of the project?
  - Estes testes passam localmente?
  - Os testes no resto da base de código ainda estão passando localmente?
- Criar o pull request.
- Many {ref}`continuous integration (CI)<rr-ci>` systems will check if the tests in the main project pass automatically once you create a pull request.
  Se o repositório estiver usando uma CI, certifique-se de que todas as compilações e testes estejam completos.
  Consulte os relatórios do CI para ver se o seu código está fazendo com que os testes do projeto principal falhem.
- Se necessário, solicite agora formalmente uma revisão.

## Para o revisor

- Verifique as normas necessárias do projeto. The standards are typically written under
  `contributing guidelines` by the project you are contributing to.
- Check the code meets basic project {ref}`style guide<rr-code-quality>`, if this is not automatically checked by {ref}`continuous integration (CI)<rr-ci>`.
- Do the [tests](#rr-checklist-for-code-review:tests) and [documentation](#rr-checklist-for-code-review:documentation) conform to the standards?
- Todo o código é facilmente entendido? Depending on the language, files may contain interfaces, classes or other type definitions, and functions (see [Architecture](#rr-checklist-for-code-review:architecture)).
  Os conceitos arquitectónicos essenciais podem ser revistos da seguinte forma:
  - Check the [interfaces](#rr-checklist-for-code-review:interfaces) lists.
  - Check the [classes and types](#rr-checklist-for-code-review:classes-and-types) lists.
  - Check the [function/method declarations](#functionmethod-declarations) lists.
  - Check the [function/method definitions](#functionmethod-definitions) lists.
- Do the [tests](#rr-checklist-for-code-review:tests) actually ensure the code is robust in its intended use?
  - Há algum erro ou outro defeito?
- Are [security](#rr-checklist-for-code-review:security) issues handled correctly?
  - Check the [security of new code](#rr-checklist-for-code-review:security-new-code).
- Does the new code meet the [legal requirements](#rr-checklist-for-code-review:legal)?

## Verificação de nível do programa

Aqui está uma lista de coisas para considerar quando olhar para o programa como um todo, ao invés de olhar para um arquivo ou alteração individual.

(rr-checklist-for-code-review:documentation)=

### Documentation

A documentação é um pré-requisito para usar, desenvolver e analisar o programa.
Alguém que não está envolvido com seu projeto deve entender o que seu código faz, e qual a abordagem que você está fazendo. Aqui estão algumas coisas para verificar.

- Existe alguma descrição do propósito do programa ou da biblioteca?
- São listados requisitos detalhados?
- Are requirements ranked according to [MoSCoW](https://en.wikipedia.org/wiki/MoSCoW_method)?
- O uso e a função das bibliotecas de terceiros é documentado?
- A estrutura/arquitetura do programa é documentada? (veja abaixo)
- Há um manual de instalação?
- Há um manual de usuário?
- Existe documentação sobre como contribuir?
  - Incluindo como enviar alterações
  - Incluindo como documentar as alterações

(rr-checklist-for-code-review:architecture)=

### Arquitetura

Estes itens são principalmente importantes para programas maiores, mas ainda podem ser bons a considerar para os pequenos também.

- O programa está dividido em módulos claramente separados?
- Serão estes módulos tão pequenos como podem ser?
- Is there a clear, hierarchical or layered, dependency structure between
  these modules?
  - If not, the functionality should be rearranged, or perhaps heavily
    interdependent modules should be combined.
- É possível simplificar o design?

(rr-checklist-for-code-review:security)=

### Segurança

Se você estiver fazendo um software que é acessível ao mundo exterior (por exemplo, uma aplicação web , então a segurança torna-se importante. Problemas de segurança são defeitos, mas nem todos os defeitos são problemas de segurança. Um design consciente de segurança pode ajudar a mitigar o impacto de segurança de defeitos.

- Quais módulos lidam com a entrada do usuário?
- Quais módulos geram saída?
- São compartimentados de entrada e saída?
  - If not, consider making separate modules that manage all input
    and output, so validation can happen in one place.
- Em que módulos os dados não são confiáveis?
  - Quanto menos melhor.
- Os dados não confiáveis são compartimentados?
  - Ideally, validate in the input module and pass only
    validated data to other parts.

(rr-checklist-for-code-review:legal)=

### Informações

Como um desenvolvedor, você deve prestar atenção aos direitos legais dos criadores do código que você está usando. Aqui estão algumas coisas para verificar. Em de dúvida, pergunte a alguém que experienciou licenciamento para obter conselhos.

- As licenças de todos os módulos/bibliotecas que são utilizadas estão documentadas?
- Os requisitos definidos por essas licenças estão preenchidos?
  - As licenças estão incluídas onde for necessário?
  - As declarações de direitos autorais estão incluídas no código, quando for necessário?
  - As declarações de direitos autorais estão incluídas na documentação onde for necessário?
- As licenças de todas as peças são compatíveis entre si?
- A licença do projeto é compatível com todas as bibliotecas?

## Checklist de Arquivo/Alterar nível

Quando você está verificando alterações individuais ou arquivos em uma pull request, o código em si torna-se sujeito de escrutínio. Dependendo do idioma, arquivos podem conter interfaces, classes ou outros tipos de definição e funções. Todos esses devem ser verificados.

(rr-checklist-for-code-review:interfaces)=

### Interfaces

- A interface está documentada?
- Será que o conceito que modela faz sentido?
- Será que pode ser ainda mais dividido? (As Interfaces devem ser tão pequenas quanto possível)

Observe que a maioria dos itens a seguir assume um estilo de programação orientada a objetos, que pode não ser relevante para o código que você está vendo.

(rr-checklist-for-code-review:classes-and-types)=

### Classes e tipos

- A classe é documentada?
  - Os programas externos são necessários para a classe documentada?
- Será que tem uma única responsabilidade? Pode ser dividido?
- Se projetado para ser estendido, pode ser?
- Se não foi projetado para ser estendido, será que é protegido contra isso?
- Se for derivado de outra classe, você pode substituir um objeto desta classe por um de sua classe pai?
- A classe está desestabilizada?
  - As dependências são claras e explícitas?
  - Tem um pequeno número de dependências?
  - Será que depende das interfaces, ao invés de classes?

(functionmethod-declarations)=

### Declarações de Função/Método

- Há comentários que descrevem a intenção da função ou o método?
- Os dados de entrada e saída estão documentados? Incluindo unidades?
- As pré-condições e pós-condições são documentadas?
- São casos de arestas e coisas incomuns comentados?

(functionmethod-definitions)=

### Definições Função/Método

- São casos de arestas e coisas incomuns comentados?
- Há algum código incompleto?
- Esta função pode ser dividida (não é muito longo)?
- Isso funciona? Executar função pretendida, lógica correta, ...
- Is it easy to understand?
- Há código redundante ou duplicado? (RDRY)
- Os laços têm um comprimento definido e terminam corretamente?
- A depuração ou o código de log pode ser removido?
- Algum dos códigos pode ser substituído pelas funções da biblioteca?

(rr-checklist-for-code-review:security-new-code)=

### Segurança de novos códigos

- Se você está usando uma biblioteca, você verifica erros que ela retorna?
- Todas as entradas de dados são verificadas?
- Os valores de saída são checados e codificados corretamente?
- Parâmetros inválidos são tratados corretamente?

(rr-checklist-for-code-review:tests)=

### Testes

- Os testes de unidade realmente testam o que é suposto fazer?
- Os limites de verificação estão sendo feitos?
- Um framework de teste e/ou biblioteca é usado?
