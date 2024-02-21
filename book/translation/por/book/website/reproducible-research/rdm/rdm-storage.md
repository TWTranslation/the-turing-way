(rr-rdm-armazenamento)=
# Armazenamento de Dados e Organização

A perda de dados pode ser catastrófica para o seu projeto de pesquisa e pode acontecer frequentemente. Você pode evitar a perda de dados escolhendo soluções de armazenamento adequadas e fazendo backup de seus dados com frequência.

```{figure} ../../figures/version-control.jpg
---
height: 500px
nome: controle de versão
alt: Duas imagens são mostradas para representar os benefícios de usar o controle de versão. À esquerda, há uma imagem de duas pessoas atravessando uma caixa azul em cima de uma mesa. A caixa está cheia de documentos confusos e as pessoas parecem confusas e frustradas. Os documentos são chamados de "final 2" e "deixe isto ser o final". À direita, as mesmas duas pessoas parecem felizes e estão a procurar arquivos organizados claramente num quadro de arquivamento azul. Existem separações "V1, V2, V3 e V4" organizando os arquivos.
---
_A Turing Way_ ilustração de projeto por Scriberia. Versão original do Zenodo. [http://doi.org/10.5281/zenodo.3695300](http://doi.org/10.5281/zenodo.3695300)
```

(rr-rdm-armazenamento-onda)=
## Onde armazenar dados

- A maioria das instituições fornecerá um _drive de rede_ que você pode usar para armazenar dados.
- _A mídia de armazenamento portátil_ como gravetos de memória (sticks USB) são mais arriscados e vulneráveis a perda e dano.
- _Armazenamento em nuvem_ fornece uma maneira conveniente de armazenar, fazer backup e recuperar dados. Você deve verificar os termos de uso antes de usá-los para seus dados de pesquisa.

Especialmente se você estiver lidando com dados pessoais ou confidenciais, você precisa garantir que a opção da nuvem esteja de acordo com quaisquer regras de proteção de dados a que os dados estão vinculados. Para adicionar uma camada extra de segurança, você deve criptografar dispositivos e arquivos onde for necessário.

A sua instituição pode fornecer soluções de armazenamento local e políticas ou orientações que restringem o que você pode usar. Assim, recomendamos que você se familiarize com suas políticas e recomendações locais.

Quando você estiver pronto para liberar os dados para toda a comunidade, você também pode pesquisar os bancos de dados e repositórios apropriados no [FAIRsharing](https://fairsharing.org/databases), de acordo com o seu tipo de dados e o tipo de acesso aos dados. Saiba mais sobre isso no subcapítulo {ref}`rr-rdm-sharing`.

(rr-rdm-organização-armazenamento)=
## Organização de Dados

Para organizar seus dados, você pode criar uma estrutura de pastas, ou reutilize uma estrutura anterior (veja um exemplo abaixo), para garantir que você possa encontrar seus arquivos.

-   Certifique-se de ter (sub)pastas suficientes para que os arquivos possam ser armazenados na pasta certa e não estejam espalhados pelas pastas onde não pertencem, ou armazenado em grandes quantidades em uma única pasta.
-   Usar estrutura para pastas limpas. Você pode estruturar pastas com base na pessoa que gerou dados / pasta, cronologicamente (mês, ano, sessões), por projeto (como feito no exemplo abaixo) ou com base no método/equipamento ou tipo de dados.

(rr-rdm-storage-organisation-examples)=
### Exemplos da Organização de Dados

- Baixar [esta pasta](http://nikola.me/folder_structure.html) pela Nikola Vukovic
- Você pode puxar / baixar estruturas da pasta usando o GitHub: [Este modelo](https://github.com/bvreede/good-enough-project) pelo Barbara Vreede, baseado em [cookiecutter](https://github.com/cookiecutter/cookiecutter), segue práticas recomendadas para computação científica por [Wilson et al. (2017)](https://doi.org/10.1371/journal.pcbi.1005510).
- Veja [este modelo](https://osf.io/4sdn3/) de Chris Hartgerink para organização de arquivos no [Open Science Framework](https://osf.io/).

(rr-rdm-convenções)=
## Convenções de Nomes de Arquivos

Estrutura os nomes dos seus arquivos e configure um modelo para isso. Por exemplo, pode ser vantajoso começar a nomear seus arquivos com a data em que cada arquivo foi gerado (como `YYMMDD`). Isso irá classificar seus arquivos cronologicamente e criar um identificador exclusivo para cada arquivo. A utilidade desse processo é evidente quando você gera vários arquivos no mesmo dia que precisam ser versionados para evitar a reescrita.


Algumas outras dicas para o nome do arquivo incluem:
- Use a data ou o intervalo de datas do experimento: `YYMMDD`
- Utilizar o tipo de arquivo
- Utilize o nome/iniciais do pesquisador
- Use o número da versão do arquivo (v001, v002) ou a linguagem utilizada no documento (ENG)
- Não torne os nomes dos arquivos muito longos (isto pode complicar as transferências de arquivos)
- Evite caracteres especiais (?\!@\*%{[<>) e espaços

Você pode explicar a convenção de nome do arquivo em um arquivo README.txt, para que ele também se torne evidente para outros o que significam os nomes do arquivo.

(rr-rdm-storage-backups)=
## Backups

Para evitar perder seus dados, você deve seguir as boas práticas de backup.

- Você deve ter 2 ou 3 cópias de seus arquivos, armazenados em
- pelo menos 2 arquivos de armazenamento diferentes,
- em locais diferentes.

Quanto mais importantes forem os dados e as freqüências das alterações nos conjuntos de dados, mais frequente você deve fazer o backup. Se seus arquivos ocupam grande quantidade de espaço e fazem backup de todos eles provam ser desafiadores ou caros, você pode querer criar um conjunto de critérios quando fizer o backup dos dados. Isto pode fazer parte do seu plano de gerenciamento de dados (DMP).
