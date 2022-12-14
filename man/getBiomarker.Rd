% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getBiomarker.R
\name{getBiomarker}
\alias{getBiomarker}
\title{Given a list of genes and a SingleCellExperiment object, return
the binary or continuous expression of the genes.}
\usage{
getBiomarker(
  inSCE,
  gene,
  binary = "Binary",
  useAssay = "counts",
  featureLocation = NULL,
  featureDisplay = NULL
)
}
\arguments{
\item{inSCE}{Input \linkS4class{SingleCellExperiment} object.}

\item{gene}{gene list}

\item{binary}{"Binary" for binary expression or "Continuous" for a gradient.
Default: "Binary"}

\item{useAssay}{Indicates which assay to use. The default is "counts".}

\item{featureLocation}{Indicates which column name of rowData to query gene.}

\item{featureDisplay}{Indicates which column name of rowData to use
to display feature for visualization.}
}
\value{
getBiomarker(): A data.frame of expression values
}
\description{
Given a list of genes and a SingleCellExperiment object, return
the binary or continuous expression of the genes.
}
\examples{
data("mouseBrainSubsetSCE")
getBiomarker(mouseBrainSubsetSCE, gene="C1qa")

}
