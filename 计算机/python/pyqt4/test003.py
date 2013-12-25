#!/usr/bin/env python3
# -*- coding: utf-8 -*-

##################################
#序言部分
import sys
#from PyQt4  import Qt
from PyQt4  import QtGui
from PyQt4  import QtCore
###################################
#程序正式开始
class MainWindow(QtGui.QMainWindow):
    def __init__(self):
        QtGui.QMainWindow.__init__(self)

#        self.setGeometry(0, 0, 800, 600)
        self.resize(800,600)
        self.center()
        self.setWindowTitle('Texmaker')
        self.setWindowIcon(QtGui.QIcon\
        ('icons/texmaker.ico'))
        self.setToolTip('<b>看什么看、、</b>')
        #<b></b> 加粗
        QtGui.QToolTip.setFont(QtGui.QFont\
        ('微软雅黑', 10))
        self.statusBar().showMessage('状态信息栏')
        exit = QtGui.QAction(QtGui.QIcon('icons/exit.png'), '退出', self)
        exit.setShortcut('Ctrl+Q')
        exit.setStatusTip('退出程序')
        self.connect(exit, QtCore.SIGNAL('triggered()'), QtCore.SLOT('close()'))

        self.statusBar()

        about = QtGui.QAction(QtGui.QIcon(
        'exit@2x.png'),'关于 Texmaker',self)


        menubar001 = self.menuBar()
        file = menubar001.addMenu('&文件')
        file.addAction(exit)
        menubar002  = self.menuBar()
        help = menubar002.addMenu('&帮助')
        help.addAction(about)

        self.toolbar = self.addToolBar('Exit')
        self.toolbar.addAction(exit)

    def center(self):
        screen = QtGui.QDesktopWidget().screenGeometry()
        #接受屏幕几何
        size =  self.geometry()
        self.move((screen.width()-size.width())/2,
        (screen.height()-size.height())/2)
#左侧点绝对位置坐标move
    def closeEvent(self, event):
        #重新定义colseEvent
        reply = QtGui.QMessageBox.question\
        (self, '信息',
            "你确定要退出吗？",
             QtGui.QMessageBox.Yes,
             QtGui.QMessageBox.No)

        if reply == QtGui.QMessageBox.Yes:
            event.accept()
        else:
            event.ignore()

app001 = QtGui.QApplication(sys.argv)
main001 = MainWindow()
main001.show()
sys.exit(app001.exec_())




#if __name__ == '__main__': #if run as script


















