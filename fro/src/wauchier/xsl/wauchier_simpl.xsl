<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.loc.gov/standards/alto/ns-v4#"
    exclude-result-prefixes="xs"
    version="2.0">
    
   <xsl:import href="../../xsl/common.xsl"/>
    
    <xsl:template match="tei:pc">
        <xsl:text> </xsl:text>
    </xsl:template>
    
    <xsl:template match="tei:lb"/>
    
</xsl:stylesheet>