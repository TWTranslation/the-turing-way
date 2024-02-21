(rr-binderhub-build)=
# Construa seu próprio BinderHub

[mybinder.org](https://mybinder.org/) é o binderHub público gratuito, que hospeda quase 100k Binder lançamentos por semana. Por que você pode querer construir o seu próprio?

A Binder [{term}`def<Binder>`] é um projeto de código aberto mantido por voluntários e, como tal, pede que os usuários permaneçam dentro de certas limitações computacionais para manter os custos de execução o mais baixos possível, enquanto ainda fornecem um serviço utilizável. Ao hospedar seu próprio BinderHub, você pode oferecer seus usuários muito mais flexíveis e recursos personalizados.

Essas personalizações poderiam incluir:

- autenticação,
- recursos computacionais maiores por usuário,
- pilhas e pacotes da biblioteca sob medida,
- permitindo acesso a repositórios privados,
- armazenamento persistente para usuários,
- restringir o compartilhamento em uma determinada instituição ou equipe.

## Problemas que você pode enfrentar ao implantar um BinderHub

Os BinderHubs estão ficando cada vez mais populares entre universidades e institutos de pesquisa. Isso porque eles podem facilitar vários exemplos do mesmo conjunto de cadernos para serem usados em um tutorial ou configuração da oficina.

Se estiver implantando um BinderHub hospedado em nuvem em nome da sua organização, pode precisar de permissões específicas na assinatura da plataforma de nuvem da sua organização. As permissões que você precisa variarão de acordo com a plataforma na nuvem que você tem acesso a e suas políticas de Serviços de TI. No mínimo você precisa ser capaz de atribuir a função [Role Based Access Control (RBAC)](https://docs.microsoft.com/en-us/azure/role-based-access-control/overview) aos seus recursos para que eles possam agir autonomamente a fim de gerenciar o tráfego do usuário.
