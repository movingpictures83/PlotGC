#context("alpine")

source("plugins/PlotGC/core.R")
source("plugins/PlotGC/fit_bias.R")
source("plugins/PlotGC/helper.R")
source("plugins/PlotGC/vlmm.R")
source("plugins/PlotGC/plots.R")
source("plugins/PlotGC/estimate_abundance.R")
source("plugins/PlotGC/predict.R")
library(alpineData)
  library(GenomicAlignments)
  library(rtracklayer)
  library(GenomicRanges)
  library(BSgenome.Hsapiens.NCBI.GRCh38)



input <- function(inputfile) {
	fitPar <<- readRDS(inputfile)
}
run <- function() {}

output <- function(outputfile) {
  pdf(outputfile)
  plotGC(fitPar, model="GC")
}
