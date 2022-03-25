#!/bin/bash


module load homer/4.9



beds='Sample1 Sample2 Sample3 Samle4'


for bed in $beds

do

findMotifsGenome.pl ${bed}.bed hg19 ${bed}_motifoutput -size 200 -mask -preparsedDir ./motif/HOMER

done

