#         Development of a Single Cell RNA Sequencing data based Testbed for studying brain diseases.
#                         (Data Analysis Project – using R programming)


Project Overview:
Develop a series of computational methods and derive  some knowledge of the role of disease-specific cell features in different human diseases. 
Need a computational framework with a pipeline and web-server that can be used to study a broader set of disease types. The knowledge derived can be used to build a database.

#Bulk Seq Vs Single cell RNA Seq
![image](https://github.com/zcslab/Brain_SC_2020summer_intern/blob/master/fig/bulkvssingle.jpg)

# Single cell RNA sequencing
  1.  Measures the distribution of expression levels for each gene across a population of cells.
  2.  Study of Cell Specific changes in transcriptome eg.cell type identification.
              ![image](https://github.com/zcslab/Brain_SC_2020summer_intern/blob/master/fig/singleCell.jpg)
          
# Why Single Cell RNA Seq
1.  Explore which cell types are present in a tissue
2.  Identify unknown/rare cell types or states
3.  Elucidate the changes in gene expression during differentiation processes or across time or states
4.  Identify genes that are differentially expressed in particular cell types between conditions (e.g. treatment or disease)
5.  Explore changes in expression among a cell type while incorporating spatial, regulatory, and/or protein information

# Research Objectives              
1.  To explore and detail cell type specific gene expression patterns, unveiling how transcriptional changes in specific cell populations are associated with Alzheimer’s disease.
2.  To determine the gene markers for each of the clusters
3.  To identify cell types of each cluster using markers
4.  To determine whether there’s a need to re-cluster based on cell type markers, perhaps clusters need to be merged or split
5.  Experimentally validate markers for our identified cell types.

# Methods
Understand the considerations when designing a single cell RNA seq experiment
Analyzed the Datasets to identify differentially expressed genes in a specific cell type.
Discussed the steps involved in taking raw single cell RNA sequencing data and generating a count (gene expression) matrix
Compute and assess QC metrics at every step in the workflow
Cluster cells based on expression data and derive the identity of the different cell types present

# Data Analysis
Sample Data Set  we analysed was  GEO series  - GEO138852 - cells from Alzhimer's Disease brains of 12 Individuals 
1.  Some relevant metadata for our dataset is provided below:
2.  The libraries were prepared using 10X Genomics 
3.  The samples were sequenced on the Illumina NextSeq 500
4.  The samples were on the entorhinal cortex from control and AD brains of twelve individuals, yielding a total of 13,214 high quality nuclei..				
5.  Single Nuclei RNA sequencing of 8 10x libraries with each library containing 2 individuals (n =16)		

# Expected Cell Types 
Since the samples are from brain tissue, we will expect the following cells, such as:
1.  Oligodendrocyte
2.  Microglia
3.  Neuron
4.  OPC (Oligodendrocyte progenitor cells)
5.  Endothelial
6.  Astrocytes

# Recommendations
1.  Need to  have some expectation regarding the cell types before QC 
2.  Identify any cell types with low complexity  (lot of transcripts from few genes)
3.  Higher levels of Mitochondrial expression
# Note:
None of the above cell types are expected to be low complexity or anticipated to have high mitochondrial content.

# Complexity of Analysis
 
The complexity of analysis of scRNA-seq data involves:
1.  Large volume of data
2.  Low depth of sequencing per cell
3.  Technical variability across cells/samples - such as Library quality, amplification bias, batch effects 
4.  Biological variability across cells/samples - Transcriptional bursting, varying rates of RNA processing, Environmental stimuli, Temporal changes.





