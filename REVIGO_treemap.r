

# A treemap R script produced by the REVIGO server at http://revigo.irb.hr/
# If you found REVIGO useful in your work, please cite the following reference:
# Supek F et al. "REVIGO summarizes and visualizes long lists of Gene Ontology
# terms" PLoS ONE 2011. doi:10.1371/journal.pone.0021800

# author: Anton Kratz <anton.kratz@gmail.com>, RIKEN Omics Science Center, Functional Genomics Technology Team, Japan
# created: Fri, Nov 02, 2012  7:25:52 PM
# last change: Fri, Nov 09, 2012  3:20:01 PM

# -----------------------------------------------------------------------------
# If you don't have the treemap package installed, uncomment the following line:
# install.packages( "treemap" );
library(treemap) 								# treemap package by Martijn Tennekes

# Set the working directory if necessary
# setwd("C:/Users/username/workingdir");

# --------------------------------------------------------------------------
# Here is your data from REVIGO. Scroll down for plot configuration options.

revigo.names <- c("term_ID","description","freqInDbPercent","uniqueness","dispensability","representative");
revigo.data <- rbind(c("GO:0000003","reproduction",0.769,1.000,0.000,"reproduction"),
c("GO:0001666","response to hypoxia",0.049,0.877,0.000,"response to hypoxia"),
c("GO:0033993","response to lipid",0.226,0.840,0.625,"response to hypoxia"),
c("GO:0009755","hormone-mediated signaling pathway",0.175,0.710,0.867,"response to hypoxia"),
c("GO:0009725","response to hormone",0.335,0.831,0.792,"response to hypoxia"),
c("GO:0071310","cellular response to organic substance",0.651,0.794,0.870,"response to hypoxia"),
c("GO:0042221","response to chemical",3.071,0.874,0.333,"response to hypoxia"),
c("GO:0010033","response to organic substance",0.900,0.849,0.451,"response to hypoxia"),
c("GO:0007179","transforming growth factor beta receptor signaling pathway",0.042,0.728,0.807,"response to hypoxia"),
c("GO:0007178","transmembrane receptor protein serine/threonine kinase signaling pathway",0.115,0.759,0.360,"response to hypoxia"),
c("GO:0006807","nitrogen compound metabolic process",38.744,0.952,0.000,"nitrogen compound metabolism"),
c("GO:0007155","cell adhesion",0.544,0.941,0.000,"cell adhesion"),
c("GO:0007156","homophilic cell adhesion via plasma membrane adhesion molecules",0.095,0.941,0.850,"cell adhesion"),
c("GO:0098742","cell-cell adhesion via plasma-membrane adhesion molecules",0.108,0.940,0.866,"cell adhesion"),
c("GO:0007600","sensory perception",0.430,0.922,0.000,"sensory perception"),
c("GO:0051239","regulation of multicellular organismal process",0.628,0.806,0.694,"sensory perception"),
c("GO:0008152","metabolic process",75.387,0.995,0.000,"metabolism"),
c("GO:0009987","cellular process",63.780,0.992,0.000,"cellular process"),
c("GO:0016197","endosomal transport",0.131,0.951,0.000,"endosomal transport"),
c("GO:0050796","regulation of insulin secretion",0.025,0.800,0.609,"endosomal transport"),
c("GO:0015749","monosaccharide transport",0.115,0.908,0.213,"endosomal transport"),
c("GO:0030336","negative regulation of cell migration",0.043,0.803,0.191,"endosomal transport"),
c("GO:0008645","hexose transport",0.074,0.904,0.709,"endosomal transport"),
c("GO:0006839","mitochondrial transport",0.182,0.951,0.221,"endosomal transport"),
c("GO:0051129","negative regulation of cellular component organization",0.244,0.749,0.571,"endosomal transport"),
c("GO:1904659","glucose transmembrane transport",0.023,0.909,0.866,"endosomal transport"),
c("GO:0010629","negative regulation of gene expression",0.784,0.739,0.707,"endosomal transport"),
c("GO:0022402","cell cycle process",1.053,0.887,0.000,"cell cycle process"),
c("GO:1903047","mitotic cell cycle process",0.514,0.892,0.793,"cell cycle process"),
c("GO:0022414","reproductive process",0.736,0.942,0.000,"reproductive process"),
c("GO:0007276","gamete generation",0.159,0.878,0.851,"reproductive process"),
c("GO:0007292","female gamete generation",0.060,0.884,0.897,"reproductive process"),
c("GO:0022610","biological adhesion",0.550,0.978,0.000,"biological adhesion"),
c("GO:0032502","developmental process",2.812,0.979,0.000,"developmental process"),
c("GO:0048856","anatomical structure development",2.540,0.858,0.000,"anatomical structure development"),
c("GO:0050793","regulation of developmental process",1.205,0.758,0.858,"anatomical structure development"),
c("GO:0048513","animal organ development",0.779,0.798,0.814,"anatomical structure development"),
c("GO:0009888","tissue development",0.491,0.874,0.772,"anatomical structure development"),
c("GO:0030154","cell differentiation",1.133,0.802,0.851,"anatomical structure development"),
c("GO:0045893","positive regulation of transcription, DNA-templated",0.519,0.661,0.700,"anatomical structure development"),
c("GO:0045597","positive regulation of cell differentiation",0.168,0.708,0.690,"anatomical structure development"),
c("GO:0045595","regulation of cell differentiation",0.345,0.739,0.743,"anatomical structure development"),
c("GO:0010256","endomembrane system organization",0.189,0.862,0.030,"endomembrane system organization"),
c("GO:0000280","nuclear division",0.422,0.849,0.529,"endomembrane system organization"),
c("GO:0008637","apoptotic mitochondrial changes",0.019,0.849,0.421,"endomembrane system organization"),
c("GO:0016050","vesicle organization",0.130,0.861,0.377,"endomembrane system organization"),
c("GO:0061024","membrane organization",0.759,0.848,0.437,"endomembrane system organization"),
c("GO:0034622","cellular macromolecular complex assembly",1.211,0.821,0.775,"endomembrane system organization"),
c("GO:0016570","histone modification",0.373,0.747,0.689,"endomembrane system organization"),
c("GO:0065003","macromolecular complex assembly",1.497,0.818,0.848,"endomembrane system organization"),
c("GO:0006325","chromatin organization",0.668,0.829,0.493,"endomembrane system organization"),
c("GO:0016579","protein deubiquitination",0.195,0.844,0.030,"protein deubiquitination"),
c("GO:0006302","double-strand break repair",0.211,0.741,0.530,"protein deubiquitination"),
c("GO:1903506","regulation of nucleic acid-templated transcription",9.965,0.606,0.874,"protein deubiquitination"),
c("GO:0090304","nucleic acid metabolic process",21.449,0.745,0.431,"protein deubiquitination"),
c("GO:0006414","translational elongation",0.777,0.779,0.300,"protein deubiquitination"),
c("GO:1901564","organonitrogen compound metabolic process",17.886,0.859,0.199,"protein deubiquitination"),
c("GO:0006396","RNA processing",3.210,0.752,0.320,"protein deubiquitination"),
c("GO:0006310","DNA recombination",1.641,0.781,0.136,"protein deubiquitination"),
c("GO:0010468","regulation of gene expression",10.815,0.677,0.575,"protein deubiquitination"),
c("GO:0010467","gene expression",19.671,0.837,0.196,"protein deubiquitination"),
c("GO:0010556","regulation of macromolecule biosynthetic process",10.749,0.674,0.850,"protein deubiquitination"),
c("GO:0000398","mRNA splicing, via spliceosome",0.315,0.775,0.335,"protein deubiquitination"),
c("GO:0043603","cellular amide metabolic process",6.879,0.841,0.264,"protein deubiquitination"),
c("GO:2001141","regulation of RNA biosynthetic process",9.969,0.606,0.897,"protein deubiquitination"),
c("GO:0006366","transcription from RNA polymerase II promoter",1.430,0.745,0.465,"protein deubiquitination"),
c("GO:0006357","regulation of transcription from RNA polymerase II promoter",1.273,0.679,0.395,"protein deubiquitination"),
c("GO:0000725","recombinational repair",0.152,0.747,0.612,"protein deubiquitination"),
c("GO:0044260","cellular macromolecule metabolic process",34.276,0.785,0.417,"protein deubiquitination"),
c("GO:0009059","macromolecule biosynthetic process",19.548,0.809,0.506,"protein deubiquitination"),
c("GO:0043043","peptide biosynthetic process",5.770,0.791,0.688,"protein deubiquitination"),
c("GO:0000724","double-strand break repair via homologous recombination",0.120,0.751,0.577,"protein deubiquitination"),
c("GO:0070646","protein modification by small protein removal",0.219,0.843,0.770,"protein deubiquitination"),
c("GO:0034645","cellular macromolecule biosynthetic process",19.291,0.735,0.437,"protein deubiquitination"),
c("GO:0044238","primary metabolic process",53.743,0.951,0.089,"primary metabolism"),
c("GO:0071704","organic substance metabolic process",58.357,0.951,0.120,"primary metabolism"),
c("GO:0006796","phosphate-containing compound metabolic process",13.110,0.886,0.122,"primary metabolism"),
c("GO:0006793","phosphorus metabolic process",13.507,0.886,0.147,"primary metabolism"),
c("GO:0006725","cellular aromatic compound metabolic process",29.628,0.873,0.185,"primary metabolism"),
c("GO:0044237","cellular metabolic process",53.061,0.897,0.111,"primary metabolism"),
c("GO:0043170","macromolecule metabolic process",39.491,0.903,0.090,"macromolecule metabolism"));

stuff <- data.frame(revigo.data);
names(stuff) <- revigo.names;

stuff$abslog10pvalue <- as.numeric( as.character(stuff$abslog10pvalue) );
stuff$freqInDbPercent <- as.numeric( as.character(stuff$freqInDbPercent) );
stuff$uniqueness <- as.numeric( as.character(stuff$uniqueness) );
stuff$dispensability <- as.numeric( as.character(stuff$dispensability) );

# by default, outputs to a PDF file
pdf( file="revigo_treemap.pdf", width=16, height=9 ) # width and height are in inches

# check the tmPlot command documentation for all possible parameters - there are a lot more
tmPlot(
	stuff,
	index = c("representative","description"),
	vSize = "abslog10pvalue",
	type = "categorical",
	vColor = "representative",
	title = "REVIGO Gene Ontology treemap",
	inflate.labels = FALSE,      # set this to TRUE for space-filling group labels - good for posters
	lowerbound.cex.labels = 0,   # try to draw as many labels as possible (still, some small squares may not get a label)
	bg.labels = "#CCCCCCAA",     # define background color of group labels
												       # "#CCCCCC00" is fully transparent, "#CCCCCCAA" is semi-transparent grey, NA is opaque
	position.legend = "none"
)

dev.off()
