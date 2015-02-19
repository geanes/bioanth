colnames_case <- function(data, cols = names(data), case = "lower"){
  names(data) <- tolower(names(data))
}


factor_case <- function(data, col, case = "lower"){
#  stopifnot(is.data.frame(data), is.factor(data$col), is.character(case))
  if (case == "upper"){
    levels(data[[col]]) <- toupper(levels(data[[col]]))
  } else{
    levels(data[[col]]) <- tolower(levels(data[[col]]))
  }
  return(data)
}

factor_cases <- function(data, cols){
  factor_list <- names(data[which(sapply(data, is.factor))])
  
}


lower_chars <- function(data, cols){
  
}