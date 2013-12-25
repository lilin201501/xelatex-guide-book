
#!/usr/bin/env python3
#-*- coding: utf-8 -*-
import sys
from PyQt4  import QtGui
#######################


class MyQWidget(QtGui.QWidget):
    def __init__(self,parent=None):
        QtGui.QWidget.__init__(self,parent)

        #self.setGeometry(0, 0, 800, 600)
        #坐标0 0 大小1360 768
        self.resize(800,600)
        self.center()
        self.setWindowTitle('Texmaker')
        self.setWindowIcon(QtGui.QIcon\
        ('icons/texmaker.ico'))
        self.setToolTip('<b>看什么看、、</b>')
        #<b></b> 加粗
        QtGui.QToolTip.setFont(QtGui.QFont\
        ('微软雅黑', 10))

    def center(self):
        screen = QtGui.QDesktopWidget().screenGeometry()
        #接受屏幕几何
        size =  self.geometry()
        self.move((screen.width()-size.width())/2,\
         (screen.height()-size.height())/2)

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
widget001 = MyQWidget()
widget001.show()
sys.exit(app001.exec_())

