(cm-citable-cffinit)=

# Create a `CITATION.cff` using `cffinit`

`cffinit` is a web application which helps users create a `CITATION.cff` file.
The application provides guidance for each field of the [CFF schema](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md) and does the validation automatically.
When there are issues, `cffinit` will provide a visual feedback on relevant fields.

Nas seguintes seções, você pode encontrar detalhes sobre cada etapa do processo.

To get started, visit [`cffinit`](https://citation-file-format.github.io/cff-initializer-javascript/) and click on the "Create" button to continue to the **Start** screen.

```{figure} ../../../figures/gifs/cffinit-0.gif
---
name: cffinit-0
width: 80%
alt: Landing page of cffinit.
---
Landing page of cffinit. [^cffinitversion]
```

[^cffinitversion]: All screen captures in this section refer to `cffinit` v2.0.0.

## Iniciar

On the first page of the application, enter the title of your work, write a message to indicate how you want your software to be mentioned, and select whether you are creating a `CITATION.cff` file for software or a dataset.

```{figure} ../../../figures/gifs/cffinit-1.gif
---
name: cffinit-1
width: 80%
alt: First page of the application, for Title, Message and Type. Fields are empty.
---
First page of the application, for Title, Message and Type. [^cffinitversion]
```

You can see the preview of the generated `CITATION.cff` file on the right.

Se houver problemas em qualquer um dos campos, eles serão destacados e mensagens de erro serão exibidas em vermelho.
When the generated `CITATION.cff` file is not valid, the preview widget will have a red border.

```{note}
As title, message and author are required fields by the schema, these fields will be highlighted until you provide them.
```

Click next to continue to the **Authors** screen.

```{figure} ../../../figures/gifs/cffinit-1-filled.gif
---
name: cffinit-1-filled
width: 80%
alt: First page of the form, for Title, Message and Type. Fields are filled.
---
First page of the form, for Title, Message and Type. Fields are filled. [^cffinitversion]
```

## Autores

The CFF schema requires at least one author in the `CITATION.cff` file.
Clique no botão "Adicionar autor" para abrir um formulário para isso.
Preencha os campos relevantes para os autores.
É altamente recomendado adicionar o ORCID para autores.
See {ref}`cm-citable-orcid` to learn more about ORCID.

```{figure} ../../../figures/gifs/cffinit-2.gif
---
name: cffinit-2
width: 80%
alt: Second page of the form, for Authors.
---
Second page of the form, for Authors. [^cffinitversion]
```

```{figure} ../../../figures/gifs/cffinit-2-add-author.gif
---
name: cffinit-2-add-author
width: 80%
alt: Second page of the form, for Authors. Author addition in progress.
---
Second page of the form, for Authors. Author addition in progress. [^cffinitversion]
```

After adding one author, you have the minimum required information for a valid `CITATION.cff` file.
Adicione mais autores conforme necessário.
Clique em seguida para continuar.

```{figure} ../../../figures/gifs/cffinit-2-filled.gif
---
name: cffinit-2-filled
width: 80%
alt: Second page of the form, for Authors. One author filled.
---
Second page of the form, for Authors. One author filled. [^cffinitversion]
```

## Minimal `CITATION.cff` file

Muito bem!
Now your `CITATION.cff` file meets the minimum requirements.
Nesta tela você pode baixar o arquivo gerado ou copiá-lo do widget de pré-visualização.
Recomendamos que você adicione mais informações.
Clique no botão "Adicionar mais" para adicionar mais campos ao seu arquivo de citação para melhorá-lo.

```{figure} ../../../figures/gifs/cffinit-3.gif
---
name: cffinit-3
width: 80%
alt: Last page of the minimal form.
---
Last page of the minimal form. [^cffinitversion]
```

## Campos adicionais

Todos os campos adicionais são opcionais, mas é recomendado que você preencha os mais relevantes para seu trabalho.

```{note}
If you decide not to continue further, you can press the "Finish" button to skip all remaining steps and go to the final screen.
```

Nesta tela, você verá novos passos no stepper.
Aqui está uma breve descrição das telas adicionais:

- Identificadores: Adicionar DOIs, URLs e identificadores de Heranças de Software;
- Recursos relacionados: URLs de repositórios relacionados ao trabalho e seu site;
- Resumo: Um breve resumo do trabalho;
- Palavras-chave: Palavras-chave descrevendo o trabalho;
- Licença: A licença sob a qual o trabalho está disponível;
- Especificar de versão: Informações sobre uma versão ou commit específico, incluindo a data do lançamento.

```{figure} ../../../figures/gifs/cffinit-3-advanced.gif
---
name: cffinit-3-advanced
width: 80%
alt: Third page of the form. More options appear on the left.
---
Third page of the form. More options appear on the left. [^cffinitversion]
```

Clique próximo para começar a adicionar campos adicionais.

## Tela final

Ótimo que você tenha chegado na tela final!
After adding all the relevant information, you will have a validated `CITATION.cff` file.
Faça o download ou copie e adicione ao seu repositório público para obter o crédito que você merece!

```{figure} ../../../figures/gifs/cffinit-final.gif
---
name: cffinit-final
width: 80%
alt: Last page of the complete form.
---
Last page of the complete form. [^cffinitversion]
```
