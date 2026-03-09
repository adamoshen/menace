# Markdown formatters

Format a character vector with Markdown.

## Usage

``` r
md_bold(string)

md_italic(string)

md_strikethrough(string)

md_underline(string)

md_spoiler(string)
```

## Arguments

- string:

  A character vector.

## Value

A character vector with the same length as the input.

## Details

The Markdown formatters in the
[gluedown](https://k5cents.github.io/gluedown/) package use
[glue](https://glue.tidyverse.org/), which supports strings and not
character vectors. For consistency, since all string-altering functions
in this package support and return character vectors, vectorised
Markdown-formatters are also included. The Markdown syntax used here is
tailored for Discord.
