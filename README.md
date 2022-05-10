# svSweave

<!-- badges: start -->

[![R-CMD-check](https://github.com/SciViews/svSweave/workflows/R-CMD-check/badge.svg)](https://github.com/SciViews/svSweave/actions) [![Win build status](https://ci.appveyor.com/api/projects/status/github/SciViews/svSweave?branch=master&svg=true)](https://ci.appveyor.com/project/phgrosjean/svSweave) [![Coverage status](https://img.shields.io/codecov/c/github/SciViews/svSweave/master.svg)](https://codecov.io/github/SciViews/svSweave?branch=master) [![CRAN status](https://www.r-pkg.org/badges/version/svSweave)](https://CRAN.R-project.org/package=svSweave) [![License](https://img.shields.io/badge/license-GPL-blue.svg)](http://www.gnu.org/licenses/gpl-2.0.html) [![Lifecycle: maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)

<!-- badges: end -->

{svSweave} provides additional functions to work with Sweave, Knitr and R Markdown, essentially for two uses for now:

1.  It implements a pure R code solution for numbering and cross-referencing figures, tables and equations in R Markdown files that do not support it natively (thus not bookdown or quarto documents). Indeed, standard Pandoc does not provide this. Only the extensions proposed by {bookdown} or {quarto} allow to do so. Of course, you could also use LaTeX markups for this, but then, you are limited to output in PDF. The functions `fig()`, `tab()`and `eq()` allow to number respectively figures, tables and equations in *any* R Markdown document and the same function can be used to cross-reference these items in the text. Moreover, `new_labelling()` creates a new function to enumerate other items if needed.

2.  It provides helper functions to properly use {knitr} with [LyX](https://www.lyx.org), a document editor targeting LaTeX output, that can also benefit from Sweave or knitr to include chunks in LyX documents directly. **These fonctions are deprecated.**

## Installation

You can install the released version of {svSweave} from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("svSweave")
```

You can also install the latest development version. Make sure you have the {remotes} R package installed:

``` r
install.packages("remotes")
```

Use `install_github()` to install the {svSweave} package from Github (source from **master** branch will be recompiled on your machine):

``` r
remotes::install_github("SciViews/svSweave")
```

R should install all required dependencies automatically, and then it should compile and install {svSweave}.

Latest devel version of {svSweave} in the **master** branch (source + Windows binaries for the latest stable version of R at the time of compilation) is also available from [appveyor](https://ci.appveyor.com/project/phgrosjean/svSweave/build/artifacts).

## Further explore {svSweave}

You can get further help about this package this way: Make the {svSweave} package available in your R session:

``` r
library("svSweave")
```

Get help about this package:

``` r
library(help = "svSweave")
pckage?svSweave
vignette("svSweave") # None is installed with install_github()
```

For further instructions, please, refer to the related web site at <https://www.sciviews.org/svSweave/>.

## Code of Conduct

Please note that the {svSweave} project is released with a [Contributor Code of Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html). By contributing to this project, you agree to abide by its terms.

## Note to developers

This package used to be developed on R-Forge in the past. However, the latest [R-Forge version](https://r-forge.r-project.org/projects/sciviews/) was moved to this Github repository on 2016-03-16 (SVN version 569). **Please, do not use R-Forge anymore for SciViews development, use this Github repository instead.**
