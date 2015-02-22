library(dplyr)
library(magrittr)
library(bioanth)

# Import data ------------------------------------------------------------
raw <- "inst/extdata/Goldman.csv"
goldman <- read.csv(raw, stringsAsFactors=FALSE)

# Initial munge ----------------------------------------------------------
goldman %<>% select(-Element., -Metrics., -Derived.)

# Make factors -----------------------------------------------------------
goldman$Inst %<>% factor
goldman$Sex %<>% factor(labels = c("M", "F", "M?", "F?"), levels = c("0", "1", "0?", "1?"))
goldman$Location %<>% factor
goldman$Age %<>% factor(ordered = TRUE)

# Save data --------------------------------------------------------------
goldman %<>% tbl_df
save(goldman, flie="data/goldman.rda")

