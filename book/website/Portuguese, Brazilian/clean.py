"""Um script auxiliar para "limpar" todos os seus arquivos markdown e HTML gerados."""
importação shutil como shutil
do caminho de importação do pathlib

path_root = Caminho(__file__).parent.parent

caminhos = [path_root.joinpath('_site'),
         path_root.joinpath('_build')]
para o caminho nos caminhos:
    print(f'Removendo {path}...')
    sh.rmtree(caminho, ignore_errors=True)

print('Feito!')
