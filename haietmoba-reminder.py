import sys
from os import path
import webbrowser
from PyQt4 import QtGui, QtCore


if hasattr(sys, 'frozen'):
    scriptDir = path.dirname(unicode(sys.executable, sys.getfilesystemencoding()))
else:
    scriptDir = path.dirname(unicode(__file__, sys.getfilesystemencoding()))

theQuestion = 'How am I experiencing this moment of being alive?'
methodURL = 'http://actualfreedom.com.au/richard/articles/thismomentofbeingalive.htm'
projectURL = 'http://bitbucket.org/srid/haietmoba-reminder'


class MainWindow(QtGui.QWidget):
    
    def __init__(self):
        QtGui.QMainWindow.__init__(self)
        
        self.setWindowTitle('HAIETMOBA?')
        self.setToolTip(theQuestion)
        self.setWindowFlags( 
            QtCore.Qt.Window |
            QtCore.Qt.WindowMinimizeButtonHint | # only minimize (no maximize)
            QtCore.Qt.WindowStaysOnTopHint)
        
        self.createInterface()
        self.gap = 10 # in minutes
        
        self.quitAction = QtGui.QAction("&Quit", self,
                triggered=QtGui.qApp.quit)
        
    def setGap(self, gap):
        """Set the gap between reminders in minutes"""
        self.gap = gap
        
    def createInterface(self):
        """Create the UI elements of our main window"""
        # The reason for using three buttons (instead of just one called 'OK')
        # is to help prevent the habituation. At least, one has to invest in
        # a few thoughts when there are more buttons ("which one to click? ah,
        # that requires me to first answer the question!")
        good = QtGui.QPushButton(":-)")
        good.setToolTip('Feeling good (generally)')
        meh = QtGui.QPushButton(":-|")
        meh.setToolTip('Feeling OK/neutral (generally) -- what is preventing me from feeling good now?')
        bad = QtGui.QPushButton(":-(")
        bad.setToolTip('Feeling bad (generally) -- should investigate the issue')
        
        good.clicked.connect(self.receiveAnswer)
        meh.clicked.connect(self.receiveAnswer)
        bad.clicked.connect(self.receiveAnswer)

        # The question itself in a big/bold text
        lbl = QtGui.QLabel()
        lbl.setText(theQuestion)
        lbl.setFont(QtGui.QFont('Verdana', 16, 100))
        
        # Qt layout boilerplate
        hbox = QtGui.QHBoxLayout()
        hbox.addStretch(1)
        hbox.addWidget(good)
        hbox.addWidget(meh)
        hbox.addWidget(bad)
        hbox.addStretch(1)
        
        vbox = QtGui.QVBoxLayout()
        vbox.addStretch(1)
        vbox.addWidget(lbl)
        vbox.addLayout(hbox)
        vbox.addStretch(1)
        
        self.setLayout(vbox)
        
    def receiveAnswer(self):
        """On receiving the answer, hide the window till next reminder"""
        self.hide()
        QtCore.QTimer.singleShot(1000*60*self.gap, self.show)
        
    def center(self):
        """Center the window on screen"""
        screen = QtGui.QDesktopWidget().screenGeometry()
        size = self.geometry()
        self.move(
            (screen.width()-size.width())/2,
            (screen.height()-size.height())/2)
        
    def closeEvent(self, event):
        reply = QtGui.QMessageBox.question(
            self, 'Message', 'Are you sure to quit?',
            QtGui.QMessageBox.Yes, QtGui.QMessageBox.No)
        
        if reply == QtGui.QMessageBox.Yes:
            event.accept()
            app.trayIcon.hide()
        else:
            event.ignore()
        
        
class Application(QtGui.QApplication):
    
    def __init__(self, *args, **kw):
        QtGui.QApplication.__init__(self, *args, **kw)
        self.icon = QtGui.QIcon(path.join(scriptDir, 'data/icon.png'))
        self.mainWindow = MainWindow()
        self.mainWindow.setWindowIcon(self.icon)
        self.mainWindow.show()
        
        self.createSystemTrayIcon()
        self.mainWindow.center()
        
    def createSystemTrayIcon(self):
        """Create a systray icon with a context menu"""
        self.trayIcon = QtGui.QSystemTrayIcon(self.icon, self.mainWindow)
        
        # systray context menu
        menu = QtGui.QMenu(self.mainWindow)
        
        self.frequency = QtGui.QActionGroup(self.mainWindow)
        for (mins, choice) in [(10, 'Every 10 minutes (recommended)'),
                               (15, 'Every 15 minutes'),
                               (20, 'Every 20 minutes'),
                               (30, 'Every 30 minutes'),
                               (60, 'Every hour')]:
            a = self.frequency.addAction(choice)
            a.setCheckable(True)
            menu.addAction(a)
            def getGapSetter(m):
                return lambda: self.mainWindow.setGap(m)
            a.triggered.connect(getGapSetter(mins))
            if 'recommended' in choice:
                a.setChecked(True) # default
                self.mainWindow.setGap(mins)
        menu.addSeparator()
        
        aboutAction = menu.addAction('About the actualism method')
        aboutAction.triggered.connect(lambda: webbrowser.open(methodURL))
        aboutAppAction = menu.addAction('Visit the application home page')
        aboutAppAction.triggered.connect(lambda: webbrowser.open(projectURL))
        menu.addSeparator()
        
        menu.addAction(self.mainWindow.quitAction)
        self.trayIcon.setContextMenu(menu)
        
        self.trayIcon.setToolTip(theQuestion)
        self.trayIcon.show()
        
        
app = Application(sys.argv)

if not QtGui.QSystemTrayIcon.isSystemTrayAvailable():
    QtGui.QMessageBox.critical(None, "Systray",
            "I couldn't detect any system tray on this system.")
    sys.exit(1)

sys.exit(app.exec_())
