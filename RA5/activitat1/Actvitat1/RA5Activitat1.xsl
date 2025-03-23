<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Notes dels alumnes</title>
                <link rel="stylesheet" type="text/css" href="RA5Activitat1.NotesUni.css"/>
            </head>
            <body>
                <h1>Llistat de Notes</h1>
                <xsl:for-each select="notes/assignatura">
                    <h2><xsl:value-of select="nom_assignatura"/></h2>
                    <xsl:for-each select="alumnes/alumne">
                        <p>
                            <span class="nom"><xsl:value-of select="nom"/></span>
                            <span class="nota"> <xsl:value-of select="nota"/></span>
                        </p>
                    </xsl:for-each>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
