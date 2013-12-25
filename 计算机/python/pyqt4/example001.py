
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
####序言部分
import sys
from PyQt4  import QtGui
##############
app001 = QtGui.QApplication(sys.argv)

widget001 = QtGui.QWidget()
widget001.resize(800, 600)
widget001.setWindowTitle('第一个程序')
widget001.show()

sys.exit(app001.exec_())

