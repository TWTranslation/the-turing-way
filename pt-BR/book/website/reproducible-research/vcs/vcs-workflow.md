(rr-vcs-workflow)=

# Workflow Geral

O controle de versão é uma abordagem sistemática para gravar alterações feitas em um arquivo, ou conjunto de arquivos, ao longo do tempo.
Isso permite que você e seus colaboradores acompanhem o histórico, veja o que mudou e lembre versões específicas mais tarde, quando necessário.
Um procedimento típico para usar o controle de versão é o seguinte:

1. Criar arquivos - estes podem conter texto, código ou ambos.
2. Trabalhe nesses arquivos, alterando, excluindo ou adicionando novo conteúdo.
3. Criar um snapshot do status do arquivo (também conhecido como versão) neste momento.
4. Document what was changed in the version history of that file.

The snapshot process is often done manually for text or presentation documents (for instance by naming files with the suffixes `v01`, `v02` and so on).
A description of the changes for each version is sometimes made via an external document like a spreadsheet.
Finding the latest version can also be facilitated by putting old versions in a subfolder.
This manual process is not very practical when a lot of files are changing, like when one creates code or work with data.
In these cases, the use of a version control software is highly recommended.

Este processo de criação de um snapshot é descrito de forma diferente em um software diferente de controle de versão.
Por exemplo, o Git descreve isso como "um commit". Some systems call it "a time-point" or "a checkpoint";
and this is referred to as "saving your work" in other cases such as in [Google docs](https://docs.google.com/) or [HackMD](http://hackmd.io/).
The version history may be more or less informative.

À medida que você continua salvando seu trabalho adicionando alterações, você faz cada vez mais snapshots.
You can think of these as saving versions of these files.
Se você precisar voltar para uma versão anterior de um arquivo por causa de um erro, ou se você mudou de ideia sobre uma atualização anterior, você pode acessar o arquivo na sua versão preferida, ou retornar todo o seu projeto a um estado passado.

```{figure} ../../../figures/main-branch.*
---
name: main-branch
alt: >
  A line of circles, with an arrow pointing from the left to the right, connecting the circles.
  The circles represent different snapshot of a file, they are added sequentially.
  An arrow goes from the last circle to several circles on the left, representing the possibility to return to a past state of the file.
---
Version history with a single branch.
```

In many version control systems (or in a special document if you do manual version control), you will be able to add a comment for each snapshot.
Clear and concise comments make it easier to get an fast overview of the changes that were made in each versions.
Isso garante que é fácil encontrar o que você está procurando quando precisa voltar para uma versão passada.
Seus colaboradores lhe agradecerão, mas também as futuras versões de si mesmo.
