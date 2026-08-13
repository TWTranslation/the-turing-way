(rr-renv-options)=

# Capturando Ambientes Computacionais

Existem várias maneiras de capturar ambientes computacionais.
As principais abrangidas neste capítulo serão os Sistemas de Gestão de Pacotes, Binder, Máquinas Virtuais e Contêineres.
Cada um tem seus prós e contras, e a opção mais apropriada para você dependerá da natureza do seu projeto.

Podem ser amplamente divididos em duas categorias: aquelas que capturam apenas o software e suas versões usadas em um ambiente (Sistemas de Gerenciamento de ackage), e aqueles que replicam todo um ambiente computacional - incluindo o sistema operacional e configurações personalizadas (Máquinas Virtuais e Contêiners).

Outra forma de as separar é através do modo como a investigação reproduzida é apresentada ao reprodutor.
Usar Binder ou uma Máquina Virtual cria um resultado muito mais gráfico, do tipo GUI.
Em contraste, as saídas dos contêineres e dos Sistemas de Gestão de Pacotes são mais facilmente interagidas através da linha de comando.

```{figure} ../../../figures/computational-environments.*
---
name: computational-environments
alt: A depiction of the various tools used to capture computational environments
---
Ways of capturing computational environments
```

Uma breve descrição de cada uma dessas ferramentas é fornecida abaixo

(rr-renv-options-pms)=

## Sistemas de Gerenciamento de Pacotes

Package Management Systems [{term}`def<Package Management System>`] are tools used to install and keep track of the software (and critically versions of software) used on a system and can export files specifying these required software packages/versions.
Os arquivos podem ser compartilhados com outras pessoas que podem usá-los para replicar o ambiente, seja manualmente ou através de seus sistemas de gerenciamento de pacotes.

(rr-renv-options-binder)=

## Binder

Binder [{term}`def<Binder>`] is a service which generates fully-functioning versions of projects from a git repository and serves them on the cloud.
Esses projetos "binderizados" podem ser acessados e interagidos por outros através de um navegador web.
Para fazer isso, a Binder requer que o software (e, opcionalmente, as versões) necessárias para executar o projeto sejam especificados.
Users can make use of Package Management Systems or Dockerfiles (discussed in the {ref}`rr-renv-options-containers` sections) to do this if they so desire.

(rr-renv-options-vm)=

## Máquinas virtuais

Virtual Machines [{term}`def<Virtual machine>`] are simulated computers.
Um usuário pode fazer um computador "virtual" muito facilmente, especificando o sistema operacional que ele quer que ele tenha, entre outros recursos, e execute-o como qualquer outro aplicativo.
Dentro do aplicativo será a área de trabalho, sistema de arquivos, bibliotecas de software padrão e outros recursos da máquina especificada.
Eles podem ser interagidos como se fosse um computador de verdade.
Máquinas virtuais podem ser facilmente replicadas e compartilhadas.
Isso permite que pesquisadores criem Máquinas Virtuais, façam pesquisa sobre elas e depois salvem seu estado juntamente com seus arquivos, configurações e saídas.
Poderão depois distribuí-las como um projecto em pleno funcionamento.

(rr-renv-options-containers)=

## Contêineres

Containers [{term}`def<Container>`] offer many of the same benefits as Virtual Machines.
Actuam, essencialmente, como máquinas completamente separadas, que podem conter os seus próprios arquivos, programas e configurações.

A diferença é que as Máquinas Virtuais incluem um sistema operacional inteiro, juntamente com todo o software associado que é normalmente empacotado com ele - independentemente de o projeto fazer uso do software associado.
Os contêineres só contêm o software e arquivos definidos explicitamente dentro deles para executar o projeto que eles contêm.
Isto os torna muito mais leves do que as Máquinas Virtuais.

Os contêineres são particularmente úteis se projetos precisarem ser executados em ambientes de computação de alto desempenho.
Since they already _contain_ all the necessary software, they save having to install anything on an unfamiliar system where the researcher may not have the required permissions to do so.
