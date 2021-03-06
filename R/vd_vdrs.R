#' Title
#'
#' @param data
#' @param underly
#'
#' @return
#' @export
#'
#' @examples
vd_vdrs <- function(data, underly) {
  nvdrs_regex_ <-
    "X[6-9]|Y[012]|Y3[0-4]|Y35[0-467]|Y87[012]|Y89[09]|W3[2-4]|U0[123]"
  data %>% mutate(vdrs_case = vd_create_diag(., expr = nvdrs_regex_,
                                             colvec = underly))
}
