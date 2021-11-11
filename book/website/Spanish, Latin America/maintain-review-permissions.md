(cl-maintain-review-permissions)=
# Propiedad y permisos
En cualquier proyecto de equipo u organización, hay diferentes colaboradores.

Los propietarios de un proyecto son individuos o equipos que generalmente comienzan un proyecto o únase a él en el momento de la creación del proyecto con una visión y metas definidas. Los propietarios tienen derecho a otorgar diferentes [niveles de permiso](https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/repository-permission-levels-for-an-organization#permission-levels-for-repositories-owned-by-an-organization) a los colaboradores externos.

En Github, hay cinco niveles de permisos: read, triage, write, maintain, y admin.
* Los lectores son colaboradores que no son de código que se leen el contenido o se unen a discusiones sobre asuntos de GitHub.
* Con permiso de triage, los colaboradores pueden gestionar problemas y pull requests sin acceso de escritura.
* El permiso de escritura permite a los colaboradores enviar cambios al proyecto.
* El permiso de mantenimiento es para los administradores de proyectos pero no tienen acceso a acciones sensibles o destructivas (como la eliminación del proyecto).
* Los administradores son personas que tienen pleno acceso al proyecto, incluyendo acciones delicadas y destructivas, y son responsables de conceder permiso para hacer otros colaboradores.

Estos roles a menudo se definen en un archivo de proyecto como un [archivo CODEOWNERS](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/about-code-owners) o un archivo de Formas de Trabajo (ver _The Turing Way_'s [Ways of Working](https://github.com/alan-turing-institute/the-turing-way/blob/main/ways_of_working.md) como ejemplo). Estos archivos proporcionan información sobre el equipo central del proyecto y los miembros responsables de los roles de mantenimiento en el proyecto.

En este capítulo, cualquier persona con permisos de prueba, escritura y mantenimiento es referida como mantenedores. Los mantenedores están involucrados en la creación de problemas y pull requests cuando sea necesario. Mantienen el código base o proyecto actualizado y ayudan a revisar las contribuciones. A menudo pueden aprobar y fusionar solicitudes de extracción. También pueden solicitar reseñas de otra persona.

*Para más información sobre el nivel de permisos, por favor vea esta [documentación en GitHub](https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/repository-permission-levels-for-an-organization).*
