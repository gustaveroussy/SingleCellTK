% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/seuratFunctions.R
\name{runSeuratFindMarkers}
\alias{runSeuratFindMarkers}
\title{runSeuratFindMarkers}
\usage{
runSeuratFindMarkers(
  inSCE,
  cells1 = NULL,
  cells2 = NULL,
  group1 = NULL,
  group2 = NULL,
  allGroup = NULL,
  conserved = FALSE,
  test = "wilcox",
  onlyPos = FALSE,
  minPCT = 0.1,
  threshUse = 0.25,
  verbose = TRUE
)
}
\arguments{
\item{inSCE}{Input \code{SingleCellExperiment} object.}

\item{cells1}{A \code{list} of sample names included in group1.}

\item{cells2}{A \code{list} of sample names included in group2.}

\item{group1}{Name of group1.}

\item{group2}{Name of group2.}

\item{allGroup}{Name of all groups.}

\item{conserved}{Logical value indicating if markers conserved between two
groups should be identified. Default is \code{FALSE}.}

\item{test}{Test to use for DE. Default \code{"wilcox"}.}

\item{onlyPos}{Logical value indicating if only positive markers should be
returned.}

\item{minPCT}{Numeric value indicating the minimum fraction of min.pct
cells in which genes are detected. Default is \code{0.1}.}

\item{threshUse}{Numeric value indicating the logFC threshold value on
which on average, at least X-fold difference (log-scale) between the
two groups of cells exists. Default is \code{0.25}.}

\item{verbose}{Logical value indicating if informative messages should
be displayed. Default is \code{TRUE}.}
}
\value{
A \code{SingleCellExperiment} object that contains marker genes
populated in a data.frame stored inside metadata slot.
}
\description{
runSeuratFindMarkers
}
