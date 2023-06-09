% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assert_files.R
\name{assert_directory_exists}
\alias{assert_directory_exists}
\title{Assert are directory exists}
\usage{
assert_directory_exists(
  x,
  msg = NULL,
  call = rlang::caller_env(),
  arg_name = NULL
)
}
\arguments{
\item{x}{Path to a directory (string)}

\item{msg}{A character string containing the error message if file \code{x} is does not exist}

\item{call}{Only relevant when pooling assertions into multi-assertion helper functions. See \link[cli]{cli_abort} for details.}

\item{arg_name}{Advanced use only. Name of the argument passed (default: NULL, will automatically extract arg_name).}
}
\value{
invisible(TRUE) if \code{x} is exists and is a directory, otherwise aborts with the error message specified by \code{msg}
}
\description{
Assert a directory exists.
To assert all directories in a vector exist, see \code{\link[=assert_all_directories_exist]{assert_all_directories_exist()}}
}
\examples{
try({
assert_directory_exists(system.file("package = assertions")) # PASS
assert_all_directories_exist("foo") # Throws Error
})

}
\concept{assert_file}
