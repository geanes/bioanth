# bioanth
An R package that provides datasets useful for biological and forensic anthropology. In addition, it includes helper functions for working with dataframes.


##### This package provides the following datasets:
* `howell`: Howells Craniometric Data Set
* `howelltest`: Howells Craniometric Test Data Set
* `goldman`: Goldman Osteometric Data Set

Note: These data sets are from http://web.utk.edu/~auerbach/DATA.htm


##### Additionally, the following functions are included:
* `lower_names`: Converts column names of a data frame to lower (or upper) case.
* `lower_factors`:  Converts factor labels to lower (or upper) case.


### Installation:
```r
install.packages("devtools")
devtools::install_github("geanes/bioanth")
```
