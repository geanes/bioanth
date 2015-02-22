library(dplyr)
library(magrittr)

# Load data ---------------------------------------------------------------
raw <- "inst/extdata/howell.csv"
howell <- read.csv(raw, stringsAsFactors=FALSE)

# Make factors ------------------------------------------------------------
howell$Sex %<>% factor
howell$Population %<>% factor
howell$PopNum %<>% factor

# Save --------------------------------------------------------------------
howell %<>% tbl_df
save(howell, file = "data/howell.rda")
