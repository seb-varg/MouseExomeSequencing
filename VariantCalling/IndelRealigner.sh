#!/bin/bash

#path to input file (dedupped)
INPUT='/Users/Christian/Documents/Forskerlinja/DMBA-indusert/Sequencing/Output/DeduppedBams/422_15_11.sorted.dedupped.bam'

#path to output
OUTPUT='/Users/Christian/Documents/Forskerlinja/DMBA-indusert/Sequencing/Output/IndelRealigned/422_15_11.sorted.dedupped.indelrealigned.bam'

#path to and name of output file
REALIGNMENT_TARGETS='/Users/Christian/Documents/Forskerlinja/DMBA-indusert/Sequencing/Output/RealignerTargetCreator/422_15_11.sorted.dedupped.realigment_targets.list'

#path to reference fasta
REF_FASTA='/Users/Christian/Documents/Forskerlinja/DMBA-indusert/Sequencing/ReferenceFiles/mm10.fa'

#path to known indels
INDELS='/Users/Christian/Documents/Forskerlinja/DMBA-indusert/Sequencing/ReferenceFiles/mm10.FVBN.INDELS.vcf'

#path to jarfile
JARFILE='/Users/Christian/Documents/Forskerlinja/DMBA-indusert/Sequencing/Frameworks/GenomeAnalysisTK-3.5/GenomeAnalysisTK.jar'

java -jar $JARFILE \
-T IndelRealigner \
-R $REF_FASTA \
-I $INPUT \
-targetIntervals $REALIGNMENT_TARGETS \
-known $INDELS \
-o $OUTPUT