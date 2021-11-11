(rr-binderhub-compute)=
# 计算资源

BinderHub 是云中性的，这意味着它可以部署在任何云台上。 因此，最低要求是订阅您选择的云端平台。

事实上，BinderHub 根本不依赖云端托管，可以部署在一个前提下的计算系统。

## Kubernetes

[Kubernetes](https://kubernetes.io/) 是一个自动部署、缩放(制作更少副本)的系统， 在计算集群中进行集装箱管理(不必以云为基础)。 BinderHub 使用Kubernetes来管理Binder服务用户所需的资源，并支持建立环境的工具。

## 头盔

[Helm](https://helm.sh/) 是 Kubernetes 的一个软件包管理器。 包的形式是 *Charts* ，它是一组要部署的指令， 升级和管理运行于Kubernetes集群的应用程序。 它们可以使安装和管理Kubernetes应用程序变得更加容易，项目的具体图表可以在网上公布。 例如，BinderHub 的头盔图在这里有 [](https://jupyterhub.github.io/helm-chart/#development-releases-binderhub)。

## repo2docker

[repo2docker](https://repo2docker.readthedocs.io/en/latest/?badge=latest) 是一个自动从代码仓库生成Docker 图像并赋予配置文件的工具。 此 Docker 图像将包含所有列于仓库中的代码、数据和资源。 运行代码所需的所有软件也将从配置文件中预先安装。

## JupyterHub

[JupyterHub](https://jupyter.org/hub) 是用于Jupyter 笔记本和容器的多用户服务器。 在Binder，JupyterHub 的主要作用是将用户的浏览器连接到 Kubernetes 集群中运行的BinderHub 实例。 但是，可以进一步定制朱皮特尔胡布，以便对宾德尔胡布的业务进行更大的控制。

BinderHub 可以被视为位于repo2docker 和 JupyterHub 顶部的薄层，调节他们的互动和解析URL。

## 点击Binder链接会发生什么情况？

1. 与仓库的链接由 BinderHub 解决。
2. 与提供的引用相关的 Docker 图像(例如，git commit hash, brant or tag)进行绑定搜索。
3. **如果找不到 Docker 图像**，BinderHub 请求来自Kubernetes 集群的资源来运行repo2docker来执行以下操作：
   - 获取资源库，
   - 构建包含配置文件中请求的软件的 Docker 图像，
   - 将此图像推送到 Docker 登记册。
4. BinderHub 将Docker图像发送给JupyterHub
5. JupyterHub 请求来自Kubernetes集群的资源来为Docker图像服务。
6. JupyterHub 将用户的浏览器连接到运行的 Docker 环境。
7. JupyterHub 监测容器的活动并在一段时间不活动后摧毁容器。
