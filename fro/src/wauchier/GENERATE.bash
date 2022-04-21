for i in *_fro1.xml;do saxonb-xslt -s:$i -xsl:xsl/common.xsl -o:${i}_simpl.xml; done
for i in *_simpl.xml;do saxonb-xslt -s:$i -xsl:xsl/workflow_tokenization_quasi_fonct.xsl -o:${i}_token.xml; done
for i in *_token.xml;do saxonb-xslt -s:$i -xsl:../xsl/oriflamms_to_pie_train_norm.xsl -o:../../tsv/wauchier/${i}.tsv; done
