# scRNAseq_data_analysis_PIPSEEKER_Seurat
Single-cell RNA-seq analysis using PIPseeker (Illumina DRAGEN) for raw data processing and Seurat for downstream analysis including QC, clustering, cell type annotation, and differential expression.
# Single-Cell RNA-seq Analysis — PIPseeker & Seurat

## Overview
Single-cell transcriptomic profiling using the Illumina Single Cell 3' RNA
library prep. Raw data was processed with PIPseeker (Illumina DRAGEN) and
downstream analysis was performed in R using Seurat.

## Computational Pipeline

### 1. Raw Data Processing (PIPseeker)
- Alignment and UMI counting performed with PIPseeker (Illumina DRAGEN)
- Selected the best sensitivity filtered count matrix for downstream analysis count matrix for
  downstream analysis based on knee plot, cell counts or your reasoning.

### 2. Downstream Analysis (Seurat)
| Step | Method |
|---|---|
| QC & Filtering | nFeature_RNA, nCount_RNA, % mito thresholds |
| Normalization | NormalizeData (LogNormalize, scale factor 10,000) |
| Feature Selection | FindVariableFeatures (nfeatures = 2000) |
| Scaling | ScaleData |
| Dimensionality Reduction | RunPCA → RunUMAP |
| Clustering | FindNeighbors + FindClusters |
| Cell Type Annotation | Marker gene-based manual curation |
| Differential Expression | FindAllMarkers (Wilcoxon, logFC > 0.25) |

## Repository Structure
