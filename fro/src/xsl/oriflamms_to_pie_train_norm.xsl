<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="text"/>
    
    
    <xsl:template match="/">
        <xsl:text>token&#9;normalised&#10;</xsl:text>
        <xsl:apply-templates select="descendant::tei:w"/>
    </xsl:template>
    
    <!-- Here, remove all punctuation for now -->
    <xsl:template match="tei:pc"/>
    
    <xsl:template match="tei:choice" mode="orig">
        <xsl:apply-templates select="tei:abbr | tei:orig | tei:sic"/>
    </xsl:template>
    
    <xsl:template match="tei:choice" mode="normalised">
        <xsl:apply-templates select="tei:expan | tei:reg | tei:corr"/>
    </xsl:template>
    
    <xsl:template match="tei:w[not(normalize-space(.) ='')]">
        <xsl:variable name="orig">
            <xsl:apply-templates mode="orig"/>
        </xsl:variable>
        <xsl:variable name="normalised">
            <xsl:apply-templates mode="normalised"/>
        </xsl:variable>
        <xsl:value-of select="normalize-space($orig)"/>
        <xsl:text>&#9;</xsl:text>
        <xsl:value-of select="normalize-space($normalised)"/>
        <xsl:text>&#10;</xsl:text>
    </xsl:template>
    
    
    
    <xsl:template match="tei:lb[ancestor::tei:w or @break='no']"/>
    
    
    <xsl:template match="text()" mode="#all">
        <!--<xsl:value-of select="
            translate(translate(translate(translate(normalize-unicode(normalize-space(.), 'nfc'), ' ',''), 'ſ', 's'), 'δ', 'd'),'ꝛ', 'r')"/>-->
        <!--<xsl:value-of select="normalize-space(.)"/>-->
        <xsl:value-of select='normalize-unicode(translate(translate(normalize-unicode(translate(normalize-space(.), 
            "ɑΛ&#61975;ıȷδꝛɼſ&#658;", "aaeijdrrssz"), "nfkd"),
            "’",
            "&apos;"
            ), 
            "&#769;&#775;", "" 
            ), "nfc")'/>
    </xsl:template>
    
    
</xsl:stylesheet>
