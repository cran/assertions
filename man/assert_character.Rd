% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assert_type.R
\name{assert_character}
\alias{assert_character}
\title{Assert input is a character vector}
\usage{
assert_character(x, msg = NULL, call = rlang::caller_env(), arg_name = NULL)
}
\arguments{
\item{x}{An object}

\item{msg}{A character string containing the error message to display if \code{x} is not a character vector}

\item{call}{Only relevant when pooling assertions into multi-assertion helper functions. See \link[cli]{cli_abort} for details.}

\item{arg_name}{Advanced use only. Name of the argument passed (default: NULL, will automatically extract arg_name).}
}
\value{
invisible(TRUE) if \code{x} is a character vector, otherwise aborts with the error message specified by \code{msg}
}
\description{
Assert an R object is a 'character' type.
Works for \strong{vector} and \strong{matrix} objects.
To assert an object is specifically a \strong{character vector} see \code{\link[=assert_character_vector]{assert_character_vector()}}
}
\examples{
try({
assert_character("a") # Passes
assert_character("a") # Passes
assert_character(c("a", "b", "c")) # Passes
assert_character(matrix(c('A', 'B', 'C', 'D')))  # Passes
assert_character(1:3) # Throws default error
assert_character(c("a", 1, "b"), "Custom error message") # Throws custom error
})


}
\concept{assert_type}
