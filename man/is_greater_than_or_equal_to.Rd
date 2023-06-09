% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/is_comparisons.R
\name{is_greater_than_or_equal_to}
\alias{is_greater_than_or_equal_to}
\title{Check if a numeric vector is greater than or equal to a specified minimum value}
\usage{
is_greater_than_or_equal_to(x, minimum)
}
\arguments{
\item{x}{a numeric vector to check}

\item{minimum}{The minimum value to compare against}
}
\value{
A logical value indicating whether all elements of the numeric vector x are greater than or equal to the specified minimum value
}
\description{
This function checks if a numeric vector is greater than or equal to a specified minimum value. It can also optionally check if all elements of the vector must be greater than or equal to the minimum value or if only one element is sufficient
}
\examples{
if(interactive()){
is_greater_than_or_equal_to(c(2,3,4), 1) # TRUE
is_greater_than_or_equal_to(c(2,3,4), 2) # TRUE
is_greater_than_or_equal_to(c(2,3,1), 3) # FALSE
}
}
