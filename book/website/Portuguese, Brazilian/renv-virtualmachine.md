(rr-renv-vm)=
# Máquinas virtuais

(rr-renv-vm-what)=
## O que são Máquinas Virtuais?

As Máquinas Virtuais (PMs) empacotam essencialmente um computador inteiro como um aplicativo que pode ser executado. Como exemplo, a figura abaixo mostra um laptop de janela (observe o botão de busca de janelas no canto inferior esquerdo) executando uma máquina de ubuntu virtual (note o terminal colocando o sistema operacional). A máquina executando a VM é chamada de `máquina host`.

Usando software como [VirtualBox](https://www.virtualbox.org/) ou [Vagrant](https://www.vagrantup.com/), um usuário pode criar e executar qualquer número de VMs. Como provavelmente poderia imaginar, ter várias VMs a serem executadas de uma só vez pode ser um esgoto de memória. Portanto, só porque pode administrar várias VMs não quer dizer que devesse.

```{figure} ../../figures/virtual-machine.png
---
nome: máquina virtual
alt: Uma captura de tela de uma Máquina Virtual.
---

```

Os usuários podem baixar, instalar, fazer backup e destruir VMs de qualquer forma, por isso eles são uma ferramenta atraente para o compartilhamento de pesquisas reprodutíveis. Pesquisas muitas vezes requerem peças específicas de software ou configurações do sistema. Se um pesquisador desejar reproduzir o trabalho de outro em seu computador, realizar as alterações necessárias em seu ambiente para executar o projeto pode impactar o seu trabalho. Por exemplo, na seção {ref}`rr-renv-useful` deste capítulo, descrevemos como usar uma versão diferente do Python pode levar a mudanças inesperadas nos resultados de uma análise. Diga a um pesquisador que instala uma versão atualizada do Python para replicar uma análise, porque a análise requer que ele só esteja presente na versão atualizada. Ao fazê-lo, põem em risco o seu próprio trabalho. VMs removem esse risco; qualquer ferramenta baixada ou configurações alteradas afetará apenas a VM, mantendo a pesquisa de reprodutor segura. Se fizerem inadvertidamente quebrar algo na VM, podem apagá-lo e fazer outro. Com efeito, as VMs são uma área quarentena de pessoas.

(rr-renv-vm-pesquisa)=
## Usando Máquinas Virtuais para Pesquisa Reprodutível

Máquinas virtuais podem ser compartilhadas exportando-as como arquivos individuais. Outro pesquisador pode importar esse arquivo usando seu próprio software de virtualização, como o [VirtualBox](https://www.virtualbox.org/) e abrir uma cópia da VM que conterá todos os arquivos de software e configurações criados pela pessoa que fez a VM. Por conseguinte, na prática, terão uma versão funcional do projecto, sem a dificuldade de o pôr a si próprio.

(rr-renv-vm-pesquisa-settingup)=
### Configurando uma Máquina Virtual

Primeiro, escolha uma ferramenta para gerar as VMs. Here the widely-used [VirtualBox](https://www.virtualbox.org/) is chosen. Baixe e instale-o no seu sistema. Para criar uma nova máquina, clique "Novo" no canto superior esquerdo. Uma janela aparecerá onde você pode digitar um nome para a máquina e selecionar que sistema operacional (e versão) utilizar. Na figura abaixo, uma máquina chamada `demo_VM` rodando Ubuntu está sendo criada:

```{figure} ../../figures/vm-create-machine.png
---
nome: vm-create-machine
alt: Uma captura de tela mostrando uma Máquina Virtual foi criada.
---

```

Conforme você clica, você pode ajustar outras características da máquina a ser criada, como quanta memória ela deve ter acesso. As opções padrão são adequadas para a maioria dos fins, mas este processo permite a personalização.

(rr-renv-vm-pesquisa-iniciando)=
### Iniciando uma Máquina Virtual

Para iniciar uma máquina virtual, selecione a máquina na lista de VMs à esquerda, e clique na `Comece` seta no topo:

```{figure} ../../figures/vm-start-machine.png
---
nome: vm-start-machine
alt: Uma captura de tela mostrando como iniciar uma Máquina Virtual.
---

```

(rr-renv-vm-pesquisa-compartilhamento)=
### Compartilhando Máquinas Virtuais

Um pesquisador pode fazer seu VM e, em seguida, exportá-lo. Para exportar uma VM, clique `Arquivo` no canto superior esquerdo e `Exportar`. Isto irá exportar a VM como um único arquivo que pode ser compartilhado.

```{figure} ../../figures/vm-export-machine.png
---
nome: vm-export-machine
alt: Uma captura de tela mostrando como exportar uma Máquina Virtual.
---

```

Alguém que tem acesso a este arquivo e o VirtualBox instalado precisa apenas clicar no `Arquivo` à esquerda superior depois `Importar` para selecionar esse arquivo. Uma vez importado, eles poderão iniciar a VM conforme descrito anteriormente, selecionando-o a partir do menu clicando na seta para início verde na parte superior.
