(rr-vcs-git-compare)=

# Recuperando e Comparando Versões

(rr-vcs-versions-retrieving)=

## Recuperando versões anteriores

Para cancelar seu último commit (reverter para a versão anterior), execute o seguinte comando:

```
git revert HEAD
```

Este comando cria um novo commit que reverte as alterações feitas na última versão.
If you want to retrieve a version from weeks or months ago, start by using `git log` to find the SHA of the version you want to retrieve.
Para redefinir todo o seu projeto para essa versão, execute os seguintes comandos:

```
git checkout SHA_of_the_version
```

Se você quer a versão antiga de um único arquivo e não a versão anterior de todo o projeto, você pode fazê-lo usando o seguinte comando:

```
git checkout SHA_of_the_version -- your_file_name
```

(rr-vcs-versions-retrieving-practice)=

### Bom treino

Commits should be 'atomic', meaning that **they should do one simple thing and they should do it completely**.
Por exemplo, um commit 'atômico' poderia estar adicionando uma nova função ou renomeando uma variável.
Se muitas mudanças diferentes no seu projeto forem comprometidas juntas, pode ser difícil solucionar problemas se surgir algum erro nessa versão.
Além disso, a anulação de todo o compromisso pode desperdiçar trabalho válido e útil.

It is good practice to **specify the files to be committed**, that is, adding files to the staging area by name (`git add your_file_name`) rather than adding everything (`git add .`).
Isso impede você de empacotar diferentes mudanças involuntariamente.
Por exemplo, se você fez uma alteração para o arquivo A enquanto trabalha principalmente no arquivo B, Terão esquecido este aspecto quando se tratar de assumir compromissos.
With `git add .`, file A would be brought along for the ride.
If there are several _unrelated_ changes that should not be added together in a _single_ file, `git add -p your_file_name` will let you interactively choose which changes to add.
That said, **you do not necessarily need to do per-file commits** when working on multiple files, but for one single problem.
Por exemplo, se adicionarmos aqui uma figura a este capítulo, escolhendo uma para chamar a atenção de alguém que se esfrega:

```{figure} ../../../figures/flipped-taj-mahal.*
---
name: flipped-taj-mahal
alt: A flipped photograph of the Taj Mahal to grab the reader's attention.
---
Flipped Taj Mahal
```

dois arquivos são alterados:

1. Primeiro, o arquivo de figura é adicionado ao repositório do projeto.
2. Em seguida, uma linha é adicionada neste arquivo que faz referência à figura, então ela é exibida.

So two files are affected, but "Add figure to version control chapter" is a single, _atomic_ unit of work, so only one commit is necessary.

Finalmente, não commit nada que seja regenerado a partir de outros arquivos comprometidos numa versão (a menos que seja algo que levaria horas para regenerar).
Generated files, such as scripts, clutter up your repository and may contain features such as timestamps that can cause annoying file conflicts (see {ref}`rr-vcs-git-merge`).
You can instruct Git to ignore certain files by creating a file called `.gitignore` and including names of the file that you do not need to store in your Git repository.
Por exemplo, arquivos de configuração que podem mudar de ambiente para ambiente devem ser ignorados.

(rr-vcs-versions-comparando)=

## Comparando Versões

Em algum momento, você provavelmente vai precisar/querer comparar versões de um projeto, por exemplo, para ver qual versão foi utilizada para gerar um determinado resultado.

To address this issue, use the `git diff` function, that takes two input data sets and outputs the changes between them.

`git diff` is a multi-use function that runs on Git data sources such as commits, branches, files and more.
By default, `git diff` will show you any uncommitted changes since the last commit.
Se você quiser comparar duas coisas específicas, a sintaxe é:

```
git diff thing_a thing_b
```

For example, if you want to compare how a file has changed between two commits, use `git log` to get the SHAs of those commits and run:

```
git diff SHA_a:your_file_name SHA_b:your_file_name
```

Ou se você quisesse comparar dois branches, seria:

```
git diff branch_name other_branch_name
```

(rr-vcs-versions-comparing-practice)=

### Boa prática

With a little familiarity, `git diff` becomes an extremely powerful tool you can use to track what files have changed and exactly what those changes are.
Isso é extremamente valioso para descobrir bugs e comparar o trabalho feito por pessoas diferentes.
Be careful to **understand what exactly is being compared** and, where possible, **only compare the relevant files** for what you are interested in to avoid large amounts of extraneous information.
