(ch-style-custom-styling)=
# カスタムスタイル

Although content contributed to _The Turing Way_ should be written in {ref}`Markdown <ch-consistency-formatting-hr-markdown>` where possible, sometimes, `HTML` syntax may be necessary to format your contribution the way you desire. Already, Jupyter Book converts Markdown syntax to `HTML`, making it possible to have a web version of _The Turing Way_ book. 結果として、 独自のカスタム `HTML` を書くと、本の残りの部分と比較して、新しいコンテンツがオンラインで表示される方法でいくつかのバリエーションが導入される可能性があります。

この格差を最小限に抑えるために、 _チューリングウェイ_ は、ブックのコンテンツのルックアンドフィールを制御する、ブック全体の [スタイルシート](https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_static/book-stylesheet.css) を維持します。 When including `HTML` in your contributions, please refer to these stylesheets and add the relevant classes and IDs defined there to your `HTML` elements. これにより、新しいコンテンツが _The Teuring Way_ の全体的なスタイルに適合するようになります。

このサブ章では、書籍のスタイルシートを活用して、サンプルユースケースであなたの貢献をスタイル化する方法について説明します。 本のスタイルを改良したい場合は、この章ではその方法を簡単に説明します。

(ch-style-custom-stylesheets)=
## スタイルシートの使用

(ch-style-custom-styling-videos)=
### 動画

Markdown構文を使用すると、コンテンツに画像やGIFを埋め込むことができます。 現在 `HTML` でビデオを埋め込むことは可能です。 さらにそうです 私たちはビデオを直接 _に追加することはお勧めしません チューリングウェイの_ Githubリポジトリはビデオファイルが大きく、本の読み込みがはるかに遅くなります。 特にインターネット接続が遅い読者にとっては

To add a video to your contribution, first upload it to _The Turing Way's_ Youtube channel, then copy/paste the `HTML` code that is generated when you:
1. ビデオの下の `共有` オプションをクリックします。
1. そして、表示されるオプションの範囲から `Embed` オプションをクリックします。


コピーする `HTML` コードは [`iframe`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe) 要素になります。 例:

```
<iframe width="560" height="315" src="https://www.youtube.com/embed/MdOS6tPq8fc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
```

デフォルトでは、 `iframes` は応答しません。つまり、埋め込んだビデオはモバイルデバイスのリーダにアクセスできなくなります。 これを修正する _チューリングウェイの_ スタイルシートは、 `iframe` が本が読み込まれる画面のサイズとサイズを変更できるようにするクラスとスタイリングを定義します。

このカスタムスタイルを活用する `iframe` を `div` タグで囲み、 `div` 要素に `video-container` クラスを与えます。 例:

```
<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/MdOS6tPq8fc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
```

上記のコードは次のように表示されます:

<div class="video-container">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/MdOS6tPq8fc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

(ch-style-custom-styling-improvements)=
## Improving _The Turing Way's_ Styling

Jupyter BookはMarkdown構文を `HTML`に変換することで動作します。 したがって、本の全体的なスタイルを改善するために、 `CSS` ルールは、Jupyter Book が生成する `HTML` 要素をターゲットにする必要があります。

CSS を書く前に、まず本の HTML ソースコードを調べてください。 これにより、どの要素をターゲットにすべきかがわかり、CSS ルールをどのように構造化するかがわかります。

すべてのWebブラウザは、簡単にWebサイトのソースコードを表示することができます。 Windows OS を実行しているコンピュータでは、これは `CTRL + U` を使用して行われます。 Mac OSを実行しているコンピュータの場合は、 `Option + Command + U` を使用して行われます。

変更したい要素を決めたら、 _チューリングウェイの_ [スタイルシートファイル](https://github.com/alan-turing-institute/the-turing-way/blob/main/book/website/_static/book-stylesheet.css) にCSSを記述します。 If, for example, you wanted to change the `font-family` of the paragraph text across the entire _The Turing Way_ book, then you could add the following CSS rule to the stylesheets which target all elements with a `<p>` tag:

```
p {
    font-family: georgia, garamond, serif;
}
```

If you think that the styling introduced in _The Turing way_ can be useful for other Jupyter Book users, please consider making an upstream contribution to the project by creating a new GitHub issue and starting a discussion with their maintainers: [https://github.com/executablebooks/jupyter-book/issues](https://github.com/executablebooks/jupyter-book/issues).
