(rr-renv-yaml)=

# YAML

YAMLはインデントベースのマークアップ言語で、読みやすさと書きやすさの両方を目指しています。
多くのプロジェクトは、読みやすさ、シンプルさ、そして多くのプログラミング言語をサポートしているため、設定ファイルとして使用します。
It can be used for many things, including defining computational environments, and is well integrated with [GitHub actions](https://github.com/actions), which is discussed in the {ref}`rr-ci-github-actions` chapter.

(rr-renv-yaml-files)=

## YAML ファイル

計算環境を定義する YAML ファイルは、次のようになります。

```
# Define the operating system as Linux
os: linux

# Use the xenial distribution of Linux
dist: xenial

# Use the programming language Python
language: python

# Use version of Python 3.2
python: 3.2

# Use the Python package numpy and use version 1.16.1
packages:
  numpy:
    version: 1.16.1
```

Note that comments can be added by preceding them with a `#`.

(rr-renv-yaml-syntax)=

## YAML 構文

YAML ドキュメントは、次の要素で構成できます。

(rr-renv-yaml-syntax-scalars)=

### スカラー

スカラーは通常の値です: 数値、文字列、ブール値

```
number-value: 42
floating-point-value: 3.141592
boolean-value: true

# strings can be both 'single-quoted` and "double-quoted"
string-value: 'Bonjour'
```

YAML 構文では、便宜上、引用符のない文字列値を使用することもできます。

```
unquoted-string: Hello World
```

(rr-renv-yaml-syntax-lists)=

### リストと辞書

リストは要素のコレクションです:

```
jedis:
  - Yoda
  - Qui-Gon Jinn
  - Obi-Wan Kenobi
  - Luke Skywalker
```

リストのすべての要素はインデントされ、ダッシュとスペースで始まります。

Dictionaries are collections of `key: value` mappings.
すべてのキーは大文字と小文字を区別します。

```
jedi:
  name: Obi-Wan Kenobi
  home-planet: Stewjon
  species: human
  master: Qui-Gon Jinn
  height: 1.82m
```

コロンの後のスペースは必須であることに注意してください。

(rr-renv-yaml-syntax-gotchas)=

### YAML Gotchas

書きやすく読みやすいフォーマットを目指すため、YAML にはいくつかの曖昧さがあります。

- **Special characters in unquoted strings:** YAML has several special characters you cannot use in unquoted strings.
  例えば、以下のサンプルを解析すると失敗します。
  ```
  unquoted-string: let me put a colon here: oops
  ```
  文字列の値を引用すると、この値が曖昧になります:
  ```
  unquoted-string: "let me put a colon here: oops"
  ```
  Generally, you should quote all strings that contain any of the following characters: `[] {} : > |`.
- **Tabs versus spaces for indentation:** do _not_ use tabs for indentation.
  結果の YAML は引き続き有効ですが、これは多くの微妙な解析エラーの原因となる可能性があります。
  スペースを使うだけです

(rr-renv-yaml-environments)=

## Yaml を使用して計算環境を定義する方法

簡素化により、YAML ファイルを手書きで書くことができます。
Alternatively, they can be automatically generated as discussed in the {ref}`rr-renv-package` subchapter.
YAML ファイルから、計算環境をいくつかの方法で複製できます。

- **Manually.** It can be done manually by carefully installing the specified packages.
  Because YAML files can also specify operating systems and versions that may or may not match that of the person trying to replicate the environment, this may require the use of {ref}`rr-renv-vm`.

- **Via Package Management Systems such as Conda.** As {ref}`discussed <rr-renv-package>`, as well as being able to generate YAML files from computational environments, Conda can also generate computational environments from YAML files.

(rr-renv-yaml-security)=

## セキュリティの問題

コンピュータに書き込まれていないファイルをダウンロード/使用することに固有のリスクがあります。 また、悪意のあるコードを YAML ファイルに含めることができます。
YAML ファイルをロードしたり、ソースを信頼しない限り計算環境を生成しないでください。
