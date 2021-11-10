(rr-rdm-dmp)=
# Plano de gerenciamento de dados

Um Plano de Gerenciamento de Dados (DMP) ou Plano de Gestão de Saída, é um documento que descreve como suas saídas de pesquisa serão geradas, armazenadas, usadas e compartilhadas em seu projeto. Um DMP é um documento vivo, que pode ser atualizado em todo o projeto de pesquisa conforme necessário.

Um Plano de Gerenciamento de Dados é um roteiro para você gerenciar seus dados de forma eficiente e segura. Isso pode impedir a perda ou a violação de dados. Planejando com antecedência como gerenciar seus dados de forma consistente pode poupar seu tempo mais tarde! Também pode tornar mais fácil para {ref}`compartilhar<rr-rdm-sharing>` os seus dados com outras pessoas e, portanto, tornar os dados mais {ref}`FALHA<rr-rdm-fair>`

## Um Plano de Gestão de Dados deverá fornecer informações sobre cinco tópicos principais:

### 1. Funções e responsabilidades
* É importante discutir quem é responsável por diferentes tarefas durante o ciclo de vida de um projecto de investigação. Definir quem é responsável pela gestão dos dados e código pode evitar confusão/má comunicação mais tarde no projeto.
* Você deve verificar as recomendações do DMP e os requisitos do seu instituto e financiador. A equipe de suporte de pesquisa de biblioteca do seu instituto e o site do seu financiador geralmente são lugares bons para encontrar informações e ajudar. Alguns dos financiadores exigem que você use seu modelo DMP. Você pode verificar se o seu financiador ou instituto tem um DMP usando [DMPonline](https://dmponline.dcc.ac.uk/).

### 2. Tipo e tamanho dos dados coletados e documentação/metadados gerados
* Aqui você pode listar os formatos de arquivo que você usará para coletar, processar e apresentar os seus dados. Se você quiser compartilhar suas saídas de pesquisa mais tarde Os formatos de arquivo padrão que podem ser abertamente usados sem uma licença específica para um programa de software são preferidos. Para garantir isso, você deve adaptar seus arquivos ou começar a trabalhar nesses formatos mais cedo.
* Uma distinção pode ser feita entre diferentes tipos de dados que podem ser descritos separadamente no plano:
    * Dados raros/primários: dados coletados da fonte (mantenha sempre uma versão somente leitura de dados brutos para que você possa voltar mais tarde!)
    * Dados processados: uma versão dos dados que foram modificados para análise ou visualização
    * Dados finalizados: dados que estão prontos para serem compartilhados em uma publicação ou repositório de dados (veja {ref}`Compartilhar e arquivar seção de dados <rr-rdm-sharing>` para obter mais informações). Alguns repositórios de dados, como o [Zenodo](https://zenodo.org/), permitir versionamento de datasets para que você possa atualizar seu dataset finalizado se quiser liberar outra versão.
* Todos esses tipos de dados terão de ser descritos para serem colocados no contexto, usando metadados (veja a`documentação e a seção de metadados da {ref}<rr-rdm-metadata>`) e a documentação adequada, que permitirá o futuro de você, e qualquer pessoa da sua equipe, para interpretar os dados.
* É útil saber o tamanho aproximado (na faixa de MB, GB, TB ou PB) dos dados nestas várias etapas porque isso afetará as soluções de armazenamento disponíveis para você (discutida no próximo ponto).

### 3. Tipo de armazenamento de dados usado e de backup de procedimentos que estão em vigor
* Check the {ref}`data storage and organisation section<rr-rdm-storage>` for storage and back-up solutions and ways to organise your files
* Verifique se existem **custos** associados ao seu projeto
    * Solução de armazenamento preferida (durante e após o projeto, veja abaixo)
    * Custos pessoais (se você precisa de um gerente de dados para gerenciar grandes quantidades de dados)
    * Licenças de software (como Notebooks do Electronic Lab, consulte a {ref}`Seção de notebooks abertos<rr-open-notebooks>`
    * Você pode usar esta [lista de verificação pelos custos](https://www.ukdataservice.ac.uk/media/622368/costingtool.pdf) como orientação
* Manter o controle de quem fez alterações específicas em seus dados/código será importante, particularmente para o código. Consulte o {ref}`capítulo de Controle de Versão<rr-vcs>` para obter mais informações.
* Determine quem tem acesso aos dados e quem concede acesso. Pelo menos uma outra pessoa deve ter acesso aos seus dados, como seu supervisor/PI/chefe do departamento. Se você estiver gerenciando dados pessoais/comercialmente sensíveis, o acesso só deve ser dado a indivíduos que tenham que trabalhar com os dados.

### 4. Preservação dos resultados de pesquisa após o projeto
* Considere se suas saídas de pesquisa podem ser disponibilizadas ao público. Dados pessoais ou saídas de pesquisa necessárias para solicitar patentes não podem ser compartilhados publicamente, ver a {ref}`Seção de dados abertos<rr-open-data>` Se os dados não puderem ser disponibilizados publicamente, ainda terá que preservá-los por vários anos, dependendo das políticas do seu país, instituto e financiador.
* É possível externalizar a preservação de seus dados a longo prazo para um repositório de dados. Você pode encontrar mais informações sobre como selecionar um repositório apropriado no {ref}`compartilhamento e arquivamento de dados<rr-rdm-sharing>` seção
    * Selecione repositórios usando, por exemplo, [FAIRsharing](https://fairsharing.org/) ou [Lista recomendada da Natureza](https://www.springernature.com/gp/authors/research-data-policy/repositories/12327124), que fornece um identificador persistente, como um DOI para a sua saída de pesquisa. Um repositório deve ter uma política de preservação que especifique quanto tempo as suas saídas serão curadas. Em caso de dúvida, entre em contato com sua equipe de suporte de pesquisa de dados para obter mais informações sobre repositórios de dados.

### 5. Reutilização de suas saídas de pesquisa por outros
* Selecione uma licença quando você tornar seu resultado disponível em um repositório (veja os subcapítulos de licença nos {ref}`dados<rr-licensing-data>` e {ref}`software<rr-licensing-software>` para mais informações). Selecionando uma licença, você informa aos outros como podem reutilizar seus dados. Se você não selecionar uma licença, outros não serão capazes de reutilizar seus dados sem pedir permissão.
* Você pode colocar suas saídas de pesquisa em contexto usando e texto de introdução, como um arquivo README.txt
    * Veja a documentação`de documentação e metadados do {ref}<rr-rdm-metadata>`

Você pode usar esta [lista de verificação](https://ukdataservice.ac.uk/learning-hub/research-data-management/plan-to-share/checklist/) para ver se você tem tudo coberto pelo seu Plano de Gestão de Dados.

## Mais recomendações de leitura

- [Módulos educativos do DataOne](https://www.dataone.org/education-modules)
- [Informações sobre gerenciamento de dados do UK Services](https://ukdataservice.ac.uk/learning-hub/research-data-management/)
- [Portal de Gestão de Dados de Pesquisa Delft TU](https://www.tudelft.nl/en/library/research-data-management)
- [Vídeos (3-7 min) sobre gerenciamento de dados de Kristin Briney](https://www.youtube.com/watch?v=K5_ocBG5xek&list=PLEor4jq8YPgK_sgEiAcpHZLw-62mufXus)
- Briney, Kristin. Gerenciamento de dados para pesquisadores : Organize, mantenha e compartilhe seus dados para o sucesso da pesquisa, Pelágica Publicação, 2015.
- Briney, K.A., Coates, H. and Goben, A., 2020 Práticas Fundacionais de Gerenciamento de Dados de Pesquisa. Ideias e resultados da pesquisa 6: e56508. [https://doi.org/10.3897/rio.6.e56508](https://doi.org/10.3897/rio.6.e56508)
- Hart EM, Barmby P, LeBauer D, Michonneau F, Mount S, Mulrooney P, et al. (2016) Ten Simple Rules for Digital Storage. PLoS Compor Biol 12(10): e1005097. [https://doi.org/10.1371/journal.pcbi.1005097](https://doi.org/10.1371/journal.pcbi.1005097)
