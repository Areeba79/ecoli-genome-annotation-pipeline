# E. coli Genome Assembly and Annotation Pipeline

This repository contains a reproducible bioinformatics workflow for performing genome assembly and structural and functional annotation of the *Escherichia coli* genome.

## Pipeline Overview

SRA Data → FastQC → Trimmomatic → SPAdes → QUAST → Prokka

## Dataset

Organism: Escherichia coli  
SRA Accession: SRR2584863  
Source: NCBI Sequence Read Archive

Download raw data:

fasterq-dump SRR2584863 --split-files

## Tools Used

FastQC – Quality control  
Trimmomatic – Read trimming  
SPAdes – Genome assembly  
QUAST – Assembly evaluation  
Prokka – Genome annotation

## Results

Genome Size: ~4.55 Mb  
GC Content: 50.73%  
Contigs: 85  
N50: 125,222 bp  

Annotation:

CDS: 4251  
tRNA: 83  
rRNA: 5  
tmRNA: 1

## Repository Structure

assembly/ → genome assembly  
annotation/ → genome annotation results  
results/quast/ → assembly quality reports  
scripts/ → pipeline commands
