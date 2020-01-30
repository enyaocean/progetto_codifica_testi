<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xs="http://www.w3.org/2001/XMLSchema"
        xmlns:tei="http://www.tei-c.org/ns/1.0"
        exclude-result-prefixes="xs"
        version="2.0">
    <xsl:output method="html" version="1.0" indent="yes"/>
    <xsl:template match="/">
      <html>
        <head>
            <title>Codifica de "Lo Zibaldone"</title>
           <link rel="stylesheet" type="text/css" href="style.css"/>
            <link rel="shortcut icon" href="favicon.ico"/>
        </head>
        <body><xsl:apply-templates/></body>
      </html>
    </xsl:template>
    <xsl:template match="tei:teiHeader">
      <div class="info">
        <h1>
          <xsl:value-of select="descendant::tei:titleStmt/tei:title"/>
        </h1>
        <h2>
          di <xsl:value-of select="descendant::tei:titleStmt/tei:author"/>
        </h2>
      </div>
      <div class="project">
        <p><xsl:value-of select="descendant::tei:respStmt/tei:resp"/><xsl:value-of select="descendant::tei:respStmt/tei:name"/></p>
        <p><xsl:value-of select="descendant::tei:publicationStmt/tei:publisher"/></p>
        <p><xsl:value-of select="descendant::tei:publicationStmt/tei:pubPlace"/></p>
      </div>
    </xsl:template>
    <xsl:template match="tei:div">
      <hr/><hr/>
      <div class="page">
        <h3><xsl:value-of select="descendant::tei:fw/tei:origDate"/></h3>
      <xsl:for-each select="tei:p">
        <div class="text">
          <p><xsl:value-of select="."/></p>
        </div>
      </xsl:for-each>
      </div>
    </xsl:template>
</xsl:stylesheet>