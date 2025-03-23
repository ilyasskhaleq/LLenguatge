<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Notes dels Alumnes</title>
                <style>
                    table {
                        width: 50%;
                        border-collapse: collapse;
                        margin-bottom: 20px;
                    }
                    td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: left;
                    }
                    .assignatura {
                        background-color: grey;
                        font-weight: bold;
                    }
                    .alumne {
                        background-color: grey;
                    }
                    .failed {
                        background-color: red;
                    }
                </style>
            </head>
            <body>
                <xsl:for-each select="notes/assignatura">
                    <table>
                        <!-- Fila de la asignatura -->
                        <tr class="assignatura">
                            <td colspan="2"><xsl:value-of select="nom_assignatura"/></td>
                        </tr>
                        <!-- Filas de los alumnos -->
                        <xsl:for-each select="alumnes/alumne">
                            <tr class="alumne">
                                <xsl:if test="nota &lt; 5">
                                    <xsl:attribute name="class">failed</xsl:attribute>
                                </xsl:if>
                                <td><xsl:value-of select="nom"/></td>
                                <td><xsl:value-of select="nota"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    <xsl:if test="position() != last()">
                        <hr/>
                    </xsl:if>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>