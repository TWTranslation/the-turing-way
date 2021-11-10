(rr-vcs-git-merge)=
# Mesclando filiais no Git

(rr-vcs-merge-command)=
## O `git merge` Comando

Depois de terminar algum trabalho em um branch e você está pronto para integrá-lo ao seu projeto principal (ou qualquer outra ramificação), você pode mesclar o branch em que trabalhou no branch principal ou em qualquer outro branch alvo com seu interesse. Você também pode usar a fusão para combinar trabalho que outras pessoas fizeram com seus próprios trabalhos e vice-versa.

Para mesclar um branch, branch_A, em outro branch, branch_B, mude para branch_A via:
```
git checkout branch_A
```
Mesclá-lo em branch_B por:

```
git merge branch_B
```

Mesclar não será possível se houver alterações no diretório de trabalho ou na área de preparação que possam ser escritas pelos arquivos que você está mesclando. Se isto acontecer, não haverá conflitos de fusões em arquivos individuais. Você precisa fazer commit ou ocultar os arquivos que lista e então tentar novamente. As mensagens de erro são as seguintes:

```
erro: Entry 'your_file_name' não atualizou. Não pode mesclar. (Mudanças no diretório de trabalho)
```

ou

```
erro: A entrada 'your_file_name' seria substituída pela merge. Não pode mesclar. (Mudanças na área de preparo)
```

(rr-vcs-merge-command-practice)=
### Boa prática

Primeiro e mais importante, seu **ramo principal deve ser sempre estável**. Apenas merge de trabalho que está terminado e testado (por exemplo, em um branch diferente). Se seu projeto for colaborativo, então é uma boa ideia mesclar as alterações que outros fazem em seu próprio trabalho frequentemente ou compartilhar suas alterações com seus colaboradores. Se você não o fizer com frequência, é muito fácil mesclar conflitos que surgem (próxima seção).

(rr-vcs-merge-conflicts)=
## Conflitos de Integração

Quando as alterações são feitas no mesmo arquivo em diferentes branches, às vezes essas alterações podem ser incompatíveis. Isso acontece mais frequentemente em projetos colaborativos, mas também em projetos solares. Diga que há um projeto que contém um arquivo com esta linha de código:

```
print('olá mundo')
```

Suponha uma pessoa, em seu ramo, decide "subir um pouco" um pouco e muda a linha para:

```
print('olá mundo!!!')
```

enquanto outra pessoa, em outro ramo, decide mudá-la para:

```
print('Olá Mundo')
```

Continuam a trabalhar nas suas respectivas filiais e acabam por decidir a fusão. O seu software de controle de versão passa e combina as suas alterações em uma única versão do arquivo; *mas*, quando se trata da declaração do `olá mundo` , não se sabe qual versão usar. Este é um conflito de merge: alterações incompatíveis foram feitas no mesmo arquivo.

Quando surge um conflito de merge, ele será sinalizado durante o processo de merge. Dentro dos arquivos com conflitos, as alterações incompatíveis serão marcadas para que você possa corrigi-los:

```
<<<<<<< HEAD
print('olá mundo!!!')
=======
print('Olá Mundod')
>>>>>>> principal
```
`<<<<<<<`: Indica o início das linhas que tiveram um conflito de merge. O primeiro conjunto de linhas são as linhas do arquivo em que você estava tentando mesclar as alterações.

`=======`: Indica o ponto de interrupção usado para comparação. Ele separa as alterações confirmadas pelo usuário (acima), das mudanças vindas da merge (abaixo), para comparação visual.

`>>>>>>>`: Indica o final das linhas que tiveram um conflito de merge.

Você resolve um conflito editando o arquivo para mesclar manualmente as partes do arquivo que o Git teve problemas. Isso pode significar descartar suas mudanças ou outras pessoas ou misturar as duas. Você também precisará apagar o `<<<<<<<`, `=======`, , e `>>>>>>>` no arquivo. Neste projeto, os usuários podem decidir a favor de um `olá` em relação a outro, ou eles podem decidir substituir o conflito com:

```
print('Olá Mundo!!!')
```

Depois de ter corrigido os conflitos, commit a nova versão. V. Exa. resolveu agora o conflito. Se durante o processo, você precisa de um lembrete de quais arquivos estão nos conflitos, você pode usar `git status` para descobrir.

Se você achar que há conflitos particularmente desagradáveis, e você deseja abortar o merge que pode usar:
```
git merge --abort
```

(rr-vcs-merge-conflicts-practice)=
### Boa prática

Antes de começar a tentar resolver conflitos, certifique-se de entender completamente as mudanças e como elas são incompatíveis para evitar o risco de enredar as coisas. Os conflitos de mesclagem podem intimidar para resolver, especialmente se estiver a mesclar filiais que há muitos commits divergiram e agora têm inúmeras incompatibilidades. No entanto, vale a pena lembrar que as suas versões anteriores estão seguras e que você pode resolver o problema sem afetar as versões anteriores. É por isso que é uma boa prática **mesclar as alterações de outros no seu trabalho com frequência**.

Existem instrumentos disponíveis para ajudar a resolver conflitos de fusão, alguns são livres e outros não. Encontre e familiarize-se com um que funcione para você. As ferramentas de mesclagem comumente usadas incluem [KDiff3](http://kdiff3.sourceforge.net/), [Além da Comparação](https://www.scootersoftware.com/), [Campo](http://meldmerge.org/)e [P4Merge](https://www.perforce.com/products/helix-core-apps/merge-diff-tool-p4merge). Para definir uma ferramenta como padrão:

```
git config --merge.tool name_de_ferramenta_da_ferramenta
```

e lançá-lo com:

```
merge git
```

Fundamentalmente, a melhor maneira de lidar com os conflitos de fusões é, tanto quanto possível, tentar evitá-los. Você pode melhorar suas chances disto mantendo as ramificações limpas e focadas em uma única questão e envolvendo o menor número de arquivos possível. Antes de mesclar, certifique-se de saber o que está em ambas as ramificações. Se você não é o único que tem trabalhado nas filiais, Seguidamente, mantenham as linhas de comunicação abertas, pelo que todos conhecem o que os outros estão a fazer.
