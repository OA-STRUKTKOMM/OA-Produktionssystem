REM Formatiert einen XML-File mit einem vorgegebenen Stylesheet
cls

SETX -m JAVA_HOME Java
SET

ECHO "\n Transformiere XML: %1 unter Benutzung des Stylesheets %2 nach %3 \n"

REM Java/java -cp Werkzeuge/XSLT-Processor/xalan.jar org.apache.xalan.xslt.Process -in Strukturierte_Daten/anderson.xml -xsl Stylesheets/XMLtoHTML.xsl -out Outputs/test.html

java -cp ../../Werkzeuge/XSLT-Processor/xalan.jar org.apache.xalan.xslt.Process -in ../../Strukturierte_Daten/anderson.xml -xsl ../../Stylesheets/XMLtoHTML.xsl -out ../../Outputs/test.html 

REM java -cp ../../Werkzeuge/XSLT-Processor/xalan.jar org.apache.xalan.xslt.Process -in $1 -xsl $2 -out $3 


ECHO "$3 generiert \n"