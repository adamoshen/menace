# Return a character vector loudly

Return a character vector loudly by uppercasing all letters and
increasing spacing. Best used in conjunction with
[`teams_bold()`](https://adamoshen.github.io/menace/reference/teams_md.md).

## Usage

``` r
shout(string)
```

## Arguments

- string:

  A character vector.

## Value

A character vector with the same length as the input.

## Details

Inspired by Ryan Kavanagh.

## Examples

``` r
# example code
msg <- "listen up, you little jerk"
shout(msg)
#> [1] "L I S T E N    U P ,    Y O U    L I T T L E    J E R K"

# Recommended to use with `teams_bold()`.
# Write to clipboard and paste to Teams
# msg |>
#   shout() |>
#   teams_bold() |>
#   clipr::write_clip()
```
