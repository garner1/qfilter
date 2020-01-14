import sys
from Bio import SeqIO

path_in = sys.argv[1] #path/to/in.fastq

for read in SeqIO.parse(path_in, "fastq"):
    # print(read.seq)
    if all([read.letter_annotations["phred_quality"][ind]>=36 for ind in range(8,16)]): #only reads with good quality barcodes
        print(read.format("fastq-sanger"))




