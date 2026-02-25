(rr-vcs-git)=

# Primeiros passos com o Git

Para começar, por favor, certifique-se de que seu Git está instalado em seu computador.
Instructions for installing Git on Linux, Windows and Mac machines are available [here](https://Git-scm.com/book/en/v2/Getting-Started-Installing-Git).
Once the installation is complete, go to your project directory via terminal or command-line interface (for example, `cd my-project-folder`).
Sua pasta do projeto contém todos os seus arquivos, incluindo subdiretórios.

Ao trabalhar em um projeto, você fará numerosas alterações em seus arquivos conforme avança.
Às vezes você pode precisar desfazer as mudanças, olhar para versões anteriores ou comparar versões.
Saving each version individually (such as `version_1.py` and `version_2.py`) is messy and quickly becomes impractical.

Commits servem como checkpoints onde arquivos individuais ou um projeto inteiro podem ser revertidos com segurança quando necessário.
Ao criar commits, você pode salvar as versões do seu código e alternar entre eles/compará-los facilmente sem bagunçar o seu diretório.

Para começar com seu repositório Git, execute o seguinte comando Git no terminal para criar/inicializar seu repositório Git,

```
git init
```

Isto só tem de ser feito uma vez por projecto.

Pense no repositório como um lugar onde a história está sendo armazenada.
When you first initialise a repository with `git init`, all of the files in your project would not be added to the Git repository as they are  untracked by Git by default.
Portanto, o próximo passo é adicionar seus arquivos ao repositório Git e permitir que o Git os rastree.

Execute o seguinte comando para adicionar todos os arquivos na pasta atual:

```
git add .
```

OU execute o seguinte comando para adicionar apenas um arquivo específico (chamado 'your_file_name' neste exemplo):

```
git add your_file_name
```

Este comando coloca os arquivos recém-adicionados ou quaisquer outras alterações no que é chamado de área de "preparação".

```{figure} ../../../figures/change-stage-repo.*
---
name: change-stage-repo
alt: An illustration of the `git add` and git commit Commands.
---
How `git add` and `git commit` works
```

Se você nunca tem certeza de quais arquivos foram adicionados, quais arquivos foram alterados ou quais arquivos não estão monitorados, você pode executar o seguinte para descobrir:

```
git status
```

O próximo passo é "commit" quaisquer alterações armazenadas na área de teste para que elas sejam gravadas no seu repositório.

```
git commit
```

Parabéns, você terminou de configurar seu repositório!

You will learn more about `git commit` in the next chapter.
