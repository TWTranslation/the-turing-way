(rr-vcs-git-merge)=

# Mesclando Branches no Git

(rr-vcs-merge-command)=

## The `git merge` Command

Depois de terminar algum trabalho em uma branch e você está pronto para integrá-lo ao seu projeto principal (ou qualquer outra branch), você pode mesclar o branch em que trabalhou no branch principal ou em qualquer outro branch alvo com seu interesse.
Você também pode usar a fusão para combinar trabalho que outras pessoas fizeram com seus próprios trabalhos e vice-versa.

Para mesclar uma branch, branch_A, em outra branch, branch_B, mude para branch_A via:

```
git checkout branch_A
```

Mesclá-lo em branch_B por:

```
git merge branch_B
```

Mesclar não será possível se houver alterações no diretório de trabalho ou na área de preparação que possam ser escritas pelos arquivos que você está mesclando.
Se isto acontecer, não haverá conflitos de fusões em arquivos individuais.
Você precisa fazer commit ou ocultar os arquivos que lista e então tentar novamente.
As mensagens de erro são as seguintes:

```
error: Entry 'your_file_name' not update. Cannot merge. (Changes in working directory)
```

ou

```
error: Entry 'your_file_name' would be overwritten by merge. Cannot merge. (Changes in staging area)
```

(rr-vcs-merge-command-practice)=

### Boa prática

First and foremost, your **main branch should always be stable**.
Apenas merge de trabalho que está terminado e testado (por exemplo, em um branch diferente).
Se seu projeto for colaborativo, então é uma boa ideia mesclar as alterações que outros fazem em seu próprio trabalho frequentemente ou compartilhar suas alterações com seus colaboradores.
Se você não fizer isso com frequência, será muito fácil que conflitos de mesclagem surjam (próxima seção).

(rr-vcs-merge-conflicts)=

## Conflitos de Integração

Quando as alterações são feitas no mesmo arquivo em diferentes branches, às vezes essas alterações podem ser incompatíveis.
Isso acontece mais frequentemente em projetos colaborativos, mas também em projetos individuais.
Digamos que há um projeto que contém um arquivo com esta linha de código:

```
print('hello world')
```

Suponha que uma pessoa, na sua branch, decida "animar um pouco" e muda a linha para:

```
print('hello world!!!')
```

enquanto outra pessoa, em outra branch, decide mudá-la para:

```
print('Hello World')
```

Continuam a trabalhar nas suas respectivas branches e acabam por decidir a fusão.
Their version control software then goes through and combines their changes into a single version of the file; _but_, when it gets to the `hello world` statement, it does not know which version to use.
Este é um conflito de merge: alterações incompatíveis foram feitas no mesmo arquivo.

Quando surge um conflito de merge, ele será sinalizado durante o processo de merge.
Dentro dos arquivos com conflitos, as alterações incompatíveis serão marcadas para que você possa corrigi-los:

```
<<<<<<< HEAD
print('hello world!!!')
=======
print('Hello World')
>>>>>>> main
```

`<<<<<<<`: Indicates the start of the lines that had a merge conflict.
O primeiro conjunto de linhas são as linhas do arquivo em que você estava tentando mesclar as alterações.

`=======`: Indicates the breakpoint used for comparison.
Ele separa as alterações confirmadas pelo usuário (acima), das mudanças vindas da merge (abaixo), para comparação visual.

`>>>>>>>`: Indicates the end of the lines that had a merge conflict.

Você resolve um conflito editando o arquivo para mesclar manualmente as partes do arquivo que o Git teve problemas.
Isso pode significar descartar suas alterações ou as de outra pessoa ou fazer uma mistura das duas.
You will also need to delete the `<<<<<<<`, `=======`, and `>>>>>>>` in the file.
In this project, the users may decide in favour of one `hello world` over another, or they may decide to replace the conflict with:

```
print('Hello World!!!')
```

Depois de ter corrigido os conflitos, commit a nova versão.
resolveu agora o conflito.
If during the process, you need a reminder of which files the conflicts are in, you can use `git status` to find out.

Se você achar que há conflitos particularmente desagradáveis, e você deseja abortar o merge que pode usar:

```
git merge --abort
```

(rr-vcs-merge-conflicts-practice)=

### Boa prática

Antes de começar a tentar resolver conflitos, certifique-se de entender completamente as mudanças e como elas são incompatíveis para evitar o risco de enredar as coisas.
Os conflitos de mesclagem podem intimidar para resolver, especialmente se estiver a mesclar filiais que há muitos commits divergiram e agora têm inúmeras incompatibilidades.
No entanto, vale a pena lembrar que as suas versões anteriores estão seguras e que você pode resolver o problema sem afetar as versões anteriores.
This is why it is good practice to **merge other's changes into your work frequently**.

Existem instrumentos disponíveis para ajudar a resolver conflitos de fusão, alguns são livres e outros não.
Encontre e familiarize-se com um que funcione para você.
Commonly used merge tools include [KDiff3](http://kdiff3.sourceforge.net/), [Beyond Compare](https://www.scootersoftware.com/), [Meld](http://meldmerge.org/), and [P4Merge](https://www.perforce.com/products/helix-core-apps/merge-diff-tool-p4merge).
Para definir uma ferramenta como padrão:

```
git config --global merge.tool name_of_the_tool
```

e lançá-lo com:

```
git mergetool
```

Fundamentalmente, a melhor maneira de lidar com os conflitos de fusões é, tanto quanto possível, tentar evitá-los.
Você pode melhorar suas chances disto mantendo as ramificações limpas e focadas em uma única questão e envolvendo o menor número de arquivos possível.
Antes de mesclar, certifique-se de saber o que está em ambas as ramificações.
Se você não é o único que tem trabalhado nas filiais, Seguidamente, mantenham as linhas de comunicação abertas, pelo que todos conhecem o que os outros estão a fazer.
