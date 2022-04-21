saxonb-xslt -s:Album_XIII/Album_XIII.xml -xsl:../xsl/common.xsl -o:Album_XIII/Album_XIII_simplified.xml
saxonb-xslt -s:Album_XIII/Album_XIII_simplified.xml -xsl:xsl/workflow_tokenization_quasi_fonct.xsl -o:Album_XIII/Album_XIII_tokenized.xml
saxonb-xslt -s:ecmen/ECMEN_ParisBnFMssFr.xml -xsl:../xsl/common.xsl -o:ecmen/ECMEN_ParisBnFMssFr_simplified.xml
saxonb-xslt -s:ecmen/ECMEN_ParisBnFMssFr_simplified.xml -xsl:xsl/workflow_tokenization_quasi_fonct.xsl -o:ecmen/ECMEN_ParisBnFMssFr_tokenized.xml
saxonb-xslt -s:pelerinage/Pelerinage.xml -xsl:../xsl/common.xsl -o:pelerinage/Pelerinage_simplified.xml
saxonb-xslt -s:pelerinage/Pelerinage_simplified.xml -xsl:xsl/workflow_tokenization_quasi_fonct.xsl -o:pelerinage/Pelerinage_tokenized.xml
saxonb-xslt -s:Album_XIII/Album_XIII_tokenized.xml -xsl:../xsl/oriflamms_to_pie_train_norm.xsl -o:../../tsv/oriflamms/AlbumXIII.tsv
saxonb-xslt -s:ecmen/ECMEN_ParisBnFMssFr_tokenized.xml -xsl:../xsl/oriflamms_to_pie_train_norm.xsl -o:../../tsv/oriflamms/ECMEN.tsv
saxonb-xslt -s:pelerinage/Pelerinage_tokenized.xml -xsl:../xsl/oriflamms_to_pie_train_norm.xsl -o:../../tsv/oriflamms/pelerinage.tsv
saxonb-xslt -s:qgraal/qgraal_cm.xml -xsl:../xsl/oriflamms_to_pie_train_norm.xsl -o:../../tsv/oriflamms/qgraal.tsv

