raw <- system.file("extdata", "Goldman.csv", package = "bioanth")
Goldman <- read.csv(raw, stringsAsFactors=FALSE)
Goldman$Inst <- factor(Goldman$Inst)
Goldman$Sex <- factor(Goldman$Sex, labels = c("M", "F", "M?", "F?"), levels = c("0", "1", "0?", "1?"))
Goldman$Location <- factor(Goldman$Location)
Goldman$Age <- factor(Goldman$Age, ordered = TRUE)
Goldman <- dplyr::tbl_df(Goldman)

