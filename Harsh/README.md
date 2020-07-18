#         Development of a Single Cell RNA Sequencing data based Testbed for studying brain diseases.
##                        (Data Analysis Project – using R programming)
 
# Project Overview:
Develop a series of computational methods and derive  some knowledge of the role of disease-specific cell features in different human diseases. 
Need a computational framework with a pipeline and web-server that can be used to study a broader set of disease types. The knowledge derived can be used to build a database.

# Bulk Seq Vs Single cell RNA Seq
![image](https://github.com/zcslab/Brain_SC_2020summer_intern/blob/master/fig/bulkvssingle.jpg)

# Single cell RNA sequencing
  -  Measures the distribution of expression levels for each gene across a population of cells.
  -  Study of Cell Specific changes in transcriptome eg.cell type identification.
              ![image](https://github.com/zcslab/Brain_SC_2020summer_intern/blob/master/fig/singleCell.jpg)
          
# Why Single Cell RNA Seq
-  Explore which cell types are present in a tissue
-  Identify unknown/rare cell types or states
-  Elucidate the changes in gene expression during differentiation processes or across time or states
-  Identify genes that are differentially expressed in particular cell types between conditions (e.g. treatment or disease)
-  Explore changes in expression among a cell type while incorporating spatial, regulatory, and/or protein information

# Research Objectives              
-  To explore and detail cell type specific gene expression patterns, unveiling how transcriptional changes in specific cell populations are associated with Alzheimer’s disease.
-  To determine the gene markers for each of the clusters
-  To identify cell types of each cluster using markers
-  To determine whether there’s a need to re-cluster based on cell type markers, perhaps clusters need to be merged or split
-  Experimentally validate markers for our identified cell types.

# Tools 
-	Hands on R- programming
-	Prepared a tutorial guide for High School and College students to quickly understand Single Cell RNA Seq
-	Worked on Seurat Package R package designed for QC analysis, and exploration of single cell RNA seq data.
-	R Markdown  tool to turn our  analyses into high quality documents, reports, presentations and dashboards.  	
-	Github tools: https://github.com/zcslab/IRKB	

# Methods
-	Understand the considerations when designing a single cell RNA seq experiment
-	Analyzed the Datasets to identify differentially expressed genes in a specific cell type.
-	Discussed the steps involved in taking raw single cell RNA sequencing data and generating a count (gene expression) matrix
-	Compute and assess QC metrics at every step in the workflow
-	Cluster cells based on expression data and derive the identity of the different cell types present
 		![image](https://github.com/zcslab/Brain_SC_2020summer_intern/blob/master/fig/Method.jpg)
		
# Popular Methods
![image](https://github.com/zcslab/Brain_SC_2020summer_intern/blob/master/fig/popularmethods.jpg)

# Data Analysis
Sample Data Set  we analysed was  GEO series  - GEO138852 - cells from Alzhimer's Disease brains of 12 Individuals 
-  Some relevant metadata for our dataset is provided below:
-  The libraries were prepared using 10X Genomics 
-  The samples were sequenced on the Illumina NextSeq 500
-  The samples were on the entorhinal cortex from control and AD brains of twelve individuals, yielding a total of 13,214 high quality nuclei..				
-  Single Nuclei RNA sequencing of 8 10x libraries with each library containing 2 individuals (n =16)		

# Expected Cell Types 
Since the samples are from brain tissue, we will expect the following cells, such as:
-  Oligodendrocyte
-  Microglia
-  Neuron
-  OPC (Oligodendrocyte progenitor cells)
-  Endothelial
-  Astrocytes

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

# Data Analysis Workflow
![image](https://github.com/zcslab/Brain_SC_2020summer_intern/blob/master/fig/analysiswflw.jpg)
         
# Results and Analysis

![image](https://github.com/zcslab/Brain_SC_2020summer_intern/blob/master/fig/result.jpg)


![image](https://github.com/zcslab/Brain_SC_2020summer_intern/blob/master/fig/result2.jpg)
# Marker Identification
 
-	FindAllMarkers() function is used  to compare each cluster to identify potential marker genes. 
-	The cells in each cluster are treated as replicates, and essentially a differential expression analysis is performed with some statistical test. 
-	Top 10 Markers were identified. 
-	We use the gene lists to see if we can identify which cell types these clusters identify with.
 
# Conclusion
  Challenges:
  1.  Over interpretation of the results
  2.  Combining different types of marker identification.

# Recommendations:
	1. Inflated p values can lead to over interpretation of the results.
	2. Top markers are most trustworthy. 
	(Selection of most proper markers may really help to generate correct cell clusters correspond to cell types)
  
# Interpretation:

 These results and the Feature and Violin plots help us 
  1.  Determine the identity of these clusters or 
  2.  Verify what we hypothesize the identity to be after exploring the markers of expected cell types previously. 
  3.  scRNA seq is a powerful and insightful method for the analysis of gene expression with single cell resolution
  4.  Analysis of Data is complex  or limited due to  many challenges and sources of variation  
  
# Overall Recommendations

Overall, we recommend the following:
  1.  Do not perform single cell RNA seq unless it is necessary for the experimental question of interest. Understand the details of the experimental question you wish to address. 
  2.  The recommended library preparation method and analysis workflow can vary based on the specific experiment.
  3.  Avoid technical sources of variability, if possible:
  -   Discuss experimental design with experts prior to the initiation of the experiment
  -   Isolate RNA from samples at same time
  -   Prepare libraries at same time or alternate sample groups to avoid batch confounding
  -   Do not confound sample groups by sex, age, or batch


## Contact Information
Harsh Duvvuru 
- Email: harshduvvuru@gmail.com
- linkedin: https://www.linkedin.com/in/harsh-duvvuru-6173ba1a0/
- Github:  https://github.com/hduvvuru2

Rising Senior at Avon High School '21,  Indiana

 ## Mentors

- [Xiaoyu Lu](https://zcslab.github.io/people/xiaoyu/)
(lu14@iu.edu)

Ph.D. candidate, School of Medicine, Indiana University

- [Chi Zhang](https://medicine.iu.edu/faculty/27057/zhang-chi)
(czhang87@iu.edu)

Assistant Professor of Medical & Molecular Genetics, School of Medicine, Indiana University



## Reference

This research paper helped develop our understanding of the GSE138852 set of matrices.
Grubman, A., Chew, G., Ouyang, J.F. et al. A single-cell atlas of entorhinal cortex from individuals with Alzheimer’s disease reveals cell-type-specific gene expression regulation. Nat Neurosci 22, 2087–2097 (2019). https://doi.org/10.1038/s41593-019-0539-4

