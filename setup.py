from distutils.core import setup
try:
    import py2exe
except ImportError:
    have_py2exe = False
else:
    have_py2exe = True
    
    
setup_arguments = dict(
    name = 'haietmoba-reminder',
    version = '1.0b2',
    author = 'Sridhar Ratnakumar',
    author_email = 'srid@nearfar.org',
    url = 'http://www.actualfreedom.com.au/',
    license = 'MIT',
    scripts = ['app.py'],
    data_files = [('data', ['data/icon.png'])],
    classifiers=[
        'Development Status :: 4 - Beta',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
        'Programming Language :: Python',
        'Topic :: Education',
        'Topic :: Utilities',
        'Intended Audience :: End Users/Desktop',
    ]
)


py2exe_arguments = dict(
      windows=[{"script": 'app.py'}],
      options={'py2exe': {'includes': 'sip', 'skip_archive': True}})

if have_py2exe:
    setup_arguments.update(py2exe_arguments)
    
    
setup(**setup_arguments)