#install required libraries
## try http:// if https:// URLs are not supported
source("https://bioconductor.org/biocLite.R")
biocLite("msa")
#initiate libraries
library(msa)
system.file("tex", "texshade.sty", package="msa")
#open sequence file
mySequences <- readAAStringSet("wrky.txt") # input file  # use "readDNAStringSet" if you are using DNA sequence
mySequences
## make alignment
myClustalWAlignment <- msa(mySequences, "ClustalW")  #three algoritm for alignment "ClustalW", "ClustalOmega" or "Muscle"
myClustalWAlignment
##Visualize alignment and save
test <- msaPrettyPrint(
myClustalWAlignment,
output="pdf", #"pdf", "tex", "dvi", "asis"  
#showNames="none",  # "left", "right", "none"
showLogo="none", #"top","none"
#logoColors="rasmol", #"chemical", "rasmol", "hydropathy","structure", "standard area","accessible area"
#showLogoScale="leftright",   #"none", "leftright", "left","right"
askForOverwrite=FALSE, 
verbose=FALSE,
#show="complete",
showConsensus="none",#"bottom", "top", "none"
#y=c(164, 213),  # range of sequence you want to see
#subset=c(1:6),  # number of sequence
#consensusColor="ColdHot",  #"ColdHot","HotCold","BlueRed","RedBlue","GreenRed","RedGreen", or"Gray" 
showLegend=FALSE,
shadingMode="identical",  #"similar","identical", and "functional"
shadingColors="red", #"blues","reds","greens","grays", or"black"
#shadingModeArg="structure", #"charge","hydropathy","structure","hemical","rasmol","standard #area",and"accessible area"
margins=c(1, 1),
consensusThreshold=50,
showNumbering= "none", #   "right", "left", "none"
)
