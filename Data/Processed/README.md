# Processed Data

After raw data processing with PIPseeker (Illumina DRAGEN), PIPseeker generates 
the following outputs for each sample:

- **Raw counts** — unfiltered count matrix for each sample. These can be further
  processed with Seurat for downstream analysis.
- **Filtered counts** — count matrices filtered at different sensitivity levels
  (low, medium, and high sensitivity) for each sample. The best sensitivity 
  filtered count matrix can be selected for downstream analysis in Seurat based 
  on cell recovery and data quality.

