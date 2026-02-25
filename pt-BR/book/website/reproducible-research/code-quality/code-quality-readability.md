(rr-code-quality-readability)=

# Escrevendo Código Leitura Humana

Writing clear, well commented, readable and reusable code benefits not only you but the community (or audience) that you are developing it for.
Este pode ser o seu laboratório, colaboradores externos, partes interessadas ou você pode estar escrevendo software de código aberto para distribuição global!
Seja qual for a escala que você trabalhe, a legibilidade conta!

Aqui estão alguns aspectos a considerar quando seu código é fácil de ser lido por outros.

## Comprimento da linha

Existe algum acordo quanto à duração das linhas de codificação.
O PEP8 sugere um máximo de 79 caracteres por linha e 80 pelo guia de estilo R. Isso significa que as linhas podem caber facilmente na tela, e várias janelas de programação podem ser abertas.
Isso significa que as linhas podem caber facilmente na tela, e várias janelas de programação podem ser abertas.
Argumenta-se que se sua linha for maior do que isso, sua função é muito complexa e deve ser separada!
This is the crux of the Tidy method of R programming, which even has a special operator `%>%` which passes the previous object to the next function, so fewer characters are required:

```r
recoded_melt_dat <- read_csv('~/files/2019-05-17_dat.csv') %>%
recode() %>%
melt() #We now have a recoded, melted dataframe called recoded_melt_dat
```

## Commenting

Comentários foram descritos como "Letras de amor para seu futuro" por Jon Peirce, criador do PsychoPy.
Comments can be blocked or inline.  
The PEP8 guidelines have firm suggestions that block comments should be full sentences, have two spaces following a period, and follow a dated style guide (Strunk and White).
Felizmente, os elementos do estilo já não "exigem" uma ênfase injusta nos pronomes masculinos.
Dado que os comentários embutidos devem ser utilizados com moderação.
Manter comentários claros e concisos não só permite acompanhar as decisões que tomou. que funções específicas fazem e quais variáveis são usadas, também permite que outras pessoas vejam seus processos de pensamento.
A sintaxe para comentários varia entre as linguagens de programação.
In R and Python, a hashtag is used, whereas in C and Java the brackets `/* /*` are used, and in C++/C# a double slash `//` comments single lines.

Em Python:

```python
times = 10 # Set integer
my_variable = "my variable is %s times better than yours" %times #Set my_variable to a string
print(my_variable) #print the value
```

Em R:

```r
my_func = function(number){ #R function

(number * 5) - 2
}
print(my_func(2))
```

Para comentários mais longos, a informação pode ser incluída acima do bloco de código.
Em Python, você pode usar marcas de fala triplas como parênteses.
Isto irá comentar qualquer coisa.

```python
"""
The following function takes a number, multiplies it by 5, and subtracts 2.
This may seem pointless but is simple for demonstration.
"""
def myfunc(numb): #python function
      return((numb*5)-2)
print(myfunc(8))
```

Blocos de comentários mais longos não estão disponíveis em R. Existem maneiras ao redor disso, como a configuração de uma string, ou uma instrução if(false) :

```r
"1 - This is a string. It will not be evaluated by R, and will not raise
and exception"

if(false){
2 - All of your comment can go here and will never be evaluated.
It also means you keep to the 80 character line length suggestion.
Also, in RStudio you can fold away the comment using the arrow next to the
line number of the if statement.
}
```

Ou comentando linhas individuais:

```r
#This is also a very long comment
#covering many lines.
```

Seu IDE provavelmente terá um atalho de teclado para comentar blocos.

## Indentation

O guia de estilo R sugere que as linhas devem ser separadas:

```r
by
  two spaces
```

E não

```r
 a mixture
   of
   	tabs
   	  and 	spaces.
```

Obviamente, por vezes, os argumentos de uma função podem expandir muito mais 80 caracteres.
Neste caso, recomenda-se que a segunda linha seja adiada para o início dos argumentos:

```r
my_variable <- a_really_long_function(data = "2019-05-17_Long_File_Name_2",
                                      header = TRUE, verbose = TRUE)

```

Estas são, obviamente, apenas diretrizes e você deve escolher elementos que se adeqúem ao seu estilo de codificação.
No entanto, e de novo, é importante assegurar que você seja consistente na colaboração e possa chegar a acordo sobre um estilo comum.
Pode ser útil criar um arquivo de leitura que descreva seu estilo de codificação para que os colaboradores ou colaboradores possam seguir seu lead.

## Whitespace after sentences

Se você está compartilhando arquivos de texto ou trabalhando colaborativamente em manuais ou documentos, depois há muita controvérsia em torno da utilização de um ou dois espaços ao fim de um período.
When using {term}`Markdown`, it can be clearer to include a new line after every sentence.
This makes the {term}`Markdown` source easier to read, but doesn't change the appearance of the output document.
This practice is part of a system of requirements and recommendations called [semantic line breaks](https://sembr.org/), which aim to make {term}`markup` source easier to read without affecting the rendered output.
Esse capítulo (e a maioria, se não a totalidade, desse livro) tem uma nova linha depois de cada frase que torna o texto em bruto mais fácil de ler, revisar e resolver a questão de espaçamento.

```{figure} https://imgs.xkcd.com/comics/third_way.png
---
name: xkcd1285
alt: Two groups holding different flags and fighting, one says "two spaces after a period" and other says "one space after a period". While a person stands with their flag that says "Line break after every sentence"
---
Line break after each sentence makes it easy to review and comment. [Reproduced from xkcd 1285](https://xkcd.com/1285), used under CC BY-NC 2.5.
```
