; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{27152F71-6514-40BD-9374-74745789C60E}
AppName=HAIETMOBA Reminder
AppVerName=HAIETMOBA Reminder 0.1b1
AppPublisher=Sridhar Ratnakumar
AppPublisherURL=bitbucket.org/srid/haietmoba-reminder/
AppSupportURL=bitbucket.org/srid/haietmoba-reminder/
AppUpdatesURL=bitbucket.org/srid/haietmoba-reminder/
DefaultDirName={pf}\HAIETMOBA Reminder
DefaultGroupName=HAIETMOBA Reminder
LicenseFile=LICENSE.txt
OutputBaseFilename=haietmoba-reminder-setup
SetupIconFile=data\icon.ico
Compression=lzma
SolidCompression=true
DisableProgramGroupPage=true

[Languages]
Name: english; MessagesFile: compiler:Default.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Files]
Source: dist\haietmoba-reminder.exe; DestDir: {app}; Flags: ignoreversion
Source: dist\__future__.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\_abcoll.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\_socket.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\_socket.pyd; DestDir: {app}; Flags: ignoreversion
Source: dist\_ssl.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\_ssl.pyd; DestDir: {app}; Flags: ignoreversion
Source: dist\_strptime.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\_threading_local.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\abc.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\atexit.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\base64.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\bdb.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\bisect.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\bz2.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\bz2.pyd; DestDir: {app}; Flags: ignoreversion
Source: dist\calendar.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\cmd.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\codecs.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\collections.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\copy.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\copy_reg.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\difflib.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\dis.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\doctest.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\dummy_thread.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\fnmatch.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\functools.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\genericpath.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\getopt.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\gettext.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\glob.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\haietmoba-reminder.exe; DestDir: {app}; Flags: ignoreversion
Source: dist\heapq.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\inspect.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\keyword.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\linecache.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\locale.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\ntpath.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\opcode.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\optparse.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\os.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\os2emxpath.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\pdb.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\pickle.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\posixpath.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\pprint.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\PyQt4.QtCore.pyd; DestDir: {app}; Flags: ignoreversion
Source: dist\PyQt4.QtGui.pyd; DestDir: {app}; Flags: ignoreversion
Source: dist\python26.dll; DestDir: {app}; Flags: ignoreversion
Source: dist\QtCore4.dll; DestDir: {app}; Flags: ignoreversion
Source: dist\QtGui4.dll; DestDir: {app}; Flags: ignoreversion
Source: dist\quopri.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\random.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\re.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\repr.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\select.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\select.pyd; DestDir: {app}; Flags: ignoreversion
Source: dist\shlex.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\sip.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\sip.pyd; DestDir: {app}; Flags: ignoreversion
Source: dist\socket.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\sre.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\sre_compile.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\sre_constants.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\sre_parse.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\ssl.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\stat.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\string.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\StringIO.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\stringprep.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\struct.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\subprocess.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\tempfile.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\textwrap.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\threading.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\token.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\tokenize.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\traceback.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\types.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\unicodedata.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\unicodedata.pyd; DestDir: {app}; Flags: ignoreversion
Source: dist\unittest.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\UserDict.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\w9xpopen.exe; DestDir: {app}; Flags: ignoreversion
Source: dist\warnings.pyc; DestDir: {app}; Flags: ignoreversion
Source: dist\webbrowser.pyc; DestDir: {app}; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: dist\data\icon.png; DestDir: {app}\data
Source: dist\encodings\__init__.pyc; DestDir: {app}\encodings
Source: dist\encodings\aliases.pyc; DestDir: {app}\encodings
Source: dist\encodings\ascii.pyc; DestDir: {app}\encodings
Source: dist\encodings\base64_codec.pyc; DestDir: {app}\encodings
Source: dist\encodings\big5.pyc; DestDir: {app}\encodings
Source: dist\encodings\big5hkscs.pyc; DestDir: {app}\encodings
Source: dist\encodings\bz2_codec.pyc; DestDir: {app}\encodings
Source: dist\encodings\charmap.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp037.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp424.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp437.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp500.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp737.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp775.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp850.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp852.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp855.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp856.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp857.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp860.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp861.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp862.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp863.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp864.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp865.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp866.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp869.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp874.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp875.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp932.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp949.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp950.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp1006.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp1026.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp1140.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp1250.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp1251.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp1252.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp1253.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp1254.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp1255.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp1256.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp1257.pyc; DestDir: {app}\encodings
Source: dist\encodings\cp1258.pyc; DestDir: {app}\encodings
Source: dist\encodings\euc_jis_2004.pyc; DestDir: {app}\encodings
Source: dist\encodings\euc_jisx0213.pyc; DestDir: {app}\encodings
Source: dist\encodings\euc_jp.pyc; DestDir: {app}\encodings
Source: dist\encodings\euc_kr.pyc; DestDir: {app}\encodings
Source: dist\encodings\gb2312.pyc; DestDir: {app}\encodings
Source: dist\encodings\gb18030.pyc; DestDir: {app}\encodings
Source: dist\encodings\gbk.pyc; DestDir: {app}\encodings
Source: dist\encodings\hex_codec.pyc; DestDir: {app}\encodings
Source: dist\encodings\hp_roman8.pyc; DestDir: {app}\encodings
Source: dist\encodings\hz.pyc; DestDir: {app}\encodings
Source: dist\encodings\idna.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso2022_jp.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso2022_jp_1.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso2022_jp_2.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso2022_jp_3.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso2022_jp_2004.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso2022_jp_ext.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso2022_kr.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso8859_1.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso8859_2.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso8859_3.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso8859_4.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso8859_5.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso8859_6.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso8859_7.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso8859_8.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso8859_9.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso8859_10.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso8859_11.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso8859_13.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso8859_14.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso8859_15.pyc; DestDir: {app}\encodings
Source: dist\encodings\iso8859_16.pyc; DestDir: {app}\encodings
Source: dist\encodings\johab.pyc; DestDir: {app}\encodings
Source: dist\encodings\koi8_r.pyc; DestDir: {app}\encodings
Source: dist\encodings\koi8_u.pyc; DestDir: {app}\encodings
Source: dist\encodings\latin_1.pyc; DestDir: {app}\encodings
Source: dist\encodings\mac_arabic.pyc; DestDir: {app}\encodings
Source: dist\encodings\mac_centeuro.pyc; DestDir: {app}\encodings
Source: dist\encodings\mac_croatian.pyc; DestDir: {app}\encodings
Source: dist\encodings\mac_cyrillic.pyc; DestDir: {app}\encodings
Source: dist\encodings\mac_farsi.pyc; DestDir: {app}\encodings
Source: dist\encodings\mac_greek.pyc; DestDir: {app}\encodings
Source: dist\encodings\mac_iceland.pyc; DestDir: {app}\encodings
Source: dist\encodings\mac_latin2.pyc; DestDir: {app}\encodings
Source: dist\encodings\mac_roman.pyc; DestDir: {app}\encodings
Source: dist\encodings\mac_romanian.pyc; DestDir: {app}\encodings
Source: dist\encodings\mac_turkish.pyc; DestDir: {app}\encodings
Source: dist\encodings\mbcs.pyc; DestDir: {app}\encodings
Source: dist\encodings\palmos.pyc; DestDir: {app}\encodings
Source: dist\encodings\ptcp154.pyc; DestDir: {app}\encodings
Source: dist\encodings\punycode.pyc; DestDir: {app}\encodings
Source: dist\encodings\quopri_codec.pyc; DestDir: {app}\encodings
Source: dist\encodings\raw_unicode_escape.pyc; DestDir: {app}\encodings
Source: dist\encodings\rot_13.pyc; DestDir: {app}\encodings
Source: dist\encodings\shift_jis.pyc; DestDir: {app}\encodings
Source: dist\encodings\shift_jis_2004.pyc; DestDir: {app}\encodings
Source: dist\encodings\shift_jisx0213.pyc; DestDir: {app}\encodings
Source: dist\encodings\string_escape.pyc; DestDir: {app}\encodings
Source: dist\encodings\tis_620.pyc; DestDir: {app}\encodings
Source: dist\encodings\undefined.pyc; DestDir: {app}\encodings
Source: dist\encodings\unicode_escape.pyc; DestDir: {app}\encodings
Source: dist\encodings\unicode_internal.pyc; DestDir: {app}\encodings
Source: dist\encodings\utf_7.pyc; DestDir: {app}\encodings
Source: dist\encodings\utf_8.pyc; DestDir: {app}\encodings
Source: dist\encodings\utf_8_sig.pyc; DestDir: {app}\encodings
Source: dist\encodings\utf_16.pyc; DestDir: {app}\encodings
Source: dist\encodings\utf_16_be.pyc; DestDir: {app}\encodings
Source: dist\encodings\utf_16_le.pyc; DestDir: {app}\encodings
Source: dist\encodings\utf_32.pyc; DestDir: {app}\encodings
Source: dist\encodings\utf_32_be.pyc; DestDir: {app}\encodings
Source: dist\encodings\utf_32_le.pyc; DestDir: {app}\encodings
Source: dist\encodings\uu_codec.pyc; DestDir: {app}\encodings
Source: dist\encodings\zlib_codec.pyc; DestDir: {app}\encodings
Source: dist\PyQt4\__init__.pyc; DestDir: {app}\PyQt4
Source: dist\PyQt4\QtCore.pyc; DestDir: {app}\PyQt4
Source: dist\PyQt4\QtGui.pyc; DestDir: {app}\PyQt4
Source: dist\data\icon.ico; DestDir: {app}\data

[Icons]
Name: {group}\HAIETMOBA Reminder; Filename: {app}\haietmoba-reminder.exe; IconFilename: {app}\data\icon.ico; IconIndex: 0
Name: {group}\{cm:UninstallProgram,HAIETMOBA Reminder}; Filename: {uninstallexe}
Name: {commondesktop}\HAIETMOBA Reminder; Filename: {app}\haietmoba-reminder.exe; Tasks: desktopicon; IconFilename: {app}\data\icon.ico
Name: {commonstartup}\HAIETMOBA Reminder; Filename: {app}\haietmoba-reminder.exe; IconFilename: {app}\data\icon.ico

[Run]
Filename: {app}\haietmoba-reminder.exe; Description: {cm:LaunchProgram,HAIETMOBA Reminder}; Flags: nowait postinstall skipifsilent

[Dirs]
Name: {app}\data
Name: encodings
Name: PyQt4
