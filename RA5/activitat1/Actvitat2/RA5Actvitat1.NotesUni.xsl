<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8"/>
    
    <xsl:template match="/">
        <xsl:apply-templates select="notes/assignatura"/>
    </xsl:template>
    
    <xsl:template match="assignatura">
        <xsl:text>
</xsl:text>
        <xsl:value-of select="nom_assignatura"/>
        <xsl:text>
============================================================
</xsl:text>
        <xsl:apply-templates select="alumnes/alumne"/>
    </xsl:template>
    
    <xsl:template match="alumne">
        <xsl:value-of select="nom"/>
        <xsl:text> -- </xsl:text>
        <xsl:value-of select="nota"/>
        <xsl:text>
</xsl:text>
    </xsl:template>
</xsl:stylesheet>
