#' Markdown formatting for Microsoft Teams
#'
#' Format a character vector for Microsoft Teams.
#'
#' Microsoft Teams uses a different Markdown syntax. See [here](https://support.microsoft.com/en-us/office/use-markdown-formatting-in-microsoft-teams-4d10bd65-55e2-4b2d-a1f3-2bebdcd2c772)
#' for a full list of formats.
#' @name teams_md
NULL

#' @param string A character vector.
#' @export
#' @rdname teams_md
teams_bold <- function(string) {
  stringr::str_c("*", string, "*")
}

#' @export
#' @rdname teams_md
teams_italic <- function(string) {
  stringr::str_c("_", string, "_")
}

#' @export
#' @rdname teams_md
teams_strikethrough <- function(string) {
  stringr::str_c("~", string, "~")
}
