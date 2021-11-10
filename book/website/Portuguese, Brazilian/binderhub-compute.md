(rr-binderhub-computador)=
# Recursos computacionais

BinderHub é neutro em nuvem, o que significa que pode ser implantado em qualquer plataforma em nuvem. Portanto, o requisito mínimo é uma assinatura de uma plataforma em nuvem à sua escolha.

Na verdade, o BinderHub não depende de forma alguma da hospedagem na nuvem e pode ser implantado em um sistema de computação no local.

## Kubernetes

[Kubernetes](https://kubernetes.io/) é um sistema para automatizar a implantação, dimensionamento (fazer mais ou menos cópias), e gerenciamento de contêineres através de um cluster de computação (não precisa ser baseado na nuvem). O BinderHub usa o Kubernetes para gerenciar os recursos solicitados pelos usuários do serviço Binder e para oferecer suporte às ferramentas que constroem os ambientes.

## Elmo

[Elmo](https://helm.sh/) é um gerenciador de pacotes para o Kubernetes. Pacotes vêm na forma de *Gráficos* que são um conjunto de instruções para implantar, atualize e gerencie aplicativos em execução em um cluster do Kubernetes. Eles podem facilitar a instalação e gerenciamento de aplicativos do Kubernetes e gráficos específicos para projetos podem ser publicados online. Por exemplo, o Gráfico de Elmo para BinderHub está disponível [aqui](https://jupyterhub.github.io/helm-chart/#development-releases-binderhub).

## repo2docker

[repo2docker](https://repo2docker.readthedocs.io/en/latest/?badge=latest) é uma ferramenta que compila automaticamente uma imagem Docker de um repositório de código dado um arquivo de configuração. Esta imagem Docker conterá todo o código, dados e recursos listados no repositório. Todo o software necessário para executar o código também será pré-instalado a partir do arquivo de configuração.

## JupyterHub

[JupyterHub](https://jupyter.org/hub) é um servidor multiusuário para Notebooks e contêineres de Júlio. No contexto da Binder, a função principal do JupyterHub é conectar o navegador do usuário à instância do BinderHub que executa no cluster do Kubernetes. No entanto, o JupyterHub pode ser mais personalizado para fornecer maior controle sobre a operação do BinderHub.

BinderHub pode ser considerado como uma camada fina que fica por cima dos repo2docker e JupyterHub, orquestrando suas interações e resolvendo URLs.

## O que acontece quando um link Binder é clicado?

1. O link para o repositório é resolvido pelo BinderHub.
2. O BinderHub pesquisa uma imagem Docker relacionada à referência fornecida (por exemplo, o hash de commit, ramificação ou tag).
3. **Se uma imagem Docker não for encontrada**, BinderHub solicita recursos do cluster Kubernetes para executar o repo2docker para fazer o seguinte:
   - Obter o repositório,
   - Criar uma imagem Docker contendo o software solicitado no arquivo de configuração,
   - Envie essa imagem para o registro Docker.
4. BinderHub envia a imagem Docker para JupyterHub.
5. JupyterHub solicita recursos do cluster Kubernetes para servir a imagem Docker.
6. O JupyterHub conecta o navegador do usuário ao ambiente Docker em execução.
7. JupyterHub monitora o recipiente para atividade e o destrói após um período de inatividade.
