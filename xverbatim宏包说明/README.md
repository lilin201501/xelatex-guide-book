xverbatim-sty
=============

use the pygementize output the tex code and use the Verbatim environment to output a very fancy code style and support almost every program language and also suport the utf-8 and support the xetex .


#note

#1.  modify the pygments package ， 

modify the pygements-1.6
into the file folder pygments→formatters open the file latex.py
comment 309 319 369 line

and the internal course is use the pygmentize command out put a piece of source code in tex file and use the VerbatimInput command output it .

python setup.py install

#2.  modify the texmaker package so let the color is right.

1. download the sourcecode
2. edit the sourcecode file latexhighlighter.cpp
3. 268 line insert 
                        poslab=buffer.indexOf("begin{xverbatim}");
                        if(poslab != -1) {state=StateVerbatim;for (k=poslab; k <i ; k++) {if (k>0 && k<text.length()) blockData->code[k]=1;}}

4.763 line insert 
                        pos=buffer.indexOf("\\end{xverbatim}");
                        if( pos!= -1)
                        {
                            state=StateStandard;
                            setFormat(pos,4,ColorKeyword);
                            setFormat(pos+4,11,ColorStandard);
                            for (k=i-14; k <i-10 ; k++) {if (k>0 && k<text.length()) blockData->code[k]=1;}
                        }

5.install the qt4 or qt5 , i install the qt5

6.install the popple in the synetic package manager just search it for qt5

7.if you encounter the error what synctex ....file not found
you may need to install 
sudo apt-get install zlib1g-dev

8. sudo sh BUILD.sh
