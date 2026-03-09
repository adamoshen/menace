# menace

**menace** provides text-formatting tools to enhance your chat game and
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

**menace** works by formatting text depending on the action called. It
is then up to the user to perform any stylistic formattings and then
copy the result to the clipboard, e.g. with
[**clipr**](https://matthewlincoln.net/clipr/)’s `write_clip()`
function.

Designed with Microsoft Teams in mind as the output destination this
package includes markup formatters compatible with Microsoft Teams. For
other destinations, consider the usage of the markup functions contained
in [**gluedown**](https://k5cents.github.io/gluedown/).

The intended use case of **menace** is for single strings. However, the
functions are compatible with character vectors.

## Example usage - `mock()`

``` r
"This package is amazing!" |>
  mock() |>
  teams_italic()
#> [1] "_tHiS PaCkAgE Is aMaZiNg!_"
```

## Example usage - `shout()`

``` r
"This package is amazing!" |>
  shout() |>
  teams_bold()
#> [1] "*T H I S    P A C K A G E    I S    A M A Z I N G !*"
```

## Example usage - `shout()` + `mock()`

``` r
"This package is amazing!" |>
  shout() |>
  mock(method = "random") |>
  teams_bold()
#> [1] "*t H i S    P a c k a G e    I S    a m A Z i n g !*"
```
