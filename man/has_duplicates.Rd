% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/has.R
\name{has_duplicates}
\alias{has_duplicates}
\title{Check if a vector has duplicates}
\usage{
has_duplicates(x)
}
\arguments{
\item{x}{A vector.}
}
\value{
A logical value indicating whether the input vector contains duplicated elements.
}
\description{
This function returns a logical value indicating whether the input vector contains
duplicated elements.
}
\examples{
if(interactive()){
has_duplicates(c(1, 2, 3))  # returns FALSE
has_duplicates(c(1, 2, 2))  # returns TRUE
}
}
