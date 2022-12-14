% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/importCellRanger.R
\name{importCellRangerV3Sample}
\alias{importCellRangerV3Sample}
\title{Construct SCE object from Cell Ranger V3 output for a single sample}
\usage{
importCellRangerV3Sample(
  dataDir = "./",
  sampleName = "sample",
  class = c("Matrix", "matrix"),
  delayedArray = FALSE,
  rowNamesDedup = TRUE
)
}
\arguments{
\item{dataDir}{A path to the directory containing the data files. Default "./".}

\item{sampleName}{A User-defined sample name. This will be prepended to all cell barcode IDs.
Default "sample".}

\item{class}{Character. The class of the expression matrix stored in the SCE
object. Can be one of "Matrix" (as returned by
\link{readMM} function), or "matrix" (as returned by
\link[base]{matrix} function). Default "Matrix".}

\item{delayedArray}{Boolean. Whether to read the expression matrix as
\link{DelayedArray} object or not. Default \code{FALSE}.}

\item{rowNamesDedup}{Boolean. Whether to deduplicate rownames. Default 
\code{TRUE}.}
}
\value{
A \code{SingleCellExperiment} object containing the count
 matrix, the feature annotations, and the cell annotation for the sample.
}
\description{
Read the filtered barcodes, features, and matrices for all
 samples from Cell Ranger V3 output. Files are assumed to be named
 "matrix.mtx.gz", "features.tsv.gz", and "barcodes.tsv.gz".
}
\examples{
sce <- importCellRangerV3Sample(
    dataDir = system.file("extdata/hgmm_1k_v3_20x20/outs/",
        "filtered_feature_bc_matrix", package = "singleCellTK"),
    sampleName = "hgmm1kv3")
}
