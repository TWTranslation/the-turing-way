(rr-make-debugging)=
# Depuração de Makefiles

Ao escrever um arquivo Makefile às vezes pode ser útil para poder ver os valores de variáveis para pegar erros ou bugs no Makefile. Para facilitar isso, adicione dois comandos: `info` e `error`, e há um modo de depuração.

Com as informações de `` você pode imprimir o valor atual de uma variável para stdout, enquanto está processando o arquivo. Por exemplo, no Makefile acima você poderia adicionar:

```makefile
$(info $$DATA = $(DATA))
```

Isto irá imprimir `DATA = data/action.csv ... data/western.csv`. .

Com o comando `de erro` você pode parar a execução de Make em um certo ponto do Makefile. Isso é útil quando você deseja imprimir o valor de uma variável de e não executar ainda mais:

```makefile
$(error $$DATA = $(DATA))
```

Finalmente, você também pode depurar o Makefile executando Tornar com a flag de depuração: `make -d`. Isto irá imprimir todas as regras (incluindo as embutidas) que Fazer tentar para cada um dos alvos, e se uma regra precisa ser executada ou não.

Se você quiser apenas imprimir as regras que fizer será executado e não executará elas, na verdade, você pode usar `make -n`. . Estas duas últimas opções também podem ser combinadas, então que você vê a saída de depuração e fazer não executar nada: `make -dn`.
