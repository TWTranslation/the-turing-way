"""Un script ayudante para "limpiar" todos los archivos HTML y markdown generados."""
importar shutil como sh
desde la ruta de importación de pathlib

path_root = Path(__file__).parent.parent

paths = [path_root.joinpath('_sitio'),
         path_root.joinpath('build')]
para ruta en rutas:
    print(f'Removiendo {path}...')
    sh.rmtree(ruta, ignore_errors=True)

print('¡Hecho!')
