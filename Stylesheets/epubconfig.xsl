<?xml version="1.0" encoding="UTF-8"?>

<!-- 
Konfigurationsstylesheet für EPUB-Erstellung
Erstellungsdatum: 1. August 2021 / Version: BETA 1.0
Copyright (C) 2021 HTWK Leipzig, Projekt OA-STRUKTKOMM

Dieses Programm ist freie Software. Sie können es unter den Bedingungen der GNU General Public License, wie von der Free Software Foundation veröffentlicht, weitergeben und/oder modifizieren, entweder gemäß Version 3 der Lizenz oder (nach Ihrer Option) jeder späteren Version.

Die Veröffentlichung dieses Programms erfolgt in der Hoffnung, daß es Ihnen von Nutzen sein wird, aber OHNE IRGENDEINE GARANTIE, sogar ohne die implizite Garantie der MARKTREIFE oder der VERWENDBARKEIT FÜR EINEN BESTIMMTEN ZWECK. Details finden Sie in der GNU General Public License.

Sie sollten ein Exemplar der GNU General Public License zusammen mit diesem Programm erhalten haben. Falls nicht, siehe <http://www.gnu.org/licenses/>. 
-->

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- *****************************************************
  Variablen für die HTML- und EPUB-Produktion
********************************************************* -->
<!-- Debug-Level
0 -> kein Debugging
1 -> nur Fehler
2 -> Fehler und Warnungen
3 -> Fehler, Warnungen und Testausschriften -->
<xsl:variable name="HTML-Debuglevel">3</xsl:variable>

<!-- Projektnamen der Publikation angeben! -->
<xsl:variable name="Projektname">
	<xsl:value-of select="$Projekt"/>
</xsl:variable>
	
<!-- *****************************************************
  Pfade für die HTML- und EPUB-Produktion
********************************************************* -->
	
<xsl:variable name="EPUB_Content_Pfad">
	<xsl:text>Projekte/</xsl:text>
	<xsl:value-of select="$Projektname"/>
	<xsl:text>/Outputs/E-Formate/OEBPS/Content/</xsl:text>
</xsl:variable>
<xsl:variable name="EPUB_Fonts_Pfad">
	<xsl:text>Projekte/</xsl:text>
	<xsl:value-of select="$Projektname"/>
	<xsl:text>/Outputs/E-Formate/OEBPS/Fonts/</xsl:text>
</xsl:variable>
<xsl:variable name="EPUB_Styles_Pfad">
	<xsl:text>Projekte/</xsl:text>
	<xsl:value-of select="$Projektname"/>
	<xsl:text>/Outputs/E-Formate/OEBPS/Styles/</xsl:text>
</xsl:variable>
<xsl:variable name="EPUB_Images_Pfad">
	<xsl:text>Projekte/</xsl:text>
	<xsl:value-of select="$Projektname"/>
	<xsl:text>/Outputs/E-Formate/OEBPS/Images/</xsl:text>
</xsl:variable>
<xsl:variable name="EPUB_Container_XML">
	<xsl:text>Projekte/</xsl:text>
	<xsl:value-of select="$Projektname"/>
	<xsl:text>/Outputs/E-Formate/META-INF/container.xml/</xsl:text>
</xsl:variable>
<xsl:variable name="EPUB_mimetype">
	<xsl:text>Projekte/</xsl:text>
	<xsl:value-of select="$Projektname"/>
	<xsl:text>/Outputs/E-Formate/mimetype/</xsl:text>
</xsl:variable>
<xsl:variable name="EPUB_content">
	<xsl:text>Projekte/</xsl:text>
	<xsl:value-of select="$Projektname"/>
	<xsl:text>/Outputs/E-Formate/OEBPS/content.opf/</xsl:text>
</xsl:variable>
<xsl:variable name="EPUB_tocncx">
	<xsl:text>Projekte/</xsl:text>
	<xsl:value-of select="$Projektname"/>
	<xsl:text>/Outputs/E-Formate/OEBPS/toc.ncx/</xsl:text>
</xsl:variable>
<xsl:variable name="EPUB_navhtml">
	<xsl:text>Projekte/</xsl:text>
	<xsl:value-of select="$Projektname"/>
	<xsl:text>/Outputs/E-Formate/OEBPS/nav.xhtml/</xsl:text>
</xsl:variable>

<!-- *****************************************************
  Standard-Dateien für die HTML- und EPUB-Produktion
********************************************************* -->

<!-- Einzelkapitel = book-parts (Einzelinstanzen in OEBPS/Content)-->
<xsl:variable name="Kapitel">
	<xsl:text>Kapitel</xsl:text>
</xsl:variable>
	
<!-- Literaturverzeichnis -->
<xsl:variable name="Literaturverzeichnis">
	<xsl:text>Literaturverzeichnis</xsl:text>
</xsl:variable>
	
<!-- Anhang -->
<xsl:variable name="Anhang">
	<xsl:text>Anhang</xsl:text>
</xsl:variable>
	
<!-- Angabe des Content-Ausgabeformats -->
<xsl:variable name="Contentausgabeformat">
	<xsl:text>.xhtml</xsl:text>
</xsl:variable>
	
<!-- Name des CSS-Stylesheets -->
<xsl:variable name="CSS-Stylesheet">
	<xsl:text>HTWK-OAVerlag.css</xsl:text>
</xsl:variable>

<!-- DOI des Werkes -->
<xsl:variable name="DOI">
	<xsl:value-of select="//book-meta/book-id[@book-id-type='doi']"/>
</xsl:variable>

</xsl:stylesheet>	