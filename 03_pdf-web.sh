#!/bin/sh

echo "Formatierte lowres PDF mit Apache FOP";

Werkzeuge/Formatierer/fop-2.6/fop/fop -c Stylesheets/fop-web.xconf -xml Projekte/$1/Strukturierte_Daten/$1.xml -xsl Stylesheets/XMLtoPDF_FOP.xsl -pdf Projekte/$1/Outputs/$1-web.pdf