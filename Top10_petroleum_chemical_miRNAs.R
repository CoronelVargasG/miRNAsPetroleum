#Top10 most frequent miRNA in citations. GO-BPs analysis.

##    miR-142-5p
miR_142_5p = 'miR-142-5p'
predictions_miR_142_5p = getPredictedTargets(miR_142_5p, species = 'hsa',
                                             method = 'geom', min_src = 2)
rankedGenes_miR_142_5p = predictions_miR_142_5p[,'rank_product']
selection_miR_142_5p = function(x) TRUE
allGO2genes = annFUN.org(whichOnto='BP', feasibleGenes = NULL,
                         mapping="org.Hs.eg.db", ID = "entrez")
GOdata_miR_142_5p = new('topGOdata', ontology = 'BP', allGenes = rankedGenes_miR_142_5p,
                        annot = annFUN.GO2genes, GO2genes = allGO2genes,
                        geneSel = selection_miR_142_5p, nodeSize=10)
results.ks_miR_142_5p = runTest(GOdata_miR_142_5p, algorithm = "classic", statistic = "ks")
results.ks_miR_142_5p
allRes_miR_142_5p = GenTable(GOdata_miR_142_5p, KS = results.ks_miR_142_5p, orderBy = "KS", topNodes = 10)
allRes_data_miR_142_5p = allRes_miR_142_5p[,c('GO.ID','Term','KS')]
allRes_data_miR_142_5p

##    miR-126-3p
miR_126_3p = 'miR-126-3p'
predictions_miR_126_3p = getPredictedTargets(miR_126_3p, species = 'hsa',
                                             method = 'geom', min_src = 2)
rankedGenes_miR_126_3p = predictions_miR_126_3p[,'rank_product']
selection_miR_126_3p = function(x) TRUE
allGO2genes = annFUN.org(whichOnto='BP', feasibleGenes = NULL,
                         mapping="org.Hs.eg.db", ID = "entrez")
GOdata_miR_126_3p = new('topGOdata', ontology = 'BP', allGenes = rankedGenes_miR_126_3p,
                        annot = annFUN.GO2genes, GO2genes = allGO2genes,
                        geneSel = selection_miR_126_3p, nodeSize=10)
results.ks_miR_126_3p = runTest(GOdata_miR_126_3p, algorithm = "classic", statistic = "ks")
results.ks_miR_126_3p
allRes_miR_126_3p = GenTable(GOdata_miR_126_3p, KS = results.ks_miR_126_3p, orderBy = "KS", topNodes = 10)
allRes_data_miR_126_3p = allRes_miR_126_3p[,c('GO.ID','Term','KS')]
allRes_data_miR_126_3p

##    miR-24-3p
miR_24_3p = 'miR-24-3p'
predictions_miR_24_3p = getPredictedTargets(miR_24_3p, species = 'hsa',
                                            method = 'geom', min_src = 2)
rankedGenes_miR_24_3p = predictions_miR_24_3p[,'rank_product']
selection_miR_24_3p = function(x) TRUE
allGO2genes = annFUN.org(whichOnto='BP', feasibleGenes = NULL,
                         mapping="org.Hs.eg.db", ID = "entrez")
GOdata_miR_24_3p = new('topGOdata', ontology = 'BP', allGenes = rankedGenes_miR_24_3p,
                       annot = annFUN.GO2genes, GO2genes = allGO2genes,
                       geneSel = selection_miR_24_3p, nodeSize=10)
results.ks_miR_24_3p = runTest(GOdata_miR_24_3p, algorithm = "classic", statistic = "ks")
results.ks_miR_24_3p
allRes_miR_24_3p = GenTable(GOdata_miR_24_3p, KS = results.ks_miR_24_3p, orderBy = "KS", topNodes = 10)
allRes_data_miR_24_3p = allRes_miR_24_3p[,c('GO.ID','Term','KS')]
allRes_data_miR_24_3p

##    miR-451a
miR_451a = 'miR-451a'
predictions_miR_451a = getPredictedTargets(miR_451a, species = 'hsa',
                                           method = 'geom', min_src = 2)
rankedGenes_miR_451a = predictions_miR_451a[,'rank_product']
selection_miR_451a = function(x) TRUE
allGO2genes = annFUN.org(whichOnto='BP', feasibleGenes = NULL,
                         mapping="org.Hs.eg.db", ID = "entrez")
GOdata_miR_451a = new('topGOdata', ontology = 'BP', allGenes = rankedGenes_miR_451a,
                      annot = annFUN.GO2genes, GO2genes = allGO2genes,
                      geneSel = selection_miR_451a, nodeSize=10)
results.ks_miR_451a = runTest(GOdata_miR_451a, algorithm = "classic", statistic = "ks")
results.ks_miR_451a
allRes_miR_451a = GenTable(GOdata_miR_451a, KS = results.ks_miR_451a, orderBy = "KS", topNodes = 10)
allRes_data_miR_451a = allRes_miR_451a[,c('GO.ID','Term','KS')]
allRes_data_miR_451a

##    miR-16-5p
miR_16_5p = 'miR-16-5p'
predictions_miR_16_5p = getPredictedTargets(miR_16_5p, species = 'hsa',
                                            method = 'geom', min_src = 2)
rankedGenes_miR_16_5p = predictions_miR_16_5p[,'rank_product']
selection_miR_16_5p = function(x) TRUE
allGO2genes = annFUN.org(whichOnto='BP', feasibleGenes = NULL,
                         mapping="org.Hs.eg.db", ID = "entrez")
GOdata_miR_16_5p = new('topGOdata', ontology = 'BP', allGenes = rankedGenes_miR_16_5p,
                       annot = annFUN.GO2genes, GO2genes = allGO2genes,
                       geneSel = selection_miR_16_5p, nodeSize=10)
results.ks_miR_16_5p = runTest(GOdata_miR_16_5p, algorithm = "classic", statistic = "ks")
results.ks_miR_16_5p
allRes_miR_16_5p = GenTable(GOdata_miR_16_5p, KS = results.ks_miR_16_5p, orderBy = "KS", topNodes = 10)
allRes_data_miR_16_5p = allRes_miR_16_5p[,c('GO.ID','Term','KS')]
allRes_data_miR_16_5p

##    miR-28-5p
miR_28_5p = 'miR-28-5p'
predictions_miR_28_5p = getPredictedTargets(miR_28_5p, species = 'hsa',
                                            method = 'geom', min_src = 2)
rankedGenes_miR_28_5p = predictions_miR_28_5p[,'rank_product']
selection_miR_28_5p = function(x) TRUE
allGO2genes = annFUN.org(whichOnto='BP', feasibleGenes = NULL,
                         mapping="org.Hs.eg.db", ID = "entrez")
GOdata_miR_28_5p = new('topGOdata', ontology = 'BP', allGenes = rankedGenes_miR_28_5p,
                       annot = annFUN.GO2genes, GO2genes = allGO2genes,
                       geneSel = selection_miR_28_5p, nodeSize=10)
results.ks_miR_28_5p = runTest(GOdata_miR_28_5p, algorithm = "classic", statistic = "ks")
results.ks_miR_28_5p
allRes_miR_28_5p = GenTable(GOdata_miR_28_5p, KS = results.ks_miR_28_5p, orderBy = "KS", topNodes = 10)
allRes_data_miR_28_5p = allRes_miR_28_5p[,c('GO.ID','Term','KS')]
allRes_data_miR_28_5p

##    let-7b-5p
let_7b_5p = 'let-7b-5p'
predictions_let_7b_5p = getPredictedTargets(let_7b_5p, species = 'hsa',
                                            method = 'geom', min_src = 2)
rankedGenes_let_7b_5p = predictions_let_7b_5p[,'rank_product']
selection_let_7b_5p = function(x) TRUE
allGO2genes = annFUN.org(whichOnto='BP', feasibleGenes = NULL,
                         mapping="org.Hs.eg.db", ID = "entrez")
GOdata_let_7b_5p = new('topGOdata', ontology = 'BP', allGenes = rankedGenes_let_7b_5p,
                       annot = annFUN.GO2genes, GO2genes = allGO2genes,
                       geneSel = selection_let_7b_5p, nodeSize=10)
results.ks_let_7b_5p = runTest(GOdata_let_7b_5p, algorithm = "classic", statistic = "ks")
results.ks_let_7b_5p
allRes_let_7b_5p = GenTable(GOdata_let_7b_5p, KS = results.ks_let_7b_5p, orderBy = "KS", topNodes = 10)
allRes_data_let_7b_5p = allRes_let_7b_5p[,c('GO.ID','Term','KS')]
allRes_data_let_7b_5p

##    miR-320b
miR_320b = 'miR-320b'
predictions_miR_320b = getPredictedTargets(miR_320b, species = 'hsa',
                                           method = 'geom', min_src = 2)
rankedGenes_miR_320b = predictions_miR_320b[,'rank_product']
selection_miR_320b = function(x) TRUE
allGO2genes = annFUN.org(whichOnto='BP', feasibleGenes = NULL,
                         mapping="org.Hs.eg.db", ID = "entrez")
GOdata_miR_320b = new('topGOdata', ontology = 'BP', allGenes = rankedGenes_miR_320b,
                      annot = annFUN.GO2genes, GO2genes = allGO2genes,
                      geneSel = selection_miR_320b, nodeSize=10)
results.ks_miR_320b = runTest(GOdata_miR_320b, algorithm = "classic", statistic = "ks")
results.ks_miR_320b
allRes_miR_320b = GenTable(GOdata_miR_320b, KS = results.ks_miR_320b, orderBy = "KS", topNodes = 10)
allRes_data_miR_320b = allRes_miR_320b[,c('GO.ID','Term','KS')]
allRes_data_miR_320b

##    miR-27a-3p
miR_27a_3p = 'miR-27a-3p'
predictions_miR_27a_3p = getPredictedTargets(miR_27a_3p, species = 'hsa',
                                             method = 'geom', min_src = 2)
rankedGenes_miR_27a_3p = predictions_miR_27a_3p[,'rank_product']
selection_miR_27a_3p = function(x) TRUE
allGO2genes = annFUN.org(whichOnto='BP', feasibleGenes = NULL,
                         mapping="org.Hs.eg.db", ID = "entrez")
GOdata_miR_27a_3p = new('topGOdata', ontology = 'BP', allGenes = rankedGenes_miR_27a_3p,
                        annot = annFUN.GO2genes, GO2genes = allGO2genes,
                        geneSel = selection_miR_27a_3p, nodeSize=10)
results.ks_miR_27a_3p = runTest(GOdata_miR_27a_3p, algorithm = "classic", statistic = "ks")
results.ks_miR_27a_3p
allRes_miR_27a_3p = GenTable(GOdata_miR_27a_3p, KS = results.ks_miR_27a_3p, orderBy = "KS", topNodes = 10)
allRes_data_miR_27a_3p = allRes_miR_27a_3p[,c('GO.ID','Term','KS')]
allRes_data_miR_27a_3p

##    miR-346
miR_346 = 'miR-346'
predictions_miR_346 = getPredictedTargets(miR_346, species = 'hsa',
                                          method = 'geom', min_src = 2)
rankedGenes_miR_346 = predictions_miR_346[,'rank_product']
selection_miR_346 = function(x) TRUE
allGO2genes = annFUN.org(whichOnto='BP', feasibleGenes = NULL,
                         mapping="org.Hs.eg.db", ID = "entrez")
GOdata_miR_346 = new('topGOdata', ontology = 'BP', allGenes = rankedGenes_miR_346,
                     annot = annFUN.GO2genes, GO2genes = allGO2genes,
                     geneSel = selection_miR_346, nodeSize=10)
results.ks_miR_346 = runTest(GOdata_miR_346, algorithm = "classic", statistic = "ks")
results.ks_miR_346
allRes_miR_346 = GenTable(GOdata_miR_346, KS = results.ks_miR_346, orderBy = "KS", topNodes = 10)
allRes_data_miR_346 = allRes_miR_346[,c('GO.ID','Term','KS')]
allRes_data_miR_346

#Fisher Test and plot
resultKS.elim_miR_142_5p <- runTest(GOdata_miR_142_5p, algorithm = "elim", statistic = "ks")
showSigOfNodes(GOdata_miR_142_5p, score(resultKS.elim_miR_142_5p), firstSigNodes = 5, useInfo = 'all')

resultKS.elim_miR_126_3p <- runTest(GOdata_miR_126_3p, algorithm = "elim", statistic = "ks")
showSigOfNodes(GOdata_miR_126_3p, score(resultKS.elim_miR_126_3p), firstSigNodes = 5, useInfo = 'all')

resultKS.elim_miR_24_3p <- runTest(GOdata_miR_24_3p, algorithm = "elim", statistic = "ks")
showSigOfNodes(GOdata_miR_24_3p, score(resultKS.elim_miR_24_3p), firstSigNodes = 5, useInfo = 'all')




###Export to .csv
write.csv(predictions_miR_346, file = "predictions_miR_346.csv")
write.csv(allRes_miR_346, file = "allRes_miR_346.cvs")
write.csv(predictions_miR_27a_3p, file = "predictions_miR_27a_3p.csv")
write.csv(allRes_miR_27a_3p, file = "allRes_miR_27a_3p.cvs")
write.csv(predictions_miR_320b, file = "predictions_miR_320b.csv")
write.csv(allRes_miR_320b, file = "allRes_miR_320b.cvs")
write.csv(predictions_let_7b_5p, file = "predictions_let_7b_5p.csv")
write.csv(allRes_let_7b_5p, file = "allRes_let_7b_5p.cvs")
write.csv(predictions_miR_28_5p, file = "predictions_miR_28_5p.csv")
write.csv(allRes_miR_28_5p, file = "allRes_miR_28_5p.cvs")
write.csv(predictions_miR_16_5p, file = "predictions_miR_16_5p.csv")
write.csv(allRes_miR_16_5p, file = "allRes_miR_16_5p.cvs")
write.csv(predictions_miR_451a, file = "predictions_miR_451a.csv")
write.csv(allRes_miR_451a, file = "allRes_miR_451a.cvs")
write.csv(predictions_miR_24_3p, file = "predictions_miR_24_3p.csv")
write.csv(allRes_miR_24_3p, file = "allRes_miR_24_3p.cvs")
write.csv(predictions_miR_126_3p, file = "predictions_miR_126_3p.csv")
write.csv(allRes_miR_126_3p, file = "allRes_miR_126_3p.cvs")
write.csv(predictions_miR_142_5p, file = "predictions_miR_142_5p.csv")
write.csv(allRes_miR_142_5p, file = "allRes_miR_142_5p.cvs")

#significant GO terms distributed over the GO graph from Top 10 miRNAs

Top_10_miRNAs_ranked_GOdata = rbind.data.frame(allRes_data_miR_346,
                                               allRes_data_miR_27a_3p,
                                               allRes_data_miR_320b,
                                               allRes_data_let_7b_5p,
                                               allRes_data_miR_28_5p,
                                               allRes_data_miR_16_5p,
                                               allRes_data_miR_451a,
                                               allRes_data_miR_24_3p,
                                               allRes_data_miR_126_3p,
                                               allRes_data_miR_142_5p)


write.csv(Top_10_miRNAs_ranked_GOdata, file = 'Top_10_miRNAs_ranked_GOdata.csv')
