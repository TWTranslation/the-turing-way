(rr-open)=
# Pesquisa Aberta

(rr-pré-requisitos)=
## Pré-requisitos

| Pré-requisito | Importância | Observações                                     |
| ------------- | ----------- | ----------------------------------------------- |
| {ref}`rr-vcs` | Útil        | Experiência com o GitHub é particularmente útil |


```{figure} ../figures/evolution-open-research.jpg
---
nome: pesquisa aberta
alternativa: Esta imagem mostra um pesquisador evoluindo suas práticas de pesquisa para se mover em direção à era da pesquisa aberta.
---
_A Turing Way_ ilustração de projeto por Scriberia. Usado sob uma licença CC-BY 4.0. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).
```

(rr-open-sumy)=
## Summary

A pesquisa aberta visa transformar a pesquisa, tornando-a mais reprodutível, transparente, colaborativa, responsável e acessível à sociedade. Insiste na mudança na forma como a investigação é levada a cabo e difundida por instrumentos digitais. Uma definição de pesquisa aberta, [conforme dada pela Organização de Cooperação e Desenvolvimento Econômico (OECD)](https://www.fct.pt/dsi/docs/Making_Open_Science_a_Reality.pdf "Making Open Science a Reality, OECD Science, Technology and Industry Policy Papers No. 25"), , é prática de tornar os "resultados primários dos resultados de pesquisas financiadas com dinheiros públicos – publicações e dados de pesquisa – acessíveis ao público, em formato digital, sem restrição mínima ou mínima." Para alcançar esta abertura na investigação, cada elemento do processo de investigação deve ser:

- _Esteja disponível publicamente_: é difícil usar e se beneficiar do conhecimento escondido por trás de barreiras, como senhas e paredes de pagamento.
- _Seja reutilizável_: As saídas de pesquisa precisam ser licenciadas de forma apropriada, para que potenciais usuários saibam quaisquer limitações de reutilização.
- _Seja transparente_: Com metadados apropriados para fornecer informações claras de como a saída da pesquisa foi produzida e o que ela contém.

O processo de pesquisa tem normalmente o seguinte formulário: os dados são coletados e depois analisados (normalmente usando software). Este processo pode envolver o uso de hardware especializado. Os resultados da investigação são depois publicados. Ao longo de todo o processo, é uma boa prática para os investigadores documentarem o seu trabalho em notebook. Pesquisa aberta visa tornar cada um destes elementos abertos:

- _Dados abertos_: Documentar e compartilhar dados de pesquisa abertamente para reutilização.
- _Software de código aberto_: Documentando o código de pesquisa e as rotinas, tornando-os acessíveis e disponíveis gratuitamente.
- _Hardware Aberto_: Documentação de projetos, materiais e outras informações relevantes relacionadas a hardware, tornando-os livremente acessíveis e disponíveis.
- _Acesso Aberto_: Tornar todas as saídas publicadas livremente acessíveis para o máximo uso e impacto.
- _Notebooks abertos_: uma prática emergente, documentando e compartilhando o processo experimental de tentativa e erro.

Estes elementos são ampliados neste capítulo.

Estudos abertos [{term}`def<Open Scholarship>`] é um conceito que estende ainda mais a pesquisa aberta. Diz respeito à abertura ao público de outros aspectos da investigação científica, por exemplo:

- _Recursos educacionais abertos_: Tornando os recursos educacionais publicamente disponíveis para serem reutilizados e modificados.
- _Equidade, diversidade, inclusão_: Assegurar a bolsa de estudos está aberto a qualquer pessoa sem barreiras baseadas em fatores como raça, fundo, gênero e orientação sexual.
- _Ciência dos Cidadãos_: a inclusão de membros do público em pesquisas científicas.

Estes elementos são também discutidos em pormenor neste capítulo.

(rr-open-útil)=
## Motivação e fundo

Existem cinco principais escolas de pensamento que motivam as práticas abertas a beneficiar a pesquisa:

| Instituição    | Confiança                                                                                            | Mira                                                                                       |
| -------------- | ---------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------ |
| Infraestrutura | A investigação eficaz depende das ferramentas e aplicações disponíveis.                              | Criação de plataformas, ferramentas e serviços disponíveis abertamente para pesquisadores. |
| Pragmática     | A criação de conhecimentos poderia ser mais eficiente se os investigadores trabalhassem em conjunto. | Abrindo o processo de criação de conhecimento.                                             |
| Medição        | As contribuições académicas de hoje necessitam de medições de impacto alternativas.                  | Desenvolver um sistema métrico alternativo para o impacto na pesquisa.                     |
| Democracia     | O acesso ao conhecimento está desigualmente distribuído.                                             | Tornar o conhecimento disponível livremente para todos.                                    |
| Público        | É necessário tornar a investigação acessível ao público.                                             | Tornar a investigação acessível aos cidadãos.                                              |

As práticas abertas também beneficiam os pesquisadores que os propagam. Por exemplo, há evidência {cite:ps}`McKiernan et al. 2016<McKiernan2016Open>` que os artigos de acesso aberto são citados com mais frequência, conforme mostrado no metastudy apresentado na figura abaixo.

```{figure} ../figures/open-access-citations.jpg
---
height: 500px
nome: citações de acesso aberto
alt: Um diagrama da relação entre as taxas de citação e disciplina
---
A taxa relativa de citação (OA: non-OA) nos 19 campos de pesquisa. Essa taxa é definida como a média de citação de artigos em OA dividida pela taxa média de citação de artigos não OA. Vários pontos para a mesma disciplina indicam estimativas diferentes do mesmo estudo ou estimativas de vários estudos. (Veja nota de rodapé 1 para referências.)
```

Outra vantagem da abertura é que, embora as colaborações na investigação sejam essenciais para promover o conhecimento, identificar e estabelecer uma ligação com os colaboradores adequados não é trivial. As práticas abertas podem facilitar a conexão dos pesquisadores ao aumentar a visibilidade e a visibilidade do trabalho de cada um, facilitando o acesso rápido a novos dados e recursos de software e criando novas oportunidades para interagir e contribuir para os projetos comunais em curso.

***Tags de Capítulo**: Este capítulo é curado para o `Grupo de Estudo de Dados de Turing` (`turing-dsg`).*
