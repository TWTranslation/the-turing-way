# Checklist e recomendações de leitura

## Checklist

### Para formatação automática de código

- Escreva seu código de desenvolvimento em seu IDE/editor de texto favorito.
- Habilite a formatação automática no seu editor ajustando as preferências/configurações.
- Type `Ctrl + s` (windows, linux) or `⌘ + s` (mac) to save the work to format the code.

### Para análise de código estático

- Build the project to enable `linters` to spot the errors/warnings in the code (if any).
- Faça alterações relevantes e repita a etapa acima.
- {ref}`Commit and push<rr-vcs-git-commit>` the changes to remote **Github/GitLab/BitBucket** repository to run the pre-deployment tests.

### Para um código robusto

- Encontre suposições no seu programa e deixe-as explícitas.
- Escreva instruções if/else para testar suas suposições.
- Considere erros que possam ser gerados em seu programa.
- Decida, por suposição e erro, o que deve acontecer: redirecionar, reportar ou abortar.
- Ao relatar erros, certifique-se de escrever mensagens informativas e práticas.

## Further reading

- [Article by University of Freiburg](https://swt.informatik.uni-freiburg.de/service/coding-conventions)
- [Coding Conventions - Wikipedia](https://en.wikipedia.org/wiki/Coding_conventions)
- [An exhaustive list of static code analysis tools - Wikipedia](https://en.wikipedia.org/wiki/List_of_tools_for_static_code_analysis)
- [Excellent compilation of code analysis guidelines - OWASP](https://owasp.org/www-community/controls/Static_Code_Analysis)
- [ECMA International ES6 guide](http://www.ecma-international.org/ecma-262/6.0/)

## Referências específicas para este capítulo

- [Static Tool analysis guide](https://en.wikipedia.org/wiki/Static_program_analysis)
- [KeyBindings in VSCode](https://code.visualstudio.com/docs/getstarted/keybindings)
- [Dev.To blog about text-editor customization](https://dev.to/josuerodriguez98/my-vs-code-customization-i4o)
- [EditorConfig guide](https://editorconfig.org/)
