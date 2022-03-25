#!/bin/bash

module load homer/4.9



beds='Sample1 Sample2 Sample3 Sample4'

for bed in $beds

do

annotatePeaks.pl ${bed}.bed hg19 -annStats ${bed}_stats.txt > ${bed}_homer_annotation.txt

done
