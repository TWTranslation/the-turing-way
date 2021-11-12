"""برنامج نصي مساعد "تنظيف" كل ما تم إنشاؤه من ملفات الدرجات السفلى و HTML."""
استيراد إيقاف تشغيل كمادة قاسية
من مسار استيراد pathlib

path_root = Path(__file__).parent.الأصل

المسارات = [path_root.joinpath('_site')،
         path_root.joinpath('_build')]
للمسار في المسارات:
    print(f'إزالة {path}...')
    sh.rmtree(المسار , تجاهل_errors=True)

print('تم!')
