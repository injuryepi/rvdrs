
vars_to_import_x <- readr::read_rds("Y:/Confidential/HSQA/CHS/IVP-Epi/vdrs_epi17/Data/vars_to_import_x.rds")

devtools::use_data(vars_to_import_x , compress = "xz", overwrite = T)
