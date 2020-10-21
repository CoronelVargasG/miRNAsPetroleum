#INSTALLED R PACKAGES i R version 4.0.2 (09_2020)

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install()

#miRBaseConverter (DOI: 10.18129/B9.bioc.miRBaseConverter)
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("miRBaseConverter")

#TopGo (DOI: 10.18129/B9.bioc.topGO)

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("topGO")

#org.Hs.eg.db (DOI: 10.18129/B9.bioc.org.Hs.eg.db=

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("org.Hs.eg.db")

#miRNAtap (DOI: 10.18129/B9.bioc.miRNAtap)
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("miRNAtap")

#miRNAtap.db (DOI: 10.18129/B9.bioc.miRNAtap.db)
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("miRNAtap.db")


#Library activation
library(miRBaseConverter)
library(miRNAtap)
library(miRNAtap.db)
library(topGO)
library(org.Hs.eg.db)

#Other
library(GOplot)