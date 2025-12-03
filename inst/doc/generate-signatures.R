## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----install_cimpleg, eval=FALSE----------------------------------------------
# if (!require("CimpleG")) devtools::install_github("costalab/CimpleG")

## ----load_cimpleg-------------------------------------------------------------
library("CimpleG")

## ----load_data----------------------------------------------------------------
# load data
data(train_data)
data(train_targets)

## ----cimpleg------------------------------------------------------------------
# run CimpleG
cimpleg_result <- CimpleG(
  train_data,
  train_targets,
  target_columns = c("blood_cells", "hepatocytes"),
  train_only = TRUE
)

## ----plot_cimpleg, fig.width=4, fig.height=6----------------------------------
sig_plt <-
  signature_plot(
    cimpleg_result,
    train_data,
    train_targets,
    sample_id_column = "gsm",
    true_label_column = "cell_type"
  )
sig_plt$plot

