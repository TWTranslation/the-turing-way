(cm-citable-cffinit)=
# Crie uma `CITATION.cff` usando `cffinit`

`cffinit` é um aplicativo da web que ajuda os usuários a criar um arquivo `CITATION.cff`. A aplicação fornece orientação para cada campo do [esquema CFF](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md) e faz a validação automaticamente. Quando houver issues, `cffinit` fornecerá um feedback visual em campos relevantes.

Nas seguintes seções, você pode encontrar detalhes sobre cada etapa do processo.

Para começar, visite [`cffinit`](https://citation-file-format.github.io/cff-initializer-javascript/) e clique no botão "Criar" para continuar para a tela **Start**.

```{figure} ../../figures/gifs/cffinit-0.gif
---
name: cffinit-0
largura: 80%
alt: Página inicial do cffinit.
---
Página inicial do café. [^cffinitversion]
```

## Iniciar

Na primeira página do aplicativo, digite o título do seu trabalho, escreva uma mensagem para indicar como você deseja que seu software seja mencionado e selecione se você está criando uma `CITATION. arquivo ff` para software ou conjunto de dados.

```{figure} ../../figures/gifs/cffinit-1.gif
---
nome: cffinit-1
largura: 80%
alt: Primeira página da aplicação, para Título, Mensagem e Tipo. Os campos estão vazios.
---
Primeira página da aplicação, para Título, Mensagem e Tipo. [^cffinitversion]
```

Você pode ver a visualização do arquivo `CITATION.cff` gerado à direita.

Se houver problemas em qualquer um dos campos, eles serão destacados e mensagens de erro serão exibidas em vermelho. Quando o arquivo `CITATION.cff` gerado não é válido, o widget de pré-visualização terá uma borda em vermelho.

```{note}
Como título, mensagem e autor são campos obrigatórios pelo esquema, esses campos serão destacados até que você os forneça.
```

Clique ao lado para continuar para a tela de **Autores**.

```{figure} ../../figures/gifs/cffinit-1-filled.gif
---
nome: cffinit-1
largura: 80%
alt: Primeira página do formulário, para Título, Mensagem e Tipo. Campos estão preenchidos.
---
Primeira página do formulário, para Título, Mensagem e Tipo. Campos estão preenchidos. [^cffinitversion]
```

## Autores

O esquema CFF requer pelo menos um autor no arquivo `CITATION.cff`. Clique no botão "Adicionar autor" para abrir um formulário para isso. Preencha os campos relevantes para os autores. É altamente recomendado adicionar o ORCID para autores. Veja {ref}`cm-citable-orcid` para saber mais sobre ORCID.

```{figure} ../../figures/gifs/cffinit-2.gif
---
nome: cffinit-2
largura: 80%
alt: Segunda página do formulário, para Autores.
---
Segunda página do formulário, para Autores. [^cffinitversion]
```

```{figure} ../../figures/gifs/cffinit-2-add-author.gif
---
nome: cffinit-2-add-author
largura: 80%
alt: Segunda página do formulário, para Autores. Adição do autor em andamento.
---
Segunda página do formulário, para Autores. Adição do autor em andamento. [^cffinitversion]
```

Depois de adicionar um autor, você tem a informação mínima necessária para um arquivo `CITATION.cff` válido. Adicione mais autores conforme necessário. Clique em seguida para continuar.

```{figure} ../../figures/gifs/cffinit-2-filled.gif
---
name: cffinit-2-filled
width: 80%
alt: Second page of the form, for Authors. Um autor preenchido.
---
Segunda página do formulário, para Autores. Um autor preenchido. [^cffinitversion]
```

## Arquivo mínimo `CITATION.cff`

Muito bem! Agora, seu arquivo de `CITATION.cff` atende aos requisitos mínimos. Nesta tela você pode baixar o arquivo gerado ou copiá-lo do widget de pré-visualização. Recomendamos que você adicione mais informações. Clique no botão "Adicionar mais" para adicionar mais campos ao seu arquivo de citação para melhorá-lo.

```{figure} ../../figures/gifs/cffinit-3.gif
---
nome: cffinit-3
largura: 80%
alt: Última página do formulário mínimo.
---
Última página do formulário mínimo. [^cffinitversion]
```

## Campos adicionais

Todos os campos adicionais são opcionais, mas é recomendado que você preencha os mais relevantes para seu trabalho.

```{note}
Se você decidir não continuar mais, você pode pressionar o botão "Finalizar" para pular todas as etapas restantes e ir para a tela final.
```

Nesta tela, você verá novos passos no stepper. Aqui está uma breve descrição das telas adicionais:
- Identificadores: Adicionar DOIs, URLs e identificadores de Heranças de Software;
- Recursos relacionados: URLs de repositórios relacionados ao trabalho e seu site;
- Resumo: Um breve resumo do trabalho;
- Palavras-chave: Palavras-chave descrevendo o trabalho;
- Licença: A licença sob a qual o trabalho está disponível;
- Especificar de versão: Informações sobre uma versão ou commit específico, incluindo a data do lançamento.

```{figure} ../../figures/gifs/cffinit-3-advanced.gif
---
name: cffinit-3-advanced
width: 80%
alt: Terceira página do formulário. Mais opções aparecem à esquerda.
---
Terceira página do formulário. Mais opções aparecem à esquerda. [^cffinitversion]
```

Clique próximo para começar a adicionar campos adicionais.

## Tela final

Ótimo que você tenha chegado na tela final! Depois de adicionar todas as informações relevantes, você terá um arquivo `CITATION.cff` validado. Faça o download ou copie e adicione ao seu repositório público para obter o crédito que você merece!

```{figure} ../../figures/gifs/cffinit-final.gif
---
nome: cffinit-final
largura: 80%
alt: Última página do formulário completo.
---
Última página do formulário completo. [^cffinitversion]
```
