# Quick and dirty print variables for documentation ---------------------------
doc_vars <- function(df){
  n <- names(df)
  sapply(n, function(x) cat("#'   \\item{", as.symbol(x), "}{}", "\n", sep = ""))
}