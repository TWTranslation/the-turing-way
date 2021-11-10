(pd-projeto-repo-readme)=
# Página inicial - README Arquivo

Uma página inicial para seu projeto é a primeira coisa que os novos visitantes do repositório do seu projeto verão. Em um repositório online, como o GitHub, esta página inicial é chamada de 'README', que é equivalente à página principal de um site.

> Arquivos README são a matilha bem-vinda para o seu projeto - dá a você uma chance de ligar potenciais colaboradores e usuários, mostrando o valor do seu projeto. - [Liderança Aberta da Mozilla](https://mozilla.github.io/open-leadership-training-series/articles/opening-your-project/write-a-great-project-readme/)

Para comunicar de forma eficaz seu projeto e convidar seus leitores a contribuir com seu projeto, seu arquivo LEIAME deve cobrir:
* O que está a fazer, por quem, e porquê.
* O que torna o seu projeto especial e empolgante.
* Como começar.
* Onde encontrar recursos-chave.

Pense em projetar uma página inicial que seja atraente para os mais diversos leitores e forneça todas as informações úteis sem sobrecarregar os seus colaboradores. Para um projeto de software, forneça instruções sobre a instalação, teste, deploy e outros requisitos para a execução do seu software. Veja este [modelo da PurpleBooth](https://github.com/PurpleBooth/a-good-readme-template).

Para obter mais detalhes, consulte [esta apresentação](https://docs.google.com/presentation/d/e/2PACX-1vTvwtT3GddLaDr8J4ZEf8TkufiN_Wn1Kgv2xu6YSH8hgocb6LJ_WB82OzfcPeJ0b09_xyMOMSft7-Gq/pub?start=false&loop=false&delayms=3000) pelo programa de treinamento e acompanhamento da [Ciência Aberta](https://openlifesci.org/). Além disso, veja essa [pequena oficina de Hao Ye](https://ha0ye.github.io/CW21-README-tips/) com um [modelo LEIAME](https://ha0ye.github.io/CW21-README-tips/template_README.html) para começar.

```{note}
**Três lições sobre README**

- Conheça seus usuários e o que eles precisam
- Obtenha os usuários fazendo coisas poderosas rapidamente
- Cuidado com o jargon!

Fonte: Hao Ye. (2021, Março). Oficina de Colaborações 2021 Mini-Oficina: Dicas README para tornar seu projeto mais acessível (Versão v1.0.0). Zenodo. http://doi.org/10.5281/zenodo.4647391
```

## Estudo de Caso: _The Turing Way_

Usando [_The Turing Way_ README arquivo](https://github.com/alan-turing-institute/the-turing-way/blob/main/README.md) como um exemplo, descrevemos como um bom arquivo README se parece.

_O Caminho de Turing_ O arquivo LEIAME inclui os seguintes detalhes fornecidos em ordem cronológica:
1. Nome do projeto como o cabeçalho superior.
2. Um conjunto de [GitHub badges/shields](https://github.com/badges/shields) (Você pode criar seu próprio emblema [aqui](https://shields.io/)). Os escudos do GitHub são botões clicáveis que fornecem ações concisas relacionadas ao projeto, que na _A Turing Way_ incluem o seguinte: [![Leia o livro](https://img.shields.io/badge/read-the%20book-blue.svg)](https://the-turing-way.netlify.com) [![Entre na nossa pequena lista de e-mails](https://img.shields.io/badge/receive-our%20newsletter%20❤%EF%B8%8F-blueviolet.svg)](https://tinyletter.com/TuringWay) [![Junte-se ao chat em https://gitter.im/alan-turing-institute/the-turing-way](https://img.shields.io/gitter/room/alan-turing-institute/the-turing-way?logo=gitter)](https://gitter.im/alan-turing-institute/the-turing-way) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3233853.svg)](https://doi.org/10.5281/zenodo.3233853) [![](https://img.shields.io/static/v1?label=TuringWay&message=I%20want%20to%20contribute!&color=yellow&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8%2F9hAAACYklEQVQ4jXXTy09TQRTH8f5VPhI1xoVxYURNAFcmRleaGDdGXQlKAYkLUARNfICoScGKpTyE3t5bkKD2AUQepUXB0gcgLTalD9rema8LKRVrT3I2k%2Fl95kwyY6BMfQiFqHaoVDlUBoJBZJl9hn8XRsIhqh0abd55tnWdrBA8WfBSpakMhUqhXUCJhKl2aLR65%2FEtLeGc%2BYoy5aHf46bX7cThctK%2BAw2HQkVAW41wzqHRMjNNRteR%2BQzGjg5udZtQ47FiO50gdLZ1nVbvPNUOFSUSxnB4sJ%2F0TjCTTjHk%2BoJl%2BRtqPEaL6zMH79Rw0dyDVVURqRgyn0EkN8jkshwZGsBQodgQyQ2kyDPsce859drjdqLRKE0D%2FZhHR5F6DpHc2B3%2FjF3BcFqxARIpBXXmt9ii67vAYDhIr8fNx0UfE3OzzC0sIHIpxNYqSPEHqFBsiFQMkU3h8vs5%2FvABTeNje6BCj%2FxcwzLlIZHYROq5v4EoIr2JyCbJ57Kobjd3u7o41v4I68pyCfTGrhSvUKHYAJD5bcTWGjKbJJdO4A8E6JyexP4rWgK8Vkb2AjK7hcxnmZybxfF9kff%2BhZJQofvXwhg7O4vAfU2l79ME79xOrjY3c9ZYVzZs8nvZf6%2BRQCRCTgiODg1iCK6vc6WtjZM1tzlRW8sNa99%2Fx64fH%2BNAQz0un49nfh%2BVmspAcKX4lKWUbMbjXOg2cf3Vy%2BLIoRWqekxc7nhB6%2FQ0lZqKJRBAyjKfKZFIcKixgVPPn3LTamFfUyPne7qp1Oz0Bn4g5d7vVAIUamJ2FqPZzCW7gvlHabBQvwE2XnlAiFRrOwAAAABJRU5ErkJggg%3D%3D)](https://github.com/alan-turing-institute/the-turing-way/blob/main/CONTRIBUTING.md)
3. Links para a versão traduzida dos arquivos README para permitir que os leitores leiam em sua língua preferida.
4. Uma frase cada um deles fornecendo visão do projeto, meta e público-alvo.
5. Uma tabela para o conteúdo fornecendo ligações rápidas para diferentes seções do arquivo README
6. Seções diferentes com detalhes e links apropriados:
  - Sobre o projeto: motivação e fundo
  - A equipe: quem são os membros da equipe
  - Contribuição: links para a diretriz de contribuição e código de conduta
  - Citando The Turing Way: instruções para citar o projeto
  - Entrar em contato: detalhes de contato das ligações do projeto

Por último, fornecemos uma lista completa de contribuintes para o projeto. Esta tabela de contribuidores é atualizada usando o [bot de todos-contribuintes](https://allcontributors.org) que reconhece todos os tipos de contribuições, incluindo aqueles que 'não apertam o código'.
