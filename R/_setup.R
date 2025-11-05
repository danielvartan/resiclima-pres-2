# Load Packages -----

library(brandr)
library(downlit)
library(ggplot2)
library(here)
library(knitr)
library(magrittr)
library(quartor) # github.com/danielvartan/quartor
library(ragg)
library(showtext)
library(sysfonts)
library(xml2)

# Set Options -----

options(scipen = 999)

# Set Variables -----

set.seed(2025)

# Set `knitr` -----

clean_cache() |> suppressWarnings()

opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  root.dir = here(),
  dev = "ragg_png",
  dev.args = list(bg = "transparent"),
  fig.showtext = TRUE
)

# Set `brandr` -----

options(BRANDR_BRAND_YML = here("_brand.yml"))

brandr_options <- list(
  "BRANDR_COLOR_SEQUENTIAL" =
    get_brand_color(c("primary", "secondary")),
  "BRANDR_COLOR_DIVERGING" =
    get_brand_color(c("primary", "white", "secondary")),
  "BRANDR_COLOR_QUALITATIVE" = c(
    get_brand_color("primary"),
    get_brand_color("secondary"),
    get_brand_color("tertiary"),
    get_brand_color("light-green"),
    get_brand_color("dark-red"),
    get_brand_color("black")
  )
)

for (i in seq_along(brandr_options)) options(brandr_options[i])

# Set `showtext` -----

font_paths(here::here("ttf"))

font_add(
  family = "poppins",
  regular = here::here("ttf", "poppins-regular.ttf"),
  bold = here::here("ttf", "poppins-bold.ttf"),
  italic = here::here("ttf", "poppins-italic.ttf"),
  bolditalic = here::here("ttf", "poppins-bolditalic.ttf"),
  symbol = NULL
)

font_add(
  family = "dm-mono",
  regular = here::here("ttf", "dmmono-medium.ttf"),
  italic = here::here("ttf", "dmmono-mediumitalic.ttf"),
  symbol = NULL
)

showtext_auto()

# Set `ggplot2` -----

theme_set(
  theme_bw() +
    theme(
      text = element_text(
        color = get_brand_color("black"),
        family = "poppins",
        face = "plain"
      ),
      panel.background = element_rect(fill = "transparent"),
      plot.background = element_rect(
        fill = "transparent", color = NA
      ),
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      legend.background = element_rect(fill = "transparent"),
      legend.box.background = element_rect(
        fill = "transparent", color = NA
      ),
      legend.frame = element_blank()
    )
)

# Run `rbbt` -----

## Uncheck the option "Apply title-casing to titles" in Zotero Better BibTeX
## preferences (Edit > Settings > Better BibTeX > Miscellaneous).

# (2024-08-25)
# This function should work with any version of BetterBibTeX (BBT) for Zotero.
# Verify if @wmoldham PR was merged in the `rbbt` package (see issue #47
# <https://github.com/paleolimbot/rbbt/issues/47>). If not, install `rbbt`
# from @wmoldham fork `remotes::install_github("wmoldham/rbbt", force = TRUE)`.

bbt_write_quarto_bib(
  bib_file = here::here("references.bib"),
  dir = c("."),
  pattern = "\\.qmd$",
  wd = here::here()
)
