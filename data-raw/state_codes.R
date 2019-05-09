state_codes <- readr::read_csv("Y:/Confidential/HSQA/CHS/IVP-Epi/CHS_Related/Data/state_codes.csv")

state_codes <- state_codes %>%
  mutate(state = toupper(state))

devtools::use_data(state_codes , compress = "xz", overwrite = T)




