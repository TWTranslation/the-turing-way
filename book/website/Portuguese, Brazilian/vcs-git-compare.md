(rr-vcs-git-compare)=
# Recuperando e Comparando Versões

(rr-vcs-versions-recuperando)=
## Recuperando versões anteriores

Para cancelar seu último commit (reverter para a versão anterior), execute o seguinte comando:
```
git reverter HEAD
```

Este comando cria um novo commit que reverte as alterações feitas na última versão. Se você quiser recuperar uma versão de semanas ou meses atrás, comece usando o `git log` para encontrar o SHA da versão que deseja recuperar. Para redefinir todo o seu projeto para essa versão, execute os seguintes comandos:

```
git checkout SHA_de_versão_do_versão
```

Se você quer a versão antiga de um único arquivo e não a versão anterior de todo o projeto, você pode fazê-lo usando o seguinte comando:

 ```
 git checkout SHA_de_versão_-- seu_nome_arquivo
 ```

(rr-vcs-versions-recuperando-prática)=
### Bom treino

Commits devem ser 'atômicos', o que significa que **eles devem fazer uma coisa simples e eles devem fazê-lo completamente**. Por exemplo, um commit 'atômico' poderia estar adicionando uma nova função ou renomeando uma variável. Se muitas mudanças diferentes no seu projeto forem comprometidas juntas, pode ser difícil solucionar problemas se surgir algum erro nessa versão. Além disso, a anulação de todo o compromisso pode desperdiçar trabalho válido e útil.

É uma boa prática **especificar os arquivos a serem confirmados**, ou seja, adicionando arquivos à área de staging por nome (`git add your_file_name`) em vez de adicionar tudo (`git add .`). Isso impede você de empacotar diferentes mudanças involuntariamente. Por exemplo, se você fez uma alteração para o arquivo A enquanto trabalha principalmente no arquivo B, Terão esquecido este aspecto quando se tratar de assumir compromissos. Com `git add .`, o arquivo A seria trazido para a corrida. Se houver várias alterações *não relacionadas* que não devem ser adicionadas juntos em um único arquivo ** `git add -p your_file_name` permitirá a você escolher interativamente quais alterações adicionar. Dito isso, **você não precisa necessariamente fazer commits por arquivo** ao trabalhar em vários arquivos, mas para um único problema. Por exemplo, se adicionarmos aqui uma figura a este capítulo, escolhendo uma para chamar a atenção de alguém que se esfrega:

```{figure} ../../figures/flipped-taj-mahal.png
---
nome: flipped-taj-mahal
alt: Uma fotografia invertida do Taj Mahal para chamar a atenção do leitor.
---
Inverteu Taj Mahal
```

dois arquivos são alterados:

1. Primeiro, o arquivo de figura é adicionado ao repositório do projeto.
2. Em seguida, uma linha é adicionada neste arquivo que faz referência à figura, então ela é exibida.

Então, dois arquivos são afetados, mas "Adicionar figura ao capítulo sobre controle de versão" é um único, *unidade de trabalho* atômico, então somente um commit é necessário.

Finalmente, não commit nada que seja regenerado a partir de outros arquivos comprometidos numa versão (a menos que seja algo que levaria horas para regenerar). Arquivos gerados, como scripts, agachar seu repositório e pode conter recursos como carimbos de tempo que podem causar conflitos de arquivos irritantes (ver {ref}`rr-vcs-git-merge`). Você pode instruir o Git a ignorar certos arquivos criando um arquivo chamado `. itignore` e incluindo nomes do arquivo que você não precisa armazenar em seu repositório Git. Por exemplo, arquivos de configuração que podem mudar de ambiente para ambiente devem ser ignorados.

(rr-vcs-versions-comparando)=
## Comparando Versões

Em algum momento, você provavelmente vai precisar/querer comparar versões de um projeto, por exemplo, para ver qual versão foi utilizada para gerar um determinado resultado.

Para resolver esse problema, use a função `git diff` , que recebe dois conjuntos de dados de entrada e retorna as alterações entre eles.

`git diff` é uma função de multi-uso que é executada em fontes de dados Git como commits, branches, arquivos e muito mais. Por padrão, `git diff` mostrará quaisquer alterações não aprovadas desde o último commit. Se você quiser comparar duas coisas específicas, a sintaxe é:

```
git diff coisa_b
```

Por exemplo, se você quiser comparar como um arquivo foi alterado entre dois commits, use `git log` para obter os SHAs desses commits e executar:

```
git diff SHA_a:seu_nome_arquivo SHA_b:seu_arquivo
```

Ou se você quisesse comparar dois branches, seria:

```
git diff branch_name other_branch_name
```

(rr-vcs-versions-comparing-practice)=
### Boa prática

Com um pouco de familiaridade, `git diff` se torna uma ferramenta extremamente poderosa que você pode usar para controlar quais arquivos mudaram e exatamente quais são essas mudanças. Isso é extremamente valioso para descobrir bugs e comparar o trabalho feito por pessoas diferentes. Tenha cuidado ao **entender o que exatamente está sendo comparado** e, quando possível, **compare apenas os arquivos relevantes** para o que você está interessado em evitar grandes quantidades de informações estranhas.
