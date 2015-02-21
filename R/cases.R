# Assertions --------------------------------------------------------------

all_factors <- function(cols){
  all(sapply(cols, is.factor))
}
assertthat::on_failure(all_factors) <- function(call, env){
  paste0("columns must be factors")
}

dots_exist <- function(dots){
  length(dots) != 0
}
assertthat::on_failure(dots_exist) <- function(call, env){
  paste0("no columns specified")
}

valid_columns <- function(data, dots){
  all(sapply(dots, function(x) as.character(x$expr) %in% names(data)))
}
assertthat::on_failure(valid_columns) <- function(call, env){
  paste0("columns specified do not match data")
}

# Factor case --------------------------------------------------------------


#' Factor labels to lower (or upper) case.
#'
#' \code{lower_factors} acts on columns of a data frame and converts factor
#' labels to lower case (by default) or upper case (with case = "upper").
#' \code{lower_factors} plays nice with \code{\%>\%} from dplyr/magrittr.
#' 
#' @param .data A data frame.
#' @param ... Comma separated list of unquoted expressions. Defaults to all
#' columns of class factor.
#' @param case A character vector \code{"upper"} or \code{"lower"} (default). 
#' Note: case must be a named argument if specified 
#' (e.g. \code{case = "upper"}).
#' @return A data frame.
#' @examples
#' lower_factors(iris, Species, case = "upper")
#' 
#' # Lower case is default
#' lower_factors(iris)
#' 
#' # Standard Evaluation with lower_factors_
#' lower_factors_(iris, ~Species, case = "upper")
#' @family case functions
#' @export
lower_factors <- function(.data, ..., case = "lower"){
  dots <- lazyeval::lazy_dots(...)
  if (length(dots) == 0) dots <- names(.data)[which(sapply(.data, is.factor))]
  lower_factors_(.data, .dots = dots, case = case)
}

#' @export
lower_factors_ <- function(.data, ..., .dots, case = "lower"){
  alldots <- lazyeval::all_dots(.dots, ...)
  cols_pos <- setNames(as.list(seq_along(.data)), names(.data))
  cols <- unlist(lazyeval::lazy_eval(alldots, cols_pos))
  assertthat::assert_that(is.data.frame(.data))
  assertthat::assert_that(dots_exist(alldots))
  assertthat::assert_that(all_factors(.data[, cols]))
  assertthat::assert_that(is.character(case))
  new_data <- .data[, cols, drop = FALSE]
  new_cols <- names(new_data)
  for (i in new_cols) {
    levels(.data[[i]]) <- lower_factor_(x = levels(.data[[i]]), case = case)
  }
  return(.data)
}


lower_factor_ <- function(x, case){
  if (case == "upper"){
    new_levels <- toupper(x)
  } else{
    new_levels <- tolower(x)
  }
  return(new_levels)
}


# Column name case ----------------------------------------------------------


#' Column names to lower (or upper) case.
#'
#' \code{lower_names} acts on the column names of a data frame and converts 
#' them to lower case (by default) or upper case (with case = "upper").
#' \code{lower_names} plays nice with \code{\%>\%} from dplyr/magrittr.
#' 
#' @param .data A data frame.
#' @param ... Comma separated list of unquoted expressions. Defaults to all
#' columns.
#' @param case A character vector \code{"upper"} or \code{"lower"} (default). 
#' Note: case must be a named argument if specified 
#' (e.g. \code{case = "upper"}).
#' @return A data frame.
#' @examples
#' lower_names(iris, case = "upper")
#' 
#' # Lower case is default
#' lower_factors(iris)
#' 
#' #Specific columns
#' lower_names(iris, Sepal.Length, Species)
#' 
#' # Standard Evaluation with lower_names_
#' lower_factors_(iris, ~Species, case = "upper")
#' @family case functions
#' @export
lower_names <- function(.data, ..., case = "lower"){
  dots <- lazyeval::lazy_dots(...)
  if (length(dots) == 0) dots <- names(.data)
  lower_names_(.data, .dots = dots, case = case)
}

#' @export
lower_names_ <- function(.data, ..., .dots, case = "lower"){
  alldots <- lazyeval::all_dots(.dots, ...)
  assertthat::assert_that(is.data.frame(.data))
  assertthat::assert_that(dots_exist(alldots))
  assertthat::assert_that(is.character(case))
  cols_pos <- setNames(as.list(seq_along(.data)), names(.data))
  cols <- unlist(lazyeval::lazy_eval(alldots, cols_pos))
  if (case == "upper"){
    names(.data)[cols] <- toupper(names(.data)[cols])
  } else {
    names(.data)[cols] <- tolower(names(.data)[cols])
  }
  return(.data)
}
