% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pseudotimePlotByGenes.R
\name{pseudotimePlotByGenes}
\alias{pseudotimePlotByGenes}
\title{pseudotimeplotByGenes}
\usage{
pseudotimePlotByGenes(exprs, if_log2 = TRUE, cell_annotation, cell_order,
  plot_genes = NULL, reverse_order = FALSE, min_expr = -3,
  cell_size = 2, plot_cols = NULL,
  trend_formula = "expression ~ sm.ns(Pseudotime, df=3)")
}
\arguments{
\item{exprs}{a data frame or matrix of log transformed expression data, with row of cells and column of genes}

\item{if_log2}{whether exprs is log2 transformed}

\item{cell_annotation}{a two column data frame of matrix annotating cells(cell ID or name) with cell types}

\item{cell_order}{a vector stroing the order of cells with cell ID or name, same as appeared in row names of \code{exprs}}

\item{plot_genes}{a vector storing the genes selected for plot, same as appeared in the column names of \code{exprs}, if NULL, all genes in exprs will be selected}

\item{reverse_order}{reverse the order of the pseudotime}

\item{min_expr}{the threshold for cutting of the cell expressions in regression values, values lower than this will be forced to \code{min_exprs}}

\item{cell_size}{the size of cells in the plot}

\item{plot_cols}{plot colours}

\item{trend_formula}{the formula for regression analysis}
}
\value{
a object of ggplot
}
\description{
pseudotimeplotByGenes
}
\examples{
\dontrun{
pseudotimePlotByGenes(exprs = "FULL.log2TPM.txt", 
                      cell_annotation = "splAnnotation_outlierRemoved.txt", 
                      cell_order = "uspin.PCA.0.03.seed1.txt", 
                      plot_genes = "genes.txt", 
                      reverse_order = TRUE, plot_cols = 3)
}
}
