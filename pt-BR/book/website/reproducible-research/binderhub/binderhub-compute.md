(rr-binderhub-computador)=

# Recursos computacionais

BinderHub é neutro em nuvem, o que significa que pode ser implantado em qualquer plataforma em nuvem.
Portanto, o requisito mínimo é uma assinatura de uma plataforma em nuvem à sua escolha.

Na verdade, o BinderHub não depende de forma alguma da hospedagem na nuvem e pode ser implantado em um sistema de computação no local.

## Kubernetes

[Kubernetes](https://kubernetes.io/) is a system for automating deployment, scaling (making more or fewer copies), and management of containers across a compute cluster (it doesn't have to be cloud-based).
O BinderHub usa o Kubernetes para gerenciar os recursos solicitados pelos usuários do serviço Binder e para oferecer suporte às ferramentas que constroem os ambientes.

## Elmo

[Helm](https://helm.sh/) is a package manager for Kubernetes.
Packages come in the form of _Charts_ which are a set of instructions to deploy, upgrade and manage applications running on a Kubernetes cluster.
Eles podem facilitar a instalação e gerenciamento de aplicativos do Kubernetes e gráficos específicos para projetos podem ser publicados online.
For example, the Helm Chart for BinderHub is available [here](https://jupyterhub.github.io/helm-chart/#development-releases-binderhub).

## repo2docker

[repo2docker](https://repo2docker.readthedocs.io/en/latest/?badge=latest) is a tool that automatically builds a Docker image from a code repository given a configuration file.
Esta imagem Docker conterá todo o código, dados e recursos listados no repositório.
Todo o software necessário para executar o código também será pré-instalado a partir do arquivo de configuração.

## JupyterHub

[JupyterHub](https://jupyter.org/hub) is a multi-user server for Jupyter Notebooks and containers alike.
No contexto da Binder, a função principal do JupyterHub é conectar o navegador do usuário à instância do BinderHub que executa no cluster do Kubernetes.
No entanto, o JupyterHub pode ser mais personalizado para fornecer maior controle sobre a operação do BinderHub.

BinderHub pode ser considerado como uma camada fina que fica por cima dos repo2docker e JupyterHub, orquestrando suas interações e resolvendo URLs.

## O que acontece quando um link Binder é clicado?

1. O link para o repositório é resolvido pelo BinderHub.
2. O BinderHub pesquisa uma imagem Docker relacionada à referência fornecida (por exemplo, o hash de commit, ramificação ou tag).
3. **If a Docker image is not found**, BinderHub requests resources from the Kubernetes cluster to run repo2docker to do the following:
   - Obter o repositório,
   - Criar uma imagem Docker contendo o software solicitado no arquivo de configuração,
   - Envie essa imagem para o registro Docker.
4. BinderHub envia a imagem Docker para JupyterHub.
5. JupyterHub solicita recursos do cluster Kubernetes para servir a imagem Docker.
6. O JupyterHub conecta o navegador do usuário ao ambiente Docker em execução.
7. JupyterHub monitora o recipiente para atividade e o destrói após um período de inatividade.
