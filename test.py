import sys
from Bio import SeqIO

fastq = sys.argv[1] # the decompressed input file

for record in SeqIO.parse(fastq, "fastq"):
    if all([record.letter_annotations["phred_quality"][ind]>=36 for ind in range(8)]):
        print(record.format("fastq-sanger"))
