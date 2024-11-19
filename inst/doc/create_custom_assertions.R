## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE---------------------------------------------------------------
#  # Load library
#  library(assertions)
#  
#  # Create a function that asserts input is numeric
#  assert_numeric_2 <- assert_create(
#    func = is.numeric, # Returns TRUE/FALSE for assertion PASS/FAIL
#    default_error_msg = "'{arg_name}' must be of type numeric, not {class(arg_value)}"
#    )
#  
#  # Assertion passes if input is numeric
#  assert_numeric_2(123)
#  
#  # But throws the expected error if input is not numeric
#  assert_numeric_2("abc")
#  

## ----eval=FALSE---------------------------------------------------------------
#  assert_string <- assert_create_chain(
#    assert_create(is.character, '{arg_name} must be a character, not {class(arg_value)}'),
#    assert_create(function(s){ length(s)==1 }, '{arg_name} must be length 1, not {arg_value}')
#  )
#  
#  # Assert String
#  assert_string("String")
#  
#  assert_string(3)
#  # Output: Error: '3' must be a character

## ----eval=FALSE---------------------------------------------------------------
#  # Define Function
#  is_a_string <- function(object){
#   if(!is.character(object))
#     return("{arg_name} must be a character, not {class(arg_value)}")
#  
#    if(length(object) != 1){
#      return("{arg_name} must be length 1, not {length(object)}")
#    }
#  
#    return(TRUE)
#  }
#  
#  # Create Assertion
#  assert_is_string <- assert_create(
#   is_a_string
#  )
#  
#  # Test assertion works
#  assert_is_string("String")
#  
#  assert_is_string(3)
#  # 3 must be a character, not numeric
#  
#  assert_is_string(c("A", "B"))

