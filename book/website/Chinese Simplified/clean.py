"""一个帮助脚本来"清理"你生成的所有Markdown 和 HTML 文件。"""
导入Shutil
从 pathlib 导入路径

path_root = 路径(__file__).parent.parent.parent

路径= [path_root.joinpath('_site'),
         path_root.joinpath('_build')]
路径的路径：
    打印(f'正在删除 {path}...')
    h.rmtree(路径，忽略错误=True)

打印('完成!')
