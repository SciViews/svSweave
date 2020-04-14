## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(svSweave)

## ---- fig.cap=fig("first-plot", "An example of a simple histogram.")----------
hist(rnorm(50))

## ---- fig.cap=fig("second-plot", "A second plot as an example.")--------------
boxplot(rnorm(50))

## -----------------------------------------------------------------------------
knitr::kable(head(iris), caption = tab("a-table", "The few first lines of the `iris` dataset."))

