## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----load_cimpleg-------------------------------------------------------------
library("CimpleG")

## ----save_object, eval=FALSE, echo=TRUE---------------------------------------
# my_matrix <- matrix(rnorm(100), nrow = 10, ncol = 10)
# 
# save_object(my_matrix, "my_matrix.rds")
# 

## ----load_object, eval=FALSE, echo=TRUE---------------------------------------
# my_loaded_matrix <- load_object("my_matrix.rds")
# 
# my_loaded_matrix

