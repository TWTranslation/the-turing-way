(modelo-customizado-customizado)=
# Estilo personalizado

Embora o conteúdo contribua para _The Turing Way_ deva ser escrito em {ref}`Markdown <ch-consistency-formatting-hr-markdown>` quando possível, Às vezes, a sintaxe `HTML` pode ser necessária para formatar sua contribuição da forma que você desejar. Já pronto, o Livro Jupyter converte a sintaxe Markdown em `HTML`, , tornando possível ter uma versão web do livro _The Turing Way_. Como resultado, escrever seu próprio HTML `personalizado` pode introduzir algumas variações na forma como seu novo conteúdo aparece on-line comparado ao resto do livro.

Para minimizar essa disparidade, _The Turing Way_ mantém folhas de estilo [em livros](https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_static/book-stylesheet.css) que controlam a aparência e o conteúdo do livro. Ao incluir `HTML` nas suas contribuições, por favor, consulte essas folhas de estilo e adicione as classes e IDs relevantes definidos lá nos seus elementos HTML ``. Isso garante que seu novo conteúdo se encaixa no estilo geral do livro _The Turing Way_.

Neste subcapítulo, fornecemos uma explicação de como alavancar as folhas de estilo do livro para estilizar suas contribuições em exemplos de casos de uso. Se você quiser melhorar o estilo do livro, este subcapítulo também fornece uma breve visão geral de como fazer isso.

(modelo-customizar-estilo-estilo-estilo-estilos)=
## Usando as Folhas de Estilos

(modelo-customizar-vídeo-estilo-estilo)=
### vídeos

É possível incorporar imagens e GIFs em seu conteúdo usando a sintaxe Markdown, Atualmente, só é possível incorporar vídeos com `HTML`. Mais ainda, não recomendamos adicionar vídeos diretamente no _The Turing Way's_ Github repository como arquivos de vídeo geralmente são grandes e vão tornar a carga do livro muito mais lenta, especialmente para leitores com conexão de internet lenta.

Para adicionar um vídeo à sua contribuição, primeiro carregue-o para o _canal do Youtube do_ Modo Turing, então copie/cole o `HTML` que é gerado quando você:
1. Clique na opção `Compartilhar` abaixo do vídeo,
1. E então clique na opção `Incorporar` na gama de opções que aparecem.


O `código HTML` que você copiar será um elemento [`iframe`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe). Por exemplo:

```
<iframe width="560" height="315" src="https://www.youtube.com/embed/MdOS6tPq8fc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
```

Por padrão, `iframes` não são responsivos, o que significa que o vídeo que você acabou de incorporar ficará inacessível para os leitores em dispositivos móveis. Para corrigir isso, _As folhas de estilo_ da Caminho de Turing definem classes e estilos que permitem que `iframes` redimensione e encaixe na tela de onde o livro é lido.

Para alavancar este estilo personalizado, envolver o `iframe` em tags `div` e dar ao `div` elemento uma classe `de vídeo-contêiner`. Por exemplo:

```
<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/MdOS6tPq8fc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
```

O código acima é renderizado da seguinte forma:

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/MdOS6tPq8fc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(modelo-customizado-melhoramento-de-estilo)=
## Melhorando _O Modo de Turing_ Estilização

O Livro Jupyter funciona convertendo a sintaxe Markdown para `HTML`. Portanto, para melhorar o estilo geral do livro, as regras `CSS` devem ter como alvo os elementos `HTML` que o Livro Jupyter gera.

Antes de escrever qualquer CSS, inspecione o código-fonte HTML do livro primeiro. Isto dá-lhe uma ideia de quais elementos ao alvo, e pode ajudá-lo a descobrir como estruturar suas regras CSS.

Todos os navegadores da web permitem que você veja o código-fonte de sites facilmente. Em computadores que executam o Windows OS, isto é feito usando `CTRL + U`. Para computadores que executam o Mac OS, isto é feito usando a `Opção + Comando + U`.

Uma vez que você tiver determinado o(s) elemento(s) que você deseja modificar, escreva seu CSS no arquivo _The Turing Way_ [stylesheet](https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_static/book-stylesheet.css). Se, por exemplo, você queria mudar a `font-family` do texto do parágrafo através de todo o livro _The Turing Way_ , então você poderia adicionar a seguinte regra CSS para as folhas de estilo que direcionam todos os elementos com uma tag `<p>`:

```
p {
    font-family: georgia, garamond, serif;
}
```

Se você acha que o estilo introduzido na _maneira de exibição_ pode ser útil para outros usuários do Livro do Júpiter Por favor, considere fazer uma contribuição a montante para o projeto, criando um novo problema no GitHub e iniciando uma discussão com seus mantenedores: [https://github. om/executablebooks/jupyter-book/issues](https://github.com/executablebooks/jupyter-book/issues).
