#https://www.census.gov/geo/reference/codes/place.html

library(tidyverse)
wa_cities_codes <- read_delim(file = "https://www2.census.gov/geo/docs/reference/codes/files/st53_wa_places.txt", delim = "|", col_names = F)

wa_cities_codes <- wa_cities_codes %>%
  set_names(c("STATE", "STATEFP", "PLACEFP", "PLACENAME", "TYPE", "FUNCSTAT", "COUNTY")) %>%
  set_names(tolower)

wa_cities_codes <- wa_cities_codes %>%
  mutate(city = stringr::str_trim(
    gsub("city$|town$|CDP$", "", placename)))

devtools::use_data(wa_cities_codes , compress = "xz", overwrite = T)
