<?xml version = "1.0"?>
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<xsl:output method = "html" omit-xml-declaration = "no" doctype-system = "http://www.w3c.org/TR/xhtml1/DTD/xhtml1-strict.dtd" 
doctype-public = "-//W3C//DTD XHTML 1.0 Strict//EN"/>
    <xsl:template match ="/">
        <html>
            <head>
                <title>Request Info List</title>
            </head>
            <body>
                
                <ol>
                    The list is of the form:
                        <li> ID </li>
                        <li> Name </li>
                        <li> Email </li>
                        <li> dpt </li>
                        <li> income </li>
                        
                    
                </ol>
                ------List Begins------
                    <xsl:for-each select = "/request/info">
                        <ol>
                            <li>
                                <xsl:value-of select = "@id" />
                            </li>
                            <li>
                                <xsl:value-of select = "name" />
                            </li>
                            <li>
                                <xsl:value-of select = "email" />
                            </li>
                            <li>
                                <xsl:value-of select = "dpt" />
                            </li>
                            <li>
                                <xsl:value-of select = "income" />
                            </li>
                       
                        </ol>
                    </xsl:for-each>
                    ------List Ends------
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>