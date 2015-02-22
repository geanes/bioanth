library(dplyr)
library(magrittr)

# Import data ----------------------------------------------------------------
raw <- "inst/extdata/howelltest.csv"
howelltest <- read.csv(raw, stringsAsFactors=FALSE)

# Make factors --------------------------------------------------------------
howelltest$Sex %<>% factor
howelltest$Tribe %<>% factor

# Save ---------------------------------------------------------------------
howelltest %<>% tbl_df
save(howelltest, file = "data/howelltest.rda")

