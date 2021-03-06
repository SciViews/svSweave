% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/new_labelling.R
\name{subsettable}
\alias{subsettable}
\alias{$.subsettable_labelling_ref}
\title{Define a function as being 'subsettable' using $ operator}
\usage{
\method{$}{subsettable_labelling_ref}(x, name)
}
\arguments{
\item{x}{A \code{subsettable_labelling_ref} function.}

\item{name}{The value to use for the \verb{ref=} argument.}
}
\description{
For labelling items like \code{\link[=fig]{fig()}}, \code{\link[=tab]{tab()}} or \code{\link[=eq]{eq()}}, implements
the \code{$} method to retrieve a reference and build a link to the element.
}
\examples{
eq(pythagoras) # Create a label / tag pair for R Markdown display equations
eq$pythagoras  # Create a link to the equation somewhere else in the document
}
\concept{create 'subsettable' functions}
\keyword{utilities}
