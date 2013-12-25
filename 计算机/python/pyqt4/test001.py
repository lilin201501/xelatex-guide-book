#!/usr/bin/env python3
# -*- coding: utf-8 -*-

##################################
#序言部分
import sys
#from PyQt4  import Qt
from PyQt4  import QtGui
#from PyQt4  import QtCore
###################################
#程序正式开始


app = QtGui.QApplication(sys.argv)
def clicked():
    app.quit()

class QuitButton(QtGui.QWidget):
    def __init__(self, parent=None):
        QtGui.QWidget.__init__(self, parent)

        self.setGeometry(300, 300, 250, 150)
        self.setWindowTitle('Quit button')

        quit001 = QtGui.QPushButton('关闭', self)
        #将一个按钮文本关闭绑定在self这个QWidget
        quit001.setGeometry(10, 10, 64, 35)
        quit001.clicked.connect(clicked)



qb001 = QuitButton()
qb001.show()
sys.exit(app.exec_())



#if __name__ == '__main__': #if run as script


















