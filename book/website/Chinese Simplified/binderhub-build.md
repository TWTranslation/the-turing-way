(rr-binderhub-build)=
# 构建你自己的绑定Hub

[mybinder.org](https://mybinder.org/) 是免费的 BinderHub ，它每周主办将近100k Binder 发射。 你为什么想要建立自己的东西？

Binder [{term}`def<Binder>`] 是一个由志愿者维护的开放源码项目，因此他们要求用户保持在一定的计算限制范围内，以便在仍然提供可用服务的同时尽可能低地运行成本。 通过托管您自己的 BinderHub，您可以为您的用户提供更加灵活和更有针对性的资源。

这些定制可包括：

- 身份验证，
- 每个用户更多的计算资源
- 装饰库堆栈和包裹，
- 允许访问私人repos,
- 针对用户的持久存储。
- 限制某个机构或团队内共享。

## 部署BinderHub 时可能面临的问题

BinderHubs在各大学和研究机构中越来越受欢迎。 这是因为他们可以为同一套笔记本的多个实例提供便利，供教程或车间使用。

如果您代表您的组织部署了一个云托管的 BinderHub ，您可能需要您组织的云平台订阅的特定权限。 您所需的哪些权限将根据您有权访问的云平台和您的IT服务政策而变化。 起码的 您需要能够将 [基于角色的访问控制 (RBAC)](https://docs.microsoft.com/en-us/azure/role-based-access-control/overview) 分配给您的资源，以便他们能够自主地管理用户流量。
