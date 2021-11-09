(Estilo) =
# Style Guide

Para garantir que o livro seja lido facilmente por todos, incluindo leitores de tela e palestrantes não-nativos da língua inglesa, compilámos um conjunto de orientações para manter um estilo consistente em todos os capítulos do livro.

Seguimos a orientação [GOV.UK](https://www.gov.uk/guidance/content-design/writing-for-gov-uk) para melhorar a acessibilidade dos recursos em _The Turing Way_.

## Escreva cada frase em uma nova linha (quebra de linha)

Por favor, escreva todas as frases no arquivo markdown em linhas separadas. Ter cada frase em uma nova linha não fará diferença sobre como o texto é exibido, continuará a haver parágrafos, mas isso significará que quaisquer pull requests serão mais fáceis de verificar; as alterações estarão numa única linha, em vez de se encontrarem algures num parágrafo. Considere o exemplo abaixo.

 ```
Hoje és o senhor, isso é mais verdadeiro do que verdade. Não há ninguém vivo que seja você mais do que você. - Dr Seuss
```

Um "pull request" que corrigisse esta alteração para ter um "." depois de Dr. seria mostrado como uma alteração de todo o parágrafo. Contraste isto com o próximo exemplo que será exibido on-line exatamente da mesma forma, mas assistiria a uma mudança para uma única linha.

 ```
Hoje és o senhor, isso é mais verdadeiro do que verdade.
Não há ninguém vivo que seja você mais do que você.
- Dr Seuss
```

## As opiniões são bem-vindas, mas...

_O livro The Turing Way_ destina-se a ter apenas *leve* opinião opinião. Embora seja permitido um maior conteúdo com opiniões, esse conteúdo deve ser claramente assinalado. A melhor maneira de o fazer é exibindo-o numa caixa de cotação. Isso pode ser feito prefixando cada linha com o símbolo maior que `>`. Observe que a formatação será mantida, para que possamos dividir cada frase em uma nova linha conforme recomendado anteriormente.

```
> Eu não vou comê-los em uma casa,
> eu não vou comê-los com um rato,
> i não os comerá em uma caixa que não os comerá com uma raposa,
> eu não vou comê-los aqui de lá não vou comê-los em lugar nenhum,
> Eu não gosto de ovos verdes e hã, eu não gosto deles sam
```

## Evitar abreviatura latina

Por favor, não use abreviações latinas. Veja as [recomendações do Gov.uk](https://www.gov.uk/guidance/style-guide/a-to-z-of-gov-uk-style) para mais detalhes.

Algumas destas abreviações são:

```{figure} ../figures/latin-abbreviation.png
---
height: 400px
nome: latin-abreviação
alt: uma imagem com uma lista de 3 abreviações latinas
---
Uma lista de abreviações latinas para *exempli gratia* (por exemplo), *et-cetera* (assim por diante) e *id est* (isso é).
Captura de tela de parte da [lista de Abreviações Latinas Comuns para o estilo APA](https://blog.apastyle.org/files/apa-latin-abbreviations-table-2.pdf).
```

Em vez da primeira abreviação na tabela por *gratia exemplar*, que às vezes pode ser lido em voz alta como “ovo” pelo software de leitura de tela, por favor utilize "por exemplo" ou "tal como" ou "semelhante" ou "inclusão" - o que funcionar melhor no contexto específico.

Ao invés da segunda abreviação na tabela para *et-cetera* indicar a lista aberta por favor inicie a lista com palavras como "por exemplo" ou "semelhante" ou "incluindo" ou "incluindo".

Em vez da terceira abreviação na tabela para o id ** que é frequentemente usada para esclarecer uma frase, tente (re)escrever frases para evitar a necessidade de usá-las. Se tal não for possível, utilize uma alternativa como a de “significado” ou “isso é”.

Qualquer capítulo contendo uma abreviação latina irá falhar o fluxo de trabalho de integração contínua (CI) do _The Turing Way_ GitHub repositório de passar com sucesso, que é testado por esse [script Python](https://github.com/alan-turing-institute/the-turing-way/blob/main/tests/no-bad-latin.py).

*Para evitar falha no CI, Mesmo neste capítulo, evitámos escrever essas abreviações e, em vez disso, utilizámos uma imagem para ilustrar os exemplos acima.*

## Dicas

### Indentação

Indentar o conteúdo após cada item de uma lista numerada. Se o conteúdo não for recuado, a numeração da lista será redefinida.

Por exemplo, evite:
1. Primeiro item da lista
```
Este conteúdo pertence ao primeiro item da lista.
```
2. Segundo item da lista

Em vez disso, recomenda-se o seguinte:
1. Primeiro item da lista
   ```
   Este conteúdo pertence ao primeiro item da lista.
   ```

2. Segundo item da lista


### Links externos

Escreva links externos usando "http://" em vez de "www". Isto garante que elas sejam correctamente reconhecidas como hiperligações.
