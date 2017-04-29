<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- Odkaz na github: https://github.com/Irina0303/Kucharske-recepty -->
<xsl:output method="text"/>
	<xsl:template match="/">
		[ 
		<xsl:for-each select="kucharske_Recepty/recepty[hodnoceni>= 4.5]"> 
			<xsl:sort select="nazev " order="descending"/>
			{
			"kategorie": "<xsl:value-of select="@kategorie"/>",
			"nazev ": "<xsl:value-of select="nazev "/>",
			"kuchyne": "<xsl:value-of select="nazev/@kuchyne"/>",
			"porce": "<xsl:value-of select="nazev/@porce"/>",
      "cas": "<xsl:value-of select="cas"/>",
			}<xsl:if test="position() != last()">,</xsl:if>
		</xsl:for-each>
		] 
</xsl:template>
</xsl:stylesheet>
