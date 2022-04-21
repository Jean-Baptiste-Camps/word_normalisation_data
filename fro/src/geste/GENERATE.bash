for i in *.xml; do
saxonb-xslt -s:$i -xsl:../xsl/oriflamms_to_pie_train_norm.xsl -o:../../tsv/geste/${i}.tsv
done
