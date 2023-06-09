% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{format_inline}
\alias{format_inline}
\title{Preprocess character vectors for cli package functions}
\usage{
format_inline(x, inline_tag = c("strong", "emph", "code", "arg"))
}
\arguments{
\item{x}{A character vector}

\item{inline_tag}{A character vector of inline tag names (e.g. "strong", "emph", "code", "arg")}
}
\value{
A character vector with inline tags applied to each element
}
\description{
Preprocess character vectors for cli package functions
}
