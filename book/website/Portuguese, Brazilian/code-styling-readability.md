(pd-code-styling-legibilidade)=
# Escrevendo Código Leitura Humana

Escrever código claro, bem comentado, legível e reutilizável beneficia-se não só a você, mas também a comunidade (ou o público) para o qual você está desenvolvendo. Este pode ser o seu laboratório, colaboradores externos, partes interessadas ou você pode estar escrevendo software de código aberto para distribuição global! Seja qual for a escala que você trabalhe, a legibilidade conta!

Aqui estão alguns aspectos a considerar quando seu código é fácil de ser lido por outros.

## Comprimento da linha

Existe algum acordo quanto à duração das linhas de codificação. O PEP8 sugere um máximo de 79 caracteres por linha e 80 pelo guia de estilo R. Isso significa que as linhas podem caber facilmente na tela, e várias janelas de programação podem ser abertas. Argumenta-se que se sua linha for maior do que isso, sua função é muito complexa e deve ser separada! Este é o cerne do método Tidy na programação R, que até tem um operador especial `%>%` que passa o objeto anterior para a próxima função, assim são necessários menos caracteres:

```r
recoded_melt_dat <- read_csv('~/files/2019-05-17_dat.csv') %>%
recode() %>%
melt() #Agora temos um dataframe recuperado e fundido chamado recoded_melt_dat
```

## Comentando

Comentários foram descritos como "Letras de amor para seu futuro" por Jon Peirce, criador do PsychoPy. Os comentários podem ser bloqueados ou inline.  
As diretrizes do PEP8 possuem sugestões firmes que os comentários do bloco devem ser frases completas, tem dois espaços seguindo um período e siga um guia de estilo datado (Strunk e branco). Felizmente, os elementos do estilo já não "exigem" uma ênfase injusta nos pronomes masculinos. Dado que os comentários embutidos devem ser utilizados com moderação. Manter comentários claros e concisos não só permite acompanhar as decisões que tomou. que funções específicas fazem e quais variáveis são usadas, também permite que outras pessoas vejam seus processos de pensamento. A sintaxe para comentários varia entre as linguagens de programação. Em R e Python, uma hashtag é usada, enquanto em C e Java os colchetes `/*` são usados, e em C++/C# uma barra dupla `//` comentários de linhas simples.

Em Python:
```python
vezes = 10 # Definir número inteiro
minha_variável = "minha variável é %s vezes maior que a sua" %times #Definir minha_variável para uma impressão de string
(minha_variável) #imprimir o valor
```

Em R:
```r
my_func = function(number){ #R function

(number * 5) - 2
}
print(my_func(2))
```

Para comentários mais longos, a informação pode ser incluída acima do bloco de código. Em Python, você pode usar marcas de fala triplas como parênteses. Isto irá comentar qualquer coisa.

```python
"""
A função a seguir recebe um número, multiplica-o por 5 e subtrata 2.
Isto pode parecer inútil, mas é simples de manifestar.
"""
def minhafunc(numb): #python função
      return((numb*5)-2)
print(myfunc(8))
```
Blocos de comentários mais longos não estão disponíveis em R. Existem maneiras ao redor disso, como a configuração de uma string, ou uma instrução if(false) :

```r
"1 - Isso é uma string. Não será avaliado por R e não vai levantar
e a exceção"

if(false){
2 - Todo o seu comentário pode ir aqui e nunca será avaliado.
Também significa que você mantém a sugestão de tamanho de linha de 80 caracteres.
Além disso, no RStudio você pode dobrar o comentário usando a seta ao lado do
número de linha da instrução if.
}
```

Ou comentando linhas individuais:

```r
#Este também é um comentário muito longo
#cobrindo muitas linhas.
```
Seu IDE provavelmente terá um atalho de teclado para comentar blocos.

## Indentação

O guia de estilo R sugere que as linhas devem ser separadas:
```r
por
  dois espaços
```
E não
```r
 uma mistura
   de guias

      e espaços.
```

Obviamente, por vezes, os argumentos de uma função podem expandir muito mais 80 caracteres. Neste caso, recomenda-se que a segunda linha seja adiada para o início dos argumentos:

```r
my_variable <- a_really_long_function(data = "2019-05-17_Long_File_Name_2",
                                      header = TRUE, verbose = TRUE)

```

Estas são, obviamente, apenas diretrizes e você deve escolher elementos que se adeqúem ao seu estilo de codificação. No entanto, e de novo, é importante assegurar que você seja consistente na colaboração e possa chegar a acordo sobre um estilo comum. Pode ser útil criar um arquivo de leitura que descreva seu estilo de codificação para que os colaboradores ou colaboradores possam seguir seu lead.

### ...final. ...final.  ...ou fim.\\n

Se você está compartilhando arquivos de texto ou trabalhando colaborativamente em manuais ou documentos, depois há muita controvérsia em torno da utilização de um ou dois espaços ao fim de um período. Ao usar Markdown, pode ser mais claro incluir uma nova linha após cada frase. Esse capítulo (e a maioria, se não a totalidade, desse livro) tem uma nova linha depois de cada frase que torna o texto em bruto mais fácil de ler, revisar e resolver a questão de espaçamento.

```{figure} ../../figures/xkcd1285.png
---
height: 500px
name: xkcd1285
alt: Dois grupos segurando bandeiras diferentes e lutando, um diz "dois espaços após um período" e o outro diz "um espaço após um período". Enquanto uma pessoa se une a sua bandeira que diz "Quebra de linha depois de cada frase"
---
*Quebra a linha depois de cada frase torna fácil rever e comentar - [XKCD Link](https://www. xplainxkcd.com/wiki/index.php/1285:_Third_Way)*
```
