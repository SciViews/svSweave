#' Reference figures, tables and equations in R Markdown documents
#'
#' These functions return closures that allow for constructing a series of
#' numbered items and to reference them. The number is create the first time a
#' label is encountered, and provided again for further use of the same label.
#'
#' @param type The type of numbering (arabic or roman).
#' @param prefix The text to use to prefix the number (nothing, by default).
#' @param string The string prototyping the legend, with `@@@@` being a
#' placeholder for the text, `####` as a placeholder for the number, or
#' `%%%%` as a placeholder for numbered examples (used by [eq()]).
#' @param label A short string uniquely identifying the item within the
#' collection.
#' @param text The text for the legend (can contain R Markdown formatting). In
#' the case of [eq()], this is the LaTeX code for the equation itself.
#' @param reset If `TRUE`, the collection is reset. Useful if you want to
#' restart numbering at the beginning of each chapter.
#'
#' @return
#' The item labelling (legend, ...) if `text =`` is provided, or the number
#' associated with the item otherwise. [new_labelling()] creates a new labelling
#' function, which has the same arguments as [fig()].
#'
#' @details
#' A new labelling type is created using [new_labelling()] which is a function
#' factory (a function that creates functions).
#'
#' @export
#' @author Philippe Grosjean
#' @keywords utilities
#' @concept automatic numbering of items in documents
#' @examples
#' # Note that those instructions are supposed to be included in R Markdown
#' # documents using the inline R expression syntax: `r fig("label", "<text>")`.
#'
#' # Say you have a first figure labelled 'first-plot'.
#' # The first call creates its legend, and the second one references it
#' fig("first-plot", "An example of a gpplot2 scatterplot.")
#' fig("first-plot")
#'
#' # A second figure labelled 'a-picture', but with reference appearing first
#' fig("a-picture")
#' # The second call creates the legend for the picture
#' fig("a-picture", "This is my most beautiful picture")
#'
#' # Same for a table labelled 'anova-table'
#' tab("anova-table", "ANOVA for my wonderful dataset.")
#' # ... and further in the text, a reference to that table:
#' tab("anova-table")
new_labelling <- function(type = c("arabic", "roman"), prefix = "",
string = "_**Figure ####:** @@@@_") {
  type <- match.arg(type)
  conv <- switch(type,
    arabic = function(x) x,
    roman = function(x) as.roman(x)
  )
  prefix <- as.character(prefix)[1]
  string <- as.character(string)[1]
  labels <- list()

  # Return a function that creates the enumeration of the items
  function(label, text, reset = FALSE) {
    # Do we reset figs?
    if (isTRUE(reset))
      labels <<- list()

    # Do we have a label? If not, return an empty string.
    if (missing(label))
      return(invisible(""))

    value <- labels[[label]]
    # Does it exists?
    if (is.null(value)) {
      value <- paste0(prefix, conv(length(labels) + 1))
      # Record this item in labels
      labels[[label]] <- value
      labels <<- labels
    }
    # If we have a text, format a complete legend string
    # This should be a markdown-compatible label!
    mdlabel <- gsub("\\.", "-", make.names(label))
    if (missing(text)) {
      # Special case: if numbered example list of markdown...
      if (grepl("%%%%", string)) {
        paste0("@", mdlabel)
      } else {
        value
      }
    } else {
      sub("%%%%", mdlabel, sub("@@@@", text, sub("####", value, string)))
    }
  }
}

# Backward compatibility

#' @export
#' @rdname new_labelling
newLabelling <- new_labelling

#' @export
#' @rdname new_labelling
fig <- new_labelling()

#' @export
#' @rdname new_labelling
tab <- new_labelling(string = "_**Table ####:** @@@@_")

# This is the best I can do, using the numbered example list of markdown
# (but it is not available for something else)!
#' @export
#' @rdname new_labelling
eq <- new_labelling(string = "(@%%%%)") # Was "(@%%%%) $$ @@@@ $$")
