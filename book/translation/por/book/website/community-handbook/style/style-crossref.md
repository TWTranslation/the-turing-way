(modelo-crossref)=

# Seções e Capítulos de Referência Cruzada

Recomendamos usar o estilo de referência cruzada conforme descrito no [Livro Jupyter](https://jupyterbook.org/content/citations.html) para capítulos ou arquivos, e conteúdo diferente de capítulos, como seções e figuras.

Em Jupyter Book, as etiquetas são uma maneira de adicionar tags a partes do seu conteúdo ou um arquivo que você pode referenciar mais tarde. Isto é muito útil porque você pode inserir rótulos em outras partes do seu livro sem se preocupar com os caminhos relativos ou absolutos do arquivo.

Neste documento, fornecemos exemplos para descrever como você pode usar rótulos em diferentes capítulos ou parte de capítulos do livro. Também definimos uma convenção para nomes de etiquetas para _The Turing Way_ para garantir que as localizações destes rótulos no livro sejam identificáveis por seus nomes.

## Etiquetas no Livro de Júpiter

Para adicionar um rótulo para uma seção ou um capítulo/subcapítulo, use uma sintaxe do seguinte padrão antes do elemento que você deseja rotular:

```
(my-label-name)=
# A coisa que eu quero rotular
```

Você pode inserir referências cruzadas para as seções em seu arquivo com a seguinte sintaxe:

```
{ref}`meu-nome-etiqueta`

```

Da mesma forma, você pode usar rótulos para capítulos de referência cruzados ou subcapítulos.

Por favor, veja os detalhes nos exemplos fornecidos abaixo.

### _A Fora de Turing_ convenção de nomenclatura para os rótulos

Recomendamos usar o seguinte padrão de nomes para rótulos, o que permitirá que diferentes autores e contribuidores do _The Turing Way_ identifiquem intuitivamente as localizações dos arquivos onde essas etiquetas foram criadas.

A seguinte convenção de nomeação para os rótulos dos diferentes capítulos:

```
(inicial-do-arquivo)=
```

Aqui, o primeiro espaço reservado `seccioncioncionistas` deve ser substituído pelas iniciais para diferentes seções do livro e o segundo nome do arquivo `do espaço reservado` deve ser substituído pelo nome do arquivo onde o rótulo está sendo criado.

Para os diferentes guias do livro, usaremos as seguintes `iniciais de seções`:

- Pesquisa Reprodutiva: `rr`
- Projeto Design: `pd`
- Colaboração: `cl`
- Comunicação: `cm`
- Pesquisa ética: `er`
- Community Handbook: `ch`

Por exemplo, no guia `Produção da Pesquisa Reprodutiva`, temos um capítulo chamado `Visão Geral`. Criamos um rótulo para aquele capítulo chamado `rr-overview` adicionando o rótulo no topo do header usando a seguinte diretiva

```
(rr-overview)=
# Visão geral
```

Da mesma forma, para diferentes subcapítulos, recomendamos que se estenda o nome do rótulo com outro placeholder para o nome do subcapítulo. Por exemplo, `rr-overview-resources` é um rótulo no guia "Pesquisa Reprodutiva" (rr) para o subcapítulo "Recursos" para o capítulo "Visão geral" (visão geral). Esta etiqueta pode ser criada usando a seguinte directiva no arquivo correspondente:

```
(início de seçãos-filename)=
# Recursos
```

Da mesma forma, para diferentes seções em um subcapítulo, recomendamos estender o nome do rótulo com outro placeholder. Isto pode ser escolhido pelos autores, que devem ser um nome curto mas sensato para a secção em que o rótulo está a ser criado. Por exemplo, `rr-overview-resources-addmaterial` é uma etiqueta no guia "Produzir Pesquisa Reprodutiva" (rr) para o subcapítulo "Recursos" para o capítulo "Visão geral" (visão geral) para a seção "Materiais adicionais" (addmaterails). Esta etiqueta pode ser criada no arquivo correspondente para o nome da seção sugerida usando a seguinte directiva:

```
(sectioninitials-filename-section)=
## Material adicional
```

### Exemplos de referências cruzadas

**Exemplos para seções cruzadas de capítulos e subcapítulos de referência**

Nós usaremos exemplos para os capítulos no guia "Pesquisa reproduzível" localizado no diretório `livro/site`.

**_Caso 1_**: Quando você fez referência cruzada uma seção do capítulo no mesmo arquivo _antes_ de criar um rótulo.

Tomando o exemplo anterior de `rr-overview-resources-addmaterial`, podemos usar esta etiqueta para fazer referência cruzada em uma seção anterior dentro do mesmo arquivo usando o seguinte:

```
{ref}`rr-overview-resources-addmaterial`
```

Isto aparecerá no livro on-line assim: {ref}`rr-overview-resources-addmaterial`.

**_Caso 2_**: Quando você cruzou a referência de uma seção do capítulo no mesmo arquivo _depois_ de criar um rótulo.

No mesmo subcapítulo "Recursos", criamos um rótulo `rr-overview-resources-reading` para a seção "Leitura mais profunda". Podemos fazer referências cruzadas em uma seção posterior dentro do mesmo arquivo usando o seguinte:

```
{ref}`rr-overview-resources-reading`
```

Ele aparecerá em seu capítulo como este: {ref}`rr-overview-resources-reading`.

**_Caso 3_**: Quando você cruzou a referência de uma seção de um capítulo em outro arquivo (capítulo) antes ou depois de um rótulo ter sido criado.

No subcapítulo "Definições" do capítulo "Visão geral", criamos um rótulo `rr-Visão geral` para a seção "Tabela de definições para reprodutibilidade".

Podemos fazer referências cruzadas em um subcapítulo ou capítulo diferente. Neste caso, vamos cruzá-lo na página inicial (principal) do capítulo "Visão geral" usando o seguinte:

```
{ref}`rr-overview-definitions`
```

Ele aparecerá em seu capítulo como este: {ref}`rr-overview-definition`.

Embora estejamos demonstrando este exemplo para os subcapítulos no mesmo capítulo ("Visão Geral"), as sintaxas similares podem ser usadas para referências cruzadas em outros capítulos do livro.

**Exemplos para capítulos de referência cruzados e subcapítulos**

**_Caso 4_**: Caso um capítulo ou subcapítulo seja referenciado em um arquivo diferente (capítulo/subcapítulo) antes ou depois de um rótulo ter sido criado.

Por exemplo, na página inicial do capítulo "Pesquisa Aberta", criamos um rótulo `rr-open`. Podemos fazer referência cruzada na seção "O que aprender a seguir?" em um subcapítulo diferente "Recursos" do capítulo "Visão geral" usando o seguinte:

```
{ref}`rr-open`
```

Ele aparecerá em seu capítulo como este: {ref}`rr-open`.

Embora estejamos a demonstrar este exemplo para os capítulos e subcapítulos de referência cruzados em todo o livro, a mesma sintaxe pode ser usada para cruzamento de subcapítulos de referência no mesmo capítulo.

### Fornecer um título alternativo para as referências

Para qualquer uma das referências acima mencionadas, você pode fornecer um título alternativo enquanto faz referência cruzada adicionando o título antes da etiqueta, como mostrado neste exemplo:

```
{ref}`Capítulo em Pesquisa Aberta<rr-open>`
```

aqui estamos dando um título alternativo ao "Capítulo de Pesquisa Aberta", que aparecerá em seu arquivo como este: {ref}`Capítulo sobre Pesquisa Aberta <rr-open>`
