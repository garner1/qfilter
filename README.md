# qfilter
Filter fastq reads by the quality of specifies bases

##List of files and directories
main.sh: bash script to be run in order to filter an input .fastq file with respect to the quality of the bases in the barcode
filter.py :  python script called in main.sh to filter the input fastq file

##Input
/path/to/infastq: full path to decompresed fastq file


##Output
/path/to/infastq.filtered.fq: default output hard-coded in main.sh