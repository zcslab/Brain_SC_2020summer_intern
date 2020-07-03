library(dplyr)
library(Seurat)
library(patchwork)
library(ggplot2)

setwd('/Users/xiaoyulu/Documents/RA/NEW/202006_BrainSC/Seurat_data_process')
#############################
#loading data
load('/Users/xiaoyulu/Documents/RA/NEW/Collaboration/202006_BrainSC_collection/GSE138852/data_GSE138852.RData')
###########################
MAT=GSE138852_data
rm(GSE138852_data)

MAT_seurat<-CreateSeuratObject(counts = MAT, project = "MAT", min.cells = 3, min.features = 200)
MAT_seurat[["percent.mt"]] <- PercentageFeatureSet(MAT_seurat, pattern = "^MT-")
MAT_seurat <- NormalizeData(MAT_seurat)
MAT_seurat<-FindVariableFeatures(MAT_seurat, selection.method = "vst", nfeatures = 2000)

all.genes <- rownames(MAT_seurat)
MAT_seurat <- ScaleData(MAT_seurat, features = all.genes)

MAT_seurat <- RunPCA(MAT_seurat, features = VariableFeatures(object = MAT_seurat))

#check PCs
# MAT_seurat <- JackStraw(MAT_seurat, num.replicate = 100)
# MAT_seurat <- ScoreJackStraw(MAT_seurat, dims = 1:20)
# JackStrawPlot(MAT_seurat, dims = 1:20)
#ElbowPlot(MAT_seurat)

######################################################################
n.dims = 20

resolutions=0.7

#########################

#t-SNE
MAT_seurat <- FindNeighbors(MAT_seurat, dims = 1:n.dims)
MAT_seurat <- FindClusters(MAT_seurat, resolution = resolutions)

#marker genes for each cluster
markers <- FindAllMarkers(MAT_seurat, only.pos = TRUE, min.pct = 0.25, logfc.threshold = 0.25)

MAT_seurat <- RunTSNE(MAT_seurat, dims = 1:n.dims)
plot(DimPlot(MAT_seurat, reduction = "tsne", label=T)+ggtitle('tSNE by cluster'))

#color by original patient infor
Idents(object = MAT_seurat) <-   as.factor(patient)
plot(DimPlot(MAT_seurat, reduction = "tsne", label=T)+ggtitle('tSNE by patient'))

#color by original cell label infor
Idents(object = MAT_seurat) <- cell_labels
plot(DimPlot(MAT_seurat, reduction = "tsne", label=T)+ggtitle('tSNE by cell type'))















