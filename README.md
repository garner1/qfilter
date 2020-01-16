# qfilter
Filter fastq reads by the quality of specifies bases

## List of files and directories
main.sh: Bash script to be run in order to filter an input .fastq file with respect to the quality of the bases in the barcode
filter.py:  Python script called in main.sh to filter the input fastq file

## Input
/path/to/infastq: Full path to decompresed fastq file


## Output
/path/to/infastq.filtered.fq: Default output hard-coded in main.sh