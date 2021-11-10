(ferramentas pd-code-styling-)=
# Ferramentas de Estilo de Código

Conforme mencionado anteriormente, existem algumas ferramentas automáticas que você pode usar para desvincular seu código a diretrizes existentes. Esses variam de plugins para pacotes de IDEs que 'verificação ortográfica' seu estilo e scripts que relinham automaticamente para você.

## lintr

[lintr](https://cran.r-project.org/web/packages/lintr/lintr.pdf) é um pacote R que verifica soletramente seu código usando uma variedade de diretrizes de estilo.  Ele pode ser instalado a partir do CRAN. A função `lint` recebe um nome de arquivo como um argumento e uma lista de 'linters' que ele deve verificar seu código contra. Estas variam desde convenções de espaços em branco até verificar se as chaves não têm as suas linhas. A saída fornece uma lista de marcadores com recomendações para alterar a formatação do seu código linha por linha, o que significa que é mais usado cedo e frequentemente no seu projeto.

```{figure} ../../figures/lintr-output.png
---
altura: 500px
nome: lintr_output
alt: saída lintr mostrando recomendações para adicionar espaço, remover código comentado, remover espaço em branco no treinamento, tem tamanho de caractere por linha menor que 80 quando necessário no código de entrada.
---
Um exemplo de como a saída do lintr pode parecer para um arquivo de entrada com código R.
```

Para obter mais detalhes, por favor, visite o [repositório do GitHub](https://github.com/jimhester/lintr).

## Autopep8

[Autopep8](https://pypi.org/project/autopep8/) é um módulo Python que pode ser executado a partir do terminal e automaticamente formata um arquivo para [pycodestyle](https://github.com/PyCQA/pycodestyle) (anteriormente chamado pep8).  
Está disponível no [pypy](https://pypi.org) e pode ser instalado usando o pip.

```
# Install autopep8
$ pip install --upgrade autopep8
```

Você pode modificar um arquivo no lugar executando o seguinte comando:

```
$ autopep8 --in-place --agressivo --agressivo <filename>
```

Até certo ponto, o módulo também pode ser usado em scripts R!

## Formatação automática em Preto

[Preto](https://black.readthedocs.io/en/stable/) é um pacote de auto-formatação para Python. Isso significa que vai mudar automaticamente seu código para aderir a certas diretrizes, como espaços em torno de operadores e remover espaços em branco desnecessários. Também é consistente, para que o código que você e seus colaboradores trabalham, seja o mesmo assim que o formatar negro. Isso não muda o que o código faz. Isso pode reduzir o tempo gasto fazendo as alterações acima no código.
