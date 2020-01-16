#!/usr/bin/env bash

fastq=$1 #path to decompresed fastq file

python3 filter.py ${fastq} > ${fastq}.filtered.fq
sed -i '/^$/d' ${fastq}.filtered.fq # to remove empty lines in between reads
