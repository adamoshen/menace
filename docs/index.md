# menace

**menace** provides text-altering tools to enhance your chat game and
unleash your inner menace (and at times, help save your coworkers from
corporate depression).

## Installation

You can install this package using

``` r
# install.packages("pak")
pak::pak("adamoshen/menace")
```

or

``` r
# install.packages("remotes")
remotes::install_github("adamoshen/menace")
```

## Introduction

``` r
library(menace)
```

**menace** works by altering text depending on the action called. It is
then up to the user to copy the result to the clipboard, e.g. with
[**clipr**](https://matthewlincoln.net/clipr/)’s `write_clip()`
function.

The timing of the formatting of the text will depend on the output
destination. Microsoft Teams does not support the pasting of
Markdown-formatted text, e.g. copying `*this text*` will paste as-is
**with** the asterisks. As such, text for Microsoft Teams will need to
be formatted after pasting within Microsoft Teams. Other destinations,
such as Discord, do not have this issue, and text can be
Markdown-formatted before pasting. For destinations where the pasting of
Markdown-formatted text is supported, the functions contained in
[**gluedown**](https://k5cents.github.io/gluedown/) may be of interest.

The intended use case of **menace** is for single strings. However, the
functions are compatible with character vectors.

## Example usage - `mock()`

``` r
"This package is amazing!" |>
  mock()
#> [1] "tHiS PaCkAgE Is aMaZiNg!"
```

## Example usage - `shout()`

``` r
"This package is amazing!" |>
  shout()
#> [1] "T H I S    P A C K A G E    I S    A M A Z I N G !"
```

## Example usage - `shout()` + `mock()`

``` r
"This package is amazing!" |>
  shout() |>
  mock(method = "random")
#> [1] "t H i S    P a c k a G e    I S    a m A Z i n g !"
```
