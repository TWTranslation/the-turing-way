(rr-vcs-git)=
# Primeiros passos com o Git

Para começar, por favor, certifique-se de que seu Git está instalado em seu computador. Instruções para instalar o Git nas máquinas Linux, Windows e Mac estão disponíveis [aqui](https://Git-scm.com/book/en/v2/Getting-Started-Installing-Git). Uma vez que a instalação estiver completa, vá para o diretório do seu projeto através do terminal ou da interface de linha de comando (por exemplo, `cd my-project-folder`). Sua pasta do projeto contém todos os seus arquivos, incluindo subdiretórios.

Ao trabalhar em um projeto, você fará numerosas alterações em seus arquivos conforme avança. Às vezes você pode precisar desfazer as mudanças, olhar para versões anteriores ou comparar versões. Salvar cada versão individualmente (como `version_1.py` e `version_2.py`) é confuso e rapidamente se torna impraticável.

Commits servem como checkpoints onde arquivos individuais ou um projeto inteiro podem ser revertidos com segurança quando necessário. Ao criar commits, você pode salvar as versões do seu código e alternar entre eles/compará-los facilmente sem bagunçar o seu diretório.

Para começar com seu repositório Git, execute o seguinte comando Git no terminal para criar/inicializar seu repositório Git,

```
git init
```

Isto só tem de ser feito uma vez por projecto.

Pense no repositório como um lugar onde a história está sendo armazenada. Quando você inicializa um repositório com `git init`, todos os arquivos em seu projeto não seriam adicionados ao repositório do Git, pois são descontrolados pelo Git por padrão. Portanto, o próximo passo é adicionar seus arquivos ao repositório Git e permitir que o Git os rastree.

Execute o seguinte comando para adicionar todos os arquivos na pasta atual:
```
git add .
```
OU execute o seguinte comando para adicionar apenas os arquivos ('seu_file_name' neste exemplo):
```
git add seu_nome_arquivo
```

Esse comando coloca seus arquivos recém-adicionados ou qualquer outra mudança no que é chamado de "Sting".

```{figure} ../../figures/change-stage-repo.png
---
nome: change-stage-repo
alt: Uma ilustração do `git add` e dos comandos do commit.
---
Como 'git add' e 'git commit' funciona
```

Se você nunca tem certeza de quais arquivos foram adicionados, quais arquivos foram alterados ou quais arquivos não estão monitorados, você pode executar o seguinte para descobrir:

```
git status
```

O próximo passo é "commit" quaisquer alterações armazenadas na área de teste para que elas sejam gravadas no seu repositório.

```
commit no git
```
Parabéns, você terminou de configurar seu repositório!

Você aprenderá mais sobre `git commit` no próximo capítulo.
