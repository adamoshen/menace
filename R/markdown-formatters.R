#' Markdown formatters
#'
#' Format a character vector with Markdown.
#'
#' The Markdown formatters in the [gluedown](https://k5cents.github.io/gluedown/) package use
#' [glue](https://glue.tidyverse.org/), which support strings and not character vectors. For
#' consistency, since all string-altering functions in this package support and return character
#' vectors, vectorised Markdown-formatters are also included. The Markdown syntax used here is
#' tailored for Discord.
#' @name md_formatters
NULL

#' @param string A character vector.
#' @returns A character vector with the same length as the input.
#' @rdname md_formatters
#' @export
md_bold <- function(string) {
  stringr::str_c("**", string, "**")
}

#' @rdname md_formatters
#' @export
md_italic <- function(string) {
  stringr::str_c("*", string, "*")
}

#' @rdname md_formatters
#' @export
md_strikethrough <- function(string) {
  stringr::str_c("~~", string, "~~")
}

#' @rdname md_formatters
#' @export
md_underline <- function(string) {
  stringr::str_c("__", string, "__")
}

#' @rdname md_formatters
#' @export
md_spoiler <- function(string) {
  stringr::str_c("||", string, "||")
}
