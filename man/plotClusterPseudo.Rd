% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/runTSCAN.R
\name{plotClusterPseudo}
\alias{plotClusterPseudo}
\title{Run plotClusterPseudo function to plot TSCAN-derived pseudotimes 
around cluster in the dataset.}
\usage{
plotClusterPseudo(inSCE, useClusters, pathIndex = NULL, useReducedDim)
}
\arguments{
\item{inSCE}{Input \linkS4class{SingleCellExperiment} object.}

\item{useClusters}{Choose the cluster containing the branch point in the data
in order to recompute the pseudotimes so that the root lies at the cluster 
center, allowing us to detect genes that are associated with the divergence 
of the branches.}

\item{pathIndex}{Path number for which the pseudotime values should be used. 
PathIndex corresponds to one path from the root node to one of the terminal 
nodes.}

\item{useReducedDim}{Saved dimension reduction name in \code{inSCE}. 
Required.}
}
\value{
A plots with the TSCAN-derived pseudotimes of all the cells along the
path belonging to the cluster
}
\description{
A wrapper function which visualizes outputs from the 
\code{\link{runTSCANClusterDEAnalysis}} function. Each point is a cell in the
cluster and is colored by its pseudotime value along the path to which it was
assigned.
}
\examples{
data("scExample", package = "singleCellTK")
sce <- subsetSCECols(sce, colData = "type != 'EmptyDroplet'")
rowData(sce)$Symbol <- rowData(sce)$feature_name
rownames(sce) <- rowData(sce)$Symbol
sce <- scaterlogNormCounts(sce, assayName = "logcounts")
sce <- runDimReduce(inSCE = sce, method = "scaterPCA", 
                    useAssay = "logcounts", reducedDimName = "PCA")
sce <- runDimReduce(inSCE = sce, method = "rTSNE", useReducedDim = "PCA", 
                    reducedDimName = "TSNE")
sce <- runTSCAN (inSCE = sce, useReducedDim = "PCA", seed = NULL)
sce <- runTSCANDEG(inSCE = sce, pathIndex = 4)
sce <- runTSCANClusterDEAnalysis(inSCE = sce, useClusters = 5)
plotClusterPseudo(inSCE = sce, useClusters = 5, pathIndex = NULL, 
                  useReducedDim = "TSNE")
}
\author{
Nida Pervaiz
}
