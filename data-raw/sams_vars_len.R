
sams_vars_len <- readr::read_csv("Y:/Confidential/HSQA/CHS/IVP-Epi/vdrs_epi17/Data/sams_vars_len.csv")

devtools::use_data(sams_vars_len , compress = "xz", overwrite = T)
