# miRNAsPetroleum
This Database includes the necesary data and script used for the paper "Micro RNA (miRNA) and exposure to crude-oil compounds. A Review".
The file Table2S.sav have the row data about all miRNAs included from bibliograpy. Different analysis may be done using statistical softwar. 
For the bioinformatics, Bioconductor R packages were used. You can use the code installing R (https://cran.r-project.org/) in your sistem and using RStudio (https://rstudio.com/) free software. Bioconductor R packages can be found at https://www.bioconductor.org/ , but the installed packages can be found in Installation_Bioconductor_packages_used.R file.

1) install R
2) install RStudio
3) open Installation_Bioconductor_packages_used.R file and run it.

You can find the most significative predicted target genes for each miRNA and sucevelly the Gene Ontology - Biological Proces (GO-BP) for the most frequent miRNAs in Table 2S file using script in Top10_petroleum_chemical_miRNAs.R . The script was written following the workflow written by Maciej Pajak and Ian Simpson (September 9, 2015) available at https://bioconductor.riken.jp/packages/3.1/bioc/vignettes/miRNAtap/inst/doc/miRNAtap.pdf

4) Run Top10_petroleum_chemical_miRNAs.R in RStudio

In the script is present an option to export the most significative predicted Target genes, and the most significative GO-BP terms for each miRNA in .cvs files. Be sure to run the script in the same directory where the .cvs files will be saved to avoid error messages.

