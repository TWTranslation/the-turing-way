"""Ein Helferskript zum "Bereinigen" all Ihrer generierten Markdown und HTML-Dateien."""
Shutil als sh importieren
von pathlib-Importpfad

path_root = Pfad(__file__).parent.parent

paths = [path_root.joinpath('_site'),
         path_root.joinpath('_build')]
für Pfad in Pfaden:
    print(f'Entferne {path}...')
    sh.rmtree(Pfad, ignoriere_errors=True)

print('Fertig!')
