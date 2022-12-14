% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/seuratFunctions.R
\name{plotSeuratHVG}
\alias{plotSeuratHVG}
\title{plotSeuratHVG
Plot highly variable genes from input sce object (must have highly variable
genes computations stored)}
\usage{
plotSeuratHVG(inSCE, labelPoints = 0)
}
\arguments{
\item{inSCE}{(sce) object that contains the highly variable genes
computations}

\item{labelPoints}{Numeric value indicating the number of top genes that
should be labeled.
 Default is \code{0}, which will not label any point.}
}
\value{
plot object
}
\description{
plotSeuratHVG
Plot highly variable genes from input sce object (must have highly variable
genes computations stored)
}
\examples{
data(scExample, package = "singleCellTK")
\dontrun{
sce <- runSeuratNormalizeData(sce, useAssay = "counts")
sce <- runSeuratFindHVG(sce, useAssay = "counts")
plotSeuratHVG(sce)
}
}
