#!/usr/bin/env bash

fastq=$1 # compressed input fastq file

zcat ${fastq} | paste - - - - | head |cut -f4 | cut -c-8 | fold -w1 > ${fastq}.phred

while IFS= read -r char
do
    printf '%d' "'$char";printf "\n"
done < ${fastq}.phred

# THE OUTPUT FROM SCREEN NEED TO BE REGROUP 8 ENTRIES PER ROW

# for char in $(head -1 ${fastq} | paste - - - - | cut -f4 | fold -w1);do
#     printf '%d' "'$char";printf "\n";
# done | /usr/local/share/anaconda3/bin/datamash transpose
