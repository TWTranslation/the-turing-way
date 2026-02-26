(rr-binderhub-build)=

# Construa seu próprio BinderHub

[mybinder.org](https://mybinder.org/) is the free, public BinderHub that hosts almost 100k Binder launches per week.
Por que você pode querer construir o seu próprio?

Binder [{term}`def<Binder>`] is an open source project maintained by volunteers and as such they ask that users stay within certain computational limitations in order to keep running costs as low as possible whilst still providing a usable service.
Ao hospedar seu próprio BinderHub, você pode oferecer seus usuários muito mais flexíveis e recursos personalizados.

Essas personalizações poderiam incluir:

- autenticação,
- recursos computacionais maiores por usuário,
- pilhas e pacotes da biblioteca sob medida,
- permitindo acesso a repositórios privados,
- armazenamento persistente para usuários,
- restringir o compartilhamento em uma determinada instituição ou equipe.

## Problemas que você pode enfrentar ao implantar um BinderHub

Os BinderHubs estão ficando cada vez mais populares entre universidades e institutos de pesquisa.
Isso porque eles podem facilitar vários exemplos do mesmo conjunto de cadernos para serem usados em um tutorial ou configuração da oficina.

Se estiver implantando um BinderHub hospedado em nuvem em nome da sua organização, pode precisar de permissões específicas na assinatura da plataforma de nuvem da sua organização.
As permissões que você precisa variarão de acordo com a plataforma na nuvem que você tem acesso a e suas políticas de Serviços de TI.
At minimum, you'll need to be able to assign [Role Based Access Control (RBAC)](https://docs.microsoft.com/en-us/azure/role-based-access-control/overview) to your resources so they can act autonomously in order to manage user traffic.
