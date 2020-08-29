## @knitr setup


# define knitr options
knitr::opts_chunk$set(echo = FALSE)
knitr::opts_chunk$set(warning = FALSE)
knitr::opts_chunk$set(message = FALSE)

# set any missing NAs in table to blank
options(knitr.kable.NA='')


## @knitr loadData
# load R packages
library(fivethirtyeight)
library(tidyverse)
library(knitr)
library(kableExtra)
library(ggthemes)

# load steak_survey dataset
data("weather_check", package="fivethirtyeight")

# create subset, no missing NAs
# pick a specific region
sdat <- weather_check %>%
  filter(region=="Mountain")
