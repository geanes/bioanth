raw <- system.file("extdata", "howelltest.csv", package = "bioanth")
howelltest <- read.csv(raw, stringsAsFactors=FALSE)
howelltest$Sex <- factor(howelltest$Sex)
howelltest$Tribe <- factor(howelltest$Tribe)
howelltest <- dplyr::tbl_df(howelltest)

