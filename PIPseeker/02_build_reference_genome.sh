# =============================================================================
# STEP 2 — Build Reference Genome
# =============================================================================
# =============================================================================
# STEP 1 — Download Reference Genome and GTF file from EMBL
# =============================================================================

# Create a directory for the reference genome
mkdir ~/reference_genome
cd ~/reference_genome

# Download the sheep (Ovis aries) (or organism of interest) reference genome (FASTA)
wget https://ftp.ensembl.org/pub/release-116/fasta/ovis_aries/dna/Ovis_aries.ARS-UI_Ramb_v3.0.dna.toplevel.fa.gz

# Download the sheep (Ovis aries) (or organism of interest) GTF annotation file
wget https://ftp.ensembl.org/pub/release-116/gtf/ovis_aries/Ovis_aries.ARS-UI_Ramb_v3.0.116.gtf.gz

# Uncompress both files
gunzip Ovis_aries.ARS-UI_Ramb_v3.0.dna.toplevel.fa.gz
gunzip Ovis_aries.ARS-UI_Ramb_v3.0.116.gtf.gz

echo "Reference genome and GTF file downloaded successfully"
echo "Building reference genome..."

# Define paths — update these to match your directory structure
GENOME_FASTA=/path/to/genome.fa
GENOME_GTF=/path/to/annotation.gtf
REFERENCE_DIR=/path/to/reference_output

~/PIPseeker/pipseeker buildmapref \
    --fasta $GENOME_FASTA \
    --gtf $GENOME_GTF \
    --output-path $REFERENCE_DIR

echo "Reference genome built successfully"
