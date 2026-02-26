(rr-vcs-git-sumy)

# Tabela Resumo de Comandos Git

| Comando                         | Utilizar                                                                              |
| ------------------------------- | ------------------------------------------------------------------------------------- |
| `git init`                      | Inicializa um repositório Git nesse diretório                                         |
| `git add .`                     | Adiciona todas as alterações para a área de teste a serem comprometidas               |
| `git add file_name`             | Adiciona alterações ao arquivo especificado para a área de Staging a ser comprometida |
| `git commit`                    | Commita as mudanças organizadas e permite que você escreva uma mensagem do commit     |
| `git checkout SHA`              | Verifica um commit passado com o SHA fornecido                                        |
| `git checkout SHA -- file_name` | Verifica a versão anterior de um arquivo a partir do commit com o SHA fornecido       |
| `git checkout -b branch_name`   | Cria e alterna para um novo branch                                                    |
| `git checkout branch_name`      | Alterna para o branch especificado                                                    |
| `git merge branch_name`         | Mescla o branch que você está usando no branch especificado                           |
| `git log`                       | Sai um log de commits passados com suas mensagens de commit                           |
| `git status`                    | Status de saída, incluindo em que branch você está e quais mudanças são organizadas   |
| `git diff`                      | Exibe as diferenças entre o diretório de trabalho e o commit mais recente             |
| `git diff thing_a thing_b`      | Exibe as diferenças entre duas coisas, como commits e branches                        |
| `git clone URL`                 | Faz um clone do repositório na URL especificada                                       |
| `git remote add origin URL`     | Liga um repositório local e um repositório online à URL especificada                  |
| `git push origin branch_name`   | Empurra alterações locais para o ramo especificado do repositório online              |
| `git pull origin branch_name`   | Puxe alterações do repositório online para o repositório local                        |
