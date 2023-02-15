SET JAVA_HOME Werkzeuge\Java\bin\java

ECHO "Transformiere BITS nach XHTML"
Java -jar Werkzeuge\Transformationstool\saxon_he_10.5\saxon-he-10.5.jar -s:Projekte\%Projektname%\Strukturierte_Daten\%Projektname%.xml -xsl:Stylesheets\XMLtoEPUB.xsl

ECHO "Kopiere Bilddateien"
mkdir Projekte\%Projektname%\Outputs\E-Formate\OEBPS\Images
copy Projekte\%Projektname%\Media\Images\*.* Projekte\%Projektname%\Outputs\E-Formate\OEBPS\Images

ECHO "Kopiere Stylesheets"
mkdir Projekte\%Projektname%\Outputs\E-Formate\OEBPS\Styles
copy Stylesheets\HTWK-OAVerlag.css Projekte\%Projektname%\Outputs\E-Formate\OEBPS\Styles

ECHO "Kopiere Schriften"
mkdir Projekte\%Projektname%\Outputs\E-Formate\OEBPS\Fonts
xcopy Fonts\* Projekte\%Projektname%\Outputs\E-Formate\OEBPS\Fonts /s /i

ECHO "Zippe EPUB-Format"

Werkzeuge\7-Zip\7z a -r -mx=0 Projekte\%Projektname%\Outputs\E-Formate\%Projektname%.epub Projekte\%Projektname%\Outputs\E-Formate\.\mimetype

cd Projekte\%Projektname%\Outputs\E-Formate

..\..\..\..\Werkzeuge\7-Zip\7z a %Projektname%.epub META-INF\*
..\..\..\..\Werkzeuge\7-Zip\7z a %Projektname%.epub OEBPS\*

..\..\..\..\Werkzeuge\7-Zip\7z rn %Projektname%.epub mimetype !mimetype
..\..\..\..\Werkzeuge\7-Zip\7z e %Projektname%.epub !mimetype
..\..\..\..\Werkzeuge\7-Zip\7z d %Projektname%.epub !mimetype
..\..\..\..\Werkzeuge\7-Zip\7z a %Projektname%.epub .\!mimetype
..\..\..\..\Werkzeuge\7-Zip\7z rn %Projektname%.epub !mimetype mimetype
del .\!mimetype

ECHO "Prüfe EPUB mit EPUB-Checker"
..\..\..\..\Werkzeuge\EPUB-Checker\EPUB-Checker.exe %Projektname%.epub

cd ..\..\..\..