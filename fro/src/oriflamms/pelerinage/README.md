# Conversion of Oriflamms Pelerinage tei to alto

To convert, in expan and abbr mode:

```bash
cd src/
saxonb-xslt -s:Pelerinage.xml -xsl:../xsl/pelerinageToAlto.xsl -ext:on expansion=true
saxonb-xslt -s:Pelerinage.xml -xsl:../xsl/pelerinageToAlto.xsl -ext:on

```

