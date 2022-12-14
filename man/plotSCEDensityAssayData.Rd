% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggPlotting.R
\name{plotSCEDensityAssayData}
\alias{plotSCEDensityAssayData}
\title{Density plot of assay data.}
\usage{
plotSCEDensityAssayData(
  inSCE,
  feature,
  sample = NULL,
  useAssay = "counts",
  featureLocation = NULL,
  featureDisplay = NULL,
  groupBy = NULL,
  xlab = NULL,
  ylab = NULL,
  axisSize = 10,
  axisLabelSize = 10,
  defaultTheme = TRUE,
  cutoff = NULL,
  title = NULL,
  titleSize = 18,
  combinePlot = "none",
  plotLabels = NULL
)
}
\arguments{
\item{inSCE}{Input \linkS4class{SingleCellExperiment} object with saved
dimension reduction components or a variable with saved results. Required.}

\item{feature}{Name of feature stored in assay of SingleCellExperiment
object.}

\item{sample}{Character vector. Indicates which sample each cell belongs to.}

\item{useAssay}{Indicate which assay to use. Default "counts".}

\item{featureLocation}{Indicates which column name of rowData to query gene.}

\item{featureDisplay}{Indicates which column name of rowData to use
to display feature for visualization.}

\item{groupBy}{Groupings for each numeric value. A user may input a vector
equal length to the number of the samples in the SingleCellExperiment
object, or can be retrieved from the colData slot. Default NULL.}

\item{xlab}{Character vector. Label for x-axis. Default NULL.}

\item{ylab}{Character vector. Label for y-axis. Default NULL.}

\item{axisSize}{Size of x/y-axis ticks. Default 10.}

\item{axisLabelSize}{Size of x/y-axis labels. Default 10.}

\item{defaultTheme}{Removes grid in plot and sets axis title size to 10
when TRUE. Default TRUE.}

\item{cutoff}{Numeric value. The plot will be annotated with a vertical line
if set. Default NULL.}

\item{title}{Title of plot. Default NULL.}

\item{titleSize}{Size of title of plot. Default 15.}

\item{combinePlot}{Must be either "all", "sample", or "none". "all" will combine all plots into a single
.ggplot object, while "sample" will output a list of plots separated by sample. Default "none".}

\item{plotLabels}{labels to each plot. If set to "default", will use the name of the samples
as the labels. If set to "none", no label will be plotted.}
}
\value{
a ggplot of the density plot of assay data.
}
\description{
Visualizes values stored in the assay slot of a
 SingleCellExperiment object via a density plot.
}
\examples{
data("mouseBrainSubsetSCE")
plotSCEDensityAssayData(
  inSCE = mouseBrainSubsetSCE,
  feature = "Apoe"
)
}
