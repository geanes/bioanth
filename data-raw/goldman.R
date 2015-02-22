library(dplyr)
library(magrittr)
library(bioanth)

# Import data ------------------------------------------------------------
raw <- "inst/extdata/Goldman.csv"
goldman <- read.csv(raw, stringsAsFactors=FALSE)

# Initial munge ----------------------------------------------------------
goldman %<>% select(-Element., -Metrics., -Derived.)

# Replace non-ASCII ------------------------------------------------------
goldman$NOTE <- gsub("\xa7", "\u00df", goldman$NOTE)
goldman$NOTE <- gsub("\x87", "\u00e1", goldman$NOTE)
goldman$NOTE <- gsub("\xa1", "\u00b0", goldman$NOTE)
goldman$NOTE <- gsub("\xc9", "...", goldman$NOTE)




# Make factors -----------------------------------------------------------
goldman$Inst %<>% factor
goldman$Sex %<>% factor(labels = c("M", "F", "M?", "F?"), levels = c("0", "1", "0?", "1?"))
goldman$Location %<>% factor
goldman$Age %<>% factor(ordered = TRUE)

# Save data --------------------------------------------------------------
goldman %<>% tbl_df
save(goldman, flie="data/goldman.rda")

