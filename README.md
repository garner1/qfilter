# qfilter
Filter fastq reads by the barcode's base-quality

## List of files and directories
main.sh: Bash script to be run in order to filter an input .fastq file with respect to the quality of the bases in the barcode
filter.py:  Python script called in main.sh to filter the input fastq file

## Requirements
* biopython
* python 3

## Input
/path/to/infastq: Full path to decompresed fastq file

## Output
/path/to/infastq.filtered.fq: Default output hard-coded in main.sh

## How to run
1. Clone or download the repo
2. Enter in the repo directory
3. Type in the terminal ```   bash main.sh /path/to/infastq ```
4. Read the output written in /path/to/infastq.filtered.fq
