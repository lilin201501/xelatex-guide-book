
#!/bin/sh
filename=$GEDIT_CURRENT_DOCUMENT_NAME
shortname=`echo $filename | sed 's/\(.*\)\.tex$/\1/'`
xelatex -interaction batchmode -src $filename

