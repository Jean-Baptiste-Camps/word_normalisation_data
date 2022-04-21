saxonb-xslt -s:Album_XIII/Album_XIII_tokenized.xml -xsl:../xsl/oriflamms_to_pie_train_norm.xsl -o:../../tsv/oriflamms/AlbumXIII.tsv
saxonb-xslt -s:ecmen/ECMEN_ParisBnFMssFr_tokenized.xml -xsl:../xsl/oriflamms_to_pie_train_norm.xsl -o:../../tsv/oriflamms/ECMEN.tsv
saxonb-xslt -s:pelerinage/Pelerinage_tokenized.xml -xsl:../xsl/oriflamms_to_pie_train_norm.xsl -o:../../tsv/oriflamms/pelerinage.tsv
saxonb-xslt -s:qgraal/qgraal_cm.xml -xsl:../xsl/oriflamms_to_pie_train_norm.xsl -o:../../tsv/oriflamms/qgraal.tsv

