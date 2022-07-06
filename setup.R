
library(tidyverse)
library(rvest)
library(janitor)


web_url <- "https://en.wikipedia.org/wiki/World_Cadet,_Junior_and_U21_Karate_Championships"

source_data <- web_url |> read_html() |> 
  html_elements("table") |> html_table()

find_url <- source_data[[4]]

write_rds(find_url, file = "plaindata.rds")
