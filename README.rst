Introduction
============

A simple app to periodically remind one to ask::

  How am I experiencing this moment of being alive?
  
For more details, visit http://github.com/srid/haietmoba-reminder/wiki

Development setup
=================

* Install `ActivePython 2.7 <http://activestate.com/activepython/downloads>`_
* Type ``pypm install pyqt4`` to install the latest PyQt

Building the installer
======================

Windows
-------

The preferred way to install this app is to use the pre-built Windows installer
available at the above github site.

To build the standalone binaries, first install Python and PyQt4 ... and then,

1. Install `Inno Setup <http://www.jrsoftware.org/isdl.php#stable>`_
2. Install `ISTool <http://sourceforge.net/projects/istool/files/>`_
3. Install `Microsoft Visual C++ 2008 SP1 Redistributable Package (x86) <http://www.microsoft.com/downloads/en/details.aspx?familyid=A5C84275-3B97-4AB7-A40D-3802B2AF5FC2&displaylang=en>`_
4. Install `py2exe <http://sourceforge.net/projects/py2exe/files/>`_
5. Run ``python setup.py py2exe`` to generate target executable in ``dist/``
6. Create a Windows installer: open installer.iss in ISTool and select ``Project
   -> Compile Setup``. An installer will be created in the ``Output\`` folder.

MacOSX
------

.. ATTENTION:: 
    This procedure creates faulty executables; it needs to be fixed::

        $ haietmoba-reminder/dist/haietmoba-reminder 
        Qt internal error: qt_menu.nib could not be loaded. The .nib file should be
        placed in QtGui.framework/Versions/Current/Resources/ or in the resources
        directory of your application bundle.


1. Install Pyinstaller (1.5-rc1 or above)::

    wget http://www.pyinstaller.org/static/source/1.5-rc1/pyinstaller-1.5-rc1.tar.bz2
    tar zxf pyinstaller-1.5-rc1.tar.bz2 && cd pyinstaller-1.5-rc1
    (cd source/ &&  python ./waf configure build install)
    python Configure.py
    
2. Build the final executable::

    python Makespec.py --onefile /path/to/haietmoba-reminder.py
    python Build.py haietmoba-reminder/haietmoba-reminder.spec
    open haietmoba-reminder/dist/

3. TODO: create the .pkg/.dmg file
