(cl-maintain-review-merging)=
# Fusionando contribuciones
Las solicitudes de extracción realizadas por los colaboradores pueden ser aprobadas o fusionadas por los mantenedores después de la revisión. Hay diferentes maneras de combinar una solicitud de extracción:
- *Fusionar pull request*: combina todos los commits a la rama base. Mantiene todos los commits hechos en las relaciones públicas como separados y los fusiona como son, a través de un único compromiso de fusión con la rama base.
- *Squash y fusionar*: Borra todos los commits creados en la pull request en un solo commit y los fusiona como un solo commit (con la ayuda de un commit de merge) en la rama base (ver este [blog para más detalles](https://github.blog/2016-04-01-squash-your-commits/)).
- *Reiniciar y combinar*: Reemplaza todos los commits individualmente a la rama base (integrando cambios de una rama a otra) antes de fusionar. En el mensaje del mensaje, el mantenedor puede proporcionar un mensaje de fusión junto con comentarios (si los hay) y luego presionar el botón "confirmar fusión".
