(modelo-recursos-de_muro)=
# Glossário, Blocos Especiais e mais estilização

Jupyter Book oferece mais opções para estilizar seus capítulos e criar um livro mais abrangente. Neste subcapítulo, discutimos mais alguns recursos que recomendamos usar no _The Turing Way_.

(modelo-recursos-de_estilo-glossário)=
## Glossary

_A Turing Way_ tem um arquivo de {ref}`glossário` localizado na palavra após o livro, que compreende definições de termos diferentes por ordem alfabética. Este arquivo pode ser atualizado com as definições de novos termos, que poderá então ser vinculado a qualquer capítulo do livro onde este termo ocorra.

Para adicionar uma entrada para um novo termo, por favor, pule para a seção alfabética correta do arquivo {ref}`glossário` e use a seguinte sintaxe:

```
Novo Termo-1
  Uma frase curta que define o termo. Esta frase está endentada abaixo do termo.
```

Por exemplo, [termos que começam com 'A'](https://the-turing-way.netlify.app/afterword/afterword.html#a) são escritos no mesmo bloco de texto que é mostrado abaixo:
```

## Um

```{glossary}

Teste de Aceitação
 Um nível do processo de teste do software onde um sistema é testado para aceitabilidade. O objectivo deste teste é avaliar a conformidade do sistema com os requisitos do projecto e avaliar se é aceitável para o fim.

Adiciona
 o Comando usado para adicionar arquivos à área de preparo. Permite ao usuário especificar quais arquivos ou diretórios devem incluir no próximo commit.

Autores
  neste contexto são os contribuidores do projeto The Turing Way_ que deram uma contribuição substancial para o projeto, como escrever um subcapítulo, facilitando interações comunitárias, mantendo a infraestrutura do projeto e apoiando a participação de outros através de contribuições mentais. Todos os autores são co-autores do livro como um todo.

```

Para fazer referência a termos no seu glossário, use a sintaxe ``[{term}`def<Term>`]``.

Por exemplo, vincular o termo 'Autores' a sua definição no arquivo de glossário. por favor use a sintaxe ``[{term}`def<Authors>`]`` ao lado de onde esses termos aparecem, que deve renderizar on-line como este: "*Autores [{term}`def<Authors>`] foram referenciados aqui.*"

(modelo-recursos-de_muro-blocos)=
## Blocos de Conteúdo Especial

Ao escrever um novo capítulo ou revisar um já existente, você pode querer adicionar notas que não se encaixam com o resto da narrativa do capítulo, mas podem ser úteis para os leitores e ajudá-los a entender melhor o capítulo.

O Livro de Júpiter permite o uso de blocos de conteúdo especial para destacar um texto que precisa se destacar do resto do conteúdo de uma página. Isto visualmente separa o bloco de texto do resto da página, e garante que ele facilmente capta a atenção do leitor.

Para adicionar um bloco de conteúdo especial (nota, aviso ou admonial) à sua página, use a seguinte directiva:

````
```{note}
Esta é uma nota de exemplo!
```
````
que renderiza da seguinte forma:

```{note}
Esta é uma nota de exemplo!
```

Você pode dar títulos e estilos personalizados de blocos de conteúdo para reforçar sua mensagem pretendida. Por exemplo, se você quiser avisar o leitor sobre algo, poderá fazer um bloco de aviso usando a seguinte directiva:

````
```{warning}
Este é um aviso severo!
```
````
Note o novo título, ícone e esquema de cores.

```{warning}
Este é um aviso importuno!
```

Há muitas outras maneiras de personalizar os blocos de conteúdo para atender às suas necessidades de escrita. Consulte a [documentação do Livro do Jupyter](https://jupyterbook.org/content/content-blocks.html#notes-warnings-and-other-admonitions) e a [página de Demonstração de Admonition](https://sphinx-book-theme.readthedocs.io/en/latest/reference/demo.html#admonitions) para mais recomendações.
