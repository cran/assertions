# Set functions -----------------------------------------------------------
#' Check if one set is a subset of another
#'
#' Determines if all elements in set `x` are also present in set `y`.
#'
#' @param x A numeric, character, or logical vector.
#' @param y A numeric, character, or logical vector.
#' @return A logical value indicating whether `x` is a subset of `y`.
#'
is_subset <- function(x, y){
  all(x %in% y)
}


#' Check if one set is a superset of another
#'
#' Determines if all elements in set `y` are also present in set `x`.
#'
#' @param x A numeric, character, or logical vector.
#' @param y A numeric, character, or logical vector.
#' @return A logical value indicating whether `x` is a superset of `y`.
is_superset <- function(x, y){
  all(y %in% x)
}

# Set Differences ---------------------------------------------------------------------

#' @title Elements Exclusive to First Set
#'
#' @description
#' Finds the elements that are in the first set but not in the second set.
#'
#' @param x A vector of elements.
#' @param y A vector of elements.
#'
#' @return A vector of elements that are in the first set but not in the second set.
#'
setopts_exlusive_to_first <- function(x, y){
  setdiff(x, y)
}

#' @title Count of Elements Exclusive to First Set
#'
#' @description
#' Counts the number of elements that are in the first set but not in the second set.
#'
#' @param x A vector of elements.
#' @param y A vector of elements.
#'
#' @return A scalar representing the number of elements that are in the first set but not in the second set.
#'
setopts_count_exlusive_to_first <- function(x, y){
  length(setdiff(x, y))
}

#' @title Find Common Elements
#'
#' @description
#' Find the elements that are present in both sets.
#'
#' @param x A vector of elements.
#' @param y A vector of elements.
#'
#' @return A vector of elements that are present in both sets.
#'
setopts_common_elements <- function(x, y){
  intersect(x, y)
}

#' @title Compare Sets for Equality
#'
#' @description
#' Determine if the two sets are equal.
#'
#' @param x A vector of elements.
#' @param y A vector of elements.
#'
#' @return A logical value indicating whether the sets are equal (`TRUE`) or not (`FALSE`).
#'
setopts_are_equal <- function(x, y){
  setequal(x, y)
}



# Includes ----------------------------------------------------------------

#' Check if All Values in Required are in x
#'
#' @description
#' Checks if all elements of `required` are present in `x`.
#'
#' @param x A vector of elements.
#' @param required A vector of elements to check for inclusion in `x`.
#'
#' @return A logical value indicating whether all elements of `required` are present in `x` (`TRUE`) or not (`FALSE`).
#'
includes <- function(x, required){
  is_subset(required, x)
}

#' Check if an object contains required elements
#'
#' This function checks that `x` includes all of the `required` elements.
#' `x` must be the same type as `required`.
#'
#' @param x An object to check
#' @param required The required elements to check for
#' @return Returns TRUE if `x` is the same type as `required` and `x` includes all the `required` elements.
#' Otherwise returns a string representing the appropriate error message to display
includes_advanced <- function(x, required){
  if(!is_same_type(x, required))
    return("'{.strong {arg_name}}' (type: {.strong {typeof(x)}}) must be the same type as {deparse(substitute(required))} (type: {typeof(required)})")
  else{
    if(!is_subset(required, x)){
      missing <- setopts_exlusive_to_first(required, x)
      missing <- glue::glue_collapse(missing, sep = ", ", last = " and ")
      return(paste0("'{.strong {arg_name}}' must include {.strong ",missing,"}", collapse = ""))
    }
  }
  return(TRUE)
}


#' Check if an object does not contain prohibited elements
#'
#' This function checks that `x` does not include any of the `illegal` elements.
#' `x` must be the same type as `illegal`.
#'
#' @param x An object to check
#' @param illegal The prohibited elements to check for
#' @return Returns TRUE if `x` is the same type as `illegal` and `x` does not include any of the `illegal` elements.
#' Otherwise returns a string representing the appropriate error message to display
excludes_advanced <- function(x, illegal){
  if(!is_same_type(x, illegal))
    return("'{.strong {arg_name}}' (type: {.strong {typeof(x)}}) must be the same type as {deparse(substitute(illegal))} (type: {typeof(illegal)})")
  else{
    if(any(illegal %in% x)){
      illegal_in_x <- setopts_common_elements(illegal, x)
      illegal_in_x <- glue::glue_collapse(illegal_in_x, sep = ", ", last = " and ")
      return(paste0("'{.strong {arg_name}}' must exclude: {.strong ",illegal_in_x,"}"))
    }
  }
  return(TRUE)
}

