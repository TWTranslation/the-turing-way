(cl-shared-ownership-challenges)=

# 追溯应用所有权模式的挑战

While the project ownership models represent the ideal frameworks in open source, some issues hinder their adoption widely across different projects.
Specifically, it is difficult to apply shared ownership models retroactively for a few reasons described below.

## 强所有权

A “strong-ownership” model is when a single contributor or small group of developers feel a strong sense of ownership over the project.
It essentially assigns ownership of the project to a few individuals: although the source code may be freely available, projects are often not open for collaboration or do not incentivise contribution.
这是一个双管齐下的问题――从近期来看，它妨碍了建立有效的用户和开发者社区，这些社区能够帮助改进软件，长期而言也是如此。
Many code suites, especially those using High-Performance Computing (HPC), those in long-established fields and legacy code more generally, are particularly prone to these problems of strong ownership and are resistant to attempts at democratisation.

## Old or Institute-funded Projects

While it may be easier to adopt a shared ownership model for new projects, especially those originating outside of established institutions, the process is hampered when working with old projects, or those new projects that arise within ingrained norms of research software.
Research software is developed by individuals within research groups, which operate within an organisation or a regulated research environment.
For instance, nationally-funded research operates under national laws that may not always comply with the legal requirements in other countries.
Organisations hosting these research themselves are constrained by national laws and international interests.
The very structure of these institutions depends on ownership.
For example, we have found that arranging collaboration agreements for joint funding is often held up by the need to define ownership of the intellectual property, even if the software is open source.
This may be part of the larger legal framework: specifying that software is owned by a project or community rather than a person may be ideal for encouraging participation, but it could also be open to abuse if the legal ownership of the software can be disputed, or worse, appropriated by bad actors.

## 固定前向方法

Beyond the institutional level, open source projects should transcend national borders, but we have also found that organisations might restrict the use of software that is legally registered in another country {cite:ps}`EU2013legal`.
This, unfortunately, goes against the open source philosophy, but, as we explore some solutions for our main theme in the next section, we can learn to advocate for the subculture of open source within the organisation culture in which we operate.
