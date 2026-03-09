# Return a character vector mockingly

Return a character vector mockingly by altering the case of letters. See
*Details*.

## Usage

``` r
mock(string, method = "alternate")
```

## Arguments

- string:

  A character vector.

- method:

  A string denoting the method to use: either `"alternate"` (default) or
  `"random"`.

## Value

A character vector with the same length as the input.

## Details

When `method = "alternate"`, the first letter of each string is
lowercased. Letters then alternate between lowercase and uppercase. When
`method = "random"`, 60% of the letters (at random) in each string will
swap to the other case.

When the output is to be pasted to Microsoft Teams, mocked messages can
be formatted using the included [teams
formatters](https://adamoshen.github.io/menace/reference/teams_md.md)
and copied to the clipboard using
[`clipr::write_clip()`](http://matthewlincoln.net/clipr/reference/write_clip.md).
For other destinations, the
[gluedown](https://k5cents.github.io/gluedown/) package provides GitHub
Flavoured Markdown formatters.

## Examples

``` r
# Single string
msg <- "Delete my number from your phone."
mock(msg)
#> [1] "dElEtE My nUmBeR FrOm yOuR PhOnE."
mock(msg, "random")
#> [1] "DElETE My NuMBER From Your PHONE."

# Write to clipboard and paste to Teams
# mock(msg) |>
#   teams_italic() |>
#   clipr::write_clip()

# Character vector
msgs <- c("OMG, you're sooooo annoying", "Don't ever speak to me again")
mock(msgs)
#> [1] "oMg, YoU'Re sOoOoO AnNoYiNg"  "dOn't eVeR SpEaK To mE AgAiN"
mock(msgs, "random")
#> [1] "Omg, YOU'Re SoOOoo aNnOYiNG"  "dON't EVeR SPeak tO mE AGaIN"

# Write to clipboard and paste to Teams
# msgs |>
#   mock() |>
#   teams_bold() |>
#   clipr::write_clip()
```
