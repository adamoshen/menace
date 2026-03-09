# Return a character vector loudly

Return a character vector loudly by uppercasing all letters and
increasing spacing. Best used with a bold-formatting.

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

# Recommended to use with bold-formatting.
# Write to clipboard and paste elsewhere
# msg |>
#   shout() |>
#   clipr::write_clip()
```
