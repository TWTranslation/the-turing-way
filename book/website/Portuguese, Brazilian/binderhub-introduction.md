(rr-binderhub-inn-ction)=
# Introdução a BinderHub

[BinderHub](https://binderhub.readthedocs.io/en/latest/index.html) é uma tecnologia baseada em nuvem que pode iniciar um repositório de código (do GitHub, GitLab, e outros) em uma janela do navegador, tal que o código pode ser executado e interagido. Uma URL única é gerada permitindo que o código interativo seja facilmente compartilhado.

O objetivo dessas instâncias binárias é promover a reprodutibilidade em projetos de pesquisa, incentivando pesquisadores a documentar suas dependências de software e produzir diversão, ambientes interativos!

Binder, como uma interface de usuário, é útil para reprodutibilidade porque o código precisa ser controlado por versão e o ambiente computacional precisa ser documentado para se beneficiar da funcionalidade da Binder. Cada alteração do repositório de código também força uma nova compilação da instância Binder. Isso atua como um proxy para uma integração contínua do ambiente computacional, pois a instância Binder quebrará se o arquivo de configuração não for atualizado.

Saiba mais sobre Integração Contínua {ref}`aqui<rr-ci>`.

## Como funciona um BinderHub?

O BinderHub depende de ferramentas e recursos diferentes para criar e abrir as instâncias binárias.

Para obter mais informações, consulte esta [explicação de alto nível sobre a arquitetura de BinderHub](https://binderhub.readthedocs.io/en/latest/overview.html).
