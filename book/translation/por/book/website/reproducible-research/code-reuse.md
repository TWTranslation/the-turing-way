(rr-code-reuse)=
# Código reutilizável
Seu projeto de software pode variar de um pequeno script que você usa para processamento de dados até um caderno usado para a análise de dados, ou uma biblioteca de software implementando seus algoritmos. Independentemente do quão grande ou pequeno seja seu projeto de software, é importante tornar seu código reutilizável.

Diferentes tipos de software têm diferentes requisitos para ser reutilizável: para um pequeno script, ter documentação suficiente pode ser suficiente, enquanto para uma biblioteca de software crítico de missão, pode ser necessário um teste completo. No nível mais básico, tudo o que você precisa fazer é colocar seu código online em algum lugar que provavelmente durará muito tempo. Uma abordagem mais elaborada para tornar seu software de pesquisa mais reutilizável é seguindo os Princípios FAIR para o Software de Pesquisa (FAIR4RS Princípios) {cite:ps}`ChueHong2021FAIR4RS`.

Quando falamos em tornar o código reutilizável, é útil esclarecer o que queremos dizer. Na tabela de definições de {ref}`<rr-overview-definitions-reproducibility>` definimos a pesquisa reprodutível como usando os mesmos dados e o mesmo código. No entanto, quando falamos sobre reutilização de código, isso pode assumir muitas formas: podemos querer executar exatamente o mesmo código (para linguagens de programação compiladas), isto pode até mesmo significar o mesmo arquivo binário), ou podemos querer modificar o código-fonte e estendê-lo de alguma forma específica para atender às nossas necessidades. Freire e Chirigati {cite:ps}`Freire2018Reproducibility` fornecem uma estrutura de diferentes níveis de reprodução, dependendo do que pode ser modificado. Definem os seguintes níveis de reprodução: repetível, reexecutável, portátil, expansível e modificável.

Podemos mapear as definições de reprodutível no quadro de Freire da seguinte forma:

| Freire framework | Definições de reprodução                                                 |
| ---------------- | ------------------------------------------------------------------------ |
| Repetível        | Reprodutível (mesmo dados, mesma análise)                                |
| Reexecutável     | Robusto & Replicável (mesmo código, diferentes dados/análise/parâmetros) |
| Portátil         | *Não considerado* (mesmo código/dados, ambiente diferente)               |
| Extensível       | (parte) Generalizável                                                    |
| Modificável      | (parte) Generalizável                                                    |

Portabilidade não era considerada anteriormente, mas para software um ambiente diferente (como hardware diferente, sistema operacional ou mesmo uma nova instalação em hardware comparável) pode afetar a capacidade de o software funcionar (por exemplo, isso pode afetar dependências).

Além disso, o Generalisable encapsula dois conceitos: Extensível (a habilidade de se integrar com outros softwares) e modificável (a habilidade de alterar parte da implementação para estender sua funcionalidade).

No restante deste capítulo, fornecemos a lista de recomendações que você pode seguir para garantir que seu código seja reutilizável.
