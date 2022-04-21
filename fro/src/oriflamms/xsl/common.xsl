<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.loc.gov/standards/alto/ns-v4#"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <!-- Setting up -->
    
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:strip-space elements="*"/>
    <xsl:param name="expansion" select="false()"/>
    
    
    <!-- simplifications -->
    
    <xsl:template match="@* | element() | comment() | processing-instruction()">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="tei:teiHeader | tei:front | tei:back | tei:facsimile"/>
    
    <xsl:template match="tei:date | tei:persName | tei:placeName | tei:orgName |
        tei:addName | tei:roleName | tei:geogName | tei:name | tei:surname |
        tei:hi | tei:soCalled |
        tei:quote | tei:title | tei:num | tei:foreign | tei:q | tei:damage
        | tei:surplus | tei:g
        ">
        <xsl:apply-templates/>
    </xsl:template>
    

    
    <!-- Removals -->
    <xsl:template match="tei:note"/>
    <xsl:template match="tei:bibl"/>
    <xsl:template match="tei:supplied"/>
    <xsl:template match="tei:add[@place='margin']"/>
    <xsl:template match="tei:figure"/>
    <xsl:template match="tei:listTranspose"/>
    <xsl:template match="tei:corr"/>
    <xsl:template match="tei:fs"/>
    <xsl:template match="tei:lacunaStart | tei:lacunaEnd | tei:handShift"/>
    <!-- app , lem et rdg ? -->
    <xsl:template match="tei:app">
        <xsl:apply-templates select="tei:lem"/>
    </xsl:template>
    <xsl:template match="tei:lem | tei:seg">
        <xsl:apply-templates/>
    </xsl:template>
    
    <!-- Normalisations -->
    <xsl:template match="text()">
        <xsl:value-of select='translate(lower-case(normalize-unicode(translate(., "δꝛſ", "drs"), "nfkd")),
            "&apos;’",
            ""
            )'/>
    </xsl:template>
    
    <!-- TODO -->
    <!-- quid de del? -->
    
    <xsl:template match="*[@ana='ori:align-no']"/>
    
    
    <!-- And handling expansions -->
    
    
    <xsl:template match="tei:w">
        <xsl:apply-templates/>
        <xsl:text> </xsl:text>
    </xsl:template>
    
    <!--<xsl:template match="tei:choice" mode="#all">
        <xsl:choose>
            <xsl:when test="$expansion">
                <xsl:apply-templates select="tei:sic | tei:expan"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="tei:sic | tei:abbr"/>
            </xsl:otherwise>
        </xsl:choose>    
    </xsl:template>-->
    
    <xsl:template match="tei:sic">
        <xsl:apply-templates/>
    </xsl:template>
    
    <!--<xsl:template match="tei:expan">
        <xsl:choose>
            <xsl:when test="$expansion">
                <xsl:apply-templates/>
            </xsl:when>
            <xsl:otherwise/>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="tei:ex | tei:am | tei:abbr">
        <xsl:apply-templates/>
    </xsl:template>-->
    
    
</xsl:stylesheet>