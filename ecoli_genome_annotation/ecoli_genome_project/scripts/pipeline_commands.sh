# Download reads
fasterq-dump SRR2584863 --split-files
gzip SRR2584863_1.fastq
gzip SRR2584863_2.fastq

# Quality check
fastqc raw_data/*.fastq.gz -o qc/

# Read trimming
trimmomatic PE \
raw_data/SRR2584863_1.fastq.gz raw_data/SRR2584863_2.fastq.gz \
trimmed/forward_paired.fq.gz trimmed/forward_unpaired.fq.gz \
trimmed/reverse_paired.fq.gz trimmed/reverse_unpaired.fq.gz \
SLIDINGWINDOW:4:20 MINLEN:50

# Genome assembly
spades.py \
-1 trimmed/forward_paired.fq.gz \
-2 trimmed/reverse_paired.fq.gz \
-o assembly

# Assembly evaluation
quast assembly/contigs.fasta -o results/quast

# Genome annotation
prokka assembly/contigs.fasta \
--outdir annotation \
--prefix ecoli \
--genus Escherichia \
--species coli \
--cpus 4
