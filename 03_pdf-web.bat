ECHO "Formatierte lowres PDF mit Apache FOP"

Werkzeuge\Formatierer\fop-2.6\fop\fop -c Stylesheets\fop-web.xconf -xml Projekte\%Projektname%\Strukturierte_Daten\%Projektname%.xml -xsl Stylesheets\XMLtoPDF_FOP.xsl -pdf Projekte\%Projektname%\Outputs\%Projektname%-web.pdf