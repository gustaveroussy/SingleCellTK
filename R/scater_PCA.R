#' Perform PCA on a SingleCellExperiment Object
#' A wrapper to \link[scater]{runPCA} function to compute principal component
#' analysis (PCA) from a given \linkS4class{SingleCellExperiment} object.
#' @param inSCE Input \linkS4class{SingleCellExperiment} object.
#' @param useAssay Assay to use for PCA computation. If \code{useAltExp} is
#' specified, \code{useAssay} has to exist in
#' \code{assays(altExp(inSCE, useAltExp))}. Default \code{"logcounts"}
#' @param useAltExp The subset to use for PCA computation, usually for the
#' selected.variable features. Default \code{NULL}.
#' @param reducedDimName Name to use for the reduced output assay. Default
#' \code{"PCA"}.
#' @param nComponents Number of principal components to obtain from the PCA
#' computation. Default \code{50}.
#' @param scale Logical scalar, whether to standardize the expression values.
#' Default \code{FALSE}.
#' @param ntop Number of top features to use as a further variable feature
#' selection. Default \code{NULL}.
#' @param seed Random seed for reproducibility of PCA results.
#' @return A \linkS4class{SingleCellExperiment} object with PCA computation
#' updated in \code{reducedDim(inSCE, reducedDimName)}.
#' @export
#' @examples
#' data(scExample, package = "singleCellTK")
#' sce <- subsetSCECols(sce, colData = "type != 'EmptyDroplet'")
#' sce <- scaterlogNormCounts(sce, "logcounts")
#' sce <- scaterPCA(sce, "logcounts")
scaterPCA <- function(inSCE, useAssay = "logcounts", useAltExp = NULL,
                   reducedDimName = "PCA", nComponents = 50, scale = FALSE,
                   ntop = NULL, seed = NULL){
  if (!is.null(useAltExp)) {
    if (!(useAltExp %in% SingleCellExperiment::altExpNames(inSCE))) {
      stop("Specified altExp '", useAltExp, "' not found. ")
    }
    sce <- SingleCellExperiment::altExp(inSCE, useAltExp)
    if (!(useAssay %in% SummarizedExperiment::assayNames(sce))) {
      stop("Specified assay '", useAssay, "' not found in the ",
           "specified altExp. ")
    }
  } else {
    if (!(useAssay %in% SummarizedExperiment::assayNames(inSCE))) {
      stop("Specified assay '", useAssay, "' not found. ")
    }
    sce <- inSCE
  }
  if (is.null(ntop)) {
    ntop <- nrow(inSCE)
  } else {
    ntop <- min(ntop, nrow(inSCE))
  }
  
  if(!is.null(seed)){
    withr::with_seed(seed = seed,
                     code = sce <- scater::runPCA(sce, name = reducedDimName, exprs_values = useAssay,
                                                  ncomponents = nComponents,  ntop = ntop, scale = scale))
  }
  else{
    sce <- scater::runPCA(sce, name = reducedDimName, exprs_values = useAssay,
                          ncomponents = nComponents,  ntop = ntop, scale = scale)
  }

  SingleCellExperiment::reducedDim(inSCE, reducedDimName) <-
    SingleCellExperiment::reducedDim(sce, reducedDimName)
  return(inSCE)
}
