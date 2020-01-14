#!/usr/bin/env bash

fastq=$1 #path to decompresed fastq file

python3 filter.py ${fastq} | sed -i '/^$/d' > ${fastq}.filtered.fq
