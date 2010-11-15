Introduction
============

A simple app to periodically remind one to ask::

  How am I experiencing this moment of being alive?
  
For more details, visit http://github.com/srid/haietmoba-reminder/wiki

Building
========

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
