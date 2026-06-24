# =============================================================================
# STEP 3 — Run PIPseeker on Raw Sequencing Data
# =============================================================================

# Define paths — update these to match your directory structure
REFERENCE=/path/to/star/reference/genome/folder
FASTQ_DIR=/path/to/fastq/files
OUTPUT_DIR=/path/to/pipseeker_output

# Define sample names — add or remove samples as needed
SAMPLES=(
    "sample1"
    "sample2"
    "sample3"
    "sample4"
    "sample5"
)

# NOTE: PIPseeker processes one sample at a time sequentially.
# Each sample can take approximately 7-9 hours to complete depending
# on the size of the dataset and available computational resources.
# Ensure sufficient time and resources are allocated before running.

# Loop through each sample and run PIPseeker
for SAMPLE in "${SAMPLES[@]}"; do

    echo "============================================="
    echo "Starting PIPseeker for: $SAMPLE"
    echo "Start time: $(date)"
    echo "============================================="

    <path to PIPseeker>/pipseeker full \
        --fastq $FASTQ_DIR/$SAMPLE \
        --star-index-path $REFERENCE \
        --chemistry V \
        --threads 8 \
        --output-path $OUTPUT_DIR/$SAMPLE
       

    echo "============================================="
    echo "Finished: $SAMPLE"
    echo "End time: $(date)"
    echo "============================================="

done

echo "All samples processed successfully"
echo "Output saved to: $OUTPUT_DIR"
