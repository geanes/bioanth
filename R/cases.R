all_factors <- function(data, cols){
  all(sapply(cols, function(x) is.factor(data[[x]])))
}

assertthat::on_failure(all_factors) <- function(call, env){
  paste0("cols must be factors")
}


lower_factor <- function(data, col, case = "lower"){
  if (case == "upper"){
    levels(data[[col]]) <- toupper(levels(data[[col]]))
  } else{
    levels(data[[col]]) <- tolower(levels(data[[col]]))
  }
  return(data[[col]])
}


lower_factors <- function(data, cols = which(sapply(data, is.factor)), case = "lower"){
  assertthat::assert_that(is.data.frame(data))
  assertthat::assert_that(all_factors(data, cols))
  assertthat::assert_that(is.character(case))
  
  for (i in cols) {
    data[[i]] <- factor_case(data, i, case = case)
  }
  return(data)
}


lower_names <- function(data, cols = names(data), case = "lower"){
  names(data) <- tolower(names(data))
}
