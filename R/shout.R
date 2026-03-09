#' Return a character vector loudly
#'
#' Return a character vector loudly by uppercasing all letters and increasing spacing. Best used
#' with a bold-formatting.
#'
#' Inspired by Ryan Kavanagh.
#'
#' @param string A character vector.
#' @returns A character vector with the same length as the input.
#' @examples
#' # example code
#' msg <- "listen up, you little jerk"
#' shout(msg)
#'
#' # Recommended to use with bold-formatting.
#' # Write to clipboard and paste elsewhere
#' # msg |>
#' #   shout() |>
#' #   clipr::write_clip()
#' @export
shout <- function(string) {
  string %>%
    purrr::map_chr(stringr::str_to_upper) %>%
    purrr::map_chr(\(s) stringr::str_replace_all(s, " ", "   ")) %>%
    purrr::map_chr(\(s) stringr::str_replace_all(s, "\\B|\\b", " ")) %>%
    purrr::map_chr(\(s) stringr::str_replace_all(s, " {5,}", "    ")) %>%
    purrr::map_chr(stringr::str_trim)
}
