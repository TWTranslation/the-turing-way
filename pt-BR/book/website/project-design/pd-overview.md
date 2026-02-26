(pd-overview)=

# Visão geral do projeto

## Resumo

Técnicas de design do projeto podem ajudar os pesquisadores a identificar e comunicar claramente seus objetivos, requisitos de habilidade e recursos disponíveis para eles.
Assegura que todas as partes interessadas possam trabalhar em conjunto de forma eficiente, aplicar métodos de reprodutibilidade e comunicar eficazmente o seu trabalho com o público-alvo.
Um projeto de design requer links de projeto, gestores e organizadores para serem deliberados e claros sobre as suas expectativas, desde o início dos seus projectos, a fim de assegurar a implementação bem sucedida dos seus planos em todas as fases da investigação.

```{figure} ../../figures/project-design-overview.*
---
height: 500px
name: project-design-overview
alt: This illustration shows a stage with a trophy labeled as 'reproducible research trophy'. A diverse team of four people are helping each other take staircase towards the trophy. The staircase has three sets of labels indicating research stages as (1) before, that includes 'team, funding, question, methodology, approval, license', (2) during that includes version control and documentation, and (3) after that includes archiving and publishing steps.
---
Illustration of project design overview. _The Turing Way_ project illustration by Scriberia.
Used under a CC-BY 4.0 licence.
DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)
```

Neste capítulo, temos boas práticas para assegurar a manutenção de uma boa comunicação (e evitar a má comunicação), cria oportunidades de colaboração e, em última análise, assegura a reprodutibilidade em diferentes fases do projecto.

## Background & Motivation

Todos aplicam vários conceitos de design em seu projeto formal ou informalmente.
No entanto, muitas vezes pensamos sobre esses conceitos retrospectivamente, quando o projecto estiver concluído e conseguirmos uma melhor compreensão dos erros de concepção que poderiam ter sido evitados com um melhor planeamento e organização.

Esta falta de planeamento contribui para o facto de a maior parte do trabalho de investigação não poder ser reproduzido directa e independentemente, e este estilo de comunicação e colaboração entre os diferentes grupos difere, sendo portanto um desafio.

To help learn good practices, _The Turing Way_ provides various chapters for {ref}`reproducibility<rr>`, {ref}`communication<cm>` and {ref}`collaboration<cl>` that we consider essential for research reproducibility.
Although publications{cite:ps}`Turkyilmaz-vanderVelden2020projectdesign` and _The Turing Way_ chapters on specific methods, tools and practices exist it can be overwhelming to know which chapters to read if you don't already know about the concepts.

Neste capítulo, tratámos práticas e recomendações essenciais e associámo-las a capítulos individuais que abrangem diferentes guias.

```{note}
There are many chapters that we don't link here to avoid overwhelming readers who are new to reproducible project design.
We invite you to contribute to this chapter by adding important tools or practices that have not been mentioned here.
```

In the different subchapters we discuss how you can {ref}`start planning<pd-overview-planning>` for project design, the {ref}` communication and collaboration<pd-overview-repro>` aspect for ensuring reproducibility, {ref}`tools and methods<pd-overview-methods>` for reproducibility, {ref}`version control and documentation<pd-overview-version>` aspects and {ref}`sharing your research<pd-overview-sharing>`.

(pd-overview-mistakes)=

## Learning from Mistakes

> “Building takes many, many mistakes.”
>
> \-- Becky Chambers, [The Long Way to a Small, Angry Planet](https://www.goodreads.com/work/quotes/42270825)

Learning about past design mistakes can give us insight into what we can do differently in the future.
We asked a group of researchers to share what they consider their project design regrets, which we have summarised here:

- Not advocating for clearer goals and success criteria from the beginning.
- Not communicating the project vision clearly/often enough to the other team members.
- Not ensuring that all stakeholders were fully aware of the nature of the project.
- Not understanding that project design is about people first. Designs motivate stakeholders and allow collaboration and inclusion.
- I guess I wrote these as actions I wish I had done better - Not setting short- and long-term milestones, communicating and enforcing norms for collaborator engagement, delegating work and project management tasks.
- Not having documentation besides final reports. When being asked about the code or dataset (raw and process), step by step process from preparing data to getting the results, lack of documented guidance in one place made it hard to trace the project with all team members (classic problem).
- Not properly taking into account the degree to which requirements will change throughout a project - which happens a lot in academia - and the effect this has on designs that then also need to change.
- Trying to plan too much at the beginning and never getting started.
- Feeling like I am always taking an ad hoc approach to planning a project and then feeling like I am spending too much time on the organisation side of the project because I don’t have a set workflow to handle project planning and design. Also, not knowing how project planning fits into project design.
- Using a very messy excel to store/process data, the shame!
- Over-engineering a design for features that didn’t end up being implemented (in life before academia!)
- Not implementing Git flow from the start, and not teaching collaborators how to use Git flow.
- Not developing tests until after a significant amount of code was written.
- Not doing code reviews.
- Not defining use scenarios for the software from the beginning, meaning we didn’t pay enough attention to data input and output.
- Agonising too long before switching to objectively better design (particularly translating from a largely functional codebase to more object-oriented).
- Going with options that team members are ‘comfortable’ with (for example, using outdated languages or platform-dependent compilers), rather than teaching team members new skills. Makes life more difficult in the long run.
- Defining governance at different stages of the project or potential scenario planning for how governance might change as the project scales up/down/gains new users and so on.
- Not thinking about community from the start, starting with a Code of Conduct, thinking about a Contributor License Agreement (intellectual property), what processes will be used and how they will work, how they will impact future contributors and the overall project.

_This section summarises participants' notes from a short workshop called "Good Practices for Designing Software Development Projects (The Turing Way)" at the [Collaboration Workshop 2021](https://www.software.ac.uk/cw21) hosted by [Software Sustainability Institute](https://www.software.ac.uk). The workshop was delivered by Malvika Sharan, Emma Karoune and Batool Almarzouq on 31 March 2021. Zenodo. DOI: [10.5281/zenodo.4650221](https://doi.org/10.5281/zenodo.4650221)._
