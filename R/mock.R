#' Return a character vector mockingly
#'
#' Return a character vector mockingly by altering the case of letters. See *Details*.
#'
#' When `method = "alternate"`, the first letter of each string is lowercased. Letters then
#' alternate between lowercase and uppercase. When `method = "random"`, 60% of the letters
#' (at random) in each string will swap to the other case.
#'
#' When the output is to be pasted to Microsoft Teams, mocked messages can be formatted using the
#' included [teams formatters][teams_md] and copied to the clipboard using `clipr::write_clip()`.
#' For other destinations, the [gluedown](https://k5cents.github.io/gluedown/) package provides
#' GitHub Flavoured Markdown formatters.
#' @param string A character vector.
#' @param method A string denoting the method to use: either `"alternate"` (default) or `"random"`.
#' @returns A character vector with the same length as the input.
#' @examples
#' library(magrittr)
#'
#' # Single string
#' msg <- "Delete my number from your phone."
#' mock(msg)
#' mock(msg, "random")
#'
#' # Write to clipboard and paste to Teams
#' # mock(msg) %>%
#' #   teams_italic() %>%
#' #   clipr::write_clip()
#'
#' # Character vector
#' msgs <- c("OMG, you're sooooo annoying", "Don't ever speak to me again")
#' mock(msgs)
#' mock(msgs, "random")
#'
#' # Write to clipboard and paste to Teams
#' # mock(msgs) %>%
#' #   teams_bold() %>%
#' #   clipr::write_clip()
#' @export
mock <- function(string, method = "alternate") {
  rlang::arg_match(method, values = c("alternate", "random"))

  string_names <- names(string)

  if (!is.null(string_names)) {
    string <- unname(string)
  }

  string_letters <- stringr::str_split(string, "")

  out <- switch(
    method,
    "alternate" = mock_alternate(string_letters),
    "random" = mock_random(string_letters)
  )

  if (!is.null(string_names)) {
    out <- set_names(out, string_names)
  }

  out
}

mock_alternate <- function(x) {
  purrr::map(
    x,
    \(s) purrr::imap_chr(s, \(ss, idss) str_swap_case_fixed(ss, idss))
  ) %>%
    purrr::map_chr(stringr::str_flatten)
}

str_swap_case_fixed <- function(x, i) {
  if (i %% 2 == 1) stringr::str_to_lower(x) else stringr::str_to_upper(x)
}

mock_random <- function(x) {
  ind_swap_case <- x %>%
    purrr::map(\(s) stringr::str_which(s, "[:alpha:]")) %>%
    purrr::map(\(x) sample(x, ceiling(length(x) * 0.6)))

  purrr::map2(
    x, ind_swap_case,
    \(strings, indices) purrr::list_c(purrr::map_at(strings, indices, str_swap_case))
  ) %>%
    purrr::map_chr(stringr::str_flatten)
}

str_swap_case <- function(x) {
  if (stringr::str_detect(x, "[:lower:]")) stringr::str_to_upper(x) else stringr::str_to_lower(x)
}
