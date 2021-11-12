"""Un script d'aide pour "nettoyer" tous vos fichiers HTML et markdown générés."""
importez shutil en tant que sh
depuis le chemin d'importation de pathlib

path_root = Path(__file__).parent.parent

path = [path_root.joinpath('_site'),
         path_root.joinpath('_build')]
pour le chemin dans les chemins :
    print(f'Suppression de {path}...')
    sh.rmtree(path, ignore_errors=True)

print('Terminé !')
