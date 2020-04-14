#' SvSweave - Sweave, Knitr and R Markdown Companion Functions
#'
#' The SciViews 'svSweave' package provides additional function to use Sweave or
#' knitr with LyX and SciViews-LyX. There are also functions to reference
#' tables, figures or equations inside a R markdown.
#'
#' @section Important functions:
#'
#' - [fig()], [tab()] or [eq()] to enumerate and reference figures, tables and
#' equations in R Markdown documents.
#'
#' - [new_labelling()] to create new items iterators.
#'
#' - [clean_lyx()], [weave_lyx()], [knit_lyx()], [tangle_lyx()], [purl_lyx()]
#' to clean up, weave or tangle Sweave files produced by LyX with the SciViews
#' Sweave or Knitr modules.
#'
#' @docType package
#' @name svSweave-package
#'
#' @importFrom utils Sweave Stangle Rtangle RweaveLatex as.roman
#' @importFrom knitr knit purl
NULL
