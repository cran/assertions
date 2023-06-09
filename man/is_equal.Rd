% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/is_comparisons.R
\name{is_equal}
\alias{is_equal}
\title{Check equality of two objects}
\usage{
is_equal(
  x,
  y,
  tolerance = sqrt(.Machine$double.eps),
  check_names = TRUE,
  check_environment = TRUE,
  check_tzone = TRUE
)
}
\arguments{
\item{x}{first object to compare}

\item{y}{second object to compare}

\item{tolerance}{Differences smaller than tolerance are not reported. The default value is close to 1.5e-8 (numeric >= 0).}

\item{check_names}{should the names(.) of target and current should be compare (flag)}

\item{check_environment}{should the environments of functions should be compared?
You may need to set check.environment=FALSE in unexpected cases, such as when comparing two nls() fits. (flag)}

\item{check_tzone}{should  "tzone" attributes be compared. Important for comparing POSIXt objects. (flag)}
}
\value{
TRUE if x is equal to y
}
\description{
Is \code{x} equal to \code{y}. powered by the \code{\link[=all.equal]{all.equal()}} function.
}
\examples{
if(interactive()){
is_equal(1, 1) #TRUE
is_equal(c(1, 2), 1) #FALSE

is_equal(c("A", "B"), c("A", "B")) #TRUE
is_equal("A", "B") #FALSE
}
}
