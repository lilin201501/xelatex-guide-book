
#!/bin/sh
filename=$GEDIT_CURRENT_DOCUMENT_NAME
shortname=`echo $filename | sed 's/\(.*\)\.tex$/\1/'`
rm -f  $shortname.aux $shortname.ent  $shortname.out
$shortname.lot $shortname.idx $shortname.lof
$shortname.ilg $shortname.ind $shortname.log
$shortname.toc $shortname.bbl $shortname.blg

