\name{newLabelling}
\alias{newLabelling}
\alias{eq}
\alias{fig}
\alias{tab}

\title{
Reference figures, tables and equations in R Markdown documents.
}
\description{
These functions return closures that allow for constructing a series of numbered
items and to reference them. The number is create the first time a label is
encountere, and provided again for further use of the same label.
}
\usage{
fig(label, text, reset = FALSE)
tab(label, text, reset = FALSE)
eq(label, text, reset = FALSE)
newLabelling(type = c("arabic", "roman"), prefix = "",
    string = "_**Figure ####:** @@@@_")
}

\arguments{
  \item{label}{ A short string uniquely identifying the item within the collection. }
  \item{text}{ The text for the legend (can contain R Markdown formatting).
  In the case of \code{eq()}, this is the LaTeX code for the equation itself. }
  \item{reset}{ If \code{TRUE}, the collection is reset. Useful if you want to
  restart numbering after each chapter. }
  \item{type}{ The type of numbering (arabic or roman). }
  \item{prefix}{ The text to use to prefix the number (nothing, by default). }
  \item{string}{ The string prototyping the legend, with \code{@@@@} being a
  placeholder for the text, \code{####} as a placeholder for the number, or
  \code{\%\%\%\%} as placeholder for numbered examples (used by \code{eq}). }
}
\details{
A new labelling type is created using \code{newLabelling()}.
}
\value{
The item labelling (legend, ...) if \code{text=} is provided, or the number
associated with the item otherwise.
\code{newLabelling()} creates a new labelling function, which has the same
argumants as \code{fig()}.
}
\author{
Philippe Grosjean (phgrosjean@sciviews.org)
}

\examples{
# Note that those instructions are supposed to be included in R Markdown
# documents using the inline R expression syntax: `r fig("label", "<text>")`.

# Say you have a first figure labelled 'first-plot'.
# The first call creates its legend, and the second one is used to reference it
fig("first-plot", "An example of a gpplot2 scatterplot.")
fig("first-plot")

# A second figure labelled 'a-picture', but with reference first
fig("a-picture")
# The second call creates the legend for the picture
fig("a-picture", "This is my most beautiful picture")

# Same for a table labelled 'anova-table'
tab("anova-table", "ANOVA for my wonderful dataset.")
# ... and further in the text, a reference to that table:
tab("anova-table")
}

\keyword{ utilites }
