ECHO "Formatierte highres PDF mit Apache FOP"

Werkzeuge\Formatierer\fop-2.6\fop\fop -c Stylesheets\fop-print.xconf -xml Projekte\%Projektname%\Strukturierte_Daten\%Projektname%.xml -xsl %3Stylesheets\XMLtoPDF_FOP.xsl -pdf Projekte\%Projektname%\Outputs\%Projektname%-print.pdf