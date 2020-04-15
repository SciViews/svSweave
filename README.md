# svSweave

[![Linux Build Status](https://api.travis-ci.com/SciViews/svSweave.svg )](https://travis-ci.com/github/SciViews/svSweave)
[![Win Build Status](https://ci.appveyor.com/api/projects/status/github/SciViews/svSweave?branch=master&svg=true)](http://ci.appveyor.com/project/phgrosjean/svSweave)
[![Coverage Status](https://img.shields.io/codecov/c/github/SciViews/svSweave/master.svg)
](https://codecov.io/github/SciViews/svSweave?branch=master)
[![CRAN Status](http://www.r-pkg.org/badges/version/svSweave)](http://cran.r-project.org/package=svSweave)
[![License](https://img.shields.io/badge/license-GPL-blue.svg)](http://www.gnu.org/licenses/gpl-2.0.html)
[![Life
cycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/)

## Installation

### Latest stable version

The latest stable version of 'svSweave' can simply be installed from [CRAN](http://cran.r-project.org):

```r
install.packages("svSweave")
```

### Development version

Make sure you have the 'devtools' R package installed:

```r
install.packages("devtools")
```

Use `install_github()` to install the 'svSweave' package from Github (source from **master** branch will be recompiled on your machine):

```r
devtools::install_github("SciViews/svSweave")
```

R should install all required dependencies automatically, and then it should compile and install 'svSweave'.

Latest devel version of 'svSweave' (source + Windows binaires for the latest stable version of R at the time of compilation) is also available from [appveyor](https://ci.appveyor.com/project/phgrosjean/svSweave/build/artifacts).

## Usage

Make the 'svSweave' package available in your R session:

```r
library("svSweave")
```

Get help about this package:

```r
library(help = "svSweave")
help("svSweave-package")
vignette("svSweave") # None is installed with install_github()
```

For further instructions, please, refer to the help pages at https://www.sciviews.org/svSweave/.

## Note to developers

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.

This package used to be developed on R-Forge in the past. However, the latest [R-Forge version](https://r-forge.r-project.org/projects/sciviews/) was moved to this Github repository on 2016-03-16 (SVN version 569). **Please, do not use R-Forge anymore for SciViews development, use this Github repository instead.**
