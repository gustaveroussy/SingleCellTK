% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sctkTagging.R
\name{expDeleteDataTag}
\alias{expDeleteDataTag}
\title{expDeleteDataTag
Remove tag against an input data from the stored tag information in the metadata of the input object.}
\usage{
expDeleteDataTag(inSCE, assay)
}
\arguments{
\item{inSCE}{Input \code{SingleCellExperiment} object.}

\item{assay}{Name of the assay or the data item against which a tag should be removed.}
}
\value{
The input \code{SingleCellExperiment} object with tag information removed from the metadata slot.
}
\description{
expDeleteDataTag
Remove tag against an input data from the stored tag information in the metadata of the input object.
}
\examples{
data(scExample, package = "singleCellTK")
sce <- expSetDataTag(sce, "raw", "counts")
sce <- expDeleteDataTag(sce, "counts")
}
