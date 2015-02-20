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
  paste0("columns must be specified for standard evaluation")
}

lower_factors <- function(.data, ..., case = "lower"){
  dots = lazyeval::lazy_dots(...)
  if (length(dots) == 0) dots <- names(.data)[which(sapply(.data, is.factor))]
  lower_factors_(.data, .dots = dots, case = case)
}

lower_factors_ <- function(.data, ..., .dots, case = "lower"){
  alldots <- lazyeval::all_dots(.dots, ...)
  cols <- lazyeval::lazy_eval(alldots, .data)
  assertthat::assert_that(is.data.frame(.data))
  assertthat::assert_that(dots_exist(alldots))
  assertthat::assert_that(all_factors(cols))
  assertthat::assert_that(is.character(case))
  
  for (i in alldots) {
    .data[[as.character(i$expr)]] <- lower_factor_(.data = lazyeval::lazy_eval(i, .data), case = case)
  }
  return(.data)
}


lower_factor_ <- function(.data, case){
  if (case == "upper"){
    levels(.data) <- toupper(levels(.data))
  } else{
    levels(.data) <- tolower(levels(.data))
  }
  return(.data)
}


# ------------------------------------------------------------------------------

lower_names <- function(.data, cols = names(.data), case = "lower"){
  names(.data) <- tolower(names(.data))
}
