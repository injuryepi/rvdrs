format_icd10 <- purrr::compose(
    # pad with 2 spaces before, and one space after the icd10
  function(x) paste0("  ", stringi::stri_pad_right(x, w = 5), " "),
  # remove final dot
  function(x) gsub("\\.$", "", x),
  # add dot after the third character
  function(x) gsub("(?<=^(.{3}))", "\\.", x, perl = TRUE),
  # space for missing icd-10
  function(x) ifelse(is.na(x), " ", x)
)
